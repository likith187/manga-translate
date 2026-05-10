package com.coloros.translate.utils;

import android.widget.Toast;
import com.coloros.translate.TranslationApplication;

/* JADX INFO: loaded from: classes.dex */
public final class b1 {
    public static final b1 INSTANCE = new b1();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Toast f7097a;

    private b1() {
    }

    public static final void b(final int i10, final int i11) {
        z0.h(0L, new Runnable() { // from class: com.coloros.translate.utils.a1
            @Override // java.lang.Runnable
            public final void run() {
                b1.d(i10, i11);
            }
        }, 1, null);
    }

    public static /* synthetic */ void c(int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        b(i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(int i10, int i11) {
        c0.f7098a.d("ToastUtils", "toast");
        Toast toast = f7097a;
        if (toast != null) {
            toast.cancel();
        }
        Toast toastMakeText = Toast.makeText(TranslationApplication.f4754b.a(), i10, i11);
        f7097a = toastMakeText;
        if (toastMakeText != null) {
            toastMakeText.show();
        }
    }
}
