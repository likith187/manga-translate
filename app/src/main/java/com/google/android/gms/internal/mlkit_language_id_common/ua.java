package com.google.android.gms.internal.mlkit_language_id_common;

import android.content.Context;
import android.os.SystemClock;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.TelemetryData;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public final class ua {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.common.internal.n f8747a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicLong f8748b = new AtomicLong(-1);

    ua(Context context, String str) {
        this.f8747a = com.google.android.gms.common.internal.m.b(context, com.google.android.gms.common.internal.o.a().b("mlkit:natural_language").a());
    }

    public static ua a(Context context) {
        return new ua(context, "mlkit:natural_language");
    }

    final /* synthetic */ void b(long j10, Exception exc) {
        this.f8748b.set(j10);
    }

    public final synchronized void c(int i10, int i11, long j10, long j11) {
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.f8748b.get() != -1 && jElapsedRealtime - this.f8748b.get() <= TimeUnit.MINUTES.toMillis(30L)) {
            return;
        }
        this.f8747a.a(new TelemetryData(0, Arrays.asList(new MethodInvocation(i10, i11, 0, j10, j11, null, null, 0)))).c(new w3.e() { // from class: com.google.android.gms.internal.mlkit_language_id_common.ta
            @Override // w3.e
            public final void a(Exception exc) {
                this.f8725a.b(jElapsedRealtime, exc);
            }
        });
    }
}
