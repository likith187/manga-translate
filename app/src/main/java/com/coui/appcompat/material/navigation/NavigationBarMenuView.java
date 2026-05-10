package com.coui.appcompat.material.navigation;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.core.view.m0;
import androidx.transition.q;
import androidx.transition.t;
import c0.e;
import c0.g;
import com.google.android.material.R$attr;
import com.google.android.material.R$integer;
import com.google.android.material.badge.a;
import com.google.android.material.internal.TextScale;
import com.google.android.material.shape.n;
import d0.h;
import g4.i;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public abstract class NavigationBarMenuView extends ViewGroup implements MenuView {
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private static final int[] DISABLED_STATE_SET = {-16842910};
    private static final int ITEM_POOL_SIZE = 5;
    private static final int NO_PADDING = -1;
    private final SparseArray<a> badgeDrawables;
    private NavigationBarItemView[] buttons;
    private ColorStateList itemActiveIndicatorColor;
    private boolean itemActiveIndicatorEnabled;
    private int itemActiveIndicatorHeight;
    private int itemActiveIndicatorMarginHorizontal;
    private boolean itemActiveIndicatorResizeable;
    private n itemActiveIndicatorShapeAppearance;
    private int itemActiveIndicatorWidth;
    private Drawable itemBackground;
    private int itemBackgroundRes;
    private int itemIconSize;
    private ColorStateList itemIconTint;
    private int itemPaddingBottom;
    private int itemPaddingTop;
    private final e itemPool;
    private int itemTextAppearanceActive;
    private int itemTextAppearanceInactive;
    private final ColorStateList itemTextColorDefault;
    private ColorStateList itemTextColorFromUser;
    private int labelVisibilityMode;
    private MenuBuilder menu;
    private final View.OnClickListener onClickListener;
    private final SparseArray<View.OnTouchListener> onTouchListeners;
    private NavigationBarPresenter presenter;
    private int selectedItemId;
    private int selectedItemPosition;
    private final t set;

    public NavigationBarMenuView(Context context) {
        super(context);
        this.itemPool = new g(5);
        this.onTouchListeners = new SparseArray<>(5);
        this.selectedItemId = 0;
        this.selectedItemPosition = 0;
        this.badgeDrawables = new SparseArray<>(5);
        this.itemPaddingTop = -1;
        this.itemPaddingBottom = -1;
        this.itemActiveIndicatorResizeable = false;
        this.itemTextColorDefault = createDefaultColorStateList(R.attr.textColorSecondary);
        if (isInEditMode()) {
            this.set = null;
        } else {
            androidx.transition.a aVar = new androidx.transition.a();
            this.set = aVar;
            aVar.K(0);
            aVar.setDuration(i.f(getContext(), R$attr.motionDurationLong1, getResources().getInteger(R$integer.material_motion_duration_long_1)));
            aVar.setInterpolator(i.g(getContext(), R$attr.motionEasingStandard, x3.a.f16369b));
            aVar.y(new TextScale());
        }
        this.onClickListener = new View.OnClickListener() { // from class: com.coui.appcompat.material.navigation.NavigationBarMenuView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MenuItemImpl itemData = ((NavigationBarItemView) view).getItemData();
                if (NavigationBarMenuView.this.menu.performItemAction(itemData, NavigationBarMenuView.this.presenter, 0)) {
                    return;
                }
                itemData.setChecked(true);
            }
        };
        m0.t0(this, 1);
    }

    private Drawable createItemActiveIndicatorDrawable() {
        if (this.itemActiveIndicatorShapeAppearance == null || this.itemActiveIndicatorColor == null) {
            return null;
        }
        com.google.android.material.shape.i iVar = new com.google.android.material.shape.i(this.itemActiveIndicatorShapeAppearance);
        iVar.setFillColor(this.itemActiveIndicatorColor);
        return iVar;
    }

    private NavigationBarItemView getNewItem() {
        NavigationBarItemView navigationBarItemView = (NavigationBarItemView) this.itemPool.b();
        return navigationBarItemView == null ? createNavigationBarItemView(getContext()) : navigationBarItemView;
    }

    private boolean isValidId(int i10) {
        return i10 != -1;
    }

    private void removeUnusedBadges() {
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < this.menu.size(); i10++) {
            hashSet.add(Integer.valueOf(this.menu.getItem(i10).getItemId()));
        }
        for (int i11 = 0; i11 < this.badgeDrawables.size(); i11++) {
            int iKeyAt = this.badgeDrawables.keyAt(i11);
            if (!hashSet.contains(Integer.valueOf(iKeyAt))) {
                this.badgeDrawables.delete(iKeyAt);
            }
        }
    }

    private void setBadgeIfNeeded(NavigationBarItemView navigationBarItemView) {
        a aVar;
        int id = navigationBarItemView.getId();
        if (isValidId(id) && (aVar = this.badgeDrawables.get(id)) != null) {
            navigationBarItemView.setBadge(aVar);
        }
    }

    private void validateMenuItemId(int i10) {
        if (isValidId(i10)) {
            return;
        }
        throw new IllegalArgumentException(i10 + " is not a valid view id");
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void buildMenuView() {
        removeAllViews();
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView != null) {
                    this.itemPool.a(navigationBarItemView);
                    navigationBarItemView.clear();
                }
            }
        }
        if (this.menu.size() == 0) {
            this.selectedItemId = 0;
            this.selectedItemPosition = 0;
            this.buttons = null;
            return;
        }
        removeUnusedBadges();
        this.buttons = new NavigationBarItemView[this.menu.size()];
        boolean zIsShifting = isShifting(this.labelVisibilityMode, this.menu.getVisibleItems().size());
        for (int i10 = 0; i10 < this.menu.size(); i10++) {
            this.presenter.setUpdateSuspended(true);
            this.menu.getItem(i10).setCheckable(true);
            this.presenter.setUpdateSuspended(false);
            NavigationBarItemView newItem = getNewItem();
            this.buttons[i10] = newItem;
            newItem.setIconTintList(this.itemIconTint);
            newItem.setIconSize(this.itemIconSize);
            newItem.setTextColor(this.itemTextColorDefault);
            newItem.setTextAppearanceInactive(this.itemTextAppearanceInactive);
            newItem.setTextAppearanceActive(this.itemTextAppearanceActive);
            newItem.setTextColor(this.itemTextColorFromUser);
            int i11 = this.itemPaddingTop;
            if (i11 != -1) {
                newItem.setItemPaddingTop(i11);
            }
            int i12 = this.itemPaddingBottom;
            if (i12 != -1) {
                newItem.setItemPaddingBottom(i12);
            }
            newItem.setActiveIndicatorWidth(this.itemActiveIndicatorWidth);
            newItem.setActiveIndicatorHeight(this.itemActiveIndicatorHeight);
            newItem.setActiveIndicatorMarginHorizontal(this.itemActiveIndicatorMarginHorizontal);
            newItem.setActiveIndicatorDrawable(createItemActiveIndicatorDrawable());
            newItem.setActiveIndicatorResizeable(this.itemActiveIndicatorResizeable);
            newItem.setActiveIndicatorEnabled(this.itemActiveIndicatorEnabled);
            Drawable drawable = this.itemBackground;
            if (drawable != null) {
                newItem.setItemBackground(drawable);
            } else {
                newItem.setItemBackground(this.itemBackgroundRes);
            }
            newItem.setShifting(zIsShifting);
            newItem.setLabelVisibilityMode(this.labelVisibilityMode);
            MenuItemImpl menuItemImpl = (MenuItemImpl) this.menu.getItem(i10);
            newItem.initialize(menuItemImpl, 0);
            newItem.setItemPosition(i10);
            int itemId = menuItemImpl.getItemId();
            newItem.setOnTouchListener(this.onTouchListeners.get(itemId));
            newItem.setOnClickListener(this.onClickListener);
            int i13 = this.selectedItemId;
            if (i13 != 0 && itemId == i13) {
                this.selectedItemPosition = i10;
            }
            setBadgeIfNeeded(newItem);
            addView(newItem);
        }
        int iMin = Math.min(this.menu.size() - 1, this.selectedItemPosition);
        this.selectedItemPosition = iMin;
        this.menu.getItem(iMin).setChecked(true);
    }

    public ColorStateList createDefaultColorStateList(int i10) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i10, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateListA = e.a.a(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(androidx.appcompat.R$attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i11 = typedValue.data;
        int defaultColor = colorStateListA.getDefaultColor();
        int[] iArr = DISABLED_STATE_SET;
        return new ColorStateList(new int[][]{iArr, CHECKED_STATE_SET, ViewGroup.EMPTY_STATE_SET}, new int[]{colorStateListA.getColorForState(iArr, defaultColor), i11, defaultColor});
    }

    protected abstract NavigationBarItemView createNavigationBarItemView(Context context);

    public NavigationBarItemView findItemView(int i10) {
        validateMenuItemId(i10);
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr == null) {
            return null;
        }
        for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
            if (navigationBarItemView.getId() == i10) {
                return navigationBarItemView;
            }
        }
        return null;
    }

    public a getBadge(int i10) {
        return this.badgeDrawables.get(i10);
    }

    SparseArray<a> getBadgeDrawables() {
        return this.badgeDrawables;
    }

    public ColorStateList getIconTintList() {
        return this.itemIconTint;
    }

    public ColorStateList getItemActiveIndicatorColor() {
        return this.itemActiveIndicatorColor;
    }

    public boolean getItemActiveIndicatorEnabled() {
        return this.itemActiveIndicatorEnabled;
    }

    public int getItemActiveIndicatorHeight() {
        return this.itemActiveIndicatorHeight;
    }

    public int getItemActiveIndicatorMarginHorizontal() {
        return this.itemActiveIndicatorMarginHorizontal;
    }

    public n getItemActiveIndicatorShapeAppearance() {
        return this.itemActiveIndicatorShapeAppearance;
    }

    public int getItemActiveIndicatorWidth() {
        return this.itemActiveIndicatorWidth;
    }

    public Drawable getItemBackground() {
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        return (navigationBarItemViewArr == null || navigationBarItemViewArr.length <= 0) ? this.itemBackground : navigationBarItemViewArr[0].getBackground();
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.itemBackgroundRes;
    }

    public int getItemIconSize() {
        return this.itemIconSize;
    }

    public int getItemPaddingBottom() {
        return this.itemPaddingBottom;
    }

    public int getItemPaddingTop() {
        return this.itemPaddingTop;
    }

    public int getItemTextAppearanceActive() {
        return this.itemTextAppearanceActive;
    }

    public int getItemTextAppearanceInactive() {
        return this.itemTextAppearanceInactive;
    }

    public ColorStateList getItemTextColor() {
        return this.itemTextColorFromUser;
    }

    public int getLabelVisibilityMode() {
        return this.labelVisibilityMode;
    }

    protected MenuBuilder getMenu() {
        return this.menu;
    }

    a getOrCreateBadge(int i10) {
        validateMenuItemId(i10);
        a aVarC = this.badgeDrawables.get(i10);
        if (aVarC == null) {
            aVarC = a.c(getContext());
            this.badgeDrawables.put(i10, aVarC);
        }
        NavigationBarItemView navigationBarItemViewFindItemView = findItemView(i10);
        if (navigationBarItemViewFindItemView != null) {
            navigationBarItemViewFindItemView.setBadge(aVarC);
        }
        return aVarC;
    }

    public int getSelectedItemId() {
        return this.selectedItemId;
    }

    protected int getSelectedItemPosition() {
        return this.selectedItemPosition;
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public int getWindowAnimations() {
        return 0;
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public void initialize(MenuBuilder menuBuilder) {
        this.menu = menuBuilder;
    }

    protected boolean isItemActiveIndicatorResizeable() {
        return this.itemActiveIndicatorResizeable;
    }

    protected boolean isShifting(int i10, int i11) {
        if (i10 == -1) {
            if (i11 <= 3) {
                return false;
            }
        } else if (i10 != 0) {
            return false;
        }
        return true;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        h.M0(accessibilityNodeInfo).j0(h.e.b(1, this.menu.getVisibleItems().size(), false, 1));
    }

    void removeBadge(int i10) {
        validateMenuItemId(i10);
        a aVar = this.badgeDrawables.get(i10);
        NavigationBarItemView navigationBarItemViewFindItemView = findItemView(i10);
        if (navigationBarItemViewFindItemView != null) {
            navigationBarItemViewFindItemView.removeBadge();
        }
        if (aVar != null) {
            this.badgeDrawables.remove(i10);
        }
    }

    void restoreBadgeDrawables(SparseArray<a> sparseArray) {
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            int iKeyAt = sparseArray.keyAt(i10);
            if (this.badgeDrawables.indexOfKey(iKeyAt) < 0) {
                this.badgeDrawables.append(iKeyAt, sparseArray.get(iKeyAt));
            }
        }
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setBadge(this.badgeDrawables.get(navigationBarItemView.getId()));
            }
        }
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.itemIconTint = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setIconTintList(colorStateList);
            }
        }
    }

    public void setItemActiveIndicatorColor(ColorStateList colorStateList) {
        this.itemActiveIndicatorColor = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorDrawable(createItemActiveIndicatorDrawable());
            }
        }
    }

    public void setItemActiveIndicatorEnabled(boolean z10) {
        this.itemActiveIndicatorEnabled = z10;
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorEnabled(z10);
            }
        }
    }

    public void setItemActiveIndicatorHeight(int i10) {
        this.itemActiveIndicatorHeight = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorHeight(i10);
            }
        }
    }

    public void setItemActiveIndicatorMarginHorizontal(int i10) {
        this.itemActiveIndicatorMarginHorizontal = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorMarginHorizontal(i10);
            }
        }
    }

    protected void setItemActiveIndicatorResizeable(boolean z10) {
        this.itemActiveIndicatorResizeable = z10;
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorResizeable(z10);
            }
        }
    }

    public void setItemActiveIndicatorShapeAppearance(n nVar) {
        this.itemActiveIndicatorShapeAppearance = nVar;
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorDrawable(createItemActiveIndicatorDrawable());
            }
        }
    }

    public void setItemActiveIndicatorWidth(int i10) {
        this.itemActiveIndicatorWidth = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorWidth(i10);
            }
        }
    }

    public void setItemBackground(Drawable drawable) {
        this.itemBackground = drawable;
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemBackground(drawable);
            }
        }
    }

    public void setItemBackgroundRes(int i10) {
        this.itemBackgroundRes = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemBackground(i10);
            }
        }
    }

    public void setItemIconSize(int i10) {
        this.itemIconSize = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setIconSize(i10);
            }
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void setItemOnTouchListener(int i10, View.OnTouchListener onTouchListener) {
        if (onTouchListener == null) {
            this.onTouchListeners.remove(i10);
        } else {
            this.onTouchListeners.put(i10, onTouchListener);
        }
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView.getItemData().getItemId() == i10) {
                    navigationBarItemView.setOnTouchListener(onTouchListener);
                }
            }
        }
    }

    public void setItemPaddingBottom(int i10) {
        this.itemPaddingBottom = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemPaddingBottom(i10);
            }
        }
    }

    public void setItemPaddingTop(int i10) {
        this.itemPaddingTop = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemPaddingTop(i10);
            }
        }
    }

    public void setItemTextAppearanceActive(int i10) {
        this.itemTextAppearanceActive = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceActive(i10);
                ColorStateList colorStateList = this.itemTextColorFromUser;
                if (colorStateList != null) {
                    navigationBarItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextAppearanceInactive(int i10) {
        this.itemTextAppearanceInactive = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceInactive(i10);
                ColorStateList colorStateList = this.itemTextColorFromUser;
                if (colorStateList != null) {
                    navigationBarItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.itemTextColorFromUser = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextColor(colorStateList);
            }
        }
    }

    public void setLabelVisibilityMode(int i10) {
        this.labelVisibilityMode = i10;
    }

    public void setPresenter(NavigationBarPresenter navigationBarPresenter) {
        this.presenter = navigationBarPresenter;
    }

    void tryRestoreSelectedItemId(int i10) {
        int size = this.menu.size();
        for (int i11 = 0; i11 < size; i11++) {
            MenuItem item = this.menu.getItem(i11);
            if (i10 == item.getItemId()) {
                this.selectedItemId = i10;
                this.selectedItemPosition = i11;
                item.setChecked(true);
                return;
            }
        }
    }

    public void updateMenuView() {
        t tVar;
        MenuBuilder menuBuilder = this.menu;
        if (menuBuilder == null || this.buttons == null) {
            return;
        }
        int size = menuBuilder.size();
        if (size != this.buttons.length) {
            buildMenuView();
            return;
        }
        int i10 = this.selectedItemId;
        for (int i11 = 0; i11 < size; i11++) {
            MenuItem item = this.menu.getItem(i11);
            if (item.isChecked()) {
                this.selectedItemId = item.getItemId();
                this.selectedItemPosition = i11;
            }
        }
        if (i10 != this.selectedItemId && (tVar = this.set) != null) {
            q.a(this, tVar);
        }
        boolean zIsShifting = isShifting(this.labelVisibilityMode, this.menu.getVisibleItems().size());
        for (int i12 = 0; i12 < size; i12++) {
            this.presenter.setUpdateSuspended(true);
            this.buttons[i12].setLabelVisibilityMode(this.labelVisibilityMode);
            this.buttons[i12].setShifting(zIsShifting);
            this.buttons[i12].initialize((MenuItemImpl) this.menu.getItem(i12), 0);
            this.presenter.setUpdateSuspended(false);
        }
    }
}
