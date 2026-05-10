package com.google.android.material.navigation;

import android.R;
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
import c0.g;
import com.google.android.material.R$attr;
import com.google.android.material.R$integer;
import com.google.android.material.internal.TextScale;
import com.google.android.material.shape.n;
import d0.h;
import g4.i;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public abstract class NavigationBarMenuView extends ViewGroup implements MenuView {
    private static final int[] I = {R.attr.state_checked};
    private static final int[] J = {-16842910};
    private int A;
    private int B;
    private int C;
    private n D;
    private boolean E;
    private ColorStateList F;
    private NavigationBarPresenter G;
    private MenuBuilder H;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final t f9754a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View.OnClickListener f9755b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c0.e f9756c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final SparseArray f9757f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f9758h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private NavigationBarItemView[] f9759i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f9760j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f9761k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ColorStateList f9762l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f9763m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ColorStateList f9764n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ColorStateList f9765o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f9766p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f9767q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f9768r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Drawable f9769s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ColorStateList f9770t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f9771u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final SparseArray f9772v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f9773w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f9774x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f9775y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f9776z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MenuItemImpl itemData = ((NavigationBarItemView) view).getItemData();
            if (NavigationBarMenuView.this.H.performItemAction(itemData, NavigationBarMenuView.this.G, 0)) {
                return;
            }
            itemData.setChecked(true);
        }
    }

    public NavigationBarMenuView(Context context) {
        super(context);
        this.f9756c = new g(5);
        this.f9757f = new SparseArray(5);
        this.f9760j = 0;
        this.f9761k = 0;
        this.f9772v = new SparseArray(5);
        this.f9773w = -1;
        this.f9774x = -1;
        this.f9775y = -1;
        this.E = false;
        this.f9765o = d(R.attr.textColorSecondary);
        if (isInEditMode()) {
            this.f9754a = null;
        } else {
            androidx.transition.a aVar = new androidx.transition.a();
            this.f9754a = aVar;
            aVar.K(0);
            aVar.setDuration(i.f(getContext(), R$attr.motionDurationMedium4, getResources().getInteger(R$integer.material_motion_duration_long_1)));
            aVar.setInterpolator(i.g(getContext(), R$attr.motionEasingStandard, x3.a.f16369b));
            aVar.y(new TextScale());
        }
        this.f9755b = new a();
        m0.t0(this, 1);
    }

    private Drawable e() {
        if (this.D == null || this.F == null) {
            return null;
        }
        com.google.android.material.shape.i iVar = new com.google.android.material.shape.i(this.D);
        iVar.setFillColor(this.F);
        return iVar;
    }

    private NavigationBarItemView getNewItem() {
        NavigationBarItemView navigationBarItemView = (NavigationBarItemView) this.f9756c.b();
        return navigationBarItemView == null ? f(getContext()) : navigationBarItemView;
    }

    private boolean h(int i10) {
        return i10 != -1;
    }

    private void i() {
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < this.H.size(); i10++) {
            hashSet.add(Integer.valueOf(this.H.getItem(i10).getItemId()));
        }
        for (int i11 = 0; i11 < this.f9772v.size(); i11++) {
            int iKeyAt = this.f9772v.keyAt(i11);
            if (!hashSet.contains(Integer.valueOf(iKeyAt))) {
                this.f9772v.delete(iKeyAt);
            }
        }
    }

    private void setBadgeIfNeeded(NavigationBarItemView navigationBarItemView) {
        com.google.android.material.badge.a aVar;
        int id = navigationBarItemView.getId();
        if (h(id) && (aVar = (com.google.android.material.badge.a) this.f9772v.get(id)) != null) {
            navigationBarItemView.setBadge(aVar);
        }
    }

    public void c() {
        removeAllViews();
        NavigationBarItemView[] navigationBarItemViewArr = this.f9759i;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView != null) {
                    this.f9756c.a(navigationBarItemView);
                    navigationBarItemView.f();
                }
            }
        }
        if (this.H.size() == 0) {
            this.f9760j = 0;
            this.f9761k = 0;
            this.f9759i = null;
            return;
        }
        i();
        this.f9759i = new NavigationBarItemView[this.H.size()];
        boolean zG = g(this.f9758h, this.H.getVisibleItems().size());
        for (int i10 = 0; i10 < this.H.size(); i10++) {
            this.G.c(true);
            this.H.getItem(i10).setCheckable(true);
            this.G.c(false);
            NavigationBarItemView newItem = getNewItem();
            this.f9759i[i10] = newItem;
            newItem.setIconTintList(this.f9762l);
            newItem.setIconSize(this.f9763m);
            newItem.setTextColor(this.f9765o);
            newItem.setTextAppearanceInactive(this.f9766p);
            newItem.setTextAppearanceActive(this.f9767q);
            newItem.setTextAppearanceActiveBoldEnabled(this.f9768r);
            newItem.setTextColor(this.f9764n);
            int i11 = this.f9773w;
            if (i11 != -1) {
                newItem.setItemPaddingTop(i11);
            }
            int i12 = this.f9774x;
            if (i12 != -1) {
                newItem.setItemPaddingBottom(i12);
            }
            int i13 = this.f9775y;
            if (i13 != -1) {
                newItem.setActiveIndicatorLabelPadding(i13);
            }
            newItem.setActiveIndicatorWidth(this.A);
            newItem.setActiveIndicatorHeight(this.B);
            newItem.setActiveIndicatorMarginHorizontal(this.C);
            newItem.setActiveIndicatorDrawable(e());
            newItem.setActiveIndicatorResizeable(this.E);
            newItem.setActiveIndicatorEnabled(this.f9776z);
            Drawable drawable = this.f9769s;
            if (drawable != null) {
                newItem.setItemBackground(drawable);
            } else {
                newItem.setItemBackground(this.f9771u);
            }
            newItem.setItemRippleColor(this.f9770t);
            newItem.setShifting(zG);
            newItem.setLabelVisibilityMode(this.f9758h);
            MenuItemImpl menuItemImpl = (MenuItemImpl) this.H.getItem(i10);
            newItem.initialize(menuItemImpl, 0);
            newItem.setItemPosition(i10);
            int itemId = menuItemImpl.getItemId();
            newItem.setOnTouchListener((View.OnTouchListener) this.f9757f.get(itemId));
            newItem.setOnClickListener(this.f9755b);
            int i14 = this.f9760j;
            if (i14 != 0 && itemId == i14) {
                this.f9761k = i10;
            }
            setBadgeIfNeeded(newItem);
            addView(newItem);
        }
        int iMin = Math.min(this.H.size() - 1, this.f9761k);
        this.f9761k = iMin;
        this.H.getItem(iMin).setChecked(true);
    }

    public ColorStateList d(int i10) {
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
        int[] iArr = J;
        return new ColorStateList(new int[][]{iArr, I, ViewGroup.EMPTY_STATE_SET}, new int[]{colorStateListA.getColorForState(iArr, defaultColor), i11, defaultColor});
    }

    protected abstract NavigationBarItemView f(Context context);

    protected boolean g(int i10, int i11) {
        if (i10 == -1) {
            if (i11 <= 3) {
                return false;
            }
        } else if (i10 != 0) {
            return false;
        }
        return true;
    }

    public int getActiveIndicatorLabelPadding() {
        return this.f9775y;
    }

    SparseArray<com.google.android.material.badge.a> getBadgeDrawables() {
        return this.f9772v;
    }

    public ColorStateList getIconTintList() {
        return this.f9762l;
    }

    public ColorStateList getItemActiveIndicatorColor() {
        return this.F;
    }

    public boolean getItemActiveIndicatorEnabled() {
        return this.f9776z;
    }

    public int getItemActiveIndicatorHeight() {
        return this.B;
    }

    public int getItemActiveIndicatorMarginHorizontal() {
        return this.C;
    }

    public n getItemActiveIndicatorShapeAppearance() {
        return this.D;
    }

    public int getItemActiveIndicatorWidth() {
        return this.A;
    }

    public Drawable getItemBackground() {
        NavigationBarItemView[] navigationBarItemViewArr = this.f9759i;
        return (navigationBarItemViewArr == null || navigationBarItemViewArr.length <= 0) ? this.f9769s : navigationBarItemViewArr[0].getBackground();
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.f9771u;
    }

    public int getItemIconSize() {
        return this.f9763m;
    }

    public int getItemPaddingBottom() {
        return this.f9774x;
    }

    public int getItemPaddingTop() {
        return this.f9773w;
    }

    public ColorStateList getItemRippleColor() {
        return this.f9770t;
    }

    public int getItemTextAppearanceActive() {
        return this.f9767q;
    }

    public int getItemTextAppearanceInactive() {
        return this.f9766p;
    }

    public ColorStateList getItemTextColor() {
        return this.f9764n;
    }

    public int getLabelVisibilityMode() {
        return this.f9758h;
    }

    protected MenuBuilder getMenu() {
        return this.H;
    }

    public int getSelectedItemId() {
        return this.f9760j;
    }

    protected int getSelectedItemPosition() {
        return this.f9761k;
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public int getWindowAnimations() {
        return 0;
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public void initialize(MenuBuilder menuBuilder) {
        this.H = menuBuilder;
    }

    void j(SparseArray sparseArray) {
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            int iKeyAt = sparseArray.keyAt(i10);
            if (this.f9772v.indexOfKey(iKeyAt) < 0) {
                this.f9772v.append(iKeyAt, (com.google.android.material.badge.a) sparseArray.get(iKeyAt));
            }
        }
        NavigationBarItemView[] navigationBarItemViewArr = this.f9759i;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                com.google.android.material.badge.a aVar = (com.google.android.material.badge.a) this.f9772v.get(navigationBarItemView.getId());
                if (aVar != null) {
                    navigationBarItemView.setBadge(aVar);
                }
            }
        }
    }

    void k(int i10) {
        int size = this.H.size();
        for (int i11 = 0; i11 < size; i11++) {
            MenuItem item = this.H.getItem(i11);
            if (i10 == item.getItemId()) {
                this.f9760j = i10;
                this.f9761k = i11;
                item.setChecked(true);
                return;
            }
        }
    }

    public void l() {
        t tVar;
        MenuBuilder menuBuilder = this.H;
        if (menuBuilder == null || this.f9759i == null) {
            return;
        }
        int size = menuBuilder.size();
        if (size != this.f9759i.length) {
            c();
            return;
        }
        int i10 = this.f9760j;
        for (int i11 = 0; i11 < size; i11++) {
            MenuItem item = this.H.getItem(i11);
            if (item.isChecked()) {
                this.f9760j = item.getItemId();
                this.f9761k = i11;
            }
        }
        if (i10 != this.f9760j && (tVar = this.f9754a) != null) {
            q.a(this, tVar);
        }
        boolean zG = g(this.f9758h, this.H.getVisibleItems().size());
        for (int i12 = 0; i12 < size; i12++) {
            this.G.c(true);
            this.f9759i[i12].setLabelVisibilityMode(this.f9758h);
            this.f9759i[i12].setShifting(zG);
            this.f9759i[i12].initialize((MenuItemImpl) this.H.getItem(i12), 0);
            this.G.c(false);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        h.M0(accessibilityNodeInfo).j0(h.e.b(1, this.H.getVisibleItems().size(), false, 1));
    }

    public void setActiveIndicatorLabelPadding(int i10) {
        this.f9775y = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f9759i;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorLabelPadding(i10);
            }
        }
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f9762l = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f9759i;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setIconTintList(colorStateList);
            }
        }
    }

    public void setItemActiveIndicatorColor(ColorStateList colorStateList) {
        this.F = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f9759i;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorDrawable(e());
            }
        }
    }

    public void setItemActiveIndicatorEnabled(boolean z10) {
        this.f9776z = z10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f9759i;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorEnabled(z10);
            }
        }
    }

    public void setItemActiveIndicatorHeight(int i10) {
        this.B = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f9759i;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorHeight(i10);
            }
        }
    }

    public void setItemActiveIndicatorMarginHorizontal(int i10) {
        this.C = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f9759i;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorMarginHorizontal(i10);
            }
        }
    }

    protected void setItemActiveIndicatorResizeable(boolean z10) {
        this.E = z10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f9759i;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorResizeable(z10);
            }
        }
    }

    public void setItemActiveIndicatorShapeAppearance(n nVar) {
        this.D = nVar;
        NavigationBarItemView[] navigationBarItemViewArr = this.f9759i;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorDrawable(e());
            }
        }
    }

    public void setItemActiveIndicatorWidth(int i10) {
        this.A = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f9759i;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorWidth(i10);
            }
        }
    }

    public void setItemBackground(Drawable drawable) {
        this.f9769s = drawable;
        NavigationBarItemView[] navigationBarItemViewArr = this.f9759i;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemBackground(drawable);
            }
        }
    }

    public void setItemBackgroundRes(int i10) {
        this.f9771u = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f9759i;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemBackground(i10);
            }
        }
    }

    public void setItemIconSize(int i10) {
        this.f9763m = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f9759i;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setIconSize(i10);
            }
        }
    }

    public void setItemPaddingBottom(int i10) {
        this.f9774x = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f9759i;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemPaddingBottom(i10);
            }
        }
    }

    public void setItemPaddingTop(int i10) {
        this.f9773w = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f9759i;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemPaddingTop(i10);
            }
        }
    }

    public void setItemRippleColor(ColorStateList colorStateList) {
        this.f9770t = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f9759i;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemRippleColor(colorStateList);
            }
        }
    }

    public void setItemTextAppearanceActive(int i10) {
        this.f9767q = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f9759i;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceActive(i10);
                ColorStateList colorStateList = this.f9764n;
                if (colorStateList != null) {
                    navigationBarItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z10) {
        this.f9768r = z10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f9759i;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceActiveBoldEnabled(z10);
            }
        }
    }

    public void setItemTextAppearanceInactive(int i10) {
        this.f9766p = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f9759i;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceInactive(i10);
                ColorStateList colorStateList = this.f9764n;
                if (colorStateList != null) {
                    navigationBarItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f9764n = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f9759i;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextColor(colorStateList);
            }
        }
    }

    public void setLabelVisibilityMode(int i10) {
        this.f9758h = i10;
    }

    public void setPresenter(NavigationBarPresenter navigationBarPresenter) {
        this.G = navigationBarPresenter;
    }
}
