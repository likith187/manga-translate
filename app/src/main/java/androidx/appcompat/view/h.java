package androidx.appcompat.view;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.core.view.u0;
import androidx.core.view.v0;
import androidx.core.view.w0;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Interpolator f536c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    v0 f537d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f538e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f535b = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final w0 f539f = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ArrayList f534a = new ArrayList();

    class a extends w0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f540a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f541b = 0;

        a() {
        }

        @Override // androidx.core.view.v0
        public void b(View view) {
            int i10 = this.f541b + 1;
            this.f541b = i10;
            if (i10 == h.this.f534a.size()) {
                v0 v0Var = h.this.f537d;
                if (v0Var != null) {
                    v0Var.b(null);
                }
                d();
            }
        }

        @Override // androidx.core.view.w0, androidx.core.view.v0
        public void c(View view) {
            if (this.f540a) {
                return;
            }
            this.f540a = true;
            v0 v0Var = h.this.f537d;
            if (v0Var != null) {
                v0Var.c(null);
            }
        }

        void d() {
            this.f541b = 0;
            this.f540a = false;
            h.this.b();
        }
    }

    public void a() {
        if (this.f538e) {
            Iterator it = this.f534a.iterator();
            while (it.hasNext()) {
                ((u0) it.next()).c();
            }
            this.f538e = false;
        }
    }

    void b() {
        this.f538e = false;
    }

    public h c(u0 u0Var) {
        if (!this.f538e) {
            this.f534a.add(u0Var);
        }
        return this;
    }

    public h d(u0 u0Var, u0 u0Var2) {
        this.f534a.add(u0Var);
        u0Var2.k(u0Var.d());
        this.f534a.add(u0Var2);
        return this;
    }

    public h e(long j10) {
        if (!this.f538e) {
            this.f535b = j10;
        }
        return this;
    }

    public h f(Interpolator interpolator) {
        if (!this.f538e) {
            this.f536c = interpolator;
        }
        return this;
    }

    public h g(v0 v0Var) {
        if (!this.f538e) {
            this.f537d = v0Var;
        }
        return this;
    }

    public void h() {
        if (this.f538e) {
            return;
        }
        for (u0 u0Var : this.f534a) {
            long j10 = this.f535b;
            if (j10 >= 0) {
                u0Var.g(j10);
            }
            Interpolator interpolator = this.f536c;
            if (interpolator != null) {
                u0Var.h(interpolator);
            }
            if (this.f537d != null) {
                u0Var.i(this.f539f);
            }
            u0Var.m();
        }
        this.f538e = true;
    }
}
