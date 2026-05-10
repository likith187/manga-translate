package com.coloros.translate.utils;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class z0 {
    public static final void c(long j10, final w8.a runnable) {
        kotlin.jvm.internal.r.e(runnable, "runnable");
        if (j10 > 0) {
            w0.INSTANCE.b().schedule(new Runnable() { // from class: com.coloros.translate.utils.x0
                @Override // java.lang.Runnable
                public final void run() {
                    z0.e(runnable);
                }
            }, j10, TimeUnit.MILLISECONDS);
        } else {
            w0.INSTANCE.b().execute(new Runnable() { // from class: com.coloros.translate.utils.y0
                @Override // java.lang.Runnable
                public final void run() {
                    z0.f(runnable);
                }
            });
        }
    }

    public static /* synthetic */ void d(long j10, w8.a aVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = 0;
        }
        c(j10, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(w8.a tmp0) {
        kotlin.jvm.internal.r.e(tmp0, "$tmp0");
        tmp0.mo8invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(w8.a tmp0) {
        kotlin.jvm.internal.r.e(tmp0, "$tmp0");
        tmp0.mo8invoke();
    }

    public static final void g(long j10, Runnable runnable) {
        kotlin.jvm.internal.r.e(runnable, "runnable");
        if (j10 > 0) {
            w0.INSTANCE.a().postDelayed(runnable, j10);
        } else {
            w0.INSTANCE.a().post(runnable);
        }
    }

    public static /* synthetic */ void h(long j10, Runnable runnable, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = 0;
        }
        g(j10, runnable);
    }

    public static final void i(Runnable runnable) {
        kotlin.jvm.internal.r.e(runnable, "runnable");
        w0.INSTANCE.a().removeCallbacks(runnable);
    }

    public static final void j(long j10, Runnable runnable) {
        kotlin.jvm.internal.r.e(runnable, "runnable");
        if (j10 > 0) {
            w0 w0Var = w0.INSTANCE;
            w0Var.a().removeCallbacks(runnable);
            w0Var.a().postDelayed(runnable, j10);
        } else {
            w0 w0Var2 = w0.INSTANCE;
            w0Var2.a().removeCallbacks(runnable);
            w0Var2.a().post(runnable);
        }
    }
}
