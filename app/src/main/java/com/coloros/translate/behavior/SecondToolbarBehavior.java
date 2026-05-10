package com.coloros.translate.behavior;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import androidx.annotation.Keep;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.coloros.translate.R;
import com.coloros.translate.behavior.SecondToolbarBehavior;
import com.google.android.material.appbar.AppBarLayout;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class SecondToolbarBehavior extends CoordinatorLayout.c implements AbsListView.OnScrollListener {
    private View mChild;
    private int mCurrentOffset;
    private View mDivider;
    private int mDividerAlphaChangeEndY;
    private int mDividerAlphaChangeOffset;
    private float mDividerAlphaRange;
    private int mDividerInitWidth;
    private ViewGroup.LayoutParams mDividerParams;
    private int mDividerWidthChangeEndY;
    private int mDividerWidthChangeInitY;
    private int mDividerWidthChangeOffset;
    private float mDividerWidthRange;
    private int mListFirstChildInitY;
    private final int[] mLocation;
    private int mLocationY;
    private int mMarginLeftRight;
    private int mMaxWidth;
    private int mNewOffset;
    private Resources mResources;
    private View mScrollView;

    public SecondToolbarBehavior() {
        this.mLocation = new int[2];
    }

    private final void init(Context context) {
        Resources resources = context.getResources();
        this.mResources = resources;
        r.b(resources);
        this.mMarginLeftRight = resources.getDimensionPixelOffset(R.dimen.common_margin) * 2;
        Resources resources2 = this.mResources;
        r.b(resources2);
        this.mDividerAlphaChangeOffset = resources2.getDimensionPixelOffset(R.dimen.line_alpha_range_change_offset);
        Resources resources3 = this.mResources;
        r.b(resources3);
        this.mDividerWidthChangeOffset = resources3.getDimensionPixelOffset(R.dimen.divider_width_change_offset);
    }

    private final void onListScroll() {
        this.mChild = null;
        View view = this.mScrollView;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            r.b(viewGroup);
            if (viewGroup.getChildCount() > 0) {
                int childCount = viewGroup.getChildCount();
                int i10 = 0;
                while (true) {
                    if (i10 < childCount) {
                        View childAt = viewGroup.getChildAt(i10);
                        if (childAt != null && childAt.getVisibility() == 0) {
                            this.mChild = viewGroup.getChildAt(i10);
                            break;
                        }
                        i10++;
                    } else {
                        break;
                    }
                }
            }
        }
        if (this.mChild == null) {
            this.mChild = this.mScrollView;
        }
        View view2 = this.mChild;
        r.b(view2);
        view2.getLocationOnScreen(this.mLocation);
        int i11 = this.mLocation[1];
        this.mLocationY = i11;
        this.mNewOffset = 0;
        if (i11 < this.mDividerAlphaChangeEndY) {
            this.mNewOffset = this.mDividerAlphaChangeOffset;
        } else {
            int i12 = this.mListFirstChildInitY;
            if (i11 > i12) {
                this.mNewOffset = 0;
            } else {
                this.mNewOffset = i12 - i11;
            }
        }
        this.mCurrentOffset = this.mNewOffset;
        if (this.mDividerAlphaRange <= 1.0f) {
            this.mDividerAlphaRange = Math.abs(r0) / this.mDividerAlphaChangeOffset;
            View view3 = this.mDivider;
            r.b(view3);
            view3.setAlpha(this.mDividerAlphaRange);
        }
        int i13 = this.mLocationY;
        if (i13 < this.mDividerWidthChangeEndY) {
            this.mNewOffset = this.mDividerWidthChangeOffset;
        } else {
            int i14 = this.mDividerWidthChangeInitY;
            if (i13 > i14) {
                this.mNewOffset = 0;
            } else {
                this.mNewOffset = i14 - i13;
            }
        }
        this.mCurrentOffset = this.mNewOffset;
        this.mDividerWidthRange = Math.abs(r0) / this.mDividerWidthChangeOffset;
        ViewGroup.LayoutParams layoutParams = this.mDividerParams;
        r.b(layoutParams);
        layoutParams.width = (int) (this.mDividerInitWidth + (this.mMarginLeftRight * this.mDividerWidthRange));
        View view4 = this.mDivider;
        r.b(view4);
        view4.setLayoutParams(this.mDividerParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onStartNestedScroll$lambda$0(SecondToolbarBehavior this$0, View view, int i10, int i11, int i12, int i13) {
        r.e(this$0, "this$0");
        this$0.onListScroll();
    }

    public final int getMDividerInitWidth() {
        return this.mDividerInitWidth;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
        r.e(absListView, "absListView");
        onListScroll();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i10) {
        r.e(absListView, "absListView");
    }

    public final void setMDividerInitWidth(int i10) {
        this.mDividerInitWidth = i10;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout child, View directTargetChild, View target, int i10, int i11) {
        r.e(coordinatorLayout, "coordinatorLayout");
        r.e(child, "child");
        r.e(directTargetChild, "directTargetChild");
        r.e(target, "target");
        if ((i10 & 2) != 0 && coordinatorLayout.getHeight() - directTargetChild.getHeight() <= child.getHeight()) {
            if (this.mListFirstChildInitY <= 0) {
                this.mListFirstChildInitY = child.getMeasuredHeight();
                this.mScrollView = target;
                View viewFindViewById = child.findViewById(R.id.divider_line);
                this.mDivider = viewFindViewById;
                this.mDividerInitWidth = viewFindViewById != null ? viewFindViewById.getWidth() : 0;
                View view = this.mDivider;
                this.mDividerParams = view != null ? view.getLayoutParams() : null;
                this.mMaxWidth = child.getMeasuredWidth();
                int i12 = this.mListFirstChildInitY;
                this.mDividerAlphaChangeEndY = i12 - this.mDividerAlphaChangeOffset;
                Resources resources = this.mResources;
                r.b(resources);
                int dimensionPixelOffset = i12 - resources.getDimensionPixelOffset(R.dimen.divider_width_start_count_offset);
                this.mDividerWidthChangeInitY = dimensionPixelOffset;
                this.mDividerWidthChangeEndY = dimensionPixelOffset - this.mDividerWidthChangeOffset;
            }
            target.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: w1.d
                @Override // android.view.View.OnScrollChangeListener
                public final void onScrollChange(View view2, int i13, int i14, int i15, int i16) {
                    SecondToolbarBehavior.onStartNestedScroll$lambda$0(this.f15982a, view2, i13, i14, i15, i16);
                }
            });
        }
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SecondToolbarBehavior(Context context, AttributeSet attrs) {
        super(context, attrs);
        r.e(context, "context");
        r.e(attrs, "attrs");
        this.mLocation = new int[2];
        init(context);
    }
}
