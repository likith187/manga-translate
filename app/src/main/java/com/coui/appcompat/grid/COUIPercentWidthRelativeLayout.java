package com.coui.appcompat.grid;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.support.grid.R$integer;
import com.support.grid.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIPercentWidthRelativeLayout extends RelativeLayout {
    private static final int CARD_LIST_FLAG = 2;
    private static final int DEFAULT_FLAG = 0;
    private static final int LARGE_PADDING = 0;
    private static final int LIST_FLAG = 1;
    private static final int PADDING_MODE = 0;
    private static final int REMEASURE_MODE = 1;
    private static final int SMALL_PADDING = 1;
    private int mGridNumber;
    private int mGridNumberResourceId;
    private int mInitPaddingEnd;
    private int mInitPaddingStart;
    private boolean mIsActivityEmbedded;
    private boolean mIsParentChildHierarchy;
    public int mMode;
    private int mPaddingSize;
    private int mPaddingType;
    private boolean mPercentEnabled;
    private int mScreenPhysicalWidth;

    public COUIPercentWidthRelativeLayout(Context context) {
        this(context, null);
    }

    private void initAttr(AttributeSet attributeSet) {
        if (getContext() != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.COUIPercentWidthRelativeLayout);
            this.mGridNumberResourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.COUIPercentWidthRelativeLayout_gridNumber, 0);
            this.mGridNumber = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIPercentWidthRelativeLayout_gridNumber, getContext().getResources().getInteger(R$integer.grid_guide_column_preference));
            this.mPaddingType = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIPercentWidthRelativeLayout_paddingType, 0);
            this.mPaddingSize = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIPercentWidthRelativeLayout_paddingSize, 0);
            this.mPercentEnabled = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIPercentWidthRelativeLayout_percentIndentEnabled, true);
            this.mMode = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIPercentWidthRelativeLayout_percentMode, 0);
            this.mIsParentChildHierarchy = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIPercentWidthRelativeLayout_isParentChildHierarchy, false);
            this.mInitPaddingStart = getPaddingStart();
            this.mInitPaddingEnd = getPaddingEnd();
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void prepareForMeasure() {
        Context context = getContext();
        if (context != null) {
            this.mIsActivityEmbedded = COUIResponsiveUtils.isActivityEmbedded(getContext());
            if (context instanceof Activity) {
                this.mScreenPhysicalWidth = COUIResponsiveUtils.getScreenPhysicalWidth((Activity) context);
            } else {
                this.mScreenPhysicalWidth = -1;
            }
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (getContext() != null && this.mGridNumberResourceId != 0) {
            this.mGridNumber = getContext().getResources().getInteger(this.mGridNumberResourceId);
        }
        prepareForMeasure();
        requestLayout();
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int iMeasureLayout;
        if (this.mPercentEnabled) {
            iMeasureLayout = COUIResponsiveUtils.measureLayout(this, i10, this.mGridNumber, this.mPaddingType, this.mPaddingSize, this.mMode, this.mInitPaddingStart, this.mInitPaddingEnd, this.mScreenPhysicalWidth, this.mIsParentChildHierarchy, this.mIsActivityEmbedded);
            for (int i12 = 0; i12 < getChildCount(); i12++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i12).getLayoutParams();
                COUIResponsiveUtils.measureChildWithPercent(getContext(), getChildAt(i12), iMeasureLayout, this.mPaddingType, this.mPaddingSize, layoutParams.mGridNumber, layoutParams.mPercentMode);
            }
        } else {
            iMeasureLayout = i10;
        }
        super.onMeasure(iMeasureLayout, i11);
    }

    public void setIsParentChildHierarchy(boolean z10) {
        this.mIsParentChildHierarchy = z10;
        requestLayout();
    }

    public void setPercentIndentEnabled(boolean z10) {
        this.mPercentEnabled = z10;
        requestLayout();
    }

    public static class LayoutParams extends RelativeLayout.LayoutParams {
        public int mGridNumber;
        public int mPercentMode;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            init(context, attributeSet);
        }

        private void init(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIPercentWidthRelativeLayout_Layout);
            this.mGridNumber = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIPercentWidthRelativeLayout_Layout_layout_gridNumber, 0);
            this.mPercentMode = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIPercentWidthRelativeLayout_Layout_layout_percentMode, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public void setGridNumber(int i10) {
            this.mGridNumber = i10;
        }

        public void setPercentMode(int i10) {
            this.mPercentMode = i10;
        }

        public LayoutParams(int i10, int i11) {
            super(i10, i11);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
        }
    }

    public COUIPercentWidthRelativeLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.RelativeLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    public COUIPercentWidthRelativeLayout(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public COUIPercentWidthRelativeLayout(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mMode = 0;
        this.mPercentEnabled = true;
        this.mIsActivityEmbedded = false;
        this.mScreenPhysicalWidth = 0;
        initAttr(attributeSet);
        prepareForMeasure();
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.RelativeLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }
}
