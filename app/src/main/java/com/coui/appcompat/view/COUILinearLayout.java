package com.coui.appcompat.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.support.appcompat.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUILinearLayout extends LinearLayout {
    private int mMaxHeight;
    private int mMaxWidth;

    public COUILinearLayout(Context context) {
        this(context, null);
    }

    public int getMaxHeight() {
        return this.mMaxHeight;
    }

    public int getMaxWidth() {
        return this.mMaxWidth;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (getOrientation() == 0 && this.mMaxWidth >= 0) {
            i10 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i10), this.mMaxWidth), Integer.MIN_VALUE);
        } else if (getOrientation() == 1 && this.mMaxHeight >= 0) {
            i11 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i11), this.mMaxHeight), Integer.MIN_VALUE);
        }
        super.onMeasure(i10, i11);
    }

    public void setMaxHeight(int i10) {
        this.mMaxHeight = i10;
        requestLayout();
    }

    public void setMaxWidth(int i10) {
        this.mMaxWidth = i10;
        requestLayout();
    }

    public COUILinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUILinearLayout(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public COUILinearLayout(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUILinearLayout);
        this.mMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.COUILinearLayout_couiMaxWidth, -1);
        this.mMaxHeight = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.COUILinearLayout_couiMaxHeight, -1);
        typedArrayObtainStyledAttributes.recycle();
    }
}
