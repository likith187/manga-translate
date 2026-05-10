package com.google.android.material.navigation;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.FrameLayout;
import androidx.appcompat.view.g;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.h0;
import androidx.core.view.m0;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$dimen;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.shape.i;
import com.google.android.material.shape.j;
import com.google.android.material.shape.n;

/* JADX INFO: loaded from: classes.dex */
public abstract class NavigationBarView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.material.navigation.c f9784a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final NavigationBarMenuView f9785b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final NavigationBarPresenter f9786c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private MenuInflater f9787f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private c f9788h;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Bundle f9789a;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private void readFromParcel(Parcel parcel, ClassLoader classLoader) {
            this.f9789a = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeBundle(this.f9789a);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            readFromParcel(parcel, classLoader == null ? getClass().getClassLoader() : classLoader);
        }
    }

    class a implements MenuBuilder.Callback {
        a() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            NavigationBarView.a(NavigationBarView.this);
            return (NavigationBarView.this.f9788h == null || NavigationBarView.this.f9788h.onNavigationItemSelected(menuItem)) ? false : true;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }
    }

    public interface b {
    }

    public interface c {
        boolean onNavigationItemSelected(MenuItem menuItem);
    }

    public NavigationBarView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(m4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        NavigationBarPresenter navigationBarPresenter = new NavigationBarPresenter();
        this.f9786c = navigationBarPresenter;
        Context context2 = getContext();
        h0 h0VarObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, R$styleable.NavigationBarView, i10, i11, R$styleable.NavigationBarView_itemTextAppearanceInactive, R$styleable.NavigationBarView_itemTextAppearanceActive);
        com.google.android.material.navigation.c cVar = new com.google.android.material.navigation.c(context2, getClass(), getMaxItemCount());
        this.f9784a = cVar;
        NavigationBarMenuView navigationBarMenuViewC = c(context2);
        this.f9785b = navigationBarMenuViewC;
        navigationBarPresenter.b(navigationBarMenuViewC);
        navigationBarPresenter.a(1);
        navigationBarMenuViewC.setPresenter(navigationBarPresenter);
        cVar.addMenuPresenter(navigationBarPresenter);
        navigationBarPresenter.initForMenu(getContext(), cVar);
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationBarView_itemIconTint)) {
            navigationBarMenuViewC.setIconTintList(h0VarObtainTintedStyledAttributes.c(R$styleable.NavigationBarView_itemIconTint));
        } else {
            navigationBarMenuViewC.setIconTintList(navigationBarMenuViewC.d(R.attr.textColorSecondary));
        }
        setItemIconSize(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationBarView_itemIconSize, getResources().getDimensionPixelSize(R$dimen.mtrl_navigation_bar_item_default_icon_size)));
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationBarView_itemTextAppearanceInactive)) {
            setItemTextAppearanceInactive(h0VarObtainTintedStyledAttributes.n(R$styleable.NavigationBarView_itemTextAppearanceInactive, 0));
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationBarView_itemTextAppearanceActive)) {
            setItemTextAppearanceActive(h0VarObtainTintedStyledAttributes.n(R$styleable.NavigationBarView_itemTextAppearanceActive, 0));
        }
        setItemTextAppearanceActiveBoldEnabled(h0VarObtainTintedStyledAttributes.a(R$styleable.NavigationBarView_itemTextAppearanceActiveBoldEnabled, true));
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationBarView_itemTextColor)) {
            setItemTextColor(h0VarObtainTintedStyledAttributes.c(R$styleable.NavigationBarView_itemTextColor));
        }
        Drawable background = getBackground();
        ColorStateList colorStateListG = com.google.android.material.drawable.a.g(background);
        if (background == null || colorStateListG != null) {
            i iVar = new i(n.e(context2, attributeSet, i10, i11).m());
            if (colorStateListG != null) {
                iVar.setFillColor(colorStateListG);
            }
            iVar.initializeElevationOverlay(context2);
            m0.n0(this, iVar);
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationBarView_itemPaddingTop)) {
            setItemPaddingTop(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationBarView_itemPaddingTop, 0));
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationBarView_itemPaddingBottom)) {
            setItemPaddingBottom(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationBarView_itemPaddingBottom, 0));
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationBarView_activeIndicatorLabelPadding)) {
            setActiveIndicatorLabelPadding(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationBarView_activeIndicatorLabelPadding, 0));
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationBarView_elevation)) {
            setElevation(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationBarView_elevation, 0));
        }
        v.a.o(getBackground().mutate(), i4.c.b(context2, h0VarObtainTintedStyledAttributes, R$styleable.NavigationBarView_backgroundTint));
        setLabelVisibilityMode(h0VarObtainTintedStyledAttributes.l(R$styleable.NavigationBarView_labelVisibilityMode, -1));
        int iN = h0VarObtainTintedStyledAttributes.n(R$styleable.NavigationBarView_itemBackground, 0);
        if (iN != 0) {
            navigationBarMenuViewC.setItemBackgroundRes(iN);
        } else {
            setItemRippleColor(i4.c.b(context2, h0VarObtainTintedStyledAttributes, R$styleable.NavigationBarView_itemRippleColor));
        }
        int iN2 = h0VarObtainTintedStyledAttributes.n(R$styleable.NavigationBarView_itemActiveIndicatorStyle, 0);
        if (iN2 != 0) {
            setItemActiveIndicatorEnabled(true);
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(iN2, R$styleable.NavigationBarActiveIndicator);
            setItemActiveIndicatorWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.NavigationBarActiveIndicator_android_width, 0));
            setItemActiveIndicatorHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.NavigationBarActiveIndicator_android_height, 0));
            setItemActiveIndicatorMarginHorizontal(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.NavigationBarActiveIndicator_marginHorizontal, 0));
            setItemActiveIndicatorColor(i4.c.a(context2, typedArrayObtainStyledAttributes, R$styleable.NavigationBarActiveIndicator_android_color));
            setItemActiveIndicatorShapeAppearance(n.b(context2, typedArrayObtainStyledAttributes.getResourceId(R$styleable.NavigationBarActiveIndicator_shapeAppearance, 0), 0).m());
            typedArrayObtainStyledAttributes.recycle();
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationBarView_menu)) {
            d(h0VarObtainTintedStyledAttributes.n(R$styleable.NavigationBarView_menu, 0));
        }
        h0VarObtainTintedStyledAttributes.y();
        addView(navigationBarMenuViewC);
        cVar.setCallback(new a());
    }

    static /* synthetic */ b a(NavigationBarView navigationBarView) {
        navigationBarView.getClass();
        return null;
    }

    private MenuInflater getMenuInflater() {
        if (this.f9787f == null) {
            this.f9787f = new g(getContext());
        }
        return this.f9787f;
    }

    protected abstract NavigationBarMenuView c(Context context);

    public void d(int i10) {
        this.f9786c.c(true);
        getMenuInflater().inflate(i10, this.f9784a);
        this.f9786c.c(false);
        this.f9786c.updateMenuView(true);
    }

    public int getActiveIndicatorLabelPadding() {
        return this.f9785b.getActiveIndicatorLabelPadding();
    }

    public ColorStateList getItemActiveIndicatorColor() {
        return this.f9785b.getItemActiveIndicatorColor();
    }

    public int getItemActiveIndicatorHeight() {
        return this.f9785b.getItemActiveIndicatorHeight();
    }

    public int getItemActiveIndicatorMarginHorizontal() {
        return this.f9785b.getItemActiveIndicatorMarginHorizontal();
    }

    public n getItemActiveIndicatorShapeAppearance() {
        return this.f9785b.getItemActiveIndicatorShapeAppearance();
    }

    public int getItemActiveIndicatorWidth() {
        return this.f9785b.getItemActiveIndicatorWidth();
    }

    public Drawable getItemBackground() {
        return this.f9785b.getItemBackground();
    }

    @Deprecated
    public int getItemBackgroundResource() {
        return this.f9785b.getItemBackgroundRes();
    }

    public int getItemIconSize() {
        return this.f9785b.getItemIconSize();
    }

    public ColorStateList getItemIconTintList() {
        return this.f9785b.getIconTintList();
    }

    public int getItemPaddingBottom() {
        return this.f9785b.getItemPaddingBottom();
    }

    public int getItemPaddingTop() {
        return this.f9785b.getItemPaddingTop();
    }

    public ColorStateList getItemRippleColor() {
        return this.f9785b.getItemRippleColor();
    }

    public int getItemTextAppearanceActive() {
        return this.f9785b.getItemTextAppearanceActive();
    }

    public int getItemTextAppearanceInactive() {
        return this.f9785b.getItemTextAppearanceInactive();
    }

    public ColorStateList getItemTextColor() {
        return this.f9785b.getItemTextColor();
    }

    public int getLabelVisibilityMode() {
        return this.f9785b.getLabelVisibilityMode();
    }

    public abstract int getMaxItemCount();

    public Menu getMenu() {
        return this.f9784a;
    }

    public MenuView getMenuView() {
        return this.f9785b;
    }

    public NavigationBarPresenter getPresenter() {
        return this.f9786c;
    }

    public int getSelectedItemId() {
        return this.f9785b.getSelectedItemId();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        j.e(this);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f9784a.restorePresenterStates(savedState.f9789a);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.f9789a = bundle;
        this.f9784a.savePresenterStates(bundle);
        return savedState;
    }

    public void setActiveIndicatorLabelPadding(int i10) {
        this.f9785b.setActiveIndicatorLabelPadding(i10);
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        j.d(this, f10);
    }

    public void setItemActiveIndicatorColor(ColorStateList colorStateList) {
        this.f9785b.setItemActiveIndicatorColor(colorStateList);
    }

    public void setItemActiveIndicatorEnabled(boolean z10) {
        this.f9785b.setItemActiveIndicatorEnabled(z10);
    }

    public void setItemActiveIndicatorHeight(int i10) {
        this.f9785b.setItemActiveIndicatorHeight(i10);
    }

    public void setItemActiveIndicatorMarginHorizontal(int i10) {
        this.f9785b.setItemActiveIndicatorMarginHorizontal(i10);
    }

    public void setItemActiveIndicatorShapeAppearance(n nVar) {
        this.f9785b.setItemActiveIndicatorShapeAppearance(nVar);
    }

    public void setItemActiveIndicatorWidth(int i10) {
        this.f9785b.setItemActiveIndicatorWidth(i10);
    }

    public void setItemBackground(Drawable drawable) {
        this.f9785b.setItemBackground(drawable);
    }

    public void setItemBackgroundResource(int i10) {
        this.f9785b.setItemBackgroundRes(i10);
    }

    public void setItemIconSize(int i10) {
        this.f9785b.setItemIconSize(i10);
    }

    public void setItemIconSizeRes(int i10) {
        setItemIconSize(getResources().getDimensionPixelSize(i10));
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.f9785b.setIconTintList(colorStateList);
    }

    public void setItemPaddingBottom(int i10) {
        this.f9785b.setItemPaddingBottom(i10);
    }

    public void setItemPaddingTop(int i10) {
        this.f9785b.setItemPaddingTop(i10);
    }

    public void setItemRippleColor(ColorStateList colorStateList) {
        this.f9785b.setItemRippleColor(colorStateList);
    }

    public void setItemTextAppearanceActive(int i10) {
        this.f9785b.setItemTextAppearanceActive(i10);
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z10) {
        this.f9785b.setItemTextAppearanceActiveBoldEnabled(z10);
    }

    public void setItemTextAppearanceInactive(int i10) {
        this.f9785b.setItemTextAppearanceInactive(i10);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f9785b.setItemTextColor(colorStateList);
    }

    public void setLabelVisibilityMode(int i10) {
        if (this.f9785b.getLabelVisibilityMode() != i10) {
            this.f9785b.setLabelVisibilityMode(i10);
            this.f9786c.updateMenuView(false);
        }
    }

    public void setOnItemReselectedListener(b bVar) {
    }

    public void setOnItemSelectedListener(c cVar) {
        this.f9788h = cVar;
    }

    public void setSelectedItemId(int i10) {
        MenuItem menuItemFindItem = this.f9784a.findItem(i10);
        if (menuItemFindItem == null || this.f9784a.performItemAction(menuItemFindItem, this.f9786c, 0)) {
            return;
        }
        menuItemFindItem.setChecked(true);
    }
}
