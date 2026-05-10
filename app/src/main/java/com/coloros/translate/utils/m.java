package com.coloros.translate.utils;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class m {
    public static final m INSTANCE = new m();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Context f7131a;

    private m() {
    }

    public final Context a() {
        Context context = f7131a;
        if (context != null) {
            return context;
        }
        kotlin.jvm.internal.r.r("applicationContext");
        return null;
    }

    public final void b(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        c(context);
    }

    public final void c(Context context) {
        kotlin.jvm.internal.r.e(context, "<set-?>");
        f7131a = context;
    }
}
