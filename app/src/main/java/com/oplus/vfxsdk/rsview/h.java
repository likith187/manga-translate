package com.oplus.vfxsdk.rsview;

import android.os.SystemClock;
import android.util.Log;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f11432c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Long f11433a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f11434b;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final boolean a() {
        if (this.f11433a == null) {
            return true;
        }
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        Long l10 = this.f11433a;
        boolean z10 = false;
        if (l10 != null) {
            z10 = jElapsedRealtimeNanos - this.f11434b >= l10.longValue();
        }
        if (z10) {
            this.f11434b = jElapsedRealtimeNanos;
        }
        return z10;
    }

    public final void b(Integer num) {
        if (num == null || num.intValue() <= 0) {
            this.f11433a = null;
            Log.d("FpsControl", "invalidateGap null");
            return;
        }
        Long lValueOf = Long.valueOf(960000000 / ((long) num.intValue()));
        this.f11433a = lValueOf;
        Log.d("FpsControl", "fps:" + num + ", invalidateGap:" + lValueOf);
    }
}
