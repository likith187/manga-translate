package com.coui.appcompat.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.support.preference.R$dimen;
import com.support.preference.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUICustomLinearLayoutForPreference extends LinearLayout {
    private String TAG;
    private boolean mAHavePriority;
    private boolean mBStickToC;
    private int mDefaultMarginEnd;
    private int mMessageLayoutMarginEndInRight;
    private int mReddotMarginEndInRightHasAssignment;
    private int mReddotMarginEndInRightNoAssignment;
    private boolean mSetMessageLayoutMarginEnd;
    private int mViewLowPriorityMinWidth;
    private View viewA;
    private View viewB;
    private View viewC;

    public COUICustomLinearLayoutForPreference(Context context) {
        this(context, null);
    }

    private void customMeasure(int i10, int i11) {
        int iMax;
        int realWidthWithMargin;
        int marginWidth;
        int iMin;
        int iMin2;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec((View.MeasureSpec.getSize(i10) - getPaddingLeft()) - getPaddingRight(), View.MeasureSpec.getMode(i10));
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec((View.MeasureSpec.getSize(i11) - getPaddingTop()) - getPaddingBottom(), View.MeasureSpec.getMode(i11));
        if (this.viewA.getVisibility() != 8) {
            measureChildWithMargins(this.viewA, iMakeMeasureSpec, 0, iMakeMeasureSpec2, 0);
            iMax = Math.max(this.viewA.getMeasuredHeight(), 0);
        } else {
            measureChild(this.viewA, View.MeasureSpec.makeMeasureSpec(0, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 1073741824));
            iMax = 0;
        }
        if (this.viewB.getVisibility() != 8) {
            measureChildWithMargins(this.viewB, iMakeMeasureSpec, 0, iMakeMeasureSpec2, 0);
            iMax = Math.max(this.viewB.getMeasuredHeight(), iMax);
        } else {
            measureChild(this.viewB, View.MeasureSpec.makeMeasureSpec(0, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 1073741824));
        }
        if (this.viewC.getVisibility() != 8) {
            measureChildWithMargins(this.viewC, iMakeMeasureSpec, 0, iMakeMeasureSpec2, 0);
            iMax = Math.max(this.viewC.getMeasuredHeight(), iMax);
        } else {
            measureChild(this.viewC, View.MeasureSpec.makeMeasureSpec(0, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 1073741824));
        }
        int paddingLeft = getPaddingLeft();
        int measuredWidth = getMeasuredWidth() - getPaddingRight();
        int i12 = measuredWidth - paddingLeft;
        if (getRealWidthWithMargin(this.viewA) + getRealWidthWithMargin(this.viewB) + getRealWidthWithMargin(this.viewC) > i12) {
            if (this.mAHavePriority) {
                realWidthWithMargin = getRealWidthWithMargin(this.viewC);
                marginWidth = getMarginWidth(this.viewC);
            } else {
                realWidthWithMargin = getRealWidthWithMargin(this.viewA);
                marginWidth = getMarginWidth(this.viewA);
            }
            int i13 = realWidthWithMargin - marginWidth;
            int i14 = this.mViewLowPriorityMinWidth;
            if (i13 >= i14) {
                i13 = i14;
            }
            if (this.mAHavePriority) {
                iMin2 = Math.min(getRealWidthWithMargin(this.viewA), (i12 - (i13 + getMarginWidth(this.viewC))) - getRealWidthWithMargin(this.viewB));
                iMin = measuredWidth - Math.max(measuredWidth - getRealWidthWithMargin(this.viewC), (paddingLeft + iMin2) + getRealWidthWithMargin(this.viewB));
            } else {
                iMin = Math.min(getRealWidthWithMargin(this.viewC), (i12 - (i13 + getMarginWidth(this.viewA))) - getRealWidthWithMargin(this.viewB));
                iMin2 = Math.min(getRealWidthWithMargin(this.viewA), (i12 - iMin) - getRealWidthWithMargin(this.viewB));
            }
            int realWidthWithMargin2 = getRealWidthWithMargin(this.viewB);
            if (this.viewA.getVisibility() != 8) {
                View view = this.viewA;
                setChildSize(view, iMin2 - getMarginWidth(view));
                iMax = Math.max(this.viewA.getMeasuredHeight(), iMax);
            }
            if (this.viewB.getVisibility() != 8) {
                View view2 = this.viewB;
                setChildSize(view2, realWidthWithMargin2 - getMarginWidth(view2));
                iMax = Math.max(this.viewB.getMeasuredHeight(), iMax);
            }
            if (this.viewC.getVisibility() != 8) {
                View view3 = this.viewC;
                setChildSize(view3, iMin - getMarginWidth(view3));
                iMax = Math.max(this.viewC.getMeasuredHeight(), iMax);
            }
            setMeasuredDimension(View.MeasureSpec.getSize(i10), View.MeasureSpec.makeMeasureSpec(iMax + getPaddingTop() + getPaddingBottom(), View.MeasureSpec.getMode(i11)));
        }
    }

    private int getMarginHeight(View view) {
        if (view.getVisibility() != 8) {
            return ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).topMargin + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin;
        }
        return 0;
    }

    private int getMarginLeft(View view) {
        if (view.getVisibility() != 8) {
            return ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).leftMargin;
        }
        return 0;
    }

    private int getMarginTop(View view) {
        if (view.getVisibility() != 8) {
            return ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).topMargin;
        }
        return 0;
    }

    private int getMarginWidth(View view) {
        if (view.getVisibility() != 8) {
            return ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).leftMargin + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).rightMargin;
        }
        return 0;
    }

    private int getRealHeight(View view) {
        if (view.getVisibility() != 8) {
            return view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).topMargin + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin;
        }
        return 0;
    }

    private int getRealWidthWithMargin(View view) {
        if (view.getVisibility() != 8) {
            return view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).leftMargin + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).rightMargin;
        }
        return 0;
    }

    private void init(Context context, AttributeSet attributeSet, int i10) {
        setOrientation(0);
        this.mReddotMarginEndInRightNoAssignment = getContext().getResources().getDimensionPixelSize(R$dimen.support_preference_reddot_margin_end_in_right_noassignment);
        this.mReddotMarginEndInRightHasAssignment = getContext().getResources().getDimensionPixelSize(R$dimen.support_preference_reddot_margin_end_in_right_hasassignment);
        this.mMessageLayoutMarginEndInRight = getContext().getResources().getDimensionPixelSize(R$dimen.support_preference_title_margin_end_in_right);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUICustomLinearLayoutForPreference, i10, 0);
        this.mDefaultMarginEnd = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.COUICustomLinearLayoutForPreference_couiMessageLayoutMarginEnd, 0);
        this.mBStickToC = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUICustomLinearLayoutForPreference_couiBStickToC, this.mBStickToC);
        this.mAHavePriority = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUICustomLinearLayoutForPreference_couiAHavePriority, this.mAHavePriority);
        this.mSetMessageLayoutMarginEnd = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUICustomLinearLayoutForPreference_couiMarginEndOfA, this.mSetMessageLayoutMarginEnd);
        typedArrayObtainStyledAttributes.recycle();
        this.mViewLowPriorityMinWidth = context.getResources().getDimensionPixelSize(R$dimen.assignment_in_right_low_priority_min_width);
    }

    private boolean isRtlMode() {
        return getLayoutDirection() == 1;
    }

    private void setChildSize(View view, int i10) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i10, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    private boolean setReddotAndMessageLayoutMarginEnd() {
        boolean z10;
        View view;
        View view2;
        View view3 = this.viewB;
        if (view3 == null || view3.getVisibility() != 0) {
            z10 = false;
        } else {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.viewB.getLayoutParams();
            View view4 = this.viewC;
            if (view4 == null || view4.getVisibility() != 0) {
                int marginEnd = layoutParams.getMarginEnd();
                int i10 = this.mReddotMarginEndInRightNoAssignment;
                if (marginEnd != i10) {
                    layoutParams.setMarginEnd(i10);
                    this.viewB.setLayoutParams(layoutParams);
                    z10 = true;
                }
                z10 = false;
            } else {
                int marginEnd2 = layoutParams.getMarginEnd();
                int i11 = this.mReddotMarginEndInRightHasAssignment;
                if (marginEnd2 != i11) {
                    layoutParams.setMarginEnd(i11);
                    this.viewB.setLayoutParams(layoutParams);
                    z10 = true;
                }
                z10 = false;
            }
        }
        if (this.mSetMessageLayoutMarginEnd && (view = this.viewA) != null && view.getVisibility() == 0) {
            View view5 = this.viewB;
            if ((view5 == null || view5.getVisibility() != 0) && ((view2 = this.viewC) == null || view2.getVisibility() != 0)) {
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.viewA.getLayoutParams();
                int marginEnd3 = layoutParams2.getMarginEnd();
                int i12 = this.mDefaultMarginEnd;
                if (marginEnd3 != i12) {
                    layoutParams2.setMarginEnd(i12);
                    this.viewA.setLayoutParams(layoutParams2);
                    return true;
                }
            } else {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) this.viewA.getLayoutParams();
                int marginEnd4 = layoutParams3.getMarginEnd();
                int i13 = this.mMessageLayoutMarginEndInRight;
                if (marginEnd4 != i13) {
                    layoutParams3.setMarginEnd(i13);
                    this.viewA.setLayoutParams(layoutParams3);
                    return true;
                }
            }
        }
        return z10;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int realWidthWithMargin;
        int realWidthWithMargin2;
        int paddingLeft = getPaddingLeft();
        int measuredWidth = getMeasuredWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int measuredHeight = (getMeasuredHeight() - getPaddingBottom()) - paddingTop;
        int realHeight = ((measuredHeight - getRealHeight(this.viewA)) / 2) + paddingTop;
        int realHeight2 = ((measuredHeight - getRealHeight(this.viewC)) / 2) + paddingTop;
        int realHeight3 = paddingTop + ((measuredHeight - getRealHeight(this.viewB)) / 2);
        if (isRtlMode()) {
            int realWidthWithMargin3 = measuredWidth - getRealWidthWithMargin(this.viewA);
            realWidthWithMargin = this.mBStickToC ? getRealWidthWithMargin(this.viewC) + paddingLeft : realWidthWithMargin3 - getRealWidthWithMargin(this.viewB);
            realWidthWithMargin2 = paddingLeft;
            paddingLeft = realWidthWithMargin3;
        } else {
            realWidthWithMargin2 = measuredWidth - getRealWidthWithMargin(this.viewC);
            realWidthWithMargin = this.mBStickToC ? realWidthWithMargin2 - getRealWidthWithMargin(this.viewB) : getRealWidthWithMargin(this.viewA) + paddingLeft;
        }
        View view = this.viewA;
        view.layout(getMarginLeft(view) + paddingLeft, getMarginTop(this.viewA) + realHeight, ((paddingLeft + getMarginLeft(this.viewA)) + getRealWidthWithMargin(this.viewA)) - getMarginWidth(this.viewA), ((realHeight + getMarginTop(this.viewA)) + getRealHeight(this.viewA)) - getMarginHeight(this.viewA));
        View view2 = this.viewC;
        view2.layout(getMarginLeft(view2) + realWidthWithMargin2, getMarginTop(this.viewC) + realHeight2, ((realWidthWithMargin2 + getMarginLeft(this.viewC)) + getRealWidthWithMargin(this.viewC)) - getMarginWidth(this.viewC), ((realHeight2 + getMarginTop(this.viewC)) + getRealHeight(this.viewC)) - getMarginHeight(this.viewC));
        View view3 = this.viewB;
        view3.layout(getMarginLeft(view3) + realWidthWithMargin, getMarginTop(this.viewB) + realHeight3, ((realWidthWithMargin + getMarginLeft(this.viewB)) + getRealWidthWithMargin(this.viewB)) - getMarginWidth(this.viewB), ((realHeight3 + getMarginTop(this.viewB)) + getRealHeight(this.viewB)) - getMarginHeight(this.viewB));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        this.viewA = getChildAt(0);
        this.viewB = getChildAt(1);
        this.viewC = getChildAt(2);
        if (setReddotAndMessageLayoutMarginEnd()) {
            super.onMeasure(i10, i11);
        }
        customMeasure(i10, i11);
    }

    public COUICustomLinearLayoutForPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUICustomLinearLayoutForPreference(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.TAG = "COUICustomLinearLayout";
        this.mBStickToC = true;
        this.mAHavePriority = true;
        this.mSetMessageLayoutMarginEnd = true;
        init(context, attributeSet, i10);
    }
}
