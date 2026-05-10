package com.google.android.material.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.m;
import androidx.core.view.m0;
import com.coui.appcompat.version.COUIVersionUtil;
import com.google.android.material.R$id;
import com.google.android.material.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class FlowLayout extends ViewGroup {
    private int itemSpacing;
    private int lineSpacing;
    private int rowCount;
    private boolean singleLine;

    public FlowLayout(Context context) {
        this(context, null);
    }

    private static int getMeasuredDimension(int i10, int i11, int i12) {
        return i11 != Integer.MIN_VALUE ? i11 != 1073741824 ? i12 : i10 : Math.min(i12, i10);
    }

    private void loadFromAttributes(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.FlowLayout, 0, 0);
        this.lineSpacing = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.FlowLayout_lineSpacing, 0);
        this.itemSpacing = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.FlowLayout_itemSpacing, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    protected int getItemSpacing() {
        return this.itemSpacing;
    }

    protected int getLineSpacing() {
        return this.lineSpacing;
    }

    protected int getRowCount() {
        return this.rowCount;
    }

    public int getRowIndex(View view) {
        Object tag = view.getTag(R$id.row_index_key);
        if (tag instanceof Integer) {
            return ((Integer) tag).intValue();
        }
        return -1;
    }

    public boolean isSingleLine() {
        return this.singleLine;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int iA;
        int iB;
        if (getChildCount() == 0) {
            this.rowCount = 0;
            return;
        }
        this.rowCount = 1;
        boolean z11 = m0.v(this) == 1;
        int paddingRight = z11 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = z11 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int i14 = (i12 - i10) - paddingLeft;
        int measuredWidth = paddingRight;
        int i15 = paddingTop;
        for (int i16 = 0; i16 < getChildCount(); i16++) {
            View childAt = getChildAt(i16);
            if (childAt.getVisibility() == 8) {
                childAt.setTag(R$id.row_index_key, -1);
            } else {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    iB = m.b(marginLayoutParams);
                    iA = m.a(marginLayoutParams);
                } else {
                    iA = 0;
                    iB = 0;
                }
                int measuredWidth2 = measuredWidth + iB + childAt.getMeasuredWidth();
                if (!this.singleLine && measuredWidth2 > i14) {
                    i15 = this.lineSpacing + paddingTop;
                    this.rowCount++;
                    measuredWidth = paddingRight;
                }
                childAt.setTag(R$id.row_index_key, Integer.valueOf(this.rowCount - 1));
                int i17 = measuredWidth + iB;
                int measuredWidth3 = childAt.getMeasuredWidth() + i17;
                int measuredHeight = childAt.getMeasuredHeight() + i15;
                if (z11) {
                    childAt.layout(i14 - measuredWidth3, i15, (i14 - measuredWidth) - iB, measuredHeight);
                } else {
                    childAt.layout(i17, i15, measuredWidth3, measuredHeight);
                }
                measuredWidth += iB + iA + childAt.getMeasuredWidth() + this.itemSpacing;
                paddingTop = measuredHeight;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int i12;
        int i13;
        int paddingLeft;
        int size = View.MeasureSpec.getSize(i10);
        int mode = View.MeasureSpec.getMode(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i11);
        int i14 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Integer.MAX_VALUE;
        int paddingLeft2 = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = i14 - getPaddingRight();
        int i15 = paddingTop;
        int i16 = 0;
        for (int i17 = 0; i17 < getChildCount(); i17++) {
            View childAt = getChildAt(i17);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i10, i11);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i12 = marginLayoutParams.leftMargin;
                    i13 = marginLayoutParams.rightMargin;
                } else {
                    i12 = 0;
                    i13 = 0;
                }
                int i18 = paddingLeft2;
                if (paddingLeft2 + i12 + childAt.getMeasuredWidth() <= paddingRight || isSingleLine()) {
                    paddingLeft = i18;
                } else {
                    paddingLeft = getPaddingLeft();
                    i15 = this.lineSpacing + paddingTop;
                }
                int measuredWidth = paddingLeft + i12 + childAt.getMeasuredWidth();
                int measuredHeight = i15 + childAt.getMeasuredHeight();
                if (measuredWidth > i16) {
                    i16 = measuredWidth;
                }
                paddingLeft2 = paddingLeft + i12 + i13 + childAt.getMeasuredWidth() + this.itemSpacing;
                if (i17 == getChildCount() - 1) {
                    i16 += i13;
                }
                paddingTop = measuredHeight;
            }
        }
        setMeasuredDimension(getMeasuredDimension(size, mode, i16 + getPaddingRight()), getMeasuredDimension(size2, mode2, paddingTop + getPaddingBottom()));
    }

    protected void setItemSpacing(int i10) {
        this.itemSpacing = i10;
    }

    protected void setLineSpacing(int i10) {
        this.lineSpacing = i10;
    }

    public void setSingleLine(boolean z10) {
        this.singleLine = z10;
    }

    public FlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlowLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.singleLine = false;
        loadFromAttributes(context, attributeSet);
    }

    @TargetApi(COUIVersionUtil.COUI_8_2)
    public FlowLayout(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.singleLine = false;
        loadFromAttributes(context, attributeSet);
    }
}
