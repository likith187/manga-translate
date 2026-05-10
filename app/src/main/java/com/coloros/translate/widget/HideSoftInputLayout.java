package com.coloros.translate.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class HideSoftInputLayout extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Window f7180a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HideSoftInputLayout(Context context) {
        super(context);
        r.e(context, "context");
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        r.e(ev, "ev");
        if (ev.getAction() == 0) {
            Window window = this.f7180a;
            View currentFocus = window != null ? window.getCurrentFocus() : null;
            if (currentFocus != null && (currentFocus instanceof EditText)) {
                try {
                    ((EditText) currentFocus).getLocationOnScreen(new int[2]);
                    float rawX = (ev.getRawX() + ((EditText) currentFocus).getLeft()) - r2[0];
                    float rawY = (ev.getRawY() + ((EditText) currentFocus).getTop()) - r2[1];
                    if (rawX < ((EditText) currentFocus).getLeft() || rawX >= ((EditText) currentFocus).getRight() || rawY < ((EditText) currentFocus).getTop() || rawY > ((EditText) currentFocus).getBottom()) {
                        Object systemService = getContext().getSystemService("input_method");
                        r.c(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
                        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
                        Window window2 = this.f7180a;
                        if ((window2 != null ? window2.getCurrentFocus() : null) != null) {
                            Window window3 = this.f7180a;
                            View currentFocus2 = window3 != null ? window3.getCurrentFocus() : null;
                            r.b(currentFocus2);
                            inputMethodManager.hideSoftInputFromWindow(currentFocus2.getWindowToken(), 0);
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        return super.dispatchTouchEvent(ev);
    }

    public final Window getMWindow() {
        return this.f7180a;
    }

    public final void setMWindow(Window window) {
        this.f7180a = window;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HideSoftInputLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        r.e(context, "context");
        r.e(attrs, "attrs");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HideSoftInputLayout(Context context, AttributeSet attrs, int i10) {
        super(context, attrs, i10);
        r.e(context, "context");
        r.e(attrs, "attrs");
    }
}
