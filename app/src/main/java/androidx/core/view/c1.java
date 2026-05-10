package androidx.core.view;

import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;
import com.oplus.aiunit.core.ConfigPackage;

/* JADX INFO: loaded from: classes.dex */
public final class c1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f2032a;

    private static class b extends a {
        b(Window window, c1 c1Var, h0 h0Var) {
            super(window, c1Var, h0Var);
        }

        b(WindowInsetsController windowInsetsController, c1 c1Var, h0 h0Var) {
            super(windowInsetsController, c1Var, h0Var);
        }
    }

    private static class c extends b {
        c(Window window, c1 c1Var, h0 h0Var) {
            super(window, c1Var, h0Var);
        }

        @Override // androidx.core.view.c1.a, androidx.core.view.c1.d
        public boolean b() {
            return (this.f2034b.getSystemBarsAppearance() & 8) != 0;
        }

        c(WindowInsetsController windowInsetsController, c1 c1Var, h0 h0Var) {
            super(windowInsetsController, c1Var, h0Var);
        }
    }

    private static class d {
        d() {
        }

        abstract void a(int i10);

        public abstract boolean b();

        public abstract void c(boolean z10);

        public abstract void d(boolean z10);

        abstract void e(int i10);
    }

    private c1(WindowInsetsController windowInsetsController) {
        if (Build.VERSION.SDK_INT >= 35) {
            this.f2032a = new c(windowInsetsController, this, new h0(windowInsetsController));
        } else {
            this.f2032a = new a(windowInsetsController, this, new h0(windowInsetsController));
        }
    }

    public static c1 f(WindowInsetsController windowInsetsController) {
        return new c1(windowInsetsController);
    }

    public void a(int i10) {
        this.f2032a.a(i10);
    }

    public boolean b() {
        return this.f2032a.b();
    }

    public void c(boolean z10) {
        this.f2032a.c(z10);
    }

    public void d(boolean z10) {
        this.f2032a.d(z10);
    }

    public void e(int i10) {
        this.f2032a.e(i10);
    }

    private static class a extends d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final c1 f2033a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final WindowInsetsController f2034b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final h0 f2035c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final androidx.collection.i f2036d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        protected Window f2037e;

        a(Window window, c1 c1Var, h0 h0Var) {
            this(window.getInsetsController(), c1Var, h0Var);
            this.f2037e = window;
        }

        @Override // androidx.core.view.c1.d
        void a(int i10) {
            if ((i10 & 8) != 0) {
                this.f2035c.a();
            }
            this.f2034b.hide(i10 & (-9));
        }

        @Override // androidx.core.view.c1.d
        public boolean b() {
            this.f2034b.setSystemBarsAppearance(0, 0);
            return (this.f2034b.getSystemBarsAppearance() & 8) != 0;
        }

        @Override // androidx.core.view.c1.d
        public void c(boolean z10) {
            if (z10) {
                if (this.f2037e != null) {
                    f(16);
                }
                this.f2034b.setSystemBarsAppearance(16, 16);
            } else {
                if (this.f2037e != null) {
                    g(16);
                }
                this.f2034b.setSystemBarsAppearance(0, 16);
            }
        }

        @Override // androidx.core.view.c1.d
        public void d(boolean z10) {
            if (z10) {
                if (this.f2037e != null) {
                    f(ConfigPackage.FRAME_SIZE_6);
                }
                this.f2034b.setSystemBarsAppearance(8, 8);
            } else {
                if (this.f2037e != null) {
                    g(ConfigPackage.FRAME_SIZE_6);
                }
                this.f2034b.setSystemBarsAppearance(0, 8);
            }
        }

        @Override // androidx.core.view.c1.d
        void e(int i10) {
            if ((i10 & 8) != 0) {
                this.f2035c.b();
            }
            this.f2034b.show(i10 & (-9));
        }

        protected void f(int i10) {
            View decorView = this.f2037e.getDecorView();
            decorView.setSystemUiVisibility(i10 | decorView.getSystemUiVisibility());
        }

        protected void g(int i10) {
            View decorView = this.f2037e.getDecorView();
            decorView.setSystemUiVisibility((~i10) & decorView.getSystemUiVisibility());
        }

        a(WindowInsetsController windowInsetsController, c1 c1Var, h0 h0Var) {
            this.f2036d = new androidx.collection.i();
            this.f2034b = windowInsetsController;
            this.f2033a = c1Var;
            this.f2035c = h0Var;
        }
    }

    public c1(Window window, View view) {
        h0 h0Var = new h0(view);
        if (Build.VERSION.SDK_INT >= 35) {
            this.f2032a = new c(window, this, h0Var);
        } else {
            this.f2032a = new a(window, this, h0Var);
        }
    }
}
