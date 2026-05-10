package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.h0;
import androidx.core.view.a1;
import androidx.core.view.m0;
import com.google.android.material.R$attr;
import com.google.android.material.R$color;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.navigation.NavigationBarMenuView;
import com.google.android.material.navigation.NavigationBarView;

/* JADX INFO: loaded from: classes.dex */
public class BottomNavigationView extends NavigationBarView {

    class a implements ViewUtils.OnApplyWindowInsetsListener {
        a() {
        }

        @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
        public a1 onApplyWindowInsets(View view, a1 a1Var, ViewUtils.RelativePadding relativePadding) {
            relativePadding.bottom += a1Var.j();
            boolean z10 = m0.v(view) == 1;
            int iK = a1Var.k();
            int iL = a1Var.l();
            relativePadding.start += z10 ? iL : iK;
            int i10 = relativePadding.end;
            if (!z10) {
                iK = iL;
            }
            relativePadding.end = i10 + iK;
            relativePadding.applyToView(view);
            return a1Var;
        }
    }

    public interface b extends NavigationBarView.b {
    }

    public interface c extends NavigationBarView.c {
    }

    public BottomNavigationView(Context context) {
        this(context, null);
    }

    private void e(Context context) {
        View view = new View(context);
        view.setBackgroundColor(r.a.c(context, R$color.design_bottom_navigation_shadow_color));
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R$dimen.design_bottom_navigation_shadow_height)));
        addView(view);
    }

    private void f() {
        ViewUtils.doOnApplyWindowInsets(this, new a());
    }

    private int g(int i10) {
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        if (View.MeasureSpec.getMode(i10) == 1073741824 || suggestedMinimumHeight <= 0) {
            return i10;
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i10), suggestedMinimumHeight + getPaddingTop() + getPaddingBottom()), 1073741824);
    }

    private boolean h() {
        return false;
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    protected NavigationBarMenuView c(Context context) {
        return new BottomNavigationMenuView(context);
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public int getMaxItemCount() {
        return 5;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, g(i11));
    }

    public void setItemHorizontalTranslationEnabled(boolean z10) {
        BottomNavigationMenuView bottomNavigationMenuView = (BottomNavigationMenuView) getMenuView();
        if (bottomNavigationMenuView.m() != z10) {
            bottomNavigationMenuView.setItemHorizontalTranslationEnabled(z10);
            getPresenter().updateMenuView(false);
        }
    }

    @Deprecated
    public void setOnNavigationItemReselectedListener(b bVar) {
        setOnItemReselectedListener(bVar);
    }

    @Deprecated
    public void setOnNavigationItemSelectedListener(c cVar) {
        setOnItemSelectedListener(cVar);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.bottomNavigationStyle);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.Widget_Design_BottomNavigationView);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        Context context2 = getContext();
        h0 h0VarObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, R$styleable.BottomNavigationView, i10, i11, new int[0]);
        setItemHorizontalTranslationEnabled(h0VarObtainTintedStyledAttributes.a(R$styleable.BottomNavigationView_itemHorizontalTranslationEnabled, true));
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.BottomNavigationView_android_minHeight)) {
            setMinimumHeight(h0VarObtainTintedStyledAttributes.f(R$styleable.BottomNavigationView_android_minHeight, 0));
        }
        if (h0VarObtainTintedStyledAttributes.a(R$styleable.BottomNavigationView_compatShadowEnabled, true) && h()) {
            e(context2);
        }
        h0VarObtainTintedStyledAttributes.y();
        f();
    }
}
