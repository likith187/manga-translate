package com.coloros.translate.screen.utils;

import android.content.Context;
import android.os.RemoteException;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.coloros.translate.utils.c0;

/* JADX INFO: loaded from: classes.dex */
public final class o {
    public static final o INSTANCE = new o();

    private o() {
    }

    public static final void b(final Context context, final EditText editText) {
        if (context == null || editText == null) {
            return;
        }
        editText.setFocusable(true);
        editText.setFocusableInTouchMode(true);
        editText.requestFocus();
        editText.setSelection(editText.getText().length());
        editText.postDelayed(new Runnable() { // from class: com.coloros.translate.screen.utils.n
            @Override // java.lang.Runnable
            public final void run() {
                o.c(context, editText);
            }
        }, 350L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(Context context, EditText editText) {
        try {
            Object systemService = context.getSystemService("input_method");
            kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
            InputMethodManager inputMethodManager = (InputMethodManager) systemService;
            if (inputMethodManager.isActive(editText)) {
                inputMethodManager.showSoftInput(editText, 0);
            }
        } catch (RemoteException e10) {
            c0.f7098a.f("SoftKeyboardUtil", "showSoftKeyboard fail", e10);
        }
    }
}
