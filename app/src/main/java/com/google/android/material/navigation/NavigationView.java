package com.google.android.material.navigation;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
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
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ContextUtils;
import com.google.android.material.internal.NavigationMenu;
import com.google.android.material.internal.NavigationMenuPresenter;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.WindowUtils;
import com.google.android.material.shape.i;
import com.google.android.material.shape.n;
import com.google.android.material.shape.s;
import g4.h;
import java.util.Objects;
import y3.a;

/* JADX INFO: loaded from: classes.dex */
public class NavigationView extends ScrimInsetsFrameLayout implements g4.b {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int[] f9791s = {R.attr.state_checked};

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final int[] f9792t = {-16842910};

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f9793u = R$style.Widget_Design_NavigationView;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final NavigationMenu f9794a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final NavigationMenuPresenter f9795b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f9796c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int[] f9797f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private MenuInflater f9798h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ViewTreeObserver.OnGlobalLayoutListener f9799i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f9800j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f9801k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f9802l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final boolean f9803m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f9804n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final s f9805o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final h f9806p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final g4.c f9807q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final DrawerLayout.e f9808r;

    class a extends DrawerLayout.g {
        a() {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.e
        public void c(View view) {
            NavigationView navigationView = NavigationView.this;
            if (view == navigationView) {
                final g4.c cVar = navigationView.f9807q;
                Objects.requireNonNull(cVar);
                view.post(new Runnable() { // from class: com.google.android.material.navigation.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        cVar.e();
                    }
                });
            }
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.e
        public void d(View view) {
            NavigationView navigationView = NavigationView.this;
            if (view == navigationView) {
                navigationView.f9807q.f();
                NavigationView.this.g();
            }
        }
    }

    class b implements MenuBuilder.Callback {
        b() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            NavigationView.this.getClass();
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }
    }

    class c implements ViewTreeObserver.OnGlobalLayoutListener {
        c() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            NavigationView navigationView = NavigationView.this;
            navigationView.getLocationOnScreen(navigationView.f9797f);
            boolean z10 = true;
            boolean z11 = NavigationView.this.f9797f[1] == 0;
            NavigationView.this.f9795b.setBehindStatusBar(z11);
            NavigationView navigationView2 = NavigationView.this;
            navigationView2.setDrawTopInsetForeground(z11 && navigationView2.isTopInsetScrimEnabled());
            NavigationView.this.setDrawLeftInsetForeground(NavigationView.this.f9797f[0] == 0 || NavigationView.this.f9797f[0] + NavigationView.this.getWidth() == 0);
            Activity activity = ContextUtils.getActivity(NavigationView.this.getContext());
            if (activity != null) {
                Rect currentWindowBounds = WindowUtils.getCurrentWindowBounds(activity);
                boolean z12 = currentWindowBounds.height() - NavigationView.this.getHeight() == NavigationView.this.f9797f[1];
                boolean z13 = Color.alpha(activity.getWindow().getNavigationBarColor()) != 0;
                NavigationView navigationView3 = NavigationView.this;
                navigationView3.setDrawBottomInsetForeground(z12 && z13 && navigationView3.isBottomInsetScrimEnabled());
                if (currentWindowBounds.width() != NavigationView.this.f9797f[0] && currentWindowBounds.width() - NavigationView.this.getWidth() != NavigationView.this.f9797f[0]) {
                    z10 = false;
                }
                NavigationView.this.setDrawRightInsetForeground(z10);
            }
        }
    }

    public interface d {
    }

    public NavigationView(Context context) {
        this(context, null);
    }

    private ColorStateList createDefaultColorStateList(int i10) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i10, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateListA = e.a.a(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(R$attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i11 = typedValue.data;
        int defaultColor = colorStateListA.getDefaultColor();
        int[] iArr = f9792t;
        return new ColorStateList(new int[][]{iArr, f9791s, FrameLayout.EMPTY_STATE_SET}, new int[]{colorStateListA.getColorForState(iArr, defaultColor), i11, defaultColor});
    }

    private Drawable createDefaultItemBackground(h0 h0Var) {
        return createDefaultItemDrawable(h0Var, i4.c.b(getContext(), h0Var, R$styleable.NavigationView_itemShapeFillColor));
    }

    private Drawable createDefaultItemDrawable(h0 h0Var, ColorStateList colorStateList) {
        i iVar = new i(n.b(getContext(), h0Var.n(R$styleable.NavigationView_itemShapeAppearance, 0), h0Var.n(R$styleable.NavigationView_itemShapeAppearanceOverlay, 0)).m());
        iVar.setFillColor(colorStateList);
        return new InsetDrawable((Drawable) iVar, h0Var.f(R$styleable.NavigationView_itemShapeInsetStart, 0), h0Var.f(R$styleable.NavigationView_itemShapeInsetTop, 0), h0Var.f(R$styleable.NavigationView_itemShapeInsetEnd, 0), h0Var.f(R$styleable.NavigationView_itemShapeInsetBottom, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (!this.f9803m || this.f9802l == 0) {
            return;
        }
        this.f9802l = 0;
        maybeUpdateCornerSizeForDrawerLayout(getWidth(), getHeight());
    }

    private MenuInflater getMenuInflater() {
        if (this.f9798h == null) {
            this.f9798h = new g(getContext());
        }
        return this.f9798h;
    }

    private Pair h() {
        ViewParent parent = getParent();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if ((parent instanceof DrawerLayout) && (layoutParams instanceof DrawerLayout.f)) {
            return new Pair((DrawerLayout) parent, (DrawerLayout.f) layoutParams);
        }
        throw new IllegalStateException("NavigationView back progress requires the direct parent view to be a DrawerLayout.");
    }

    private boolean hasShapeAppearance(h0 h0Var) {
        return h0Var.s(R$styleable.NavigationView_itemShapeAppearance) || h0Var.s(R$styleable.NavigationView_itemShapeAppearanceOverlay);
    }

    private void maybeUpdateCornerSizeForDrawerLayout(int i10, int i11) {
        if ((getParent() instanceof DrawerLayout) && (getLayoutParams() instanceof DrawerLayout.f)) {
            if ((this.f9802l > 0 || this.f9803m) && (getBackground() instanceof i)) {
                boolean z10 = j.b(((DrawerLayout.f) getLayoutParams()).f2258a, m0.v(this)) == 3;
                i iVar = (i) getBackground();
                n.b bVarO = iVar.getShapeAppearanceModel().v().o(this.f9802l);
                if (z10) {
                    bVarO.H(0.0f);
                    bVarO.w(0.0f);
                } else {
                    bVarO.M(0.0f);
                    bVarO.B(0.0f);
                }
                n nVarM = bVarO.m();
                iVar.setShapeAppearanceModel(nVarM);
                this.f9805o.g(this, nVarM);
                this.f9805o.f(this, new RectF(0.0f, 0.0f, i10, i11));
                this.f9805o.i(this, true);
            }
        }
    }

    private void setupInsetScrimsListener() {
        this.f9799i = new c();
        getViewTreeObserver().addOnGlobalLayoutListener(this.f9799i);
    }

    @Override // g4.b
    public void cancelBackProgress() {
        h();
        this.f9806p.f();
        g();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        this.f9805o.e(canvas, new a.InterfaceC0243a() { // from class: com.google.android.material.navigation.d
            @Override // y3.a.InterfaceC0243a
            public final void a(Canvas canvas2) {
                this.f9819a.f(canvas2);
            }
        });
    }

    h getBackHelper() {
        return this.f9806p;
    }

    public MenuItem getCheckedItem() {
        return this.f9795b.getCheckedItem();
    }

    public int getDividerInsetEnd() {
        return this.f9795b.getDividerInsetEnd();
    }

    public int getDividerInsetStart() {
        return this.f9795b.getDividerInsetStart();
    }

    public int getHeaderCount() {
        return this.f9795b.getHeaderCount();
    }

    public Drawable getItemBackground() {
        return this.f9795b.getItemBackground();
    }

    public int getItemHorizontalPadding() {
        return this.f9795b.getItemHorizontalPadding();
    }

    public int getItemIconPadding() {
        return this.f9795b.getItemIconPadding();
    }

    public ColorStateList getItemIconTintList() {
        return this.f9795b.getItemTintList();
    }

    public int getItemMaxLines() {
        return this.f9795b.getItemMaxLines();
    }

    public ColorStateList getItemTextColor() {
        return this.f9795b.getItemTextColor();
    }

    public int getItemVerticalPadding() {
        return this.f9795b.getItemVerticalPadding();
    }

    public Menu getMenu() {
        return this.f9794a;
    }

    public int getSubheaderInsetEnd() {
        return this.f9795b.getSubheaderInsetEnd();
    }

    public int getSubheaderInsetStart() {
        return this.f9795b.getSubheaderInsetStart();
    }

    @Override // g4.b
    public void handleBackInvoked() {
        Pair pairH = h();
        DrawerLayout drawerLayout = (DrawerLayout) pairH.first;
        androidx.activity.b bVarC = this.f9806p.c();
        if (bVarC == null || Build.VERSION.SDK_INT < 34) {
            drawerLayout.d(this);
            return;
        }
        this.f9806p.h(bVarC, ((DrawerLayout.f) pairH.second).f2258a, com.google.android.material.navigation.b.b(drawerLayout, this), com.google.android.material.navigation.b.c(drawerLayout));
    }

    public View inflateHeaderView(int i10) {
        return this.f9795b.inflateHeaderView(i10);
    }

    public void inflateMenu(int i10) {
        this.f9795b.setUpdateSuspended(true);
        getMenuInflater().inflate(i10, this.f9794a);
        this.f9795b.setUpdateSuspended(false);
        this.f9795b.updateMenuView(false);
    }

    public boolean isBottomInsetScrimEnabled() {
        return this.f9801k;
    }

    public boolean isTopInsetScrimEnabled() {
        return this.f9800j;
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.google.android.material.shape.j.e(this);
        ViewParent parent = getParent();
        if ((parent instanceof DrawerLayout) && this.f9807q.b()) {
            DrawerLayout drawerLayout = (DrawerLayout) parent;
            drawerLayout.I(this.f9808r);
            drawerLayout.a(this.f9808r);
            if (drawerLayout.A(this)) {
                this.f9807q.e();
            }
        }
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this.f9799i);
        ViewParent parent = getParent();
        if (parent instanceof DrawerLayout) {
            ((DrawerLayout) parent).I(this.f9808r);
        }
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    protected void onInsetsChanged(a1 a1Var) {
        this.f9795b.dispatchApplyWindowInsets(a1Var);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        if (mode == Integer.MIN_VALUE) {
            i10 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i10), this.f9796c), 1073741824);
        } else if (mode == 0) {
            i10 = View.MeasureSpec.makeMeasureSpec(this.f9796c, 1073741824);
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
        this.f9794a.restorePresenterStates(savedState.f9809a);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.f9809a = bundle;
        this.f9794a.savePresenterStates(bundle);
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        maybeUpdateCornerSizeForDrawerLayout(i10, i11);
    }

    public void setBottomInsetScrimEnabled(boolean z10) {
        this.f9801k = z10;
    }

    public void setCheckedItem(int i10) {
        MenuItem menuItemFindItem = this.f9794a.findItem(i10);
        if (menuItemFindItem != null) {
            this.f9795b.setCheckedItem((MenuItemImpl) menuItemFindItem);
        }
    }

    public void setDividerInsetEnd(int i10) {
        this.f9795b.setDividerInsetEnd(i10);
    }

    public void setDividerInsetStart(int i10) {
        this.f9795b.setDividerInsetStart(i10);
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        com.google.android.material.shape.j.d(this, f10);
    }

    public void setForceCompatClippingEnabled(boolean z10) {
        this.f9805o.h(this, z10);
    }

    public void setItemBackground(Drawable drawable) {
        this.f9795b.setItemBackground(drawable);
    }

    public void setItemBackgroundResource(int i10) {
        setItemBackground(r.a.e(getContext(), i10));
    }

    public void setItemHorizontalPadding(int i10) {
        this.f9795b.setItemHorizontalPadding(i10);
    }

    public void setItemHorizontalPaddingResource(int i10) {
        this.f9795b.setItemHorizontalPadding(getResources().getDimensionPixelSize(i10));
    }

    public void setItemIconPadding(int i10) {
        this.f9795b.setItemIconPadding(i10);
    }

    public void setItemIconPaddingResource(int i10) {
        this.f9795b.setItemIconPadding(getResources().getDimensionPixelSize(i10));
    }

    public void setItemIconSize(int i10) {
        this.f9795b.setItemIconSize(i10);
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.f9795b.setItemIconTintList(colorStateList);
    }

    public void setItemMaxLines(int i10) {
        this.f9795b.setItemMaxLines(i10);
    }

    public void setItemTextAppearance(int i10) {
        this.f9795b.setItemTextAppearance(i10);
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z10) {
        this.f9795b.setItemTextAppearanceActiveBoldEnabled(z10);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f9795b.setItemTextColor(colorStateList);
    }

    public void setItemVerticalPadding(int i10) {
        this.f9795b.setItemVerticalPadding(i10);
    }

    public void setItemVerticalPaddingResource(int i10) {
        this.f9795b.setItemVerticalPadding(getResources().getDimensionPixelSize(i10));
    }

    public void setNavigationItemSelectedListener(d dVar) {
    }

    @Override // android.view.View
    public void setOverScrollMode(int i10) {
        super.setOverScrollMode(i10);
        NavigationMenuPresenter navigationMenuPresenter = this.f9795b;
        if (navigationMenuPresenter != null) {
            navigationMenuPresenter.setOverScrollMode(i10);
        }
    }

    public void setSubheaderInsetEnd(int i10) {
        this.f9795b.setSubheaderInsetEnd(i10);
    }

    public void setSubheaderInsetStart(int i10) {
        this.f9795b.setSubheaderInsetStart(i10);
    }

    public void setTopInsetScrimEnabled(boolean z10) {
        this.f9800j = z10;
    }

    @Override // g4.b
    public void startBackProgress(androidx.activity.b bVar) {
        h();
        this.f9806p.j(bVar);
    }

    @Override // g4.b
    public void updateBackProgress(androidx.activity.b bVar) {
        this.f9806p.l(bVar, ((DrawerLayout.f) h().second).f2258a);
        if (this.f9803m) {
            this.f9802l = x3.a.c(0, this.f9804n, this.f9806p.a(bVar.a()));
            maybeUpdateCornerSizeForDrawerLayout(getWidth(), getHeight());
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Bundle f9809a;

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

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f9809a = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeBundle(this.f9809a);
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
        int i11;
        int i12;
        int i13 = f9793u;
        super(m4.a.c(context, attributeSet, i10, i13), attributeSet, i10);
        NavigationMenuPresenter navigationMenuPresenter = new NavigationMenuPresenter();
        this.f9795b = navigationMenuPresenter;
        this.f9797f = new int[2];
        this.f9800j = true;
        this.f9801k = true;
        this.f9802l = 0;
        this.f9805o = s.a(this);
        this.f9806p = new h(this);
        this.f9807q = new g4.c(this);
        this.f9808r = new a();
        Context context2 = getContext();
        NavigationMenu navigationMenu = new NavigationMenu(context2);
        this.f9794a = navigationMenu;
        h0 h0VarObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, R$styleable.NavigationView, i10, i13, new int[0]);
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationView_android_background)) {
            m0.n0(this, h0VarObtainTintedStyledAttributes.g(R$styleable.NavigationView_android_background));
        }
        int iF = h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationView_drawerLayoutCornerSize, 0);
        this.f9802l = iF;
        this.f9803m = iF == 0;
        this.f9804n = getResources().getDimensionPixelSize(R$dimen.m3_navigation_drawer_layout_corner_size);
        Drawable background = getBackground();
        ColorStateList colorStateListG = com.google.android.material.drawable.a.g(background);
        if (background == null || colorStateListG != null) {
            i iVar = new i(n.e(context2, attributeSet, i10, i13).m());
            if (colorStateListG != null) {
                iVar.setFillColor(colorStateListG);
            }
            iVar.initializeElevationOverlay(context2);
            m0.n0(this, iVar);
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationView_elevation)) {
            setElevation(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationView_elevation, 0));
        }
        setFitsSystemWindows(h0VarObtainTintedStyledAttributes.a(R$styleable.NavigationView_android_fitsSystemWindows, false));
        this.f9796c = h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationView_android_maxWidth, 0);
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
        boolean zA = h0VarObtainTintedStyledAttributes.a(R$styleable.NavigationView_itemTextAppearanceActiveBoldEnabled, true);
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
            ColorStateList colorStateListB = i4.c.b(context2, h0VarObtainTintedStyledAttributes, R$styleable.NavigationView_itemRippleColor);
            if (colorStateListB != null) {
                navigationMenuPresenter.setItemForeground(new RippleDrawable(j4.b.d(colorStateListB), null, createDefaultItemDrawable(h0VarObtainTintedStyledAttributes, null)));
            }
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationView_itemHorizontalPadding)) {
            i11 = 0;
            setItemHorizontalPadding(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationView_itemHorizontalPadding, 0));
        } else {
            i11 = 0;
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationView_itemVerticalPadding)) {
            setItemVerticalPadding(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationView_itemVerticalPadding, i11));
        }
        setDividerInsetStart(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationView_dividerInsetStart, i11));
        setDividerInsetEnd(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationView_dividerInsetEnd, i11));
        setSubheaderInsetStart(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationView_subheaderInsetStart, i11));
        setSubheaderInsetEnd(h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationView_subheaderInsetEnd, i11));
        setTopInsetScrimEnabled(h0VarObtainTintedStyledAttributes.a(R$styleable.NavigationView_topInsetScrimEnabled, this.f9800j));
        setBottomInsetScrimEnabled(h0VarObtainTintedStyledAttributes.a(R$styleable.NavigationView_bottomInsetScrimEnabled, this.f9801k));
        int iF2 = h0VarObtainTintedStyledAttributes.f(R$styleable.NavigationView_itemIconPadding, i11);
        setItemMaxLines(h0VarObtainTintedStyledAttributes.k(R$styleable.NavigationView_itemMaxLines, 1));
        navigationMenu.setCallback(new b());
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
        navigationMenuPresenter.setItemTextAppearanceActiveBoldEnabled(zA);
        navigationMenuPresenter.setItemTextColor(colorStateListC2);
        navigationMenuPresenter.setItemBackground(drawableG);
        navigationMenuPresenter.setItemIconPadding(iF2);
        navigationMenu.addMenuPresenter(navigationMenuPresenter);
        addView((View) navigationMenuPresenter.getMenuView(this));
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationView_menu)) {
            i12 = 0;
            inflateMenu(h0VarObtainTintedStyledAttributes.n(R$styleable.NavigationView_menu, 0));
        } else {
            i12 = 0;
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.NavigationView_headerLayout)) {
            inflateHeaderView(h0VarObtainTintedStyledAttributes.n(R$styleable.NavigationView_headerLayout, i12));
        }
        h0VarObtainTintedStyledAttributes.y();
        setupInsetScrimsListener();
    }

    public void setCheckedItem(MenuItem menuItem) {
        MenuItem menuItemFindItem = this.f9794a.findItem(menuItem.getItemId());
        if (menuItemFindItem != null) {
            this.f9795b.setCheckedItem((MenuItemImpl) menuItemFindItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }
}
