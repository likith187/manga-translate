package com.oppo.yyyy.mt;

import android.content.Context;
import com.slp.library.SlpSdk;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class LibMt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f11447a = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        System.loadLibrary("SlpTranslate");
    }

    private final native boolean init(Context context);

    public final boolean a() {
        try {
            return init(SlpSdk.getContext());
        } catch (RuntimeException unused) {
            return false;
        }
    }

    public final native int destory(long j10);

    public final native long loadModel(String str);

    public final native String translate(long j10, String str);
}
