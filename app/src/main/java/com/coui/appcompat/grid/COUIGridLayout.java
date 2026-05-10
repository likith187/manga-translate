package com.coui.appcompat.grid;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridLayout;
import com.coui.appcompat.uiutil.UIUtil;
import com.coui.component.responsiveui.ResponsiveUIModel;
import com.coui.component.responsiveui.layoutgrid.MarginType;
import com.support.grid.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIGridLayout extends GridLayout {
    public static final int GRID_MODE = 0;
    private static final int LARGE_MARGIN = 0;
    private static final int SMALL_MARGIN = 1;
    public static final int SPECIFIC_GAP_MODE = 1;
    public static final int SPECIFIC_SIZE_MODE = 2;
    private int[] mBottomMargin;
    private int mChildGridNumber;
    private float mChildHeight;
    private float mChildMinHeight;
    private float mChildMinWidth;
    private float mChildWidth;
    private int mColumn;
    private int[] mEndMargin;
    private int mGridMargin;
    private int mGridMarginType;
    private float[] mGridModeColumnWidth;
    private float mHorizontalGap;
    private boolean mIsIgnoreChildMargin;
    private int[] mMaxHorizontalMargin;
    private int[] mMaxVerticalMargin;
    private float mMinHorizontalGap;
    private ResponsiveUIModel mResponsiveUIModel;
    private int[] mStartMargin;
    private int[] mTopMargin;
    private int mType;
    private float mVerticalGap;

    public COUIGridLayout(Context context) {
        this(context, null);
    }

    private int adjustHorizontalMargin() {
        if (this.mIsIgnoreChildMargin) {
            return 0;
        }
        this.mMaxHorizontalMargin = new int[this.mColumn + 1];
        int i10 = 0;
        for (int i11 = 0; i11 <= this.mColumn; i11++) {
            int i12 = i11;
            while (true) {
                int[] iArr = this.mStartMargin;
                if (i12 < iArr.length) {
                    int i13 = this.mColumn;
                    if (i11 < i13) {
                        int[] iArr2 = this.mMaxHorizontalMargin;
                        int i14 = iArr2[i11];
                        int i15 = iArr[i12];
                        if (i14 < i15) {
                            iArr2[i11] = i15;
                        }
                    }
                    if (i11 > 0 && i12 > 0) {
                        int[] iArr3 = this.mEndMargin;
                        if (i12 <= iArr3.length) {
                            int[] iArr4 = this.mMaxHorizontalMargin;
                            int i16 = iArr4[i11];
                            int i17 = iArr3[i12 - 1];
                            if (i16 < i17) {
                                iArr4[i11] = i17;
                            }
                        }
                    }
                    i12 += i13;
                }
            }
            i10 += this.mMaxHorizontalMargin[i11];
        }
        return i10;
    }

    private float calculateChildHeight() {
        float f10 = this.mChildHeight;
        if (f10 != 0.0f) {
            return f10;
        }
        float f11 = this.mChildMinHeight;
        if (f11 == 0.0f) {
            return 0.0f;
        }
        return (f11 / this.mChildMinWidth) * this.mChildWidth;
    }

    private int calculateHorizontalMargin() {
        int i10;
        int i11;
        if (this.mIsIgnoreChildMargin) {
            return 0;
        }
        int i12 = 0;
        for (int i13 = 0; i13 <= this.mColumn; i13++) {
            int i14 = i13;
            int i15 = 0;
            while (true) {
                int[] iArr = this.mStartMargin;
                if (i14 < iArr.length) {
                    int i16 = this.mColumn;
                    if (i13 < i16 && i15 < (i11 = iArr[i14])) {
                        i15 = i11;
                    }
                    if (i13 > 0 && i14 > 0) {
                        int[] iArr2 = this.mEndMargin;
                        if (i14 <= iArr2.length && i15 < (i10 = iArr2[i14 - 1])) {
                            i15 = i10;
                        }
                    }
                    i14 += i16;
                }
            }
            i12 += i15;
        }
        return i12;
    }

    private void calculateInGridMode() {
        if (getContext() == null) {
            return;
        }
        this.mResponsiveUIModel.rebuild(getMeasuredWidth(), UIUtil.getScreenHeightMetrics(getContext())).chooseMargin(this.mGridMarginType == 1 ? MarginType.MARGIN_SMALL : MarginType.MARGIN_LARGE);
        this.mGridMargin = this.mResponsiveUIModel.margin();
        this.mHorizontalGap = this.mResponsiveUIModel.gutter();
        this.mColumn = this.mResponsiveUIModel.columnCount() / this.mChildGridNumber;
        int i10 = 0;
        this.mChildWidth = this.mResponsiveUIModel.width(0, r2 - 1);
        this.mGridModeColumnWidth = new float[this.mChildGridNumber];
        while (true) {
            int i11 = this.mColumn;
            if (i10 >= i11) {
                this.mMaxHorizontalMargin = new int[i11 + 1];
                return;
            }
            float[] fArr = this.mGridModeColumnWidth;
            ResponsiveUIModel responsiveUIModel = this.mResponsiveUIModel;
            int i12 = this.mChildGridNumber;
            fArr[i10] = responsiveUIModel.width(i10 * i12, (i12 * r6) - 1);
            i10++;
        }
    }

    private void calculateInSpecificGapMode() {
        float widthWithoutPadding = getWidthWithoutPadding();
        float f10 = this.mHorizontalGap;
        this.mColumn = Math.max(1, (int) ((widthWithoutPadding + f10) / (f10 + this.mChildMinWidth)));
        float widthWithoutPadding2 = getWidthWithoutPadding() - calculateHorizontalMargin();
        float f11 = this.mHorizontalGap;
        this.mColumn = Math.max(1, (int) ((widthWithoutPadding2 + f11) / (f11 + this.mChildMinWidth)));
        float widthWithoutPadding3 = getWidthWithoutPadding() - adjustHorizontalMargin();
        float f12 = this.mHorizontalGap;
        this.mChildWidth = Math.max(0.0f, (widthWithoutPadding3 - (f12 * (r2 - 1))) / this.mColumn);
        this.mChildHeight = calculateChildHeight();
    }

    private void calculateInSpecificSizeMode() {
        float widthWithoutPadding = getWidthWithoutPadding();
        float f10 = this.mMinHorizontalGap;
        this.mColumn = Math.max(1, (int) ((widthWithoutPadding + f10) / (f10 + this.mChildWidth)));
        float widthWithoutPadding2 = getWidthWithoutPadding() - calculateHorizontalMargin();
        float f11 = this.mMinHorizontalGap;
        this.mColumn = Math.max(1, (int) ((widthWithoutPadding2 + f11) / (f11 + this.mChildWidth)));
        this.mHorizontalGap = Math.max(0.0f, ((getWidthWithoutPadding() - adjustHorizontalMargin()) - (this.mChildWidth * this.mColumn)) / (r3 - 1));
    }

    private void calculateMargins() {
        int childCount = getChildCount();
        this.mTopMargin = new int[childCount];
        this.mBottomMargin = new int[childCount];
        this.mStartMargin = new int[childCount];
        this.mEndMargin = new int[childCount];
        if (this.mIsIgnoreChildMargin) {
            return;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() != 8) {
                this.mTopMargin[i10] = marginLayoutParams.topMargin;
                this.mBottomMargin[i10] = marginLayoutParams.bottomMargin;
                this.mStartMargin[i10] = marginLayoutParams.getMarginStart();
                this.mEndMargin[i10] = marginLayoutParams.getMarginEnd();
                i10++;
            }
        }
    }

    private int calculateVerticalMargin(int i10) {
        int i11;
        int i12 = 0;
        if (this.mIsIgnoreChildMargin) {
            return 0;
        }
        this.mMaxVerticalMargin = new int[i10 + 1];
        int i13 = 0;
        while (i12 <= i10) {
            int i14 = this.mColumn * i12;
            while (true) {
                i11 = i12 + 1;
                int i15 = this.mColumn;
                if (i14 < i11 * i15) {
                    int[] iArr = this.mTopMargin;
                    if (i14 < iArr.length) {
                        int[] iArr2 = this.mMaxVerticalMargin;
                        int i16 = iArr2[i12];
                        int i17 = iArr[i14];
                        if (i16 < i17) {
                            iArr2[i12] = i17;
                        }
                    }
                    if (i12 > 0 && i14 > 0) {
                        int i18 = i14 - i15;
                        int[] iArr3 = this.mBottomMargin;
                        if (i18 < iArr3.length) {
                            int[] iArr4 = this.mMaxVerticalMargin;
                            if (iArr4[i12] < iArr3[i14 - i15]) {
                                iArr4[i12] = iArr3[i14 - i15];
                            }
                        }
                    }
                    i14++;
                }
            }
            i13 += this.mMaxVerticalMargin[i12];
            i12 = i11;
        }
        return i13;
    }

    private int getVisibleChildCount() {
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if (getChildAt(i11).getVisibility() != 8) {
                i10++;
            }
        }
        return i10;
    }

    private int getWidthWithoutPadding() {
        return (getMeasuredWidth() - getPaddingStart()) - getPaddingEnd();
    }

    private void initAttr(AttributeSet attributeSet) {
        if (getContext() != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.COUIGridLayout);
            this.mHorizontalGap = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIGridLayout_couiHorizontalGap, 0.0f);
            this.mMinHorizontalGap = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIGridLayout_minHorizontalGap, 0.0f);
            this.mVerticalGap = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIGridLayout_couiVerticalGap, 0.0f);
            this.mChildMinWidth = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIGridLayout_childMinWidth, 0.0f);
            this.mChildMinHeight = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIGridLayout_childMinHeight, 0.0f);
            this.mChildHeight = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIGridLayout_childHeight, 0.0f);
            this.mChildWidth = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIGridLayout_childWidth, 0.0f);
            this.mChildGridNumber = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIGridLayout_childGridNumber, 0);
            this.mGridMarginType = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIGridLayout_gridMarginType, 1);
            this.mType = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIGridLayout_specificType, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void initUIManager() {
        if (getContext() != null) {
            this.mResponsiveUIModel = new ResponsiveUIModel(getContext(), 0, 0);
        }
    }

    private boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    private int measureHeight(int i10, double d10) {
        int iCalculateVerticalMargin = calculateVerticalMargin((int) d10);
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode == Integer.MIN_VALUE) {
            return Math.min(size, (int) ((((double) this.mChildHeight) * d10) + ((d10 - 1.0d) * ((double) this.mVerticalGap)) + ((double) iCalculateVerticalMargin)));
        }
        if (mode == 0) {
            return (int) ((((double) this.mChildHeight) * d10) + ((d10 - 1.0d) * ((double) this.mVerticalGap)) + ((double) iCalculateVerticalMargin));
        }
        if (mode != 1073741824) {
            return 0;
        }
        return size;
    }

    @Override // android.widget.GridLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int i14;
        int width;
        super.onLayout(z10, i10, i11, i12, i13);
        int paddingStart = getPaddingStart() + this.mGridMargin;
        int paddingTop = getPaddingTop();
        int i15 = 0;
        for (int i16 = 0; i16 < getChildCount(); i16++) {
            View childAt = getChildAt(i16);
            float f10 = this.mType == 0 ? this.mGridModeColumnWidth[i16 % this.mColumn] : this.mChildWidth;
            int iMax = this.mIsIgnoreChildMargin ? 0 : Math.max(0, this.mMaxHorizontalMargin[i15 % this.mColumn]);
            int iMax2 = this.mIsIgnoreChildMargin ? 0 : Math.max(0, this.mMaxVerticalMargin[i15 / this.mColumn]);
            if (childAt.getVisibility() != 8) {
                if (isLayoutRTL()) {
                    width = (getWidth() - paddingStart) - iMax;
                    i14 = (int) (width - f10);
                } else {
                    i14 = paddingStart + iMax;
                    width = (int) (i14 + f10);
                }
                int i17 = paddingTop + iMax2;
                childAt.layout(i14, i17, width, (int) (i17 + this.mChildHeight));
                i15++;
                if (i15 % this.mColumn == 0) {
                    paddingStart = getPaddingStart() + this.mGridMargin;
                    paddingTop = (int) (paddingTop + this.mChildHeight + this.mVerticalGap + iMax2);
                } else {
                    paddingStart = (int) (paddingStart + this.mHorizontalGap + f10 + iMax);
                }
            }
        }
    }

    @Override // android.widget.GridLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        calculateMargins();
        int i12 = this.mType;
        if (i12 == 0) {
            calculateInGridMode();
        } else if (i12 == 1) {
            calculateInSpecificGapMode();
        } else if (i12 == 2) {
            calculateInSpecificSizeMode();
        }
        for (int i13 = 0; i13 < getChildCount(); i13++) {
            View childAt = getChildAt(i13);
            if (this.mChildHeight == 0.0f) {
                this.mChildHeight = childAt.getMeasuredHeight();
            }
            measureChild(childAt, ViewGroup.getChildMeasureSpec(i10, 0, (int) this.mChildWidth), ViewGroup.getChildMeasureSpec(i11, 0, (int) this.mChildHeight));
        }
        setMeasuredDimension(View.resolveSizeAndState(View.MeasureSpec.getSize(i10), i10, 0), measureHeight(i11, Math.ceil(getVisibleChildCount() / this.mColumn)));
    }

    public void setChildGridNumber(int i10) {
        this.mChildGridNumber = i10;
        requestLayout();
    }

    public void setChildHeight(float f10) {
        this.mChildHeight = f10;
        requestLayout();
    }

    public void setChildMinHeight(float f10) {
        this.mChildMinHeight = f10;
        requestLayout();
    }

    public void setChildMinWidth(float f10) {
        this.mChildMinWidth = f10;
        requestLayout();
    }

    public void setChildWidth(float f10) {
        this.mChildWidth = f10;
        requestLayout();
    }

    public void setGridMarginType(int i10) {
        this.mGridMarginType = i10;
        requestLayout();
    }

    public void setHorizontalGap(float f10) {
        this.mHorizontalGap = f10;
        requestLayout();
    }

    public void setIsIgnoreChildMargin(boolean z10) {
        this.mIsIgnoreChildMargin = z10;
    }

    public void setMinHorizontalGap(float f10) {
        this.mMinHorizontalGap = f10;
        requestLayout();
    }

    public void setType(int i10) {
        this.mType = i10;
        requestLayout();
    }

    public void setVerticalGap(float f10) {
        this.mVerticalGap = f10;
        requestLayout();
    }

    public COUIGridLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUIGridLayout(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public COUIGridLayout(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mIsIgnoreChildMargin = true;
        initUIManager();
        initAttr(attributeSet);
    }
}
