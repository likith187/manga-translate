package com.coui.appcompat.grid;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.recyclerview.widget.COUIRecyclerView;
import com.support.grid.R$integer;
import com.support.grid.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIPercentWidthRecyclerView extends COUIRecyclerView {
    private static final int CARD_LIST_FLAG = 2;
    private static final int DEFAULT_FLAG = 0;
    private static final int LARGE_PADDING = 0;
    private static final int LIST_FLAG = 1;
    private static final int SMALL_PADDING = 1;
    private static final String TAG = "COUIPercentWidthRecyclerView";
    private int mGridNumber;
    private int mGridNumberResourceId;
    private int mInitPaddingEnd;
    private int mInitPaddingStart;
    private boolean mIsActivityEmbedded;
    private boolean mIsParentChildHierarchy;
    private int mPaddingSize;
    private int mPaddingType;
    private boolean mPercentEnabled;
    private int mScreenPhysicalWidth;

    public COUIPercentWidthRecyclerView(Context context) {
        this(context, null);
    }

    private void initAttr(AttributeSet attributeSet) {
        if (getContext() != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.COUIPercentWidthRecyclerView);
            this.mGridNumberResourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.COUIPercentWidthRecyclerView_couiRecyclerGridNumber, 0);
            this.mGridNumber = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIPercentWidthRecyclerView_couiRecyclerGridNumber, getContext().getResources().getInteger(R$integer.grid_guide_column_preference));
            this.mPaddingType = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIPercentWidthRecyclerView_paddingType, 1);
            this.mPaddingSize = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIPercentWidthRecyclerView_paddingSize, 0);
            this.mIsParentChildHierarchy = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIPercentWidthRecyclerView_isParentChildHierarchy, false);
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

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (getContext() != null && this.mGridNumberResourceId != 0) {
            this.mGridNumber = getContext().getResources().getInteger(this.mGridNumberResourceId);
        }
        prepareForMeasure();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.mPercentEnabled) {
            i10 = COUIResponsiveUtils.measureLayout(this, i10, this.mGridNumber, this.mPaddingType, this.mPaddingSize, 0, this.mInitPaddingStart, this.mInitPaddingEnd, this.mScreenPhysicalWidth, this.mIsParentChildHierarchy, this.mIsActivityEmbedded);
        } else if (getPaddingStart() != this.mInitPaddingStart || getPaddingEnd() != this.mInitPaddingEnd) {
            setPaddingRelative(this.mInitPaddingStart, getPaddingTop(), this.mInitPaddingEnd, getPaddingBottom());
        }
        super.onMeasure(i10, i11);
    }

    public void setIsParentChildHierarchy(boolean z10) {
        this.mIsParentChildHierarchy = z10;
        requestLayout();
    }

    public void setPercentIndentEnabled(boolean z10) {
        this.mPercentEnabled = z10;
        requestLayout();
    }

    public COUIPercentWidthRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUIPercentWidthRecyclerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mPercentEnabled = true;
        this.mIsActivityEmbedded = false;
        this.mScreenPhysicalWidth = 0;
        initAttr(attributeSet);
        this.mInitPaddingStart = getPaddingStart();
        this.mInitPaddingEnd = getPaddingEnd();
        setScrollBarStyle(33554432);
        prepareForMeasure();
    }
}
