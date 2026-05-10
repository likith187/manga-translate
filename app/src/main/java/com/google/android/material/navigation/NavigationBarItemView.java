package com.google.android.material.navigation;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.core.view.d0;
import androidx.core.view.m0;
import androidx.core.widget.j;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$integer;
import com.google.android.material.R$string;
import d0.h;
import g4.i;

/* JADX INFO: loaded from: classes.dex */
public abstract class NavigationBarItemView extends FrameLayout implements MenuView.ItemView {
    private static final int[] J = {R.attr.state_checked};
    private static final d K;
    private static final d L;
    private ValueAnimator A;
    private d B;
    private float C;
    private boolean D;
    private int E;
    private int F;
    private boolean G;
    private int H;
    private com.google.android.material.badge.a I;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f9726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ColorStateList f9727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Drawable f9728c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9729f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f9730h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f9731i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f9732j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f9733k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f9734l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f9735m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f9736n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final FrameLayout f9737o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final View f9738p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final ImageView f9739q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final ViewGroup f9740r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final TextView f9741s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final TextView f9742t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f9743u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f9744v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private MenuItemImpl f9745w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private ColorStateList f9746x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Drawable f9747y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Drawable f9748z;

    class a implements View.OnLayoutChangeListener {
        a() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            if (NavigationBarItemView.this.f9739q.getVisibility() == 0) {
                NavigationBarItemView navigationBarItemView = NavigationBarItemView.this;
                navigationBarItemView.u(navigationBarItemView.f9739q);
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f9750a;

        b(int i10) {
            this.f9750a = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            NavigationBarItemView.this.v(this.f9750a);
        }
    }

    class c implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ float f9752a;

        c(float f10) {
            this.f9752a = f10;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            NavigationBarItemView.this.o(((Float) valueAnimator.getAnimatedValue()).floatValue(), this.f9752a);
        }
    }

    private static class d {
        private d() {
        }

        protected float a(float f10, float f11) {
            return x3.a.b(0.0f, 1.0f, f11 == 0.0f ? 0.8f : 0.0f, f11 == 0.0f ? 1.0f : 0.2f, f10);
        }

        protected float b(float f10, float f11) {
            return x3.a.a(0.4f, 1.0f, f10);
        }

        protected float c(float f10, float f11) {
            return 1.0f;
        }

        public void d(float f10, float f11, View view) {
            view.setScaleX(b(f10, f11));
            view.setScaleY(c(f10, f11));
            view.setAlpha(a(f10, f11));
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }

    private static class e extends d {
        private e() {
            super(null);
        }

        @Override // com.google.android.material.navigation.NavigationBarItemView.d
        protected float c(float f10, float f11) {
            return b(f10, f11);
        }

        /* synthetic */ e(a aVar) {
            this();
        }
    }

    static {
        a aVar = null;
        K = new d(aVar);
        L = new e(aVar);
    }

    public NavigationBarItemView(Context context) {
        super(context);
        this.f9726a = false;
        this.f9743u = -1;
        this.f9744v = 0;
        this.B = K;
        this.C = 0.0f;
        this.D = false;
        this.E = 0;
        this.F = 0;
        this.G = false;
        this.H = 0;
        LayoutInflater.from(context).inflate(getItemLayoutResId(), (ViewGroup) this, true);
        this.f9737o = (FrameLayout) findViewById(R$id.navigation_bar_item_icon_container);
        this.f9738p = findViewById(R$id.navigation_bar_item_active_indicator_view);
        ImageView imageView = (ImageView) findViewById(R$id.navigation_bar_item_icon_view);
        this.f9739q = imageView;
        ViewGroup viewGroup = (ViewGroup) findViewById(R$id.navigation_bar_item_labels_group);
        this.f9740r = viewGroup;
        TextView textView = (TextView) findViewById(R$id.navigation_bar_item_small_label_view);
        this.f9741s = textView;
        TextView textView2 = (TextView) findViewById(R$id.navigation_bar_item_large_label_view);
        this.f9742t = textView2;
        setBackgroundResource(getItemBackgroundResId());
        this.f9729f = getResources().getDimensionPixelSize(getItemDefaultMarginResId());
        this.f9730h = viewGroup.getPaddingBottom();
        this.f9731i = getResources().getDimensionPixelSize(R$dimen.m3_navigation_item_active_indicator_label_padding);
        m0.t0(textView, 2);
        m0.t0(textView2, 2);
        setFocusable(true);
        e(textView.getTextSize(), textView2.getTextSize());
        if (imageView != null) {
            imageView.addOnLayoutChangeListener(new a());
        }
    }

    private void e(float f10, float f11) {
        this.f9732j = f10 - f11;
        this.f9733k = (f11 * 1.0f) / f10;
        this.f9734l = (f10 * 1.0f) / f11;
    }

    private static Drawable g(ColorStateList colorStateList) {
        return new RippleDrawable(j4.b.a(colorStateList), null, null);
    }

    private View getIconOrContainer() {
        FrameLayout frameLayout = this.f9737o;
        return frameLayout != null ? frameLayout : this.f9739q;
    }

    private int getItemVisiblePosition() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        int iIndexOfChild = viewGroup.indexOfChild(this);
        int i10 = 0;
        for (int i11 = 0; i11 < iIndexOfChild; i11++) {
            View childAt = viewGroup.getChildAt(i11);
            if ((childAt instanceof NavigationBarItemView) && childAt.getVisibility() == 0) {
                i10++;
            }
        }
        return i10;
    }

    private int getSuggestedIconHeight() {
        return ((FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams()).topMargin + getIconOrContainer().getMeasuredHeight();
    }

    private int getSuggestedIconWidth() {
        com.google.android.material.badge.a aVar = this.I;
        int minimumWidth = aVar == null ? 0 : aVar.getMinimumWidth() - this.I.k();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams();
        return Math.max(minimumWidth, layoutParams.leftMargin) + this.f9739q.getMeasuredWidth() + Math.max(minimumWidth, layoutParams.rightMargin);
    }

    private FrameLayout h(View view) {
        ImageView imageView = this.f9739q;
        if (view == imageView && com.google.android.material.badge.b.f8945a) {
            return (FrameLayout) imageView.getParent();
        }
        return null;
    }

    private boolean i() {
        return this.I != null;
    }

    private boolean j() {
        return this.G && this.f9735m == 2;
    }

    private void k(float f10) {
        if (!this.D || !this.f9726a || !m0.N(this)) {
            o(f10, f10);
            return;
        }
        ValueAnimator valueAnimator = this.A;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.A = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.C, f10);
        this.A = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new c(f10));
        this.A.setInterpolator(i.g(getContext(), R$attr.motionEasingEmphasizedInterpolator, x3.a.f16369b));
        this.A.setDuration(i.f(getContext(), R$attr.motionDurationLong2, getResources().getInteger(R$integer.material_motion_duration_long_1)));
        this.A.start();
    }

    private void l() {
        MenuItemImpl menuItemImpl = this.f9745w;
        if (menuItemImpl != null) {
            setChecked(menuItemImpl.isChecked());
        }
    }

    private void m() {
        Drawable drawableG = this.f9728c;
        RippleDrawable rippleDrawable = null;
        boolean z10 = true;
        if (this.f9727b != null) {
            Drawable activeIndicatorDrawable = getActiveIndicatorDrawable();
            if (this.D && getActiveIndicatorDrawable() != null && this.f9737o != null && activeIndicatorDrawable != null) {
                rippleDrawable = new RippleDrawable(j4.b.d(this.f9727b), null, activeIndicatorDrawable);
                z10 = false;
            } else if (drawableG == null) {
                drawableG = g(this.f9727b);
            }
        }
        FrameLayout frameLayout = this.f9737o;
        if (frameLayout != null) {
            frameLayout.setPadding(0, 0, 0, 0);
            this.f9737o.setForeground(rippleDrawable);
        }
        m0.n0(this, drawableG);
        setDefaultFocusHighlightEnabled(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(float f10, float f11) {
        View view = this.f9738p;
        if (view != null) {
            this.B.d(f10, f11, view);
        }
        this.C = f10;
    }

    private static void p(TextView textView, int i10) {
        j.o(textView, i10);
        int i11 = i4.c.i(textView.getContext(), i10, 0);
        if (i11 != 0) {
            textView.setTextSize(0, i11);
        }
    }

    private static void q(View view, float f10, float f11, int i10) {
        view.setScaleX(f10);
        view.setScaleY(f11);
        view.setVisibility(i10);
    }

    private static void r(View view, int i10, int i11) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i10;
        layoutParams.bottomMargin = i10;
        layoutParams.gravity = i11;
        view.setLayoutParams(layoutParams);
    }

    private void s(View view) {
        if (i() && view != null) {
            setClipChildren(false);
            setClipToPadding(false);
            com.google.android.material.badge.b.a(this.I, view, h(view));
        }
    }

    private void t(View view) {
        if (i()) {
            if (view != null) {
                setClipChildren(true);
                setClipToPadding(true);
                com.google.android.material.badge.b.d(this.I, view);
            }
            this.I = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(View view) {
        if (i()) {
            com.google.android.material.badge.b.e(this.I, view, h(view));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(int i10) {
        if (this.f9738p == null || i10 <= 0) {
            return;
        }
        int iMin = Math.min(this.E, i10 - (this.H * 2));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f9738p.getLayoutParams();
        layoutParams.height = j() ? iMin : this.F;
        layoutParams.width = iMin;
        this.f9738p.setLayoutParams(layoutParams);
    }

    private void w() {
        if (j()) {
            this.B = L;
        } else {
            this.B = K;
        }
    }

    private static void x(View view, int i10) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i10);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        FrameLayout frameLayout = this.f9737o;
        if (frameLayout != null && this.D) {
            frameLayout.dispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    void f() {
        n();
        this.f9745w = null;
        this.C = 0.0f;
        this.f9726a = false;
    }

    public Drawable getActiveIndicatorDrawable() {
        View view = this.f9738p;
        if (view == null) {
            return null;
        }
        return view.getBackground();
    }

    public com.google.android.material.badge.a getBadge() {
        return this.I;
    }

    protected int getItemBackgroundResId() {
        return R$drawable.mtrl_navigation_bar_item_background;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.f9745w;
    }

    protected int getItemDefaultMarginResId() {
        return R$dimen.mtrl_navigation_bar_item_default_margin;
    }

    protected abstract int getItemLayoutResId();

    public int getItemPosition() {
        return this.f9743u;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f9740r.getLayoutParams();
        return getSuggestedIconHeight() + (this.f9740r.getVisibility() == 0 ? this.f9731i : 0) + layoutParams.topMargin + this.f9740r.getMeasuredHeight() + layoutParams.bottomMargin;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f9740r.getLayoutParams();
        return Math.max(getSuggestedIconWidth(), layoutParams.leftMargin + this.f9740r.getMeasuredWidth() + layoutParams.rightMargin);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void initialize(MenuItemImpl menuItemImpl, int i10) {
        this.f9745w = menuItemImpl;
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setIcon(menuItemImpl.getIcon());
        setTitle(menuItemImpl.getTitle());
        setId(menuItemImpl.getItemId());
        if (!TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(menuItemImpl.getContentDescription());
        }
        androidx.appcompat.widget.m0.a(this, !TextUtils.isEmpty(menuItemImpl.getTooltipText()) ? menuItemImpl.getTooltipText() : menuItemImpl.getTitle());
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        this.f9726a = true;
    }

    void n() {
        t(this.f9739q);
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        MenuItemImpl menuItemImpl = this.f9745w;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.f9745w.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, J);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        com.google.android.material.badge.a aVar = this.I;
        if (aVar != null && aVar.isVisible()) {
            CharSequence title = this.f9745w.getTitle();
            if (!TextUtils.isEmpty(this.f9745w.getContentDescription())) {
                title = this.f9745w.getContentDescription();
            }
            accessibilityNodeInfo.setContentDescription(((Object) title) + ", " + ((Object) this.I.h()));
        }
        h hVarM0 = h.M0(accessibilityNodeInfo);
        hVarM0.k0(h.f.a(0, 1, getItemVisiblePosition(), 1, false, isSelected()));
        if (isSelected()) {
            hVarM0.i0(false);
            hVarM0.a0(h.a.f11466i);
        }
        hVarM0.A0(getResources().getString(R$string.item_view_role_description));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        post(new b(i10));
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return false;
    }

    public void setActiveIndicatorDrawable(Drawable drawable) {
        View view = this.f9738p;
        if (view == null) {
            return;
        }
        view.setBackgroundDrawable(drawable);
        m();
    }

    public void setActiveIndicatorEnabled(boolean z10) {
        this.D = z10;
        m();
        View view = this.f9738p;
        if (view != null) {
            view.setVisibility(z10 ? 0 : 8);
            requestLayout();
        }
    }

    public void setActiveIndicatorHeight(int i10) {
        this.F = i10;
        v(getWidth());
    }

    public void setActiveIndicatorLabelPadding(int i10) {
        if (this.f9731i != i10) {
            this.f9731i = i10;
            l();
        }
    }

    public void setActiveIndicatorMarginHorizontal(int i10) {
        this.H = i10;
        v(getWidth());
    }

    public void setActiveIndicatorResizeable(boolean z10) {
        this.G = z10;
    }

    public void setActiveIndicatorWidth(int i10) {
        this.E = i10;
        v(getWidth());
    }

    void setBadge(com.google.android.material.badge.a aVar) {
        if (this.I == aVar) {
            return;
        }
        if (i() && this.f9739q != null) {
            Log.w("NavigationBar", "Multiple badges shouldn't be attached to one item.");
            t(this.f9739q);
        }
        this.I = aVar;
        ImageView imageView = this.f9739q;
        if (imageView != null) {
            s(imageView);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setCheckable(boolean z10) {
        refreshDrawableState();
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setChecked(boolean z10) {
        this.f9742t.setPivotX(r0.getWidth() / 2);
        this.f9742t.setPivotY(r0.getBaseline());
        this.f9741s.setPivotX(r0.getWidth() / 2);
        this.f9741s.setPivotY(r0.getBaseline());
        k(z10 ? 1.0f : 0.0f);
        int i10 = this.f9735m;
        if (i10 != -1) {
            if (i10 == 0) {
                if (z10) {
                    r(getIconOrContainer(), this.f9729f, 49);
                    x(this.f9740r, this.f9730h);
                    this.f9742t.setVisibility(0);
                } else {
                    r(getIconOrContainer(), this.f9729f, 17);
                    x(this.f9740r, 0);
                    this.f9742t.setVisibility(4);
                }
                this.f9741s.setVisibility(4);
            } else if (i10 == 1) {
                x(this.f9740r, this.f9730h);
                if (z10) {
                    r(getIconOrContainer(), (int) (this.f9729f + this.f9732j), 49);
                    q(this.f9742t, 1.0f, 1.0f, 0);
                    TextView textView = this.f9741s;
                    float f10 = this.f9733k;
                    q(textView, f10, f10, 4);
                } else {
                    r(getIconOrContainer(), this.f9729f, 49);
                    TextView textView2 = this.f9742t;
                    float f11 = this.f9734l;
                    q(textView2, f11, f11, 4);
                    q(this.f9741s, 1.0f, 1.0f, 0);
                }
            } else if (i10 == 2) {
                r(getIconOrContainer(), this.f9729f, 17);
                this.f9742t.setVisibility(8);
                this.f9741s.setVisibility(8);
            }
        } else if (this.f9736n) {
            if (z10) {
                r(getIconOrContainer(), this.f9729f, 49);
                x(this.f9740r, this.f9730h);
                this.f9742t.setVisibility(0);
            } else {
                r(getIconOrContainer(), this.f9729f, 17);
                x(this.f9740r, 0);
                this.f9742t.setVisibility(4);
            }
            this.f9741s.setVisibility(4);
        } else {
            x(this.f9740r, this.f9730h);
            if (z10) {
                r(getIconOrContainer(), (int) (this.f9729f + this.f9732j), 49);
                q(this.f9742t, 1.0f, 1.0f, 0);
                TextView textView3 = this.f9741s;
                float f12 = this.f9733k;
                q(textView3, f12, f12, 4);
            } else {
                r(getIconOrContainer(), this.f9729f, 49);
                TextView textView4 = this.f9742t;
                float f13 = this.f9734l;
                q(textView4, f13, f13, 4);
                q(this.f9741s, 1.0f, 1.0f, 0);
            }
        }
        refreshDrawableState();
        setSelected(z10);
    }

    @Override // android.view.View, androidx.appcompat.view.menu.MenuView.ItemView
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        this.f9741s.setEnabled(z10);
        this.f9742t.setEnabled(z10);
        this.f9739q.setEnabled(z10);
        if (z10) {
            m0.A0(this, d0.b(getContext(), 1002));
        } else {
            m0.A0(this, null);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setIcon(Drawable drawable) {
        if (drawable == this.f9747y) {
            return;
        }
        this.f9747y = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = v.a.r(drawable).mutate();
            this.f9748z = drawable;
            ColorStateList colorStateList = this.f9746x;
            if (colorStateList != null) {
                v.a.o(drawable, colorStateList);
            }
        }
        this.f9739q.setImageDrawable(drawable);
    }

    public void setIconSize(int i10) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f9739q.getLayoutParams();
        layoutParams.width = i10;
        layoutParams.height = i10;
        this.f9739q.setLayoutParams(layoutParams);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        Drawable drawable;
        this.f9746x = colorStateList;
        if (this.f9745w == null || (drawable = this.f9748z) == null) {
            return;
        }
        v.a.o(drawable, colorStateList);
        this.f9748z.invalidateSelf();
    }

    public void setItemBackground(int i10) {
        setItemBackground(i10 == 0 ? null : r.a.e(getContext(), i10));
    }

    public void setItemPaddingBottom(int i10) {
        if (this.f9730h != i10) {
            this.f9730h = i10;
            l();
        }
    }

    public void setItemPaddingTop(int i10) {
        if (this.f9729f != i10) {
            this.f9729f = i10;
            l();
        }
    }

    public void setItemPosition(int i10) {
        this.f9743u = i10;
    }

    public void setItemRippleColor(ColorStateList colorStateList) {
        this.f9727b = colorStateList;
        m();
    }

    public void setLabelVisibilityMode(int i10) {
        if (this.f9735m != i10) {
            this.f9735m = i10;
            w();
            v(getWidth());
            l();
        }
    }

    public void setShifting(boolean z10) {
        if (this.f9736n != z10) {
            this.f9736n = z10;
            l();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setShortcut(boolean z10, char c10) {
    }

    public void setTextAppearanceActive(int i10) {
        this.f9744v = i10;
        p(this.f9742t, i10);
        e(this.f9741s.getTextSize(), this.f9742t.getTextSize());
    }

    public void setTextAppearanceActiveBoldEnabled(boolean z10) {
        setTextAppearanceActive(this.f9744v);
        TextView textView = this.f9742t;
        textView.setTypeface(textView.getTypeface(), z10 ? 1 : 0);
    }

    public void setTextAppearanceInactive(int i10) {
        p(this.f9741s, i10);
        e(this.f9741s.getTextSize(), this.f9742t.getTextSize());
    }

    public void setTextColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f9741s.setTextColor(colorStateList);
            this.f9742t.setTextColor(colorStateList);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setTitle(CharSequence charSequence) {
        this.f9741s.setText(charSequence);
        this.f9742t.setText(charSequence);
        MenuItemImpl menuItemImpl = this.f9745w;
        if (menuItemImpl == null || TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(charSequence);
        }
        MenuItemImpl menuItemImpl2 = this.f9745w;
        if (menuItemImpl2 != null && !TextUtils.isEmpty(menuItemImpl2.getTooltipText())) {
            charSequence = this.f9745w.getTooltipText();
        }
        androidx.appcompat.widget.m0.a(this, charSequence);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return true;
    }

    public void setItemBackground(Drawable drawable) {
        if (drawable != null && drawable.getConstantState() != null) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        this.f9728c = drawable;
        m();
    }
}
