package com.coui.appcompat.grid;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.m0;
import androidx.fragment.app.FragmentContainerView;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.component.responsiveui.unit.Dp;
import com.coui.component.responsiveui.window.WindowSizeClass;
import com.coui.component.responsiveui.window.WindowTotalSizeClass;
import com.support.appcompat.R$attr;
import com.support.grid.R$dimen;

/* JADX INFO: loaded from: classes.dex */
public class COUIListDetailView extends FrameLayout {
    private static final float DEFAULT_MAIN_WIDTH_PERCENT = 0.4f;
    private View mDivider;
    private int mDividerColor;
    private FragmentContainerView mEmptyPageFragment;
    private int mGapWidth;
    private FragmentContainerView mMainFragment;
    private float mMainFragmentPercent;
    private int mMaxMainFragmentWidth;
    private int mMinMainFragmentWidth;
    private FragmentContainerView mSubFragment;

    public COUIListDetailView(Context context) {
        this(context, null);
    }

    private void init(Context context) {
        this.mMainFragment = new FragmentContainerView(context);
        this.mSubFragment = new FragmentContainerView(context);
        this.mEmptyPageFragment = new FragmentContainerView(context);
        this.mDivider = new View(context);
        addView(this.mEmptyPageFragment);
        addView(this.mMainFragment);
        addView(this.mDivider);
        addView(this.mSubFragment);
        this.mEmptyPageFragment.setId(View.generateViewId());
        this.mMainFragment.setId(View.generateViewId());
        this.mSubFragment.setId(View.generateViewId());
        int attrColor = COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorDivider);
        this.mDividerColor = attrColor;
        setDividerColor(attrColor);
        COUIDarkModeUtil.setForceDarkAllow(this.mDivider, false);
        this.mMaxMainFragmentWidth = context.getResources().getDimensionPixelSize(R$dimen.coui_main_fragment_max_width);
        this.mMinMainFragmentWidth = context.getResources().getDimensionPixelSize(R$dimen.coui_main_fragment_min_width);
        this.mGapWidth = context.getResources().getDimensionPixelSize(R$dimen.coui_fragment_gap_width);
    }

    public FrameLayout getEmptyPageFragmentContainer() {
        return this.mEmptyPageFragment;
    }

    public FrameLayout getMainFragmentContainer() {
        return this.mMainFragment;
    }

    public FrameLayout getSubFragmentContainer() {
        return this.mSubFragment;
    }

    public boolean isInSplitMode() {
        WindowSizeClass.Companion companion = WindowSizeClass.Companion;
        Dp.Companion companion2 = Dp.Companion;
        return companion.calculateFromSize(companion2.pixel2Dp(getContext(), Math.abs(getWidth())), companion2.pixel2Dp(getContext(), Math.abs(getWidth()))).getWindowTotalSizeClass() != WindowTotalSizeClass.Compact;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        int attrColor = COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorDivider);
        this.mDividerColor = attrColor;
        setDividerColor(attrColor);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        boolean z11 = m0.v(this) == 1;
        WindowSizeClass.Companion companion = WindowSizeClass.Companion;
        Dp.Companion companion2 = Dp.Companion;
        WindowTotalSizeClass windowTotalSizeClass = companion.calculateFromSize(companion2.pixel2Dp(getContext(), Math.abs(getWidth())), companion2.pixel2Dp(getContext(), Math.abs(getWidth()))).getWindowTotalSizeClass();
        if (z11) {
            if (windowTotalSizeClass == WindowTotalSizeClass.Compact) {
                this.mEmptyPageFragment.setVisibility(8);
                FragmentContainerView fragmentContainerView = this.mMainFragment;
                fragmentContainerView.layout(0, 0, fragmentContainerView.getWidth(), this.mMainFragment.getHeight());
                FragmentContainerView fragmentContainerView2 = this.mSubFragment;
                fragmentContainerView2.layout(0, 0, fragmentContainerView2.getWidth(), this.mSubFragment.getHeight());
                return;
            }
            this.mEmptyPageFragment.setVisibility(0);
            this.mEmptyPageFragment.layout(0, 0, this.mSubFragment.getWidth(), this.mSubFragment.getHeight());
            FragmentContainerView fragmentContainerView3 = this.mSubFragment;
            fragmentContainerView3.layout(0, 0, fragmentContainerView3.getWidth(), this.mSubFragment.getHeight());
            this.mDivider.layout(this.mSubFragment.getWidth(), 0, this.mSubFragment.getWidth() + this.mDivider.getWidth(), this.mDivider.getHeight());
            this.mMainFragment.layout(this.mSubFragment.getWidth() + this.mDivider.getWidth(), 0, this.mSubFragment.getWidth() + this.mDivider.getWidth() + this.mMainFragment.getWidth(), this.mMainFragment.getHeight());
            return;
        }
        if (windowTotalSizeClass == WindowTotalSizeClass.Compact) {
            this.mEmptyPageFragment.setVisibility(8);
            FragmentContainerView fragmentContainerView4 = this.mMainFragment;
            fragmentContainerView4.layout(0, 0, fragmentContainerView4.getWidth(), this.mMainFragment.getHeight());
            FragmentContainerView fragmentContainerView5 = this.mSubFragment;
            fragmentContainerView5.layout(0, 0, fragmentContainerView5.getWidth(), this.mSubFragment.getHeight());
            return;
        }
        this.mEmptyPageFragment.setVisibility(0);
        this.mEmptyPageFragment.layout(this.mMainFragment.getWidth() + this.mDivider.getWidth(), 0, this.mMainFragment.getWidth() + this.mDivider.getWidth() + this.mSubFragment.getWidth(), this.mSubFragment.getHeight());
        FragmentContainerView fragmentContainerView6 = this.mMainFragment;
        fragmentContainerView6.layout(0, 0, fragmentContainerView6.getWidth(), this.mMainFragment.getHeight());
        this.mDivider.layout(this.mMainFragment.getWidth(), 0, this.mMainFragment.getWidth() + this.mDivider.getWidth(), this.mDivider.getHeight());
        this.mSubFragment.layout(this.mMainFragment.getWidth() + this.mDivider.getWidth(), 0, this.mMainFragment.getWidth() + this.mDivider.getWidth() + this.mSubFragment.getWidth(), this.mSubFragment.getHeight());
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int iMin;
        int i12;
        int i13;
        super.onMeasure(i10, i11);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        WindowSizeClass.Companion companion = WindowSizeClass.Companion;
        Dp.Companion companion2 = Dp.Companion;
        WindowTotalSizeClass windowTotalSizeClass = companion.calculateFromSize(companion2.pixel2Dp(getContext(), Math.abs(measuredWidth)), companion2.pixel2Dp(getContext(), Math.abs(measuredHeight))).getWindowTotalSizeClass();
        int iMax = (int) Math.max(Math.min(measuredWidth * this.mMainFragmentPercent, this.mMaxMainFragmentWidth), this.mMinMainFragmentWidth);
        if (windowTotalSizeClass == WindowTotalSizeClass.Compact) {
            iMin = measuredWidth;
            i12 = iMin;
            i13 = 0;
        } else {
            iMin = Math.min(Math.max(iMax, this.mMinMainFragmentWidth), this.mMaxMainFragmentWidth);
            i12 = measuredWidth - iMin;
            i13 = this.mGapWidth;
        }
        measureChild(this.mMainFragment, ViewGroup.getChildMeasureSpec(i10, 0, Math.min(measuredWidth, iMin)), i11);
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, 0, i12);
        measureChild(this.mSubFragment, childMeasureSpec, i11);
        measureChild(this.mEmptyPageFragment, childMeasureSpec, i11);
        measureChild(this.mDivider, ViewGroup.getChildMeasureSpec(i10, 0, i13), i11);
    }

    public void setDividerColor(int i10) {
        this.mDividerColor = i10;
        this.mDivider.setBackgroundColor(i10);
    }

    public void setMainFragmentPercent(float f10) {
        this.mMainFragmentPercent = f10;
        requestLayout();
    }

    public COUIListDetailView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUIListDetailView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mMainFragmentPercent = DEFAULT_MAIN_WIDTH_PERCENT;
        init(context);
    }
}
