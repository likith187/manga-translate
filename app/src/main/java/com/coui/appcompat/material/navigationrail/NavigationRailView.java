package com.coui.appcompat.material.navigationrail;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.h0;
import androidx.core.view.a1;
import androidx.core.view.m0;
import com.coui.appcompat.material.navigation.NavigationBarView;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;

/* JADX INFO: loaded from: classes.dex */
public class NavigationRailView extends NavigationBarView {
    private static final int DEFAULT_HEADER_GRAVITY = 49;
    static final int DEFAULT_MENU_GRAVITY = 49;
    static final int MAX_ITEM_COUNT = 7;
    static final int NO_ITEM_MINIMUM_HEIGHT = -1;
    private View headerView;
    private Boolean paddingBottomSystemWindowInsets;
    private Boolean paddingTopSystemWindowInsets;
    private final int topMargin;

    public NavigationRailView(Context context) {
        this(context, null);
    }

    private void applyWindowInsets() {
        ViewUtils.doOnApplyWindowInsets(this, new ViewUtils.OnApplyWindowInsetsListener() { // from class: com.coui.appcompat.material.navigationrail.NavigationRailView.2
            @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
            public a1 onApplyWindowInsets(View view, a1 a1Var, ViewUtils.RelativePadding relativePadding) {
                NavigationRailView navigationRailView = NavigationRailView.this;
                if (navigationRailView.shouldApplyWindowInsetPadding(navigationRailView.paddingTopSystemWindowInsets)) {
                    relativePadding.top += a1Var.f(a1.m.f()).f15808b;
                }
                NavigationRailView navigationRailView2 = NavigationRailView.this;
                if (navigationRailView2.shouldApplyWindowInsetPadding(navigationRailView2.paddingBottomSystemWindowInsets)) {
                    relativePadding.bottom += a1Var.f(a1.m.f()).f15810d;
                }
                boolean z10 = m0.v(view) == 1;
                int iK = a1Var.k();
                int iL = a1Var.l();
                int i10 = relativePadding.start;
                if (z10) {
                    iK = iL;
                }
                relativePadding.start = i10 + iK;
                relativePadding.applyToView(view);
                return a1Var;
            }
        });
    }

    private NavigationRailMenuView getNavigationRailMenuView() {
        return (NavigationRailMenuView) getMenuView();
    }

    private boolean isHeaderViewVisible() {
        View view = this.headerView;
        return (view == null || view.getVisibility() == 8) ? false : true;
    }

    private int makeMinWidthSpec(int i10) {
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        if (View.MeasureSpec.getMode(i10) == 1073741824 || suggestedMinimumWidth <= 0) {
            return i10;
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i10), suggestedMinimumWidth + getPaddingLeft() + getPaddingRight()), 1073741824);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldApplyWindowInsetPadding(Boolean bool) {
        return bool != null ? bool.booleanValue() : m0.s(this);
    }

    public void addHeaderView(int i10) {
        addHeaderView(LayoutInflater.from(getContext()).inflate(i10, (ViewGroup) this, false));
    }

    public View getHeaderView() {
        return this.headerView;
    }

    public int getItemMinimumHeight() {
        return ((NavigationRailMenuView) getMenuView()).getItemMinimumHeight();
    }

    @Override // com.coui.appcompat.material.navigation.NavigationBarView
    public int getMaxItemCount() {
        return 7;
    }

    public int getMenuGravity() {
        return getNavigationRailMenuView().getMenuGravity();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        NavigationRailMenuView navigationRailMenuView = getNavigationRailMenuView();
        int i14 = 0;
        if (isHeaderViewVisible()) {
            int bottom = this.headerView.getBottom() + this.topMargin;
            int top = navigationRailMenuView.getTop();
            if (top < bottom) {
                i14 = bottom - top;
            }
        } else if (navigationRailMenuView.isTopGravity()) {
            i14 = this.topMargin;
        }
        if (i14 > 0) {
            navigationRailMenuView.layout(navigationRailMenuView.getLeft(), navigationRailMenuView.getTop() + i14, navigationRailMenuView.getRight(), navigationRailMenuView.getBottom() + i14);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int iMakeMinWidthSpec = makeMinWidthSpec(i10);
        super.onMeasure(iMakeMinWidthSpec, i11);
        if (isHeaderViewVisible()) {
            measureChild(getNavigationRailMenuView(), iMakeMinWidthSpec, View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - this.headerView.getMeasuredHeight()) - this.topMargin, Integer.MIN_VALUE));
        }
    }

    public void removeHeaderView() {
        View view = this.headerView;
        if (view != null) {
            removeView(view);
            this.headerView = null;
        }
    }

    public void requestWindowInsets() {
        ViewUtils.doOnApplyWindowInsets(this, new ViewUtils.OnApplyWindowInsetsListener() { // from class: com.coui.appcompat.material.navigationrail.NavigationRailView.1
            @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
            public a1 onApplyWindowInsets(View view, a1 a1Var, ViewUtils.RelativePadding relativePadding) {
                NavigationRailView navigationRailView = NavigationRailView.this;
                if (navigationRailView.shouldApplyWindowInsetPadding(navigationRailView.paddingTopSystemWindowInsets)) {
                    relativePadding.top += a1Var.f(a1.m.f()).f15808b;
                }
                NavigationRailView navigationRailView2 = NavigationRailView.this;
                if (navigationRailView2.shouldApplyWindowInsetPadding(navigationRailView2.paddingBottomSystemWindowInsets)) {
                    relativePadding.bottom += a1Var.f(a1.m.f()).f15810d;
                }
                boolean z10 = m0.v(view) == 1;
                int iK = a1Var.k();
                int iL = a1Var.l();
                int i10 = relativePadding.start;
                if (z10) {
                    iK = iL;
                }
                relativePadding.start = i10 + iK;
                relativePadding.applyToView(view);
                return a1Var;
            }
        });
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

    public void addHeaderView(View view) {
        removeHeaderView();
        this.headerView = view;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 49;
        layoutParams.topMargin = this.topMargin;
        addView(view, 0, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.coui.appcompat.material.navigation.NavigationBarView
    public NavigationRailMenuView createNavigationBarMenuView(Context context) {
        return new NavigationRailMenuView(context);
    }

    public NavigationRailView(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.Widget_MaterialComponents_NavigationRailView);
    }

    public NavigationRailView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.paddingTopSystemWindowInsets = null;
        this.paddingBottomSystemWindowInsets = null;
        this.topMargin = getResources().getDimensionPixelSize(R$dimen.mtrl_navigation_rail_margin);
        h0 h0VarObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(getContext(), attributeSet, R$styleable.NavigationRailView, i10, i11, new int[0]);
        int iN = h0VarObtainTintedStyledAttributes.n(R$styleable.NavigationRailView_headerLayout, 0);
        if (iN != 0) {
            addHeaderView(iN);
        }
        setMenuGravity(h0VarObtainTintedStyledAttributes.k(R$styleable.NavigationRailView_menuGravity, 49));
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationRailView_itemMinHeight)) {
            setItemMinimumHeight(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationRailView_itemMinHeight, -1));
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationRailView_paddingTopSystemWindowInsets)) {
            this.paddingTopSystemWindowInsets = Boolean.valueOf(h0VarObtainTintedStyledAttributes.a(R$styleable.NavigationRailView_paddingTopSystemWindowInsets, false));
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationRailView_paddingBottomSystemWindowInsets)) {
            this.paddingBottomSystemWindowInsets = Boolean.valueOf(h0VarObtainTintedStyledAttributes.a(R$styleable.NavigationRailView_paddingBottomSystemWindowInsets, false));
        }
        h0VarObtainTintedStyledAttributes.y();
    }
}
