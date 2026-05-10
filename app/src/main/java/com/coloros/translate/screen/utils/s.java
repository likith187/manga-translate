package com.coloros.translate.screen.utils;

/* JADX INFO: loaded from: classes.dex */
public abstract class s {
    public static final void b(final w8.a runnable) {
        kotlin.jvm.internal.r.e(runnable, "runnable");
        q.INSTANCE.b().execute(new Runnable() { // from class: com.coloros.translate.screen.utils.r
            @Override // java.lang.Runnable
            public final void run() {
                s.c(runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(w8.a tmp0) {
        kotlin.jvm.internal.r.e(tmp0, "$tmp0");
        tmp0.mo8invoke();
    }
}
