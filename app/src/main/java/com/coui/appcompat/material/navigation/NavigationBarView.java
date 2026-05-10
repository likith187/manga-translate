package com.coui.appcompat.material.navigation;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
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
import i4.c;
import j4.b;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import m4.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class NavigationBarView extends FrameLayout {
    public static final int LABEL_VISIBILITY_AUTO = -1;
    public static final int LABEL_VISIBILITY_LABELED = 1;
    public static final int LABEL_VISIBILITY_SELECTED = 0;
    public static final int LABEL_VISIBILITY_UNLABELED = 2;
    private static final int MENU_PRESENTER_ID = 1;
    private ColorStateList itemRippleColor;
    private final NavigationBarMenu menu;
    private MenuInflater menuInflater;
    private final NavigationBarMenuView menuView;
    private final NavigationBarPresenter presenter;
    private OnItemReselectedListener reselectedListener;
    private OnItemSelectedListener selectedListener;

    @Retention(RetentionPolicy.SOURCE)
    public @interface LabelVisibility {
    }

    public interface OnItemReselectedListener {
        void onNavigationItemReselected(MenuItem menuItem);
    }

    public interface OnItemSelectedListener {
        boolean onNavigationItemSelected(MenuItem menuItem);
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.coui.appcompat.material.navigation.NavigationBarView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        };
        Bundle menuPresenterState;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private void readFromParcel(Parcel parcel, ClassLoader classLoader) {
            this.menuPresenterState = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeBundle(this.menuPresenterState);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            readFromParcel(parcel, classLoader == null ? getClass().getClassLoader() : classLoader);
        }
    }

    public NavigationBarView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(a.c(context, attributeSet, i10, i11), attributeSet, i10);
        NavigationBarPresenter navigationBarPresenter = new NavigationBarPresenter();
        this.presenter = navigationBarPresenter;
        Context context2 = getContext();
        h0 h0VarObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, R$styleable.NavigationBarView, i10, i11, R$styleable.NavigationBarView_itemTextAppearanceInactive, R$styleable.NavigationBarView_itemTextAppearanceActive);
        NavigationBarMenu navigationBarMenu = new NavigationBarMenu(context2, getClass(), getMaxItemCount());
        this.menu = navigationBarMenu;
        NavigationBarMenuView navigationBarMenuViewCreateNavigationBarMenuView = createNavigationBarMenuView(context2);
        this.menuView = navigationBarMenuViewCreateNavigationBarMenuView;
        navigationBarPresenter.setMenuView(navigationBarMenuViewCreateNavigationBarMenuView);
        navigationBarPresenter.setId(1);
        navigationBarMenuViewCreateNavigationBarMenuView.setPresenter(navigationBarPresenter);
        navigationBarMenu.addMenuPresenter(navigationBarPresenter);
        navigationBarPresenter.initForMenu(getContext(), navigationBarMenu);
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationBarView_itemIconTint)) {
            navigationBarMenuViewCreateNavigationBarMenuView.setIconTintList(h0VarObtainTintedStyledAttributes.c(R$styleable.NavigationBarView_itemIconTint));
        } else {
            navigationBarMenuViewCreateNavigationBarMenuView.setIconTintList(navigationBarMenuViewCreateNavigationBarMenuView.createDefaultColorStateList(R.attr.textColorSecondary));
        }
        setItemIconSize(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationBarView_itemIconSize, getResources().getDimensionPixelSize(R$dimen.mtrl_navigation_bar_item_default_icon_size)));
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationBarView_itemTextAppearanceInactive)) {
            setItemTextAppearanceInactive(h0VarObtainTintedStyledAttributes.n(R$styleable.NavigationBarView_itemTextAppearanceInactive, 0));
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationBarView_itemTextAppearanceActive)) {
            setItemTextAppearanceActive(h0VarObtainTintedStyledAttributes.n(R$styleable.NavigationBarView_itemTextAppearanceActive, 0));
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationBarView_itemTextColor)) {
            setItemTextColor(h0VarObtainTintedStyledAttributes.c(R$styleable.NavigationBarView_itemTextColor));
        }
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            m0.n0(this, createMaterialShapeDrawableBackground(context2));
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationBarView_itemPaddingTop)) {
            setItemPaddingTop(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationBarView_itemPaddingTop, 0));
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationBarView_itemPaddingBottom)) {
            setItemPaddingBottom(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationBarView_itemPaddingBottom, 0));
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationBarView_elevation)) {
            setElevation(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationBarView_elevation, 0));
        }
        v.a.o(getBackground().mutate(), c.b(context2, h0VarObtainTintedStyledAttributes, R$styleable.NavigationBarView_backgroundTint));
        setLabelVisibilityMode(h0VarObtainTintedStyledAttributes.l(R$styleable.NavigationBarView_labelVisibilityMode, -1));
        int iN = h0VarObtainTintedStyledAttributes.n(R$styleable.NavigationBarView_itemBackground, 0);
        if (iN != 0) {
            navigationBarMenuViewCreateNavigationBarMenuView.setItemBackgroundRes(iN);
        } else {
            setItemRippleColor(c.b(context2, h0VarObtainTintedStyledAttributes, R$styleable.NavigationBarView_itemRippleColor));
        }
        int iN2 = h0VarObtainTintedStyledAttributes.n(R$styleable.NavigationBarView_itemActiveIndicatorStyle, 0);
        if (iN2 != 0) {
            setItemActiveIndicatorEnabled(true);
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(iN2, R$styleable.NavigationBarActiveIndicator);
            setItemActiveIndicatorWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.NavigationBarActiveIndicator_android_width, 0));
            setItemActiveIndicatorHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.NavigationBarActiveIndicator_android_height, 0));
            setItemActiveIndicatorMarginHorizontal(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.NavigationBarActiveIndicator_marginHorizontal, 0));
            setItemActiveIndicatorColor(c.a(context2, typedArrayObtainStyledAttributes, R$styleable.NavigationBarActiveIndicator_android_color));
            setItemActiveIndicatorShapeAppearance(n.b(context2, typedArrayObtainStyledAttributes.getResourceId(R$styleable.NavigationBarActiveIndicator_shapeAppearance, 0), 0).m());
            typedArrayObtainStyledAttributes.recycle();
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationBarView_menu)) {
            inflateMenu(h0VarObtainTintedStyledAttributes.n(R$styleable.NavigationBarView_menu, 0));
        }
        h0VarObtainTintedStyledAttributes.y();
        addView(navigationBarMenuViewCreateNavigationBarMenuView);
        navigationBarMenu.setCallback(new MenuBuilder.Callback() { // from class: com.coui.appcompat.material.navigation.NavigationBarView.1
            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
                if (NavigationBarView.this.reselectedListener == null || menuItem.getItemId() != NavigationBarView.this.getSelectedItemId()) {
                    return (NavigationBarView.this.selectedListener == null || NavigationBarView.this.selectedListener.onNavigationItemSelected(menuItem)) ? false : true;
                }
                NavigationBarView.this.reselectedListener.onNavigationItemReselected(menuItem);
                return true;
            }

            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            public void onMenuModeChange(MenuBuilder menuBuilder) {
            }
        });
    }

    private i createMaterialShapeDrawableBackground(Context context) {
        i iVar = new i();
        Drawable background = getBackground();
        if (background instanceof ColorDrawable) {
            iVar.setFillColor(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
        }
        iVar.initializeElevationOverlay(context);
        return iVar;
    }

    private MenuInflater getMenuInflater() {
        if (this.menuInflater == null) {
            this.menuInflater = new g(getContext());
        }
        return this.menuInflater;
    }

    protected abstract NavigationBarMenuView createNavigationBarMenuView(Context context);

    public com.google.android.material.badge.a getBadge(int i10) {
        return this.menuView.getBadge(i10);
    }

    public ColorStateList getItemActiveIndicatorColor() {
        return this.menuView.getItemActiveIndicatorColor();
    }

    public int getItemActiveIndicatorHeight() {
        return this.menuView.getItemActiveIndicatorHeight();
    }

    public int getItemActiveIndicatorMarginHorizontal() {
        return this.menuView.getItemActiveIndicatorMarginHorizontal();
    }

    public n getItemActiveIndicatorShapeAppearance() {
        return this.menuView.getItemActiveIndicatorShapeAppearance();
    }

    public int getItemActiveIndicatorWidth() {
        return this.menuView.getItemActiveIndicatorWidth();
    }

    public Drawable getItemBackground() {
        return this.menuView.getItemBackground();
    }

    @Deprecated
    public int getItemBackgroundResource() {
        return this.menuView.getItemBackgroundRes();
    }

    public int getItemIconSize() {
        return this.menuView.getItemIconSize();
    }

    public ColorStateList getItemIconTintList() {
        return this.menuView.getIconTintList();
    }

    public int getItemPaddingBottom() {
        return this.menuView.getItemPaddingBottom();
    }

    public int getItemPaddingTop() {
        return this.menuView.getItemPaddingTop();
    }

    public ColorStateList getItemRippleColor() {
        return this.itemRippleColor;
    }

    public int getItemTextAppearanceActive() {
        return this.menuView.getItemTextAppearanceActive();
    }

    public int getItemTextAppearanceInactive() {
        return this.menuView.getItemTextAppearanceInactive();
    }

    public ColorStateList getItemTextColor() {
        return this.menuView.getItemTextColor();
    }

    public int getLabelVisibilityMode() {
        return this.menuView.getLabelVisibilityMode();
    }

    public abstract int getMaxItemCount();

    public Menu getMenu() {
        return this.menu;
    }

    public MenuView getMenuView() {
        return this.menuView;
    }

    public com.google.android.material.badge.a getOrCreateBadge(int i10) {
        return this.menuView.getOrCreateBadge(i10);
    }

    public NavigationBarPresenter getPresenter() {
        return this.presenter;
    }

    public int getSelectedItemId() {
        return this.menuView.getSelectedItemId();
    }

    public void inflateMenu(int i10) {
        this.presenter.setUpdateSuspended(true);
        getMenuInflater().inflate(i10, this.menu);
        this.presenter.setUpdateSuspended(false);
        this.presenter.updateMenuView(true);
    }

    public boolean isItemActiveIndicatorEnabled() {
        return this.menuView.getItemActiveIndicatorEnabled();
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
        this.menu.restorePresenterStates(savedState.menuPresenterState);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.menuPresenterState = bundle;
        this.menu.savePresenterStates(bundle);
        return savedState;
    }

    public void removeBadge(int i10) {
        this.menuView.removeBadge(i10);
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        j.d(this, f10);
    }

    public void setItemActiveIndicatorColor(ColorStateList colorStateList) {
        this.menuView.setItemActiveIndicatorColor(colorStateList);
    }

    public void setItemActiveIndicatorEnabled(boolean z10) {
        this.menuView.setItemActiveIndicatorEnabled(z10);
    }

    public void setItemActiveIndicatorHeight(int i10) {
        this.menuView.setItemActiveIndicatorHeight(i10);
    }

    public void setItemActiveIndicatorMarginHorizontal(int i10) {
        this.menuView.setItemActiveIndicatorMarginHorizontal(i10);
    }

    public void setItemActiveIndicatorShapeAppearance(n nVar) {
        this.menuView.setItemActiveIndicatorShapeAppearance(nVar);
    }

    public void setItemActiveIndicatorWidth(int i10) {
        this.menuView.setItemActiveIndicatorWidth(i10);
    }

    public void setItemBackground(Drawable drawable) {
        this.menuView.setItemBackground(drawable);
        this.itemRippleColor = null;
    }

    public void setItemBackgroundResource(int i10) {
        this.menuView.setItemBackgroundRes(i10);
        this.itemRippleColor = null;
    }

    public void setItemIconSize(int i10) {
        this.menuView.setItemIconSize(i10);
    }

    public void setItemIconSizeRes(int i10) {
        setItemIconSize(getResources().getDimensionPixelSize(i10));
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.menuView.setIconTintList(colorStateList);
    }

    public void setItemOnTouchListener(int i10, View.OnTouchListener onTouchListener) {
        this.menuView.setItemOnTouchListener(i10, onTouchListener);
    }

    public void setItemPaddingBottom(int i10) {
        this.menuView.setItemPaddingBottom(i10);
    }

    public void setItemPaddingTop(int i10) {
        this.menuView.setItemPaddingTop(i10);
    }

    public void setItemRippleColor(ColorStateList colorStateList) {
        if (this.itemRippleColor == colorStateList) {
            if (colorStateList != null || this.menuView.getItemBackground() == null) {
                return;
            }
            this.menuView.setItemBackground(null);
            return;
        }
        this.itemRippleColor = colorStateList;
        if (colorStateList == null) {
            this.menuView.setItemBackground(null);
        } else {
            this.menuView.setItemBackground(new RippleDrawable(b.a(colorStateList), null, null));
        }
    }

    public void setItemTextAppearanceActive(int i10) {
        this.menuView.setItemTextAppearanceActive(i10);
    }

    public void setItemTextAppearanceInactive(int i10) {
        this.menuView.setItemTextAppearanceInactive(i10);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.menuView.setItemTextColor(colorStateList);
    }

    public void setLabelVisibilityMode(int i10) {
        if (this.menuView.getLabelVisibilityMode() != i10) {
            this.menuView.setLabelVisibilityMode(i10);
            this.presenter.updateMenuView(false);
        }
    }

    public void setOnItemReselectedListener(OnItemReselectedListener onItemReselectedListener) {
        this.reselectedListener = onItemReselectedListener;
    }

    public void setOnItemSelectedListener(OnItemSelectedListener onItemSelectedListener) {
        this.selectedListener = onItemSelectedListener;
    }

    public void setSelectedItemId(int i10) {
        MenuItem menuItemFindItem = this.menu.findItem(i10);
        if (menuItemFindItem == null || this.menu.performItemAction(menuItemFindItem, this.presenter, 0)) {
            return;
        }
        menuItemFindItem.setChecked(true);
    }
}
