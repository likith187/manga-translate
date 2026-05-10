package com.coui.appcompat.panel;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import com.support.panel.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class IgnoreWindowInsetsFrameLayout extends FrameLayout {
    private boolean mIsIgnoreWindowInsetsBottom;
    private boolean mIsIgnoreWindowInsetsLeft;
    private boolean mIsIgnoreWindowInsetsRight;
    private boolean mIsIgnoreWindowInsetsTop;
    private int mWindowInsetsBottomOffset;
    private int mWindowInsetsLeftOffset;
    private int mWindowInsetsRightOffset;
    private int mWindowInsetsTopOffset;

    public IgnoreWindowInsetsFrameLayout(Context context) {
        super(context);
        this.mIsIgnoreWindowInsetsLeft = true;
        this.mIsIgnoreWindowInsetsTop = true;
        this.mIsIgnoreWindowInsetsRight = true;
        this.mIsIgnoreWindowInsetsBottom = true;
    }

    private void initAttr(AttributeSet attributeSet) {
        if (getContext() != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.IgnoreWindowInsetsFrameLayout);
            this.mIsIgnoreWindowInsetsLeft = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IgnoreWindowInsetsFrameLayout_ignoreWindowInsetsLeft, true);
            this.mIsIgnoreWindowInsetsTop = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IgnoreWindowInsetsFrameLayout_ignoreWindowInsetsTop, true);
            this.mIsIgnoreWindowInsetsRight = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IgnoreWindowInsetsFrameLayout_ignoreWindowInsetsRight, true);
            this.mIsIgnoreWindowInsetsBottom = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IgnoreWindowInsetsFrameLayout_ignoreWindowInsetsBottom, true);
            typedArrayObtainStyledAttributes.recycle();
            if (COUINavigationBarUtil.isGestureNavigation(getContext())) {
                return;
            }
            this.mIsIgnoreWindowInsetsBottom = false;
            setFitsSystemWindows(false);
            setClipToPadding(true);
        }
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        setPadding(this.mIsIgnoreWindowInsetsLeft ? 0 : Math.max(0, windowInsets.getSystemWindowInsetLeft() + this.mWindowInsetsLeftOffset), this.mIsIgnoreWindowInsetsTop ? 0 : Math.max(0, windowInsets.getSystemWindowInsetTop() + this.mWindowInsetsTopOffset), this.mIsIgnoreWindowInsetsRight ? 0 : Math.max(0, windowInsets.getSystemWindowInsetRight() + this.mWindowInsetsRightOffset), this.mIsIgnoreWindowInsetsBottom ? 0 : Math.max(0, windowInsets.getInsets(WindowInsets.Type.navigationBars()).bottom + this.mWindowInsetsBottomOffset));
        this.mWindowInsetsLeftOffset = 0;
        this.mWindowInsetsTopOffset = 0;
        this.mWindowInsetsRightOffset = 0;
        this.mWindowInsetsBottomOffset = 0;
        return windowInsets.consumeSystemWindowInsets();
    }

    public void setIgnoreWindowInsetsBottom(boolean z10) {
        this.mIsIgnoreWindowInsetsBottom = z10;
    }

    public void setIgnoreWindowInsetsLeft(boolean z10) {
        this.mIsIgnoreWindowInsetsLeft = z10;
    }

    public void setIgnoreWindowInsetsRight(boolean z10) {
        this.mIsIgnoreWindowInsetsRight = z10;
    }

    public void setIgnoreWindowInsetsTop(boolean z10) {
        this.mIsIgnoreWindowInsetsTop = z10;
    }

    public void setWindowInsetsBottomOffset(int i10) {
        this.mWindowInsetsBottomOffset = i10;
    }

    public void setWindowInsetsLeftOffset(int i10) {
        this.mWindowInsetsLeftOffset = i10;
    }

    public void setWindowInsetsRightOffset(int i10) {
        this.mWindowInsetsRightOffset = i10;
    }

    public void setWindowInsetsTopOffset(int i10) {
        this.mWindowInsetsTopOffset = i10;
    }

    public IgnoreWindowInsetsFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mIsIgnoreWindowInsetsLeft = true;
        this.mIsIgnoreWindowInsetsTop = true;
        this.mIsIgnoreWindowInsetsRight = true;
        this.mIsIgnoreWindowInsetsBottom = true;
        initAttr(attributeSet);
    }

    public IgnoreWindowInsetsFrameLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mIsIgnoreWindowInsetsLeft = true;
        this.mIsIgnoreWindowInsetsTop = true;
        this.mIsIgnoreWindowInsetsRight = true;
        this.mIsIgnoreWindowInsetsBottom = true;
        initAttr(attributeSet);
    }
}
