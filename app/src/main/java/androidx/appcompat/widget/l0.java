package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$drawable;
import androidx.appcompat.R$id;
import androidx.appcompat.R$string;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.menu.ActionMenuItem;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.u0;
import androidx.core.view.w0;

/* JADX INFO: loaded from: classes.dex */
public class l0 implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Toolbar f909a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f910b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f911c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f912d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Drawable f913e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Drawable f914f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Drawable f915g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f916h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    CharSequence f917i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private CharSequence f918j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private CharSequence f919k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    Window.Callback f920l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    boolean f921m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ActionMenuPresenter f922n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f923o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f924p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Drawable f925q;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ActionMenuItem f926a;

        a() {
            this.f926a = new ActionMenuItem(l0.this.f909a.getContext(), 0, R.id.home, 0, 0, l0.this.f917i);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l0 l0Var = l0.this;
            Window.Callback callback = l0Var.f920l;
            if (callback == null || !l0Var.f921m) {
                return;
            }
            callback.onMenuItemSelected(0, this.f926a);
        }
    }

    class b extends w0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f928a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f929b;

        b(int i10) {
            this.f929b = i10;
        }

        @Override // androidx.core.view.w0, androidx.core.view.v0
        public void a(View view) {
            this.f928a = true;
        }

        @Override // androidx.core.view.v0
        public void b(View view) {
            if (this.f928a) {
                return;
            }
            l0.this.f909a.setVisibility(this.f929b);
        }

        @Override // androidx.core.view.w0, androidx.core.view.v0
        public void c(View view) {
            l0.this.f909a.setVisibility(0);
        }
    }

    public l0(Toolbar toolbar, boolean z10) {
        this(toolbar, z10, R$string.abc_action_bar_up_description, R$drawable.abc_ic_ab_back_material);
    }

    private void G(CharSequence charSequence) {
        this.f917i = charSequence;
        if ((this.f910b & 8) != 0) {
            this.f909a.setTitle(charSequence);
            if (this.f916h) {
                androidx.core.view.m0.m0(this.f909a.getRootView(), charSequence);
            }
        }
    }

    private void H() {
        if ((this.f910b & 4) != 0) {
            if (TextUtils.isEmpty(this.f919k)) {
                this.f909a.setNavigationContentDescription(this.f924p);
            } else {
                this.f909a.setNavigationContentDescription(this.f919k);
            }
        }
    }

    private void I() {
        if ((this.f910b & 4) == 0) {
            this.f909a.setNavigationIcon((Drawable) null);
            return;
        }
        Toolbar toolbar = this.f909a;
        Drawable drawable = this.f915g;
        if (drawable == null) {
            drawable = this.f925q;
        }
        toolbar.setNavigationIcon(drawable);
    }

    private void J() {
        Drawable drawable;
        int i10 = this.f910b;
        if ((i10 & 2) == 0) {
            drawable = null;
        } else if ((i10 & 1) == 0 || (drawable = this.f914f) == null) {
            drawable = this.f913e;
        }
        this.f909a.setLogo(drawable);
    }

    private int x() {
        if (this.f909a.getNavigationIcon() == null) {
            return 11;
        }
        this.f925q = this.f909a.getNavigationIcon();
        return 15;
    }

    public void A(Drawable drawable) {
        this.f914f = drawable;
        J();
    }

    public void B(int i10) {
        C(i10 == 0 ? null : getContext().getString(i10));
    }

    public void C(CharSequence charSequence) {
        this.f919k = charSequence;
        H();
    }

    public void D(Drawable drawable) {
        this.f915g = drawable;
        I();
    }

    public void E(CharSequence charSequence) {
        this.f918j = charSequence;
        if ((this.f910b & 8) != 0) {
            this.f909a.setSubtitle(charSequence);
        }
    }

    public void F(CharSequence charSequence) {
        this.f916h = true;
        G(charSequence);
    }

    @Override // androidx.appcompat.widget.t
    public void a(Menu menu, MenuPresenter.Callback callback) {
        if (this.f922n == null) {
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(this.f909a.getContext());
            this.f922n = actionMenuPresenter;
            actionMenuPresenter.setId(R$id.action_menu_presenter);
        }
        this.f922n.setCallback(callback);
        this.f909a.setMenu((MenuBuilder) menu, this.f922n);
    }

    @Override // androidx.appcompat.widget.t
    public boolean b() {
        return this.f909a.isOverflowMenuShowing();
    }

    @Override // androidx.appcompat.widget.t
    public void c() {
        this.f921m = true;
    }

    @Override // androidx.appcompat.widget.t
    public void collapseActionView() {
        this.f909a.collapseActionView();
    }

    @Override // androidx.appcompat.widget.t
    public boolean d() {
        return this.f909a.isOverflowMenuShowPending();
    }

    @Override // androidx.appcompat.widget.t
    public boolean e() {
        return this.f909a.hideOverflowMenu();
    }

    @Override // androidx.appcompat.widget.t
    public boolean f() {
        return this.f909a.showOverflowMenu();
    }

    @Override // androidx.appcompat.widget.t
    public boolean g() {
        return this.f909a.canShowOverflowMenu();
    }

    @Override // androidx.appcompat.widget.t
    public Context getContext() {
        return this.f909a.getContext();
    }

    @Override // androidx.appcompat.widget.t
    public CharSequence getTitle() {
        return this.f909a.getTitle();
    }

    @Override // androidx.appcompat.widget.t
    public void h() {
        this.f909a.dismissPopupMenus();
    }

    @Override // androidx.appcompat.widget.t
    public void i(MenuPresenter.Callback callback, MenuBuilder.Callback callback2) {
        this.f909a.setMenuCallbacks(callback, callback2);
    }

    @Override // androidx.appcompat.widget.t
    public void j(int i10) {
        this.f909a.setVisibility(i10);
    }

    @Override // androidx.appcompat.widget.t
    public void k(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.f911c;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f909a;
            if (parent == toolbar) {
                toolbar.removeView(this.f911c);
            }
        }
        this.f911c = scrollingTabContainerView;
        if (scrollingTabContainerView == null || this.f923o != 2) {
            return;
        }
        this.f909a.addView(scrollingTabContainerView, 0);
        Toolbar.g gVar = (Toolbar.g) this.f911c.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) gVar).width = -2;
        ((ViewGroup.MarginLayoutParams) gVar).height = -2;
        gVar.gravity = 8388691;
        scrollingTabContainerView.setAllowCollapse(true);
    }

    @Override // androidx.appcompat.widget.t
    public ViewGroup l() {
        return this.f909a;
    }

    @Override // androidx.appcompat.widget.t
    public void m(boolean z10) {
    }

    @Override // androidx.appcompat.widget.t
    public boolean n() {
        return this.f909a.hasExpandedActionView();
    }

    @Override // androidx.appcompat.widget.t
    public void o(int i10) {
        View view;
        int i11 = this.f910b ^ i10;
        this.f910b = i10;
        if (i11 != 0) {
            if ((i11 & 4) != 0) {
                if ((i10 & 4) != 0) {
                    H();
                }
                I();
            }
            if ((i11 & 3) != 0) {
                J();
            }
            if ((i11 & 8) != 0) {
                if ((i10 & 8) != 0) {
                    this.f909a.setTitle(this.f917i);
                    this.f909a.setSubtitle(this.f918j);
                } else {
                    this.f909a.setTitle((CharSequence) null);
                    this.f909a.setSubtitle((CharSequence) null);
                }
            }
            if ((i11 & 16) == 0 || (view = this.f912d) == null) {
                return;
            }
            if ((i10 & 16) != 0) {
                this.f909a.addView(view);
            } else {
                this.f909a.removeView(view);
            }
        }
    }

    @Override // androidx.appcompat.widget.t
    public int p() {
        return this.f910b;
    }

    @Override // androidx.appcompat.widget.t
    public Menu q() {
        return this.f909a.getMenu();
    }

    @Override // androidx.appcompat.widget.t
    public void r(int i10) {
        A(i10 != 0 ? e.a.b(getContext(), i10) : null);
    }

    @Override // androidx.appcompat.widget.t
    public int s() {
        return this.f923o;
    }

    @Override // androidx.appcompat.widget.t
    public void setIcon(int i10) {
        setIcon(i10 != 0 ? e.a.b(getContext(), i10) : null);
    }

    @Override // androidx.appcompat.widget.t
    public void setWindowCallback(Window.Callback callback) {
        this.f920l = callback;
    }

    @Override // androidx.appcompat.widget.t
    public void setWindowTitle(CharSequence charSequence) {
        if (this.f916h) {
            return;
        }
        G(charSequence);
    }

    @Override // androidx.appcompat.widget.t
    public u0 t(int i10, long j10) {
        return androidx.core.view.m0.d(this.f909a).b(i10 == 0 ? 1.0f : 0.0f).g(j10).i(new b(i10));
    }

    @Override // androidx.appcompat.widget.t
    public void u() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.t
    public void v() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.t
    public void w(boolean z10) {
        this.f909a.setCollapsible(z10);
    }

    public void y(View view) {
        View view2 = this.f912d;
        if (view2 != null && (this.f910b & 16) != 0) {
            this.f909a.removeView(view2);
        }
        this.f912d = view;
        if (view == null || (this.f910b & 16) == 0) {
            return;
        }
        this.f909a.addView(view);
    }

    public void z(int i10) {
        if (i10 == this.f924p) {
            return;
        }
        this.f924p = i10;
        if (TextUtils.isEmpty(this.f909a.getNavigationContentDescription())) {
            B(this.f924p);
        }
    }

    public l0(Toolbar toolbar, boolean z10, int i10, int i11) {
        Drawable drawable;
        this.f923o = 0;
        this.f924p = 0;
        this.f909a = toolbar;
        this.f917i = toolbar.getTitle();
        this.f918j = toolbar.getSubtitle();
        this.f916h = this.f917i != null;
        this.f915g = toolbar.getNavigationIcon();
        h0 h0VarW = h0.w(toolbar.getContext(), null, R$styleable.ActionBar, R$attr.actionBarStyle, 0);
        this.f925q = h0VarW.g(R$styleable.ActionBar_homeAsUpIndicator);
        if (z10) {
            CharSequence charSequenceP = h0VarW.p(R$styleable.ActionBar_title);
            if (!TextUtils.isEmpty(charSequenceP)) {
                F(charSequenceP);
            }
            CharSequence charSequenceP2 = h0VarW.p(R$styleable.ActionBar_subtitle);
            if (!TextUtils.isEmpty(charSequenceP2)) {
                E(charSequenceP2);
            }
            Drawable drawableG = h0VarW.g(R$styleable.ActionBar_logo);
            if (drawableG != null) {
                A(drawableG);
            }
            Drawable drawableG2 = h0VarW.g(R$styleable.ActionBar_icon);
            if (drawableG2 != null) {
                setIcon(drawableG2);
            }
            if (this.f915g == null && (drawable = this.f925q) != null) {
                D(drawable);
            }
            o(h0VarW.k(R$styleable.ActionBar_displayOptions, 0));
            int iN = h0VarW.n(R$styleable.ActionBar_customNavigationLayout, 0);
            if (iN != 0) {
                y(LayoutInflater.from(this.f909a.getContext()).inflate(iN, (ViewGroup) this.f909a, false));
                o(this.f910b | 16);
            }
            int iM = h0VarW.m(R$styleable.ActionBar_height, 0);
            if (iM > 0) {
                ViewGroup.LayoutParams layoutParams = this.f909a.getLayoutParams();
                layoutParams.height = iM;
                this.f909a.setLayoutParams(layoutParams);
            }
            int iE = h0VarW.e(R$styleable.ActionBar_contentInsetStart, -1);
            int iE2 = h0VarW.e(R$styleable.ActionBar_contentInsetEnd, -1);
            if (iE >= 0 || iE2 >= 0) {
                this.f909a.setContentInsetsRelative(Math.max(iE, 0), Math.max(iE2, 0));
            }
            int iN2 = h0VarW.n(R$styleable.ActionBar_titleTextStyle, 0);
            if (iN2 != 0) {
                Toolbar toolbar2 = this.f909a;
                toolbar2.setTitleTextAppearance(toolbar2.getContext(), iN2);
            }
            int iN3 = h0VarW.n(R$styleable.ActionBar_subtitleTextStyle, 0);
            if (iN3 != 0) {
                Toolbar toolbar3 = this.f909a;
                toolbar3.setSubtitleTextAppearance(toolbar3.getContext(), iN3);
            }
            int iN4 = h0VarW.n(R$styleable.ActionBar_popupTheme, 0);
            if (iN4 != 0) {
                this.f909a.setPopupTheme(iN4);
            }
        } else {
            this.f910b = x();
        }
        h0VarW.y();
        z(i10);
        this.f919k = this.f909a.getNavigationContentDescription();
        this.f909a.setNavigationOnClickListener(new a());
    }

    @Override // androidx.appcompat.widget.t
    public void setIcon(Drawable drawable) {
        this.f913e = drawable;
        J();
    }
}
