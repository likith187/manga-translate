package androidx.core.view;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class a1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a1 f2009b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l f2010a;

    private static class c extends b {
        c() {
        }

        c(a1 a1Var) {
            super(a1Var);
        }
    }

    private static class d extends c {
        d() {
        }

        d(a1 a1Var) {
            super(a1Var);
        }
    }

    private static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a1 f2013a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        u.e[] f2014b;

        e() {
            this(new a1((a1) null));
        }

        protected final void a() {
            u.e[] eVarArr = this.f2014b;
            if (eVarArr != null) {
                u.e eVarF = eVarArr[m.b(1)];
                u.e eVarF2 = this.f2014b[m.b(2)];
                if (eVarF2 == null) {
                    eVarF2 = this.f2013a.f(2);
                }
                if (eVarF == null) {
                    eVarF = this.f2013a.f(1);
                }
                f(u.e.a(eVarF, eVarF2));
                u.e eVar = this.f2014b[m.b(16)];
                if (eVar != null) {
                    e(eVar);
                }
                u.e eVar2 = this.f2014b[m.b(32)];
                if (eVar2 != null) {
                    c(eVar2);
                }
                u.e eVar3 = this.f2014b[m.b(64)];
                if (eVar3 != null) {
                    g(eVar3);
                }
            }
        }

        abstract a1 b();

        abstract void c(u.e eVar);

        abstract void d(u.e eVar);

        abstract void e(u.e eVar);

        abstract void f(u.e eVar);

        abstract void g(u.e eVar);

        e(a1 a1Var) {
            this.f2013a = a1Var;
        }
    }

    private static class h extends g {
        h(a1 a1Var, WindowInsets windowInsets) {
            super(a1Var, windowInsets);
        }

        @Override // androidx.core.view.a1.l
        a1 a() {
            return a1.y(this.f2015c.consumeDisplayCutout());
        }

        @Override // androidx.core.view.a1.f, androidx.core.view.a1.l
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return Objects.equals(this.f2015c, hVar.f2015c) && Objects.equals(this.f2019g, hVar.f2019g) && f.A(this.f2020h, hVar.f2020h);
        }

        @Override // androidx.core.view.a1.l
        androidx.core.view.h f() {
            return androidx.core.view.h.e(this.f2015c.getDisplayCutout());
        }

        @Override // androidx.core.view.a1.l
        public int hashCode() {
            return this.f2015c.hashCode();
        }

        h(a1 a1Var, h hVar) {
            super(a1Var, hVar);
        }
    }

    private static class j extends i {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        static final a1 f2025m = a1.y(WindowInsets.CONSUMED);

        j(a1 a1Var, WindowInsets windowInsets) {
            super(a1Var, windowInsets);
        }

        @Override // androidx.core.view.a1.f, androidx.core.view.a1.l
        final void d(View view) {
        }

        @Override // androidx.core.view.a1.f, androidx.core.view.a1.l
        public u.e g(int i10) {
            return u.e.d(this.f2015c.getInsets(n.a(i10)));
        }

        @Override // androidx.core.view.a1.f, androidx.core.view.a1.l
        public u.e h(int i10) {
            return u.e.d(this.f2015c.getInsetsIgnoringVisibility(n.a(i10)));
        }

        @Override // androidx.core.view.a1.f, androidx.core.view.a1.l
        public boolean q(int i10) {
            return this.f2015c.isVisible(n.a(i10));
        }

        j(a1 a1Var, j jVar) {
            super(a1Var, jVar);
        }
    }

    private static class k extends j {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        static final a1 f2026n = a1.y(WindowInsets.CONSUMED);

        k(a1 a1Var, WindowInsets windowInsets) {
            super(a1Var, windowInsets);
        }

        @Override // androidx.core.view.a1.j, androidx.core.view.a1.f, androidx.core.view.a1.l
        public u.e g(int i10) {
            return u.e.d(this.f2015c.getInsets(o.a(i10)));
        }

        @Override // androidx.core.view.a1.j, androidx.core.view.a1.f, androidx.core.view.a1.l
        public u.e h(int i10) {
            return u.e.d(this.f2015c.getInsetsIgnoringVisibility(o.a(i10)));
        }

        @Override // androidx.core.view.a1.j, androidx.core.view.a1.f, androidx.core.view.a1.l
        public boolean q(int i10) {
            return this.f2015c.isVisible(o.a(i10));
        }

        k(a1 a1Var, k kVar) {
            super(a1Var, kVar);
        }
    }

    private static class l {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final a1 f2027b = new a().a().a().b().c();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final a1 f2028a;

        l(a1 a1Var) {
            this.f2028a = a1Var;
        }

        a1 a() {
            return this.f2028a;
        }

        a1 b() {
            return this.f2028a;
        }

        a1 c() {
            return this.f2028a;
        }

        void d(View view) {
        }

        void e(a1 a1Var) {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof l)) {
                return false;
            }
            l lVar = (l) obj;
            return p() == lVar.p() && o() == lVar.o() && c0.c.a(l(), lVar.l()) && c0.c.a(j(), lVar.j()) && c0.c.a(f(), lVar.f());
        }

        androidx.core.view.h f() {
            return null;
        }

        u.e g(int i10) {
            return u.e.f15806e;
        }

        u.e h(int i10) {
            if ((i10 & 8) == 0) {
                return u.e.f15806e;
            }
            throw new IllegalArgumentException("Unable to query the maximum insets for IME");
        }

        public int hashCode() {
            return c0.c.b(Boolean.valueOf(p()), Boolean.valueOf(o()), l(), j(), f());
        }

        u.e i() {
            return l();
        }

        u.e j() {
            return u.e.f15806e;
        }

        u.e k() {
            return l();
        }

        u.e l() {
            return u.e.f15806e;
        }

        u.e m() {
            return l();
        }

        a1 n(int i10, int i11, int i12, int i13) {
            return f2027b;
        }

        boolean o() {
            return false;
        }

        boolean p() {
            return false;
        }

        boolean q(int i10) {
            return true;
        }

        public void r(u.e[] eVarArr) {
        }

        void s(u.e eVar) {
        }

        void t(a1 a1Var) {
        }

        void u(int i10) {
        }
    }

    public static final class m {
        public static int a() {
            return 8;
        }

        static int b(int i10) {
            if (i10 == 1) {
                return 0;
            }
            if (i10 == 2) {
                return 1;
            }
            if (i10 == 4) {
                return 2;
            }
            if (i10 == 8) {
                return 3;
            }
            if (i10 == 16) {
                return 4;
            }
            if (i10 == 32) {
                return 5;
            }
            if (i10 == 64) {
                return 6;
            }
            if (i10 == 128) {
                return 7;
            }
            if (i10 == 256) {
                return 8;
            }
            if (i10 == 512) {
                return 9;
            }
            throw new IllegalArgumentException("type needs to be >= FIRST and <= LAST, type=" + i10);
        }

        public static int c() {
            return 32;
        }

        public static int d() {
            return 2;
        }

        public static int e() {
            return 1;
        }

        public static int f() {
            return 519;
        }

        public static int g() {
            return 64;
        }
    }

    private static final class n {
        static int a(int i10) {
            int iStatusBars;
            int i11 = 0;
            for (int i12 = 1; i12 <= 512; i12 <<= 1) {
                if ((i10 & i12) != 0) {
                    if (i12 == 1) {
                        iStatusBars = WindowInsets.Type.statusBars();
                    } else if (i12 == 2) {
                        iStatusBars = WindowInsets.Type.navigationBars();
                    } else if (i12 == 4) {
                        iStatusBars = WindowInsets.Type.captionBar();
                    } else if (i12 == 8) {
                        iStatusBars = WindowInsets.Type.ime();
                    } else if (i12 == 16) {
                        iStatusBars = WindowInsets.Type.systemGestures();
                    } else if (i12 == 32) {
                        iStatusBars = WindowInsets.Type.mandatorySystemGestures();
                    } else if (i12 == 64) {
                        iStatusBars = WindowInsets.Type.tappableElement();
                    } else if (i12 == 128) {
                        iStatusBars = WindowInsets.Type.displayCutout();
                    }
                    i11 |= iStatusBars;
                }
            }
            return i11;
        }
    }

    private static final class o {
        static int a(int i10) {
            int iStatusBars;
            int i11 = 0;
            for (int i12 = 1; i12 <= 512; i12 <<= 1) {
                if ((i10 & i12) != 0) {
                    if (i12 == 1) {
                        iStatusBars = WindowInsets.Type.statusBars();
                    } else if (i12 == 2) {
                        iStatusBars = WindowInsets.Type.navigationBars();
                    } else if (i12 == 4) {
                        iStatusBars = WindowInsets.Type.captionBar();
                    } else if (i12 == 8) {
                        iStatusBars = WindowInsets.Type.ime();
                    } else if (i12 == 16) {
                        iStatusBars = WindowInsets.Type.systemGestures();
                    } else if (i12 == 32) {
                        iStatusBars = WindowInsets.Type.mandatorySystemGestures();
                    } else if (i12 == 64) {
                        iStatusBars = WindowInsets.Type.tappableElement();
                    } else if (i12 == 128) {
                        iStatusBars = WindowInsets.Type.displayCutout();
                    } else if (i12 == 512) {
                        iStatusBars = WindowInsets.Type.systemOverlays();
                    }
                    i11 |= iStatusBars;
                }
            }
            return i11;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 34) {
            f2009b = k.f2026n;
        } else {
            f2009b = j.f2025m;
        }
    }

    private a1(WindowInsets windowInsets) {
        if (Build.VERSION.SDK_INT >= 34) {
            this.f2010a = new k(this, windowInsets);
        } else {
            this.f2010a = new j(this, windowInsets);
        }
    }

    static u.e p(u.e eVar, int i10, int i11, int i12, int i13) {
        int iMax = Math.max(0, eVar.f15807a - i10);
        int iMax2 = Math.max(0, eVar.f15808b - i11);
        int iMax3 = Math.max(0, eVar.f15809c - i12);
        int iMax4 = Math.max(0, eVar.f15810d - i13);
        return (iMax == i10 && iMax2 == i11 && iMax3 == i12 && iMax4 == i13) ? eVar : u.e.c(iMax, iMax2, iMax3, iMax4);
    }

    public static a1 y(WindowInsets windowInsets) {
        return z(windowInsets, null);
    }

    public static a1 z(WindowInsets windowInsets, View view) {
        a1 a1Var = new a1((WindowInsets) c0.h.e(windowInsets));
        if (view != null && view.isAttachedToWindow()) {
            a1Var.v(m0.C(view));
            a1Var.d(view.getRootView());
            a1Var.w(view.getWindowSystemUiVisibility());
        }
        return a1Var;
    }

    public a1 a() {
        return this.f2010a.a();
    }

    public a1 b() {
        return this.f2010a.b();
    }

    public a1 c() {
        return this.f2010a.c();
    }

    void d(View view) {
        this.f2010a.d(view);
    }

    public androidx.core.view.h e() {
        return this.f2010a.f();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a1) {
            return c0.c.a(this.f2010a, ((a1) obj).f2010a);
        }
        return false;
    }

    public u.e f(int i10) {
        return this.f2010a.g(i10);
    }

    public u.e g(int i10) {
        return this.f2010a.h(i10);
    }

    public u.e h() {
        return this.f2010a.j();
    }

    public int hashCode() {
        l lVar = this.f2010a;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    public u.e i() {
        return this.f2010a.k();
    }

    public int j() {
        return this.f2010a.l().f15810d;
    }

    public int k() {
        return this.f2010a.l().f15807a;
    }

    public int l() {
        return this.f2010a.l().f15809c;
    }

    public int m() {
        return this.f2010a.l().f15808b;
    }

    public boolean n() {
        return !this.f2010a.l().equals(u.e.f15806e);
    }

    public a1 o(int i10, int i11, int i12, int i13) {
        return this.f2010a.n(i10, i11, i12, i13);
    }

    public boolean q() {
        return this.f2010a.o();
    }

    public boolean r(int i10) {
        return this.f2010a.q(i10);
    }

    public a1 s(int i10, int i11, int i12, int i13) {
        return new a(this).c(u.e.c(i10, i11, i12, i13)).a();
    }

    void t(u.e[] eVarArr) {
        this.f2010a.r(eVarArr);
    }

    void u(u.e eVar) {
        this.f2010a.s(eVar);
    }

    void v(a1 a1Var) {
        this.f2010a.t(a1Var);
    }

    void w(int i10) {
        this.f2010a.u(i10);
    }

    public WindowInsets x() {
        l lVar = this.f2010a;
        if (lVar instanceof f) {
            return ((f) lVar).f2015c;
        }
        return null;
    }

    private static class b extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final WindowInsets.Builder f2012c;

        b() {
            this.f2012c = new WindowInsets.Builder();
        }

        @Override // androidx.core.view.a1.e
        a1 b() {
            a();
            a1 a1VarY = a1.y(this.f2012c.build());
            a1VarY.t(this.f2014b);
            return a1VarY;
        }

        @Override // androidx.core.view.a1.e
        void c(u.e eVar) {
            this.f2012c.setMandatorySystemGestureInsets(eVar.e());
        }

        @Override // androidx.core.view.a1.e
        void d(u.e eVar) {
            this.f2012c.setStableInsets(eVar.e());
        }

        @Override // androidx.core.view.a1.e
        void e(u.e eVar) {
            this.f2012c.setSystemGestureInsets(eVar.e());
        }

        @Override // androidx.core.view.a1.e
        void f(u.e eVar) {
            this.f2012c.setSystemWindowInsets(eVar.e());
        }

        @Override // androidx.core.view.a1.e
        void g(u.e eVar) {
            this.f2012c.setTappableElementInsets(eVar.e());
        }

        b(a1 a1Var) {
            WindowInsets.Builder builder;
            super(a1Var);
            WindowInsets windowInsetsX = a1Var.x();
            if (windowInsetsX != null) {
                builder = new WindowInsets.Builder(windowInsetsX);
            } else {
                builder = new WindowInsets.Builder();
            }
            this.f2012c = builder;
        }
    }

    private static class g extends f {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private u.e f2021i;

        g(a1 a1Var, WindowInsets windowInsets) {
            super(a1Var, windowInsets);
            this.f2021i = null;
        }

        @Override // androidx.core.view.a1.l
        a1 b() {
            return a1.y(this.f2015c.consumeStableInsets());
        }

        @Override // androidx.core.view.a1.l
        a1 c() {
            return a1.y(this.f2015c.consumeSystemWindowInsets());
        }

        @Override // androidx.core.view.a1.l
        final u.e j() {
            if (this.f2021i == null) {
                this.f2021i = u.e.c(this.f2015c.getStableInsetLeft(), this.f2015c.getStableInsetTop(), this.f2015c.getStableInsetRight(), this.f2015c.getStableInsetBottom());
            }
            return this.f2021i;
        }

        @Override // androidx.core.view.a1.l
        boolean o() {
            return this.f2015c.isConsumed();
        }

        g(a1 a1Var, g gVar) {
            super(a1Var, gVar);
            this.f2021i = null;
            this.f2021i = gVar.f2021i;
        }
    }

    private static class f extends l {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final WindowInsets f2015c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private u.e[] f2016d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private u.e f2017e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private a1 f2018f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        u.e f2019g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f2020h;

        f(a1 a1Var, WindowInsets windowInsets) {
            super(a1Var);
            this.f2017e = null;
            this.f2015c = windowInsets;
        }

        static boolean A(int i10, int i11) {
            return (i10 & 6) == (i11 & 6);
        }

        @SuppressLint({"WrongConstant"})
        private u.e v(int i10, boolean z10) {
            u.e eVarA = u.e.f15806e;
            for (int i11 = 1; i11 <= 512; i11 <<= 1) {
                if ((i10 & i11) != 0) {
                    eVarA = u.e.a(eVarA, w(i11, z10));
                }
            }
            return eVarA;
        }

        private u.e x() {
            a1 a1Var = this.f2018f;
            return a1Var != null ? a1Var.h() : u.e.f15806e;
        }

        private u.e y(View view) {
            throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
        }

        @Override // androidx.core.view.a1.l
        void d(View view) {
            u.e eVarY = y(view);
            if (eVarY == null) {
                eVarY = u.e.f15806e;
            }
            s(eVarY);
        }

        @Override // androidx.core.view.a1.l
        void e(a1 a1Var) {
            a1Var.v(this.f2018f);
            a1Var.u(this.f2019g);
            a1Var.w(this.f2020h);
        }

        @Override // androidx.core.view.a1.l
        public boolean equals(Object obj) {
            if (!super.equals(obj)) {
                return false;
            }
            f fVar = (f) obj;
            return Objects.equals(this.f2019g, fVar.f2019g) && A(this.f2020h, fVar.f2020h);
        }

        @Override // androidx.core.view.a1.l
        public u.e g(int i10) {
            return v(i10, false);
        }

        @Override // androidx.core.view.a1.l
        public u.e h(int i10) {
            return v(i10, true);
        }

        @Override // androidx.core.view.a1.l
        final u.e l() {
            if (this.f2017e == null) {
                this.f2017e = u.e.c(this.f2015c.getSystemWindowInsetLeft(), this.f2015c.getSystemWindowInsetTop(), this.f2015c.getSystemWindowInsetRight(), this.f2015c.getSystemWindowInsetBottom());
            }
            return this.f2017e;
        }

        @Override // androidx.core.view.a1.l
        a1 n(int i10, int i11, int i12, int i13) {
            a aVar = new a(a1.y(this.f2015c));
            aVar.c(a1.p(l(), i10, i11, i12, i13));
            aVar.b(a1.p(j(), i10, i11, i12, i13));
            return aVar.a();
        }

        @Override // androidx.core.view.a1.l
        boolean p() {
            return this.f2015c.isRound();
        }

        @Override // androidx.core.view.a1.l
        @SuppressLint({"WrongConstant"})
        boolean q(int i10) {
            for (int i11 = 1; i11 <= 512; i11 <<= 1) {
                if ((i10 & i11) != 0 && !z(i11)) {
                    return false;
                }
            }
            return true;
        }

        @Override // androidx.core.view.a1.l
        public void r(u.e[] eVarArr) {
            this.f2016d = eVarArr;
        }

        @Override // androidx.core.view.a1.l
        void s(u.e eVar) {
            this.f2019g = eVar;
        }

        @Override // androidx.core.view.a1.l
        void t(a1 a1Var) {
            this.f2018f = a1Var;
        }

        @Override // androidx.core.view.a1.l
        void u(int i10) {
            this.f2020h = i10;
        }

        protected u.e w(int i10, boolean z10) {
            u.e eVarH;
            int i11;
            if (i10 == 1) {
                return z10 ? u.e.c(0, Math.max(x().f15808b, l().f15808b), 0, 0) : (this.f2020h & 4) != 0 ? u.e.f15806e : u.e.c(0, l().f15808b, 0, 0);
            }
            if (i10 == 2) {
                if (z10) {
                    u.e eVarX = x();
                    u.e eVarJ = j();
                    return u.e.c(Math.max(eVarX.f15807a, eVarJ.f15807a), 0, Math.max(eVarX.f15809c, eVarJ.f15809c), Math.max(eVarX.f15810d, eVarJ.f15810d));
                }
                if ((this.f2020h & 2) != 0) {
                    return u.e.f15806e;
                }
                u.e eVarL = l();
                a1 a1Var = this.f2018f;
                eVarH = a1Var != null ? a1Var.h() : null;
                int iMin = eVarL.f15810d;
                if (eVarH != null) {
                    iMin = Math.min(iMin, eVarH.f15810d);
                }
                return u.e.c(eVarL.f15807a, 0, eVarL.f15809c, iMin);
            }
            if (i10 != 8) {
                if (i10 == 16) {
                    return k();
                }
                if (i10 == 32) {
                    return i();
                }
                if (i10 == 64) {
                    return m();
                }
                if (i10 != 128) {
                    return u.e.f15806e;
                }
                a1 a1Var2 = this.f2018f;
                androidx.core.view.h hVarE = a1Var2 != null ? a1Var2.e() : f();
                return hVarE != null ? u.e.c(hVarE.b(), hVarE.d(), hVarE.c(), hVarE.a()) : u.e.f15806e;
            }
            u.e[] eVarArr = this.f2016d;
            eVarH = eVarArr != null ? eVarArr[m.b(8)] : null;
            if (eVarH != null) {
                return eVarH;
            }
            u.e eVarL2 = l();
            u.e eVarX2 = x();
            int i12 = eVarL2.f15810d;
            if (i12 > eVarX2.f15810d) {
                return u.e.c(0, 0, 0, i12);
            }
            u.e eVar = this.f2019g;
            return (eVar == null || eVar.equals(u.e.f15806e) || (i11 = this.f2019g.f15810d) <= eVarX2.f15810d) ? u.e.f15806e : u.e.c(0, 0, 0, i11);
        }

        protected boolean z(int i10) {
            if (i10 != 1 && i10 != 2) {
                if (i10 == 4) {
                    return false;
                }
                if (i10 != 8 && i10 != 128) {
                    return true;
                }
            }
            return !w(i10, false).equals(u.e.f15806e);
        }

        f(a1 a1Var, f fVar) {
            this(a1Var, new WindowInsets(fVar.f2015c));
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e f2011a;

        public a() {
            if (Build.VERSION.SDK_INT >= 34) {
                this.f2011a = new d();
            } else {
                this.f2011a = new c();
            }
        }

        public a1 a() {
            return this.f2011a.b();
        }

        public a b(u.e eVar) {
            this.f2011a.d(eVar);
            return this;
        }

        public a c(u.e eVar) {
            this.f2011a.f(eVar);
            return this;
        }

        public a(a1 a1Var) {
            if (Build.VERSION.SDK_INT >= 34) {
                this.f2011a = new d(a1Var);
            } else {
                this.f2011a = new c(a1Var);
            }
        }
    }

    private static class i extends h {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private u.e f2022j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private u.e f2023k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private u.e f2024l;

        i(a1 a1Var, WindowInsets windowInsets) {
            super(a1Var, windowInsets);
            this.f2022j = null;
            this.f2023k = null;
            this.f2024l = null;
        }

        @Override // androidx.core.view.a1.l
        u.e i() {
            if (this.f2023k == null) {
                this.f2023k = u.e.d(this.f2015c.getMandatorySystemGestureInsets());
            }
            return this.f2023k;
        }

        @Override // androidx.core.view.a1.l
        u.e k() {
            if (this.f2022j == null) {
                this.f2022j = u.e.d(this.f2015c.getSystemGestureInsets());
            }
            return this.f2022j;
        }

        @Override // androidx.core.view.a1.l
        u.e m() {
            if (this.f2024l == null) {
                this.f2024l = u.e.d(this.f2015c.getTappableElementInsets());
            }
            return this.f2024l;
        }

        @Override // androidx.core.view.a1.f, androidx.core.view.a1.l
        a1 n(int i10, int i11, int i12, int i13) {
            return a1.y(this.f2015c.inset(i10, i11, i12, i13));
        }

        i(a1 a1Var, i iVar) {
            super(a1Var, iVar);
            this.f2022j = null;
            this.f2023k = null;
            this.f2024l = null;
        }
    }

    public a1(a1 a1Var) {
        if (a1Var != null) {
            l lVar = a1Var.f2010a;
            if (Build.VERSION.SDK_INT >= 34 && (lVar instanceof k)) {
                this.f2010a = new k(this, (k) lVar);
            } else if (lVar instanceof j) {
                this.f2010a = new j(this, (j) lVar);
            } else if (lVar instanceof i) {
                this.f2010a = new i(this, (i) lVar);
            } else if (lVar instanceof h) {
                this.f2010a = new h(this, (h) lVar);
            } else if (lVar instanceof g) {
                this.f2010a = new g(this, (g) lVar);
            } else if (lVar instanceof f) {
                this.f2010a = new f(this, (f) lVar);
            } else {
                this.f2010a = new l(this);
            }
            lVar.e(this);
            return;
        }
        this.f2010a = new l(this);
    }
}
