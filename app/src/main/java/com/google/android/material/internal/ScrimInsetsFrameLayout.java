package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.a0;
import androidx.core.view.a1;
import androidx.core.view.m0;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class ScrimInsetsFrameLayout extends FrameLayout {
    private boolean drawBottomInsetForeground;
    private boolean drawLeftInsetForeground;
    private boolean drawRightInsetForeground;
    private boolean drawTopInsetForeground;
    Drawable insetForeground;
    Rect insets;
    private Rect tempRect;

    public ScrimInsetsFrameLayout(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.insets == null || this.insetForeground == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        if (this.drawTopInsetForeground) {
            this.tempRect.set(0, 0, width, this.insets.top);
            this.insetForeground.setBounds(this.tempRect);
            this.insetForeground.draw(canvas);
        }
        if (this.drawBottomInsetForeground) {
            this.tempRect.set(0, height - this.insets.bottom, width, height);
            this.insetForeground.setBounds(this.tempRect);
            this.insetForeground.draw(canvas);
        }
        if (this.drawLeftInsetForeground) {
            Rect rect = this.tempRect;
            Rect rect2 = this.insets;
            rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
            this.insetForeground.setBounds(this.tempRect);
            this.insetForeground.draw(canvas);
        }
        if (this.drawRightInsetForeground) {
            Rect rect3 = this.tempRect;
            Rect rect4 = this.insets;
            rect3.set(width - rect4.right, rect4.top, width, height - rect4.bottom);
            this.insetForeground.setBounds(this.tempRect);
            this.insetForeground.draw(canvas);
        }
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.insetForeground;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.insetForeground;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    protected void onInsetsChanged(a1 a1Var) {
    }

    public void setDrawBottomInsetForeground(boolean z10) {
        this.drawBottomInsetForeground = z10;
    }

    public void setDrawLeftInsetForeground(boolean z10) {
        this.drawLeftInsetForeground = z10;
    }

    public void setDrawRightInsetForeground(boolean z10) {
        this.drawRightInsetForeground = z10;
    }

    public void setDrawTopInsetForeground(boolean z10) {
        this.drawTopInsetForeground = z10;
    }

    public void setScrimInsetForeground(Drawable drawable) {
        this.insetForeground = drawable;
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.tempRect = new Rect();
        this.drawTopInsetForeground = true;
        this.drawBottomInsetForeground = true;
        this.drawLeftInsetForeground = true;
        this.drawRightInsetForeground = true;
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R$styleable.ScrimInsetsFrameLayout, i10, R$style.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
        this.insetForeground = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ScrimInsetsFrameLayout_insetForeground);
        typedArrayObtainStyledAttributes.recycle();
        setWillNotDraw(true);
        m0.y0(this, new a0() { // from class: com.google.android.material.internal.ScrimInsetsFrameLayout.1
            @Override // androidx.core.view.a0
            public a1 onApplyWindowInsets(View view, a1 a1Var) {
                ScrimInsetsFrameLayout scrimInsetsFrameLayout = ScrimInsetsFrameLayout.this;
                if (scrimInsetsFrameLayout.insets == null) {
                    scrimInsetsFrameLayout.insets = new Rect();
                }
                ScrimInsetsFrameLayout.this.insets.set(a1Var.k(), a1Var.m(), a1Var.l(), a1Var.j());
                ScrimInsetsFrameLayout.this.onInsetsChanged(a1Var);
                ScrimInsetsFrameLayout.this.setWillNotDraw(!a1Var.n() || ScrimInsetsFrameLayout.this.insetForeground == null);
                m0.Z(ScrimInsetsFrameLayout.this);
                return a1Var.c();
            }
        });
    }
}
