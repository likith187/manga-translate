package com.google.android.material.navigationrail;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.h0;
import androidx.core.view.a1;
import androidx.core.view.m0;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.navigation.NavigationBarView;
import i4.c;
import u.e;

/* JADX INFO: loaded from: classes.dex */
public class NavigationRailView extends NavigationBarView {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f9821i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private View f9822j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Boolean f9823k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Boolean f9824l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Boolean f9825m;

    class a implements ViewUtils.OnApplyWindowInsetsListener {
        a() {
        }

        @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
        public a1 onApplyWindowInsets(View view, a1 a1Var, ViewUtils.RelativePadding relativePadding) {
            e eVarF = a1Var.f(a1.m.f());
            NavigationRailView navigationRailView = NavigationRailView.this;
            if (navigationRailView.p(navigationRailView.f9823k)) {
                relativePadding.top += eVarF.f15808b;
            }
            NavigationRailView navigationRailView2 = NavigationRailView.this;
            if (navigationRailView2.p(navigationRailView2.f9824l)) {
                relativePadding.bottom += eVarF.f15810d;
            }
            NavigationRailView navigationRailView3 = NavigationRailView.this;
            if (navigationRailView3.p(navigationRailView3.f9825m)) {
                relativePadding.start += ViewUtils.isLayoutRtl(view) ? eVarF.f15809c : eVarF.f15807a;
            }
            relativePadding.applyToView(view);
            return a1Var;
        }
    }

    public NavigationRailView(Context context) {
        this(context, null);
    }

    private NavigationRailMenuView getNavigationRailMenuView() {
        return (NavigationRailMenuView) getMenuView();
    }

    private void k() {
        ViewUtils.doOnApplyWindowInsets(this, new a());
    }

    private boolean m() {
        View view = this.f9822j;
        return (view == null || view.getVisibility() == 8) ? false : true;
    }

    private int n(int i10) {
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        if (View.MeasureSpec.getMode(i10) == 1073741824 || suggestedMinimumWidth <= 0) {
            return i10;
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i10), suggestedMinimumWidth + getPaddingLeft() + getPaddingRight()), 1073741824);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean p(Boolean bool) {
        return bool != null ? bool.booleanValue() : m0.s(this);
    }

    public View getHeaderView() {
        return this.f9822j;
    }

    public int getItemMinimumHeight() {
        return ((NavigationRailMenuView) getMenuView()).getItemMinimumHeight();
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public int getMaxItemCount() {
        return 7;
    }

    public int getMenuGravity() {
        return getNavigationRailMenuView().getMenuGravity();
    }

    public void i(int i10) {
        j(LayoutInflater.from(getContext()).inflate(i10, (ViewGroup) this, false));
    }

    public void j(View view) {
        o();
        this.f9822j = view;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 49;
        layoutParams.topMargin = this.f9821i;
        addView(view, 0, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.navigation.NavigationBarView
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public NavigationRailMenuView c(Context context) {
        return new NavigationRailMenuView(context);
    }

    public void o() {
        View view = this.f9822j;
        if (view != null) {
            removeView(view);
            this.f9822j = null;
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        NavigationRailMenuView navigationRailMenuView = getNavigationRailMenuView();
        int i14 = 0;
        if (m()) {
            int bottom = this.f9822j.getBottom() + this.f9821i;
            int top = navigationRailMenuView.getTop();
            if (top < bottom) {
                i14 = bottom - top;
            }
        } else if (navigationRailMenuView.m()) {
            i14 = this.f9821i;
        }
        if (i14 > 0) {
            navigationRailMenuView.layout(navigationRailMenuView.getLeft(), navigationRailMenuView.getTop() + i14, navigationRailMenuView.getRight(), navigationRailMenuView.getBottom() + i14);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int iN = n(i10);
        super.onMeasure(iN, i11);
        if (m()) {
            measureChild(getNavigationRailMenuView(), iN, View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - this.f9822j.getMeasuredHeight()) - this.f9821i, Integer.MIN_VALUE));
        }
    }

    public void setItemMinimumHeight(int i10) {
        ((NavigationRailMenuView) getMenuView()).setItemMinimumHeight(i10);
    }

    public void setMenuGravity(int i10) {
        getNavigationRailMenuView().setMenuGravity(i10);
    }

    public NavigationRailView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.navigationRailStyle);
    }

    public NavigationRailView(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.Widget_MaterialComponents_NavigationRailView);
    }

    public NavigationRailView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f9823k = null;
        this.f9824l = null;
        this.f9825m = null;
        this.f9821i = getResources().getDimensionPixelSize(R$dimen.mtrl_navigation_rail_margin);
        Context context2 = getContext();
        h0 h0VarObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, R$styleable.NavigationRailView, i10, i11, new int[0]);
        int iN = h0VarObtainTintedStyledAttributes.n(R$styleable.NavigationRailView_headerLayout, 0);
        if (iN != 0) {
            i(iN);
        }
        setMenuGravity(h0VarObtainTintedStyledAttributes.k(R$styleable.NavigationRailView_menuGravity, 49));
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationRailView_itemMinHeight)) {
            setItemMinimumHeight(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationRailView_itemMinHeight, -1));
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationRailView_paddingTopSystemWindowInsets)) {
            this.f9823k = Boolean.valueOf(h0VarObtainTintedStyledAttributes.a(R$styleable.NavigationRailView_paddingTopSystemWindowInsets, false));
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationRailView_paddingBottomSystemWindowInsets)) {
            this.f9824l = Boolean.valueOf(h0VarObtainTintedStyledAttributes.a(R$styleable.NavigationRailView_paddingBottomSystemWindowInsets, false));
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationRailView_paddingStartSystemWindowInsets)) {
            this.f9825m = Boolean.valueOf(h0VarObtainTintedStyledAttributes.a(R$styleable.NavigationRailView_paddingStartSystemWindowInsets, false));
        }
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R$dimen.m3_navigation_rail_item_padding_top_with_large_font);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R$dimen.m3_navigation_rail_item_padding_bottom_with_large_font);
        float fB = x3.a.b(0.0f, 1.0f, 0.3f, 1.0f, c.f(context2) - 1.0f);
        float fC = x3.a.c(getItemPaddingTop(), dimensionPixelOffset, fB);
        float fC2 = x3.a.c(getItemPaddingBottom(), dimensionPixelOffset2, fB);
        setItemPaddingTop(Math.round(fC));
        setItemPaddingBottom(Math.round(fC2));
        h0VarObtainTintedStyledAttributes.y();
        k();
    }
}
