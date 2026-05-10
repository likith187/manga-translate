package com.coloros.translate.ui.realtimetranslation.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.RelativeLayout;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class TransmissionRelativeLayout extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f6409a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f6410b;

    public TransmissionRelativeLayout(Context context) {
        super(context);
    }

    public final int getMLastX() {
        return this.f6409a;
    }

    public final int getMLastY() {
        return this.f6410b;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        r.e(ev, "ev");
        int y10 = (int) ev.getY();
        int x10 = (int) ev.getX();
        int action = ev.getAction();
        if (action == 0) {
            this.f6410b = y10;
            this.f6409a = x10;
        } else if (action == 1) {
            if (Math.abs(y10 - this.f6410b) >= ViewConfiguration.get(getContext()).getScaledTouchSlop() || Math.abs(x10 - this.f6409a) >= ViewConfiguration.get(getContext()).getScaledTouchSlop()) {
                return super.onInterceptTouchEvent(ev);
            }
            performClick();
            return true;
        }
        return super.onInterceptTouchEvent(ev);
    }

    public final void setMLastX(int i10) {
        this.f6409a = i10;
    }

    public final void setMLastY(int i10) {
        this.f6410b = i10;
    }

    public TransmissionRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TransmissionRelativeLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
