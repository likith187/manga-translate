package com.coui.appcompat.tablayout;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.m0;
import com.coui.appcompat.grid.COUIResponsiveUtils;
import com.coui.appcompat.searchview.COUISearchBar;
import com.coui.appcompat.toolbar.COUIToolbar;
import com.coui.appcompat.uiutil.UIUtil;
import com.coui.component.responsiveui.ResponsiveUIModel;
import com.coui.component.responsiveui.layoutgrid.MarginType;
import com.support.tablayout.R$dimen;

/* JADX INFO: loaded from: classes.dex */
public class COUIPercentTabWithSearchView extends FrameLayout {
    private static final int MAX_CHILD_COUNT = 2;
    private static final int RESPONSIVE_WIDTH_TYPE_COMPAT = 0;
    private static final int RESPONSIVE_WIDTH_TYPE_EXPANDED = 2;
    private static final int RESPONSIVE_WIDTH_TYPE_MEDIUM = 1;
    private int mHorizontalPaddingInLargerScreen;
    private ResponsiveUIModel mResponsiveUIModel;
    private int mResponsiveWidthSize;
    private final int[] mSearchBarPaddingEnd;
    private final int[] mSearchBarPaddingStart;

    public COUIPercentTabWithSearchView(Context context) {
        this(context, null);
    }

    private void init(Context context) {
        initAttr();
        this.mResponsiveUIModel = new ResponsiveUIModel(context, 0, 0);
    }

    private void initAttr() {
        if (getContext() != null) {
            this.mHorizontalPaddingInLargerScreen = getContext().getResources().getDimensionPixelSize(R$dimen.coui_tab_search_horizontal_padding);
        }
    }

    private void layoutSearchBarAndTabLayout(View view, View view2) {
        int iCalculateWidth;
        int iGutter;
        int iCalculateWidth2;
        int iGutter2;
        int height;
        boolean z10 = m0.v(this) == 1;
        if (COUIResponsiveUtils.isSmallScreen(getContext(), getMeasuredWidth())) {
            if (view != null) {
                height = view.getHeight();
                view.layout(0, 0, view.getWidth(), height);
            } else {
                height = 0;
            }
            if (view2 != null) {
                view2.layout(0, height, view2.getWidth(), view2.getHeight() + height);
                return;
            }
            return;
        }
        if (z10) {
            if (view2 != null) {
                if (COUIResponsiveUtils.isMediumScreen(getContext(), getMeasuredWidth(), UIUtil.getScreenHeightMetrics(getContext()))) {
                    view2.layout(getMeasuredWidth() - view2.getWidth(), (getMeasuredHeight() - view2.getHeight()) / 2, getMeasuredWidth(), view2.getHeight() + ((getMeasuredHeight() - view2.getHeight()) / 2));
                } else {
                    view2.layout((getMeasuredWidth() - view2.getWidth()) - this.mHorizontalPaddingInLargerScreen, (getMeasuredHeight() - view2.getHeight()) / 2, getMeasuredWidth() - this.mHorizontalPaddingInLargerScreen, view2.getHeight() + ((getMeasuredHeight() - view2.getHeight()) / 2));
                }
            }
            if (COUIResponsiveUtils.isMediumScreen(getContext(), getMeasuredWidth(), UIUtil.getScreenHeightMetrics(getContext()))) {
                iCalculateWidth2 = ((int) COUIResponsiveUtils.calculateWidth(getMeasuredWidth(), 4, 0, 0, getContext())) + this.mResponsiveUIModel.margin();
                iGutter2 = this.mResponsiveUIModel.gutter();
            } else {
                iCalculateWidth2 = ((int) COUIResponsiveUtils.calculateWidth(getMeasuredWidth(), 8, 0, 0, getContext())) + this.mResponsiveUIModel.margin();
                iGutter2 = this.mResponsiveUIModel.gutter();
            }
            int measuredWidth = getMeasuredWidth() - (iCalculateWidth2 + iGutter2);
            if (view != null) {
                view.layout(measuredWidth - view.getWidth(), 0, measuredWidth, view.getHeight());
                return;
            }
            return;
        }
        if (view2 != null) {
            if (COUIResponsiveUtils.isMediumScreen(getContext(), getMeasuredWidth(), UIUtil.getScreenHeightMetrics(getContext()))) {
                view2.layout(0, (getMeasuredHeight() - view2.getHeight()) / 2, view2.getWidth(), view2.getHeight() + ((getMeasuredHeight() - view2.getHeight()) / 2));
            } else {
                view2.layout(this.mHorizontalPaddingInLargerScreen, (getMeasuredHeight() - view2.getHeight()) / 2, view2.getWidth() + this.mHorizontalPaddingInLargerScreen, view2.getHeight() + ((getMeasuredHeight() - view2.getHeight()) / 2));
            }
        }
        if (COUIResponsiveUtils.isMediumScreen(getContext(), getMeasuredWidth(), UIUtil.getScreenHeightMetrics(getContext()))) {
            iCalculateWidth = ((int) COUIResponsiveUtils.calculateWidth(getMeasuredWidth(), 4, 0, 0, getContext())) + this.mResponsiveUIModel.margin();
            iGutter = this.mResponsiveUIModel.gutter();
        } else {
            iCalculateWidth = ((int) COUIResponsiveUtils.calculateWidth(getMeasuredWidth(), 8, 0, 0, getContext())) + this.mResponsiveUIModel.margin();
            iGutter = this.mResponsiveUIModel.gutter();
        }
        int i10 = iCalculateWidth + iGutter;
        if (view != null) {
            view.layout(i10, 0, view.getWidth() + i10, view.getHeight());
        }
    }

    private void layoutToolbarAndTabLayout(View view, View view2) {
        int iCalculateWidth;
        int iGutter;
        int iCalculateWidth2;
        int iGutter2;
        int height;
        boolean z10 = m0.v(this) == 1;
        if (COUIResponsiveUtils.isSmallScreen(getContext(), getMeasuredWidth())) {
            if (view != null) {
                height = view.getHeight();
                if (z10) {
                    view.layout(0, 0, view.getWidth(), height);
                } else {
                    view.layout(this.mResponsiveUIModel.margin(), 0, this.mResponsiveUIModel.margin() + view.getWidth(), height);
                }
            } else {
                height = 0;
            }
            if (view2 != null) {
                view2.layout(0, height, view2.getWidth(), view2.getHeight() + height);
                return;
            }
            return;
        }
        if (z10) {
            if (view2 != null) {
                if (COUIResponsiveUtils.isMediumScreen(getContext(), getMeasuredWidth(), UIUtil.getScreenHeightMetrics(getContext()))) {
                    view2.layout(getMeasuredWidth() - view2.getWidth(), (getMeasuredHeight() - view2.getHeight()) / 2, getMeasuredWidth(), view2.getHeight() + ((getMeasuredHeight() - view2.getHeight()) / 2));
                } else {
                    view2.layout((getMeasuredWidth() - view2.getWidth()) - this.mHorizontalPaddingInLargerScreen, (getMeasuredHeight() - view2.getHeight()) / 2, getMeasuredWidth() - this.mHorizontalPaddingInLargerScreen, view2.getHeight() + ((getMeasuredHeight() - view2.getHeight()) / 2));
                }
            }
            if (COUIResponsiveUtils.isMediumScreen(getContext(), getMeasuredWidth(), UIUtil.getScreenHeightMetrics(getContext()))) {
                iCalculateWidth2 = ((int) COUIResponsiveUtils.calculateWidth(getMeasuredWidth(), 4, 0, 0, getContext())) + this.mResponsiveUIModel.margin();
                iGutter2 = this.mResponsiveUIModel.gutter();
            } else {
                iCalculateWidth2 = ((int) COUIResponsiveUtils.calculateWidth(getMeasuredWidth(), 8, 0, 0, getContext())) + this.mResponsiveUIModel.margin();
                iGutter2 = this.mResponsiveUIModel.gutter();
            }
            int measuredWidth = getMeasuredWidth() - (iCalculateWidth2 + iGutter2);
            if (view != null) {
                view.layout(measuredWidth - view.getWidth(), 0, measuredWidth, view.getHeight());
                return;
            }
            return;
        }
        if (view2 != null) {
            if (COUIResponsiveUtils.isMediumScreen(getContext(), getMeasuredWidth(), UIUtil.getScreenHeightMetrics(getContext()))) {
                view2.layout(0, (getMeasuredHeight() - view2.getHeight()) / 2, view2.getWidth(), view2.getHeight() + ((getMeasuredHeight() - view2.getHeight()) / 2));
            } else {
                view2.layout(this.mHorizontalPaddingInLargerScreen, (getMeasuredHeight() - view2.getHeight()) / 2, view2.getWidth() + this.mHorizontalPaddingInLargerScreen, view2.getHeight() + ((getMeasuredHeight() - view2.getHeight()) / 2));
            }
        }
        if (COUIResponsiveUtils.isMediumScreen(getContext(), getMeasuredWidth(), UIUtil.getScreenHeightMetrics(getContext()))) {
            iCalculateWidth = ((int) COUIResponsiveUtils.calculateWidth(getMeasuredWidth(), 4, 0, 0, getContext())) + this.mResponsiveUIModel.margin();
            iGutter = this.mResponsiveUIModel.gutter();
        } else {
            iCalculateWidth = ((int) COUIResponsiveUtils.calculateWidth(getMeasuredWidth(), 8, 0, 0, getContext())) + this.mResponsiveUIModel.margin();
            iGutter = this.mResponsiveUIModel.gutter();
        }
        int i10 = iCalculateWidth + iGutter;
        if (view != null) {
            view.layout(i10, 0, view.getWidth() + i10, view.getHeight());
        }
    }

    private void measureSearchBar(int i10, int i11, View view) {
        int measuredWidth = COUIResponsiveUtils.isSmallScreen(getContext(), getMeasuredWidth()) ? getMeasuredWidth() : ((int) COUIResponsiveUtils.calculateWidth(getMeasuredWidth(), 4, 0, 0, getContext())) + this.mResponsiveUIModel.margin();
        int[] iArr = this.mSearchBarPaddingStart;
        int i12 = this.mResponsiveWidthSize;
        view.setPaddingRelative(iArr[i12], 0, this.mSearchBarPaddingEnd[i12], 0);
        measureChild(view, ViewGroup.getChildMeasureSpec(i10, 0, Math.min(getMeasuredWidth(), measuredWidth)), ViewGroup.getChildMeasureSpec(i11, 0, getMeasuredHeight()));
    }

    private void measureTabLayout(int i10, int i11, View view) {
        int iCalculateWidth;
        if (COUIResponsiveUtils.isSmallScreen(getContext(), getMeasuredWidth())) {
            iCalculateWidth = (int) COUIResponsiveUtils.calculateWidth(getMeasuredWidth(), 4, 1, 0, getContext());
        } else {
            iCalculateWidth = (COUIResponsiveUtils.isMediumScreen(getContext(), getMeasuredWidth(), UIUtil.getScreenHeightMetrics(getContext())) ? (int) COUIResponsiveUtils.calculateWidth(getMeasuredWidth(), 4, 0, 0, getContext()) : COUIResponsiveUtils.isLargeScreen(getContext(), getMeasuredWidth(), UIUtil.getScreenHeightMetrics(getContext())) ? ((int) COUIResponsiveUtils.calculateWidth(getMeasuredWidth(), 8, 0, 0, getContext())) - this.mHorizontalPaddingInLargerScreen : 0) + this.mResponsiveUIModel.margin();
        }
        measureChild(view, ViewGroup.getChildMeasureSpec(i10, 0, Math.min(getMeasuredWidth(), iCalculateWidth)), ViewGroup.getChildMeasureSpec(i11, 0, getMeasuredHeight()));
    }

    private void measureToolbar(int i10, int i11, View view) {
        int iCalculateWidth;
        if (COUIResponsiveUtils.isSmallScreen(getContext(), getMeasuredWidth())) {
            iCalculateWidth = ((int) COUIResponsiveUtils.calculateWidth(getMeasuredWidth(), 4, 0, 0, getContext())) + this.mResponsiveUIModel.margin();
        } else {
            iCalculateWidth = (int) COUIResponsiveUtils.calculateWidth(getMeasuredWidth(), 4, 0, 0, getContext());
            if (COUIResponsiveUtils.isLargeScreen(getContext(), getMeasuredWidth(), UIUtil.getScreenHeightMetrics(getContext()))) {
                iCalculateWidth -= this.mHorizontalPaddingInLargerScreen;
            }
        }
        measureChild(view, ViewGroup.getChildMeasureSpec(i10, 0, Math.min(getMeasuredWidth(), iCalculateWidth + this.mResponsiveUIModel.margin())), ViewGroup.getChildMeasureSpec(i11, 0, getMeasuredHeight()));
    }

    private void updateResponsiveUI() {
        int measuredWidth = getMeasuredWidth();
        this.mResponsiveUIModel.rebuild(measuredWidth, getMeasuredHeight()).chooseMargin(MarginType.MARGIN_SMALL);
        if (COUIResponsiveUtils.isSmallScreen(getContext(), measuredWidth)) {
            this.mResponsiveWidthSize = 0;
        } else if (COUIResponsiveUtils.isMediumScreen(getContext(), measuredWidth, UIUtil.getScreenHeightMetrics(getContext()))) {
            this.mResponsiveWidthSize = 1;
        } else if (COUIResponsiveUtils.isLargeScreen(getContext(), measuredWidth, UIUtil.getScreenHeightMetrics(getContext()))) {
            this.mResponsiveWidthSize = 2;
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mResponsiveUIModel.onConfigurationChanged(configuration);
        this.mResponsiveUIModel.chooseMargin(MarginType.MARGIN_SMALL);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        int childCount = getChildCount();
        View view = null;
        View view2 = null;
        View view3 = null;
        for (int i14 = 0; i14 < childCount && i14 < 2; i14++) {
            View childAt = getChildAt(i14);
            if (childAt instanceof COUIToolbar) {
                view = childAt;
            } else if (childAt instanceof COUITabLayout) {
                view3 = childAt;
            } else if (childAt instanceof COUISearchBar) {
                view2 = childAt;
            }
        }
        if (view2 == null) {
            layoutToolbarAndTabLayout(view, view3);
        } else {
            layoutSearchBarAndTabLayout(view2, view3);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        updateResponsiveUI();
        int childCount = getChildCount();
        int measuredHeight = 0;
        boolean z10 = false;
        int measuredHeight2 = 0;
        int measuredHeight3 = 0;
        for (int i12 = 0; i12 < childCount && i12 < 2; i12++) {
            View childAt = getChildAt(i12);
            if (childAt instanceof COUIToolbar) {
                measureToolbar(i10, i11, childAt);
                measuredHeight2 = childAt.getMeasuredHeight();
            } else if (childAt instanceof COUITabLayout) {
                measureTabLayout(i10, i11, childAt);
                measuredHeight = childAt.getMeasuredHeight();
            } else if (childAt instanceof COUISearchBar) {
                ((COUISearchBar) childAt).setUseResponsivePadding(false);
                measureSearchBar(i10, i11, childAt);
                measuredHeight3 = childAt.getMeasuredHeight();
                z10 = true;
            }
        }
        if (COUIResponsiveUtils.isSmallScreen(getContext(), getMeasuredWidth())) {
            int iResolveSizeAndState = View.resolveSizeAndState(View.MeasureSpec.getSize(i10), i10, 0);
            if (z10) {
                measuredHeight2 = measuredHeight3;
            }
            setMeasuredDimension(iResolveSizeAndState, measuredHeight2 + measuredHeight);
            return;
        }
        int iResolveSizeAndState2 = View.resolveSizeAndState(View.MeasureSpec.getSize(i10), i10, 0);
        if (z10) {
            measuredHeight2 = measuredHeight3;
        }
        setMeasuredDimension(iResolveSizeAndState2, Math.max(measuredHeight, measuredHeight2));
    }

    public COUIPercentTabWithSearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUIPercentTabWithSearchView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mResponsiveWidthSize = 0;
        this.mSearchBarPaddingStart = new int[]{getContext().getResources().getDimensionPixelOffset(R$dimen.coui_tab_search_bar_padding_start_compat), getContext().getResources().getDimensionPixelOffset(R$dimen.coui_tab_search_bar_padding_start_medium), getContext().getResources().getDimensionPixelOffset(R$dimen.coui_tab_search_bar_padding_start_expanded)};
        this.mSearchBarPaddingEnd = new int[]{getContext().getResources().getDimensionPixelOffset(R$dimen.coui_tab_search_bar_padding_end_compat), getContext().getResources().getDimensionPixelOffset(R$dimen.coui_tab_search_bar_padding_end_medium), getContext().getResources().getDimensionPixelOffset(R$dimen.coui_tab_search_bar_padding_end_expanded)};
        init(context);
    }
}
