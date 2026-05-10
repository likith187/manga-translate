package com.coui.appcompat.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.support.appcompat.R$styleable;
import com.support.button.R$dimen;

/* JADX INFO: loaded from: classes.dex */
public class COUIButtonLayout extends LinearLayout {
    private boolean isForceSmallScreenWidth;
    private boolean isLimitHeight;
    private int mHorizontalLayoutPadding;
    private int mLimitMaxWidth;
    private int mMaxHeight;
    private int mMaxWidth;
    private int mOrientation;
    private int mVerticalLayoutPadding;

    public COUIButtonLayout(Context context) {
        super(context);
        this.isLimitHeight = false;
        this.isForceSmallScreenWidth = false;
    }

    private void initResource() {
        this.mOrientation = getOrientation();
        this.mHorizontalLayoutPadding = getResources().getDimensionPixelSize(R$dimen.coui_horizontal_btn_margin);
        this.mVerticalLayoutPadding = getResources().getDimensionPixelSize(R$dimen.coui_horizontal_single_btn_margin);
    }

    private void setPaddingHorizontal(int i10) {
        if (i10 == 0) {
            i10 = getOrientation() == 0 ? this.mHorizontalLayoutPadding : this.mVerticalLayoutPadding;
        }
        setPaddingRelative(i10, getPaddingTop(), i10, getPaddingBottom());
    }

    public int getMaxHeight() {
        return this.mMaxHeight;
    }

    public int getMaxWidth() {
        return this.mMaxWidth;
    }

    public boolean isForceSmallScreenWidth() {
        return this.isForceSmallScreenWidth;
    }

    public boolean isLimitHeight() {
        return this.isLimitHeight;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int i12 = this.mLimitMaxWidth;
        if (i12 <= 0 || !(mode == Integer.MIN_VALUE || mode == 1073741824)) {
            this.mMaxWidth = View.MeasureSpec.getSize(i10);
        } else {
            int iMin = Math.min(i12, View.MeasureSpec.getSize(i10));
            this.mMaxWidth = iMin;
            i10 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        }
        this.mMaxHeight = View.MeasureSpec.getSize(i11);
        super.onMeasure(i10, i11);
    }

    public boolean setForceSmallScreenWidth(boolean z10) {
        this.isForceSmallScreenWidth = z10;
        return z10;
    }

    public void setHorizontalLayoutPadding(int i10) {
        this.mHorizontalLayoutPadding = i10;
        if (getOrientation() == 0) {
            setPaddingHorizontal(this.mHorizontalLayoutPadding);
        }
    }

    public void setLimitHeight(boolean z10) {
        this.isLimitHeight = z10;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i10) {
        super.setOrientation(i10);
        if (this.mOrientation != i10) {
            setPaddingHorizontal(0);
            this.mOrientation = i10;
        }
    }

    public void setVerticalLayoutPadding(int i10) {
        this.mVerticalLayoutPadding = i10;
        if (getOrientation() == 1) {
            setPaddingHorizontal(this.mVerticalLayoutPadding);
        }
    }

    public COUIButtonLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isLimitHeight = false;
        this.isForceSmallScreenWidth = false;
        initResource();
        if (getContext() != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.COUIButtonLayout);
            this.mHorizontalLayoutPadding = (int) typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIButtonLayout_horizontalLayoutPadding, this.mHorizontalLayoutPadding);
            this.mVerticalLayoutPadding = (int) typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIButtonLayout_verticalLayoutPadding, this.mVerticalLayoutPadding);
            this.mLimitMaxWidth = (int) typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIButtonLayout_couiLimitMaxWidth, this.mLimitMaxWidth);
            typedArrayObtainStyledAttributes.recycle();
        }
        setPaddingHorizontal(0);
    }
}
