package com.coloros.translate.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class PressedConstraintLayout extends ConstraintLayout {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PressedConstraintLayout(Context context) {
        super(context);
        r.e(context, "context");
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        r.e(ev, "ev");
        if (ev.getAction() == 0) {
            setAlpha(0.3f);
        } else if (ev.getAction() == 3 || ev.getAction() == 1) {
            setAlpha(1.0f);
        }
        return super.dispatchTouchEvent(ev);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PressedConstraintLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        r.e(context, "context");
        r.e(attrs, "attrs");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PressedConstraintLayout(Context context, AttributeSet attrs, int i10) {
        super(context, attrs, i10);
        r.e(context, "context");
        r.e(attrs, "attrs");
    }
}
