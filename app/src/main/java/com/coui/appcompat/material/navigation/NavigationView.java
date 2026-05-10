package com.coui.appcompat.material.navigation;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.appcompat.R$attr;
import androidx.appcompat.view.g;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.widget.h0;
import androidx.core.view.a1;
import androidx.core.view.j;
import androidx.core.view.m0;
import androidx.customview.view.AbsSavedState;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ContextUtils;
import com.google.android.material.internal.NavigationMenu;
import com.google.android.material.internal.NavigationMenuPresenter;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.shape.i;
import com.google.android.material.shape.n;
import com.google.android.material.shape.o;
import e.a;
import i4.c;
import j4.b;

/* JADX INFO: loaded from: classes.dex */
public class NavigationView extends ScrimInsetsFrameLayout {
    private static final int PRESENTER_NAVIGATION_VIEW_ID = 1;
    private boolean bottomInsetScrimEnabled;
    private int drawerLayoutCornerSize;
    private int layoutGravity;
    OnNavigationItemSelectedListener listener;
    private final int maxWidth;
    private final NavigationMenu menu;
    private MenuInflater menuInflater;
    private ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener;
    private final NavigationMenuPresenter presenter;
    private final RectF shapeClipBounds;
    private Path shapeClipPath;
    private final int[] tmpLocation;
    private boolean topInsetScrimEnabled;
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private static final int[] DISABLED_STATE_SET = {-16842910};
    private static final int DEF_STYLE_RES = R$style.Widget_Design_NavigationView;

    public interface OnNavigationItemSelectedListener {
        boolean onNavigationItemSelected(MenuItem menuItem);
    }

    public NavigationView(Context context) {
        this(context, null);
    }

    private ColorStateList createDefaultColorStateList(int i10) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i10, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateListA = a.a(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(R$attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i11 = typedValue.data;
        int defaultColor = colorStateListA.getDefaultColor();
        int[] iArr = DISABLED_STATE_SET;
        return new ColorStateList(new int[][]{iArr, CHECKED_STATE_SET, FrameLayout.EMPTY_STATE_SET}, new int[]{colorStateListA.getColorForState(iArr, defaultColor), i11, defaultColor});
    }

    private Drawable createDefaultItemBackground(h0 h0Var) {
        return createDefaultItemDrawable(h0Var, c.b(getContext(), h0Var, R$styleable.NavigationView_itemShapeFillColor));
    }

    private Drawable createDefaultItemDrawable(h0 h0Var, ColorStateList colorStateList) {
        i iVar = new i(n.b(getContext(), h0Var.n(R$styleable.NavigationView_itemShapeAppearance, 0), h0Var.n(R$styleable.NavigationView_itemShapeAppearanceOverlay, 0)).m());
        iVar.setFillColor(colorStateList);
        return new InsetDrawable((Drawable) iVar, h0Var.f(R$styleable.NavigationView_itemShapeInsetStart, 0), h0Var.f(R$styleable.NavigationView_itemShapeInsetTop, 0), h0Var.f(R$styleable.NavigationView_itemShapeInsetEnd, 0), h0Var.f(R$styleable.NavigationView_itemShapeInsetBottom, 0));
    }

    private MenuInflater getMenuInflater() {
        if (this.menuInflater == null) {
            this.menuInflater = new g(getContext());
        }
        return this.menuInflater;
    }

    private boolean hasShapeAppearance(h0 h0Var) {
        return h0Var.s(R$styleable.NavigationView_itemShapeAppearance) || h0Var.s(R$styleable.NavigationView_itemShapeAppearanceOverlay);
    }

    private void maybeUpdateCornerSizeForDrawerLayout(int i10, int i11) {
        if (!(getParent() instanceof DrawerLayout) || this.drawerLayoutCornerSize <= 0 || !(getBackground() instanceof i)) {
            this.shapeClipPath = null;
            this.shapeClipBounds.setEmpty();
            return;
        }
        i iVar = (i) getBackground();
        n.b bVarV = iVar.getShapeAppearanceModel().v();
        if (j.b(this.layoutGravity, m0.v(this)) == 3) {
            bVarV.M(this.drawerLayoutCornerSize);
            bVarV.B(this.drawerLayoutCornerSize);
        } else {
            bVarV.H(this.drawerLayoutCornerSize);
            bVarV.w(this.drawerLayoutCornerSize);
        }
        iVar.setShapeAppearanceModel(bVarV.m());
        if (this.shapeClipPath == null) {
            this.shapeClipPath = new Path();
        }
        this.shapeClipPath.reset();
        this.shapeClipBounds.set(0.0f, 0.0f, i10, i11);
        o.k().d(iVar.getShapeAppearanceModel(), iVar.getInterpolation(), this.shapeClipBounds, this.shapeClipPath);
        invalidate();
    }

    private void setupInsetScrimsListener() {
        this.onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.coui.appcompat.material.navigation.NavigationView.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                NavigationView navigationView = NavigationView.this;
                navigationView.getLocationOnScreen(navigationView.tmpLocation);
                boolean z10 = NavigationView.this.tmpLocation[1] == 0;
                NavigationView.this.presenter.setBehindStatusBar(z10);
                NavigationView navigationView2 = NavigationView.this;
                navigationView2.setDrawTopInsetForeground(z10 && navigationView2.isTopInsetScrimEnabled());
                Activity activity = ContextUtils.getActivity(NavigationView.this.getContext());
                if (activity != null) {
                    boolean z11 = activity.findViewById(R.id.content).getHeight() == NavigationView.this.getHeight();
                    boolean z12 = Color.alpha(activity.getWindow().getNavigationBarColor()) != 0;
                    NavigationView navigationView3 = NavigationView.this;
                    navigationView3.setDrawBottomInsetForeground(z11 && z12 && navigationView3.isBottomInsetScrimEnabled());
                }
            }
        };
        getViewTreeObserver().addOnGlobalLayoutListener(this.onGlobalLayoutListener);
    }

    public void addHeaderView(View view) {
        this.presenter.addHeaderView(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.shapeClipPath == null) {
            super.dispatchDraw(canvas);
            return;
        }
        int iSave = canvas.save();
        canvas.clipPath(this.shapeClipPath);
        super.dispatchDraw(canvas);
        canvas.restoreToCount(iSave);
    }

    public MenuItem getCheckedItem() {
        return this.presenter.getCheckedItem();
    }

    public int getDividerInsetEnd() {
        return this.presenter.getDividerInsetEnd();
    }

    public int getDividerInsetStart() {
        return this.presenter.getDividerInsetStart();
    }

    public int getHeaderCount() {
        return this.presenter.getHeaderCount();
    }

    public View getHeaderView(int i10) {
        return this.presenter.getHeaderView(i10);
    }

    public Drawable getItemBackground() {
        return this.presenter.getItemBackground();
    }

    public int getItemHorizontalPadding() {
        return this.presenter.getItemHorizontalPadding();
    }

    public int getItemIconPadding() {
        return this.presenter.getItemIconPadding();
    }

    public ColorStateList getItemIconTintList() {
        return this.presenter.getItemTintList();
    }

    public int getItemMaxLines() {
        return this.presenter.getItemMaxLines();
    }

    public ColorStateList getItemTextColor() {
        return this.presenter.getItemTextColor();
    }

    public int getItemVerticalPadding() {
        return this.presenter.getItemVerticalPadding();
    }

    public Menu getMenu() {
        return this.menu;
    }

    public int getSubheaderInsetEnd() {
        return this.presenter.getSubheaderInsetEnd();
    }

    public int getSubheaderInsetStart() {
        return this.presenter.getSubheaderInsetStart();
    }

    public View inflateHeaderView(int i10) {
        return this.presenter.inflateHeaderView(i10);
    }

    public void inflateMenu(int i10) {
        this.presenter.setUpdateSuspended(true);
        getMenuInflater().inflate(i10, this.menu);
        this.presenter.setUpdateSuspended(false);
        this.presenter.updateMenuView(false);
    }

    public boolean isBottomInsetScrimEnabled() {
        return this.bottomInsetScrimEnabled;
    }

    public boolean isTopInsetScrimEnabled() {
        return this.topInsetScrimEnabled;
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.google.android.material.shape.j.e(this);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this.onGlobalLayoutListener);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    protected void onInsetsChanged(a1 a1Var) {
        this.presenter.dispatchApplyWindowInsets(a1Var);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        if (mode == Integer.MIN_VALUE) {
            i10 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i10), this.maxWidth), 1073741824);
        } else if (mode == 0) {
            i10 = View.MeasureSpec.makeMeasureSpec(this.maxWidth, 1073741824);
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.menu.restorePresenterStates(savedState.menuState);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.menuState = bundle;
        this.menu.savePresenterStates(bundle);
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        maybeUpdateCornerSizeForDrawerLayout(i10, i11);
    }

    public void removeHeaderView(View view) {
        this.presenter.removeHeaderView(view);
    }

    public void setBottomInsetScrimEnabled(boolean z10) {
        this.bottomInsetScrimEnabled = z10;
    }

    public void setCheckedItem(int i10) {
        MenuItem menuItemFindItem = this.menu.findItem(i10);
        if (menuItemFindItem != null) {
            this.presenter.setCheckedItem((MenuItemImpl) menuItemFindItem);
        }
    }

    public void setDividerInsetEnd(int i10) {
        this.presenter.setDividerInsetEnd(i10);
    }

    public void setDividerInsetStart(int i10) {
        this.presenter.setDividerInsetStart(i10);
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        com.google.android.material.shape.j.d(this, f10);
    }

    public void setItemBackground(Drawable drawable) {
        this.presenter.setItemBackground(drawable);
    }

    public void setItemBackgroundResource(int i10) {
        setItemBackground(r.a.e(getContext(), i10));
    }

    public void setItemHorizontalPadding(int i10) {
        this.presenter.setItemHorizontalPadding(i10);
    }

    public void setItemHorizontalPaddingResource(int i10) {
        this.presenter.setItemHorizontalPadding(getResources().getDimensionPixelSize(i10));
    }

    public void setItemIconPadding(int i10) {
        this.presenter.setItemIconPadding(i10);
    }

    public void setItemIconPaddingResource(int i10) {
        this.presenter.setItemIconPadding(getResources().getDimensionPixelSize(i10));
    }

    public void setItemIconSize(int i10) {
        this.presenter.setItemIconSize(i10);
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.presenter.setItemIconTintList(colorStateList);
    }

    public void setItemMaxLines(int i10) {
        this.presenter.setItemMaxLines(i10);
    }

    public void setItemTextAppearance(int i10) {
        this.presenter.setItemTextAppearance(i10);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.presenter.setItemTextColor(colorStateList);
    }

    public void setItemVerticalPadding(int i10) {
        this.presenter.setItemVerticalPadding(i10);
    }

    public void setItemVerticalPaddingResource(int i10) {
        this.presenter.setItemVerticalPadding(getResources().getDimensionPixelSize(i10));
    }

    public void setNavigationItemSelectedListener(OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
        this.listener = onNavigationItemSelectedListener;
    }

    @Override // android.view.View
    public void setOverScrollMode(int i10) {
        super.setOverScrollMode(i10);
        NavigationMenuPresenter navigationMenuPresenter = this.presenter;
        if (navigationMenuPresenter != null) {
            navigationMenuPresenter.setOverScrollMode(i10);
        }
    }

    public void setSubheaderInsetEnd(int i10) {
        this.presenter.setSubheaderInsetStart(i10);
    }

    public void setSubheaderInsetStart(int i10) {
        this.presenter.setSubheaderInsetStart(i10);
    }

    public void setTopInsetScrimEnabled(boolean z10) {
        this.topInsetScrimEnabled = z10;
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.coui.appcompat.material.navigation.NavigationView.SavedState.1
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
        public Bundle menuState;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.menuState = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeBundle(this.menuState);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public NavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.google.android.material.R$attr.navigationViewStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public NavigationView(Context context, AttributeSet attributeSet, int i10) {
        ColorStateList colorStateListCreateDefaultColorStateList;
        int i11 = DEF_STYLE_RES;
        super(m4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        NavigationMenuPresenter navigationMenuPresenter = new NavigationMenuPresenter();
        this.presenter = navigationMenuPresenter;
        this.tmpLocation = new int[2];
        this.topInsetScrimEnabled = true;
        this.bottomInsetScrimEnabled = true;
        this.layoutGravity = 0;
        this.drawerLayoutCornerSize = 0;
        this.shapeClipBounds = new RectF();
        Context context2 = getContext();
        NavigationMenu navigationMenu = new NavigationMenu(context2);
        this.menu = navigationMenu;
        h0 h0VarObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, R$styleable.NavigationView, i10, i11, new int[0]);
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationView_android_background)) {
            m0.n0(this, h0VarObtainTintedStyledAttributes.g(R$styleable.NavigationView_android_background));
        }
        this.drawerLayoutCornerSize = h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationView_drawerLayoutCornerSize, 0);
        this.layoutGravity = h0VarObtainTintedStyledAttributes.k(R$styleable.NavigationView_android_layout_gravity, 0);
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            n nVarM = n.e(context2, attributeSet, i10, i11).m();
            Drawable background = getBackground();
            i iVar = new i(nVarM);
            if (background instanceof ColorDrawable) {
                iVar.setFillColor(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
            }
            iVar.initializeElevationOverlay(context2);
            m0.n0(this, iVar);
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationView_elevation)) {
            setElevation(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationView_elevation, 0));
        }
        setFitsSystemWindows(h0VarObtainTintedStyledAttributes.a(R$styleable.NavigationView_android_fitsSystemWindows, false));
        this.maxWidth = h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationView_android_maxWidth, 0);
        ColorStateList colorStateListC = h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationView_subheaderColor) ? h0VarObtainTintedStyledAttributes.c(R$styleable.NavigationView_subheaderColor) : null;
        int iN = h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationView_subheaderTextAppearance) ? h0VarObtainTintedStyledAttributes.n(R$styleable.NavigationView_subheaderTextAppearance, 0) : 0;
        if (iN == 0 && colorStateListC == null) {
            colorStateListC = createDefaultColorStateList(R.attr.textColorSecondary);
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationView_itemIconTint)) {
            colorStateListCreateDefaultColorStateList = h0VarObtainTintedStyledAttributes.c(R$styleable.NavigationView_itemIconTint);
        } else {
            colorStateListCreateDefaultColorStateList = createDefaultColorStateList(R.attr.textColorSecondary);
        }
        int iN2 = h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationView_itemTextAppearance) ? h0VarObtainTintedStyledAttributes.n(R$styleable.NavigationView_itemTextAppearance, 0) : 0;
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationView_itemIconSize)) {
            setItemIconSize(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationView_itemIconSize, 0));
        }
        ColorStateList colorStateListC2 = h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationView_itemTextColor) ? h0VarObtainTintedStyledAttributes.c(R$styleable.NavigationView_itemTextColor) : null;
        if (iN2 == 0 && colorStateListC2 == null) {
            colorStateListC2 = createDefaultColorStateList(R.attr.textColorPrimary);
        }
        Drawable drawableG = h0VarObtainTintedStyledAttributes.g(R$styleable.NavigationView_itemBackground);
        if (drawableG == null && hasShapeAppearance(h0VarObtainTintedStyledAttributes)) {
            drawableG = createDefaultItemBackground(h0VarObtainTintedStyledAttributes);
            ColorStateList colorStateListB = c.b(context2, h0VarObtainTintedStyledAttributes, R$styleable.NavigationView_itemRippleColor);
            if (colorStateListB != null) {
                navigationMenuPresenter.setItemForeground(new RippleDrawable(b.d(colorStateListB), null, createDefaultItemDrawable(h0VarObtainTintedStyledAttributes, null)));
            }
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationView_itemHorizontalPadding)) {
            setItemHorizontalPadding(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationView_itemHorizontalPadding, 0));
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationView_itemVerticalPadding)) {
            setItemVerticalPadding(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationView_itemVerticalPadding, 0));
        }
        setDividerInsetStart(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationView_dividerInsetStart, 0));
        setDividerInsetEnd(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationView_dividerInsetEnd, 0));
        setSubheaderInsetStart(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationView_subheaderInsetStart, 0));
        setSubheaderInsetEnd(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationView_subheaderInsetEnd, 0));
        setTopInsetScrimEnabled(h0VarObtainTintedStyledAttributes.a(R$styleable.NavigationView_topInsetScrimEnabled, this.topInsetScrimEnabled));
        setBottomInsetScrimEnabled(h0VarObtainTintedStyledAttributes.a(R$styleable.NavigationView_bottomInsetScrimEnabled, this.bottomInsetScrimEnabled));
        int iF = h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationView_itemIconPadding, 0);
        setItemMaxLines(h0VarObtainTintedStyledAttributes.k(R$styleable.NavigationView_itemMaxLines, 1));
        navigationMenu.setCallback(new MenuBuilder.Callback() { // from class: com.coui.appcompat.material.navigation.NavigationView.1
            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
                OnNavigationItemSelectedListener onNavigationItemSelectedListener = NavigationView.this.listener;
                return onNavigationItemSelectedListener != null && onNavigationItemSelectedListener.onNavigationItemSelected(menuItem);
            }

            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            public void onMenuModeChange(MenuBuilder menuBuilder) {
            }
        });
        navigationMenuPresenter.setId(1);
        navigationMenuPresenter.initForMenu(context2, navigationMenu);
        if (iN != 0) {
            navigationMenuPresenter.setSubheaderTextAppearance(iN);
        }
        navigationMenuPresenter.setSubheaderColor(colorStateListC);
        navigationMenuPresenter.setItemIconTintList(colorStateListCreateDefaultColorStateList);
        navigationMenuPresenter.setOverScrollMode(getOverScrollMode());
        if (iN2 != 0) {
            navigationMenuPresenter.setItemTextAppearance(iN2);
        }
        navigationMenuPresenter.setItemTextColor(colorStateListC2);
        navigationMenuPresenter.setItemBackground(drawableG);
        navigationMenuPresenter.setItemIconPadding(iF);
        navigationMenu.addMenuPresenter(navigationMenuPresenter);
        addView((View) navigationMenuPresenter.getMenuView(this));
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationView_menu)) {
            inflateMenu(h0VarObtainTintedStyledAttributes.n(R$styleable.NavigationView_menu, 0));
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationView_headerLayout)) {
            inflateHeaderView(h0VarObtainTintedStyledAttributes.n(R$styleable.NavigationView_headerLayout, 0));
        }
        h0VarObtainTintedStyledAttributes.y();
        setupInsetScrimsListener();
    }

    public void setCheckedItem(MenuItem menuItem) {
        MenuItem menuItemFindItem = this.menu.findItem(menuItem.getItemId());
        if (menuItemFindItem != null) {
            this.presenter.setCheckedItem((MenuItemImpl) menuItemFindItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }
}
