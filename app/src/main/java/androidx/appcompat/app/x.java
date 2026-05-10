package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.b;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ScrollingTabContainerView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.m0;
import androidx.core.view.u0;
import androidx.core.view.v0;
import androidx.core.view.w0;
import androidx.core.view.x0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class x extends androidx.appcompat.app.a implements ActionBarOverlayLayout.d {
    private static final Interpolator E = new AccelerateInterpolator();
    private static final Interpolator F = new DecelerateInterpolator();
    boolean A;

    /* JADX INFO: renamed from: a */
    Context f443a;

    /* JADX INFO: renamed from: b */
    private Context f444b;

    /* JADX INFO: renamed from: c */
    private Activity f445c;

    /* JADX INFO: renamed from: d */
    ActionBarOverlayLayout f446d;

    /* JADX INFO: renamed from: e */
    ActionBarContainer f447e;

    /* JADX INFO: renamed from: f */
    androidx.appcompat.widget.t f448f;

    /* JADX INFO: renamed from: g */
    ActionBarContextView f449g;

    /* JADX INFO: renamed from: h */
    View f450h;

    /* JADX INFO: renamed from: i */
    ScrollingTabContainerView f451i;

    /* JADX INFO: renamed from: l */
    private boolean f454l;

    /* JADX INFO: renamed from: m */
    d f455m;

    /* JADX INFO: renamed from: n */
    androidx.appcompat.view.b f456n;

    /* JADX INFO: renamed from: o */
    b.a f457o;

    /* JADX INFO: renamed from: p */
    private boolean f458p;

    /* JADX INFO: renamed from: r */
    private boolean f460r;

    /* JADX INFO: renamed from: u */
    boolean f463u;

    /* JADX INFO: renamed from: v */
    boolean f464v;

    /* JADX INFO: renamed from: w */
    private boolean f465w;

    /* JADX INFO: renamed from: y */
    androidx.appcompat.view.h f467y;

    /* JADX INFO: renamed from: z */
    private boolean f468z;

    /* JADX INFO: renamed from: j */
    private ArrayList f452j = new ArrayList();

    /* JADX INFO: renamed from: k */
    private int f453k = -1;

    /* JADX INFO: renamed from: q */
    private ArrayList f459q = new ArrayList();

    /* JADX INFO: renamed from: s */
    private int f461s = 0;

    /* JADX INFO: renamed from: t */
    boolean f462t = true;

    /* JADX INFO: renamed from: x */
    private boolean f466x = true;
    final v0 B = new a();
    final v0 C = new b();
    final x0 D = new c();

    class a extends w0 {
        a() {
        }

        @Override // androidx.core.view.v0
        public void b(View view) {
            View view2;
            x xVar = x.this;
            if (xVar.f462t && (view2 = xVar.f450h) != null) {
                view2.setTranslationY(0.0f);
                x.this.f447e.setTranslationY(0.0f);
            }
            x.this.f447e.setVisibility(8);
            x.this.f447e.setTransitioning(false);
            x xVar2 = x.this;
            xVar2.f467y = null;
            xVar2.y();
            ActionBarOverlayLayout actionBarOverlayLayout = x.this.f446d;
            if (actionBarOverlayLayout != null) {
                m0.f0(actionBarOverlayLayout);
            }
        }
    }

    class b extends w0 {
        b() {
        }

        @Override // androidx.core.view.v0
        public void b(View view) {
            x xVar = x.this;
            xVar.f467y = null;
            xVar.f447e.requestLayout();
        }
    }

    class c implements x0 {
        c() {
        }

        @Override // androidx.core.view.x0
        public void a(View view) {
            ((View) x.this.f447e.getParent()).invalidate();
        }
    }

    public class d extends androidx.appcompat.view.b implements MenuBuilder.Callback {

        /* JADX INFO: renamed from: c */
        private final Context f472c;

        /* JADX INFO: renamed from: f */
        private final MenuBuilder f473f;

        /* JADX INFO: renamed from: h */
        private b.a f474h;

        /* JADX INFO: renamed from: i */
        private WeakReference f475i;

        public d(Context context, b.a aVar) {
            this.f472c = context;
            this.f474h = aVar;
            MenuBuilder defaultShowAsAction = new MenuBuilder(context).setDefaultShowAsAction(1);
            this.f473f = defaultShowAsAction;
            defaultShowAsAction.setCallback(this);
        }

        @Override // androidx.appcompat.view.b
        public void a() {
            x xVar = x.this;
            if (xVar.f455m != this) {
                return;
            }
            if (x.x(xVar.f463u, xVar.f464v, false)) {
                this.f474h.b(this);
            } else {
                x xVar2 = x.this;
                xVar2.f456n = this;
                xVar2.f457o = this.f474h;
            }
            this.f474h = null;
            x.this.w(false);
            x.this.f449g.g();
            x xVar3 = x.this;
            xVar3.f446d.setHideOnContentScrollEnabled(xVar3.A);
            x.this.f455m = null;
        }

        @Override // androidx.appcompat.view.b
        public View b() {
            WeakReference weakReference = this.f475i;
            if (weakReference != null) {
                return (View) weakReference.get();
            }
            return null;
        }

        @Override // androidx.appcompat.view.b
        public Menu c() {
            return this.f473f;
        }

        @Override // androidx.appcompat.view.b
        public MenuInflater d() {
            return new androidx.appcompat.view.g(this.f472c);
        }

        @Override // androidx.appcompat.view.b
        public CharSequence e() {
            return x.this.f449g.getSubtitle();
        }

        @Override // androidx.appcompat.view.b
        public CharSequence g() {
            return x.this.f449g.getTitle();
        }

        @Override // androidx.appcompat.view.b
        public void i() {
            if (x.this.f455m != this) {
                return;
            }
            this.f473f.stopDispatchingItemsChanged();
            try {
                this.f474h.a(this, this.f473f);
            } finally {
                this.f473f.startDispatchingItemsChanged();
            }
        }

        @Override // androidx.appcompat.view.b
        public boolean j() {
            return x.this.f449g.j();
        }

        @Override // androidx.appcompat.view.b
        public void k(View view) {
            x.this.f449g.setCustomView(view);
            this.f475i = new WeakReference(view);
        }

        @Override // androidx.appcompat.view.b
        public void l(int i10) {
            m(x.this.f443a.getResources().getString(i10));
        }

        @Override // androidx.appcompat.view.b
        public void m(CharSequence charSequence) {
            x.this.f449g.setSubtitle(charSequence);
        }

        @Override // androidx.appcompat.view.b
        public void o(int i10) {
            p(x.this.f443a.getResources().getString(i10));
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            b.a aVar = this.f474h;
            if (aVar != null) {
                return aVar.c(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
            if (this.f474h == null) {
                return;
            }
            i();
            x.this.f449g.l();
        }

        @Override // androidx.appcompat.view.b
        public void p(CharSequence charSequence) {
            x.this.f449g.setTitle(charSequence);
        }

        @Override // androidx.appcompat.view.b
        public void q(boolean z10) {
            super.q(z10);
            x.this.f449g.setTitleOptional(z10);
        }

        public boolean r() {
            this.f473f.stopDispatchingItemsChanged();
            try {
                return this.f474h.d(this, this.f473f);
            } finally {
                this.f473f.startDispatchingItemsChanged();
            }
        }
    }

    public x(Activity activity, boolean z10) {
        this.f445c = activity;
        View decorView = activity.getWindow().getDecorView();
        E(decorView);
        if (z10) {
            return;
        }
        this.f450h = decorView.findViewById(R.id.content);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private androidx.appcompat.widget.t B(View view) {
        if (view instanceof androidx.appcompat.widget.t) {
            return (androidx.appcompat.widget.t) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't make a decor toolbar out of ");
        sb.append(view != 0 ? view.getClass().getSimpleName() : AbstractJsonLexerKt.NULL);
        throw new IllegalStateException(sb.toString());
    }

    private void D() {
        if (this.f465w) {
            this.f465w = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f446d;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            M(false);
        }
    }

    private void E(View view) {
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(R$id.decor_content_parent);
        this.f446d = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.f448f = B(view.findViewById(R$id.action_bar));
        this.f449g = (ActionBarContextView) view.findViewById(R$id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(R$id.action_bar_container);
        this.f447e = actionBarContainer;
        androidx.appcompat.widget.t tVar = this.f448f;
        if (tVar == null || this.f449g == null || actionBarContainer == null) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f443a = tVar.getContext();
        boolean z10 = (this.f448f.p() & 4) != 0;
        if (z10) {
            this.f454l = true;
        }
        androidx.appcompat.view.a aVarB = androidx.appcompat.view.a.b(this.f443a);
        J(aVarB.a() || z10);
        H(aVarB.g());
        TypedArray typedArrayObtainStyledAttributes = this.f443a.obtainStyledAttributes(null, R$styleable.ActionBar, R$attr.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.ActionBar_hideOnContentScroll, false)) {
            I(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            G(dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void H(boolean z10) {
        this.f460r = z10;
        if (z10) {
            this.f447e.setTabContainer(null);
            this.f448f.k(this.f451i);
        } else {
            this.f448f.k(null);
            this.f447e.setTabContainer(this.f451i);
        }
        boolean z11 = C() == 2;
        ScrollingTabContainerView scrollingTabContainerView = this.f451i;
        if (scrollingTabContainerView != null) {
            if (z11) {
                scrollingTabContainerView.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f446d;
                if (actionBarOverlayLayout != null) {
                    m0.f0(actionBarOverlayLayout);
                }
            } else {
                scrollingTabContainerView.setVisibility(8);
            }
        }
        this.f448f.w(!this.f460r && z11);
        this.f446d.setHasNonEmbeddedTabs(!this.f460r && z11);
    }

    private boolean K() {
        return this.f447e.isLaidOut();
    }

    private void L() {
        if (this.f465w) {
            return;
        }
        this.f465w = true;
        ActionBarOverlayLayout actionBarOverlayLayout = this.f446d;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setShowingForActionMode(true);
        }
        M(false);
    }

    private void M(boolean z10) {
        if (x(this.f463u, this.f464v, this.f465w)) {
            if (this.f466x) {
                return;
            }
            this.f466x = true;
            A(z10);
            return;
        }
        if (this.f466x) {
            this.f466x = false;
            z(z10);
        }
    }

    static boolean x(boolean z10, boolean z11, boolean z12) {
        if (z12) {
            return true;
        }
        return (z10 || z11) ? false : true;
    }

    public void A(boolean z10) {
        View view;
        View view2;
        androidx.appcompat.view.h hVar = this.f467y;
        if (hVar != null) {
            hVar.a();
        }
        this.f447e.setVisibility(0);
        if (this.f461s == 0 && (this.f468z || z10)) {
            this.f447e.setTranslationY(0.0f);
            float f10 = -this.f447e.getHeight();
            if (z10) {
                this.f447e.getLocationInWindow(new int[]{0, 0});
                f10 -= r5[1];
            }
            this.f447e.setTranslationY(f10);
            androidx.appcompat.view.h hVar2 = new androidx.appcompat.view.h();
            u0 u0VarN = m0.d(this.f447e).n(0.0f);
            u0VarN.l(this.D);
            hVar2.c(u0VarN);
            if (this.f462t && (view2 = this.f450h) != null) {
                view2.setTranslationY(f10);
                hVar2.c(m0.d(this.f450h).n(0.0f));
            }
            hVar2.f(F);
            hVar2.e(250L);
            hVar2.g(this.C);
            this.f467y = hVar2;
            hVar2.h();
        } else {
            this.f447e.setAlpha(1.0f);
            this.f447e.setTranslationY(0.0f);
            if (this.f462t && (view = this.f450h) != null) {
                view.setTranslationY(0.0f);
            }
            this.C.b(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f446d;
        if (actionBarOverlayLayout != null) {
            m0.f0(actionBarOverlayLayout);
        }
    }

    public int C() {
        return this.f448f.s();
    }

    public void F(int i10, int i11) {
        int iP = this.f448f.p();
        if ((i11 & 4) != 0) {
            this.f454l = true;
        }
        this.f448f.o((i10 & i11) | ((~i11) & iP));
    }

    public void G(float f10) {
        m0.r0(this.f447e, f10);
    }

    public void I(boolean z10) {
        if (z10 && !this.f446d.r()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.A = z10;
        this.f446d.setHideOnContentScrollEnabled(z10);
    }

    public void J(boolean z10) {
        this.f448f.m(z10);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void a() {
        if (this.f464v) {
            this.f464v = false;
            M(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void b() {
        androidx.appcompat.view.h hVar = this.f467y;
        if (hVar != null) {
            hVar.a();
            this.f467y = null;
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void c(int i10) {
        this.f461s = i10;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void d() {
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void e(boolean z10) {
        this.f462t = z10;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void f() {
        if (this.f464v) {
            return;
        }
        this.f464v = true;
        M(true);
    }

    @Override // androidx.appcompat.app.a
    public boolean h() {
        androidx.appcompat.widget.t tVar = this.f448f;
        if (tVar == null || !tVar.n()) {
            return false;
        }
        this.f448f.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.a
    public void i(boolean z10) {
        if (z10 == this.f458p) {
            return;
        }
        this.f458p = z10;
        if (this.f459q.size() <= 0) {
            return;
        }
        t.a(this.f459q.get(0));
        throw null;
    }

    @Override // androidx.appcompat.app.a
    public int j() {
        return this.f448f.p();
    }

    @Override // androidx.appcompat.app.a
    public Context k() {
        if (this.f444b == null) {
            TypedValue typedValue = new TypedValue();
            this.f443a.getTheme().resolveAttribute(R$attr.actionBarWidgetTheme, typedValue, true);
            int i10 = typedValue.resourceId;
            if (i10 != 0) {
                this.f444b = new ContextThemeWrapper(this.f443a, i10);
            } else {
                this.f444b = this.f443a;
            }
        }
        return this.f444b;
    }

    @Override // androidx.appcompat.app.a
    public void m(Configuration configuration) {
        H(androidx.appcompat.view.a.b(this.f443a).g());
    }

    @Override // androidx.appcompat.app.a
    public boolean o(int i10, KeyEvent keyEvent) {
        Menu menuC;
        d dVar = this.f455m;
        if (dVar == null || (menuC = dVar.c()) == null) {
            return false;
        }
        menuC.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuC.performShortcut(i10, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.a
    public void r(boolean z10) {
        if (this.f454l) {
            return;
        }
        s(z10);
    }

    @Override // androidx.appcompat.app.a
    public void s(boolean z10) {
        F(z10 ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.a
    public void t(boolean z10) {
        androidx.appcompat.view.h hVar;
        this.f468z = z10;
        if (z10 || (hVar = this.f467y) == null) {
            return;
        }
        hVar.a();
    }

    @Override // androidx.appcompat.app.a
    public void u(CharSequence charSequence) {
        this.f448f.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public androidx.appcompat.view.b v(b.a aVar) {
        d dVar = this.f455m;
        if (dVar != null) {
            dVar.a();
        }
        this.f446d.setHideOnContentScrollEnabled(false);
        this.f449g.k();
        d dVar2 = new d(this.f449g.getContext(), aVar);
        if (!dVar2.r()) {
            return null;
        }
        this.f455m = dVar2;
        dVar2.i();
        this.f449g.h(dVar2);
        w(true);
        return dVar2;
    }

    public void w(boolean z10) {
        u0 u0VarF;
        u0 u0VarF2;
        if (z10) {
            L();
        } else {
            D();
        }
        if (!K()) {
            if (z10) {
                this.f448f.j(4);
                this.f449g.setVisibility(0);
                return;
            } else {
                this.f448f.j(0);
                this.f449g.setVisibility(8);
                return;
            }
        }
        if (z10) {
            u0VarF = this.f448f.t(4, 100L);
            u0VarF2 = this.f449g.f(0, 200L);
        } else {
            u0 u0VarT = this.f448f.t(0, 200L);
            u0VarF = this.f449g.f(8, 100L);
            u0VarF2 = u0VarT;
        }
        androidx.appcompat.view.h hVar = new androidx.appcompat.view.h();
        hVar.d(u0VarF, u0VarF2);
        hVar.h();
    }

    void y() {
        b.a aVar = this.f457o;
        if (aVar != null) {
            aVar.b(this.f456n);
            this.f456n = null;
            this.f457o = null;
        }
    }

    public void z(boolean z10) {
        View view;
        androidx.appcompat.view.h hVar = this.f467y;
        if (hVar != null) {
            hVar.a();
        }
        if (this.f461s != 0 || (!this.f468z && !z10)) {
            this.B.b(null);
            return;
        }
        this.f447e.setAlpha(1.0f);
        this.f447e.setTransitioning(true);
        androidx.appcompat.view.h hVar2 = new androidx.appcompat.view.h();
        float f10 = -this.f447e.getHeight();
        if (z10) {
            this.f447e.getLocationInWindow(new int[]{0, 0});
            f10 -= r5[1];
        }
        u0 u0VarN = m0.d(this.f447e).n(f10);
        u0VarN.l(this.D);
        hVar2.c(u0VarN);
        if (this.f462t && (view = this.f450h) != null) {
            hVar2.c(m0.d(view).n(f10));
        }
        hVar2.f(E);
        hVar2.e(250L);
        hVar2.g(this.B);
        this.f467y = hVar2;
        hVar2.h();
    }

    public x(Dialog dialog) {
        E(dialog.getWindow().getDecorView());
    }
}
