package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final b f3315a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final a f3316b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final List f3317c = new ArrayList();

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f3318a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        a f3319b;

        a() {
        }

        private void c() {
            if (this.f3319b == null) {
                this.f3319b = new a();
            }
        }

        void a(int i10) {
            if (i10 < 64) {
                this.f3318a &= ~(1 << i10);
                return;
            }
            a aVar = this.f3319b;
            if (aVar != null) {
                aVar.a(i10 - 64);
            }
        }

        int b(int i10) {
            a aVar = this.f3319b;
            if (aVar == null) {
                if (i10 >= 64) {
                    return Long.bitCount(this.f3318a);
                }
                return Long.bitCount(((1 << i10) - 1) & this.f3318a);
            }
            if (i10 >= 64) {
                return aVar.b(i10 - 64) + Long.bitCount(this.f3318a);
            }
            return Long.bitCount(((1 << i10) - 1) & this.f3318a);
        }

        boolean d(int i10) {
            if (i10 < 64) {
                return ((1 << i10) & this.f3318a) != 0;
            }
            c();
            return this.f3319b.d(i10 - 64);
        }

        void e(int i10, boolean z10) {
            if (i10 >= 64) {
                c();
                this.f3319b.e(i10 - 64, z10);
                return;
            }
            long j10 = this.f3318a;
            boolean z11 = (Long.MIN_VALUE & j10) != 0;
            long j11 = (1 << i10) - 1;
            this.f3318a = ((j10 & (~j11)) << 1) | (j10 & j11);
            if (z10) {
                h(i10);
            } else {
                a(i10);
            }
            if (z11 || this.f3319b != null) {
                c();
                this.f3319b.e(0, z11);
            }
        }

        boolean f(int i10) {
            if (i10 >= 64) {
                c();
                return this.f3319b.f(i10 - 64);
            }
            long j10 = 1 << i10;
            long j11 = this.f3318a;
            boolean z10 = (j11 & j10) != 0;
            long j12 = j11 & (~j10);
            this.f3318a = j12;
            long j13 = j10 - 1;
            this.f3318a = (j12 & j13) | Long.rotateRight((~j13) & j12, 1);
            a aVar = this.f3319b;
            if (aVar != null) {
                if (aVar.d(0)) {
                    h(63);
                }
                this.f3319b.f(0);
            }
            return z10;
        }

        void g() {
            this.f3318a = 0L;
            a aVar = this.f3319b;
            if (aVar != null) {
                aVar.g();
            }
        }

        void h(int i10) {
            if (i10 < 64) {
                this.f3318a |= 1 << i10;
            } else {
                c();
                this.f3319b.h(i10 - 64);
            }
        }

        public String toString() {
            if (this.f3319b == null) {
                return Long.toBinaryString(this.f3318a);
            }
            return this.f3319b.toString() + "xx" + Long.toBinaryString(this.f3318a);
        }
    }

    interface b {
        View a(int i10);

        void b(View view);

        RecyclerView.d0 c(View view);

        void d(int i10);

        void e(View view);

        void f(View view, int i10);

        int g();

        void h(int i10);

        void i();

        void j(View view, int i10, ViewGroup.LayoutParams layoutParams);

        int k(View view);
    }

    i(b bVar) {
        this.f3315a = bVar;
    }

    private int h(int i10) {
        if (i10 < 0) {
            return -1;
        }
        int iG = this.f3315a.g();
        int i11 = i10;
        while (i11 < iG) {
            int iB = i10 - (i11 - this.f3316b.b(i11));
            if (iB == 0) {
                while (this.f3316b.d(i11)) {
                    i11++;
                }
                return i11;
            }
            i11 += iB;
        }
        return -1;
    }

    private void l(View view) {
        this.f3317c.add(view);
        this.f3315a.b(view);
    }

    private boolean t(View view) {
        if (!this.f3317c.remove(view)) {
            return false;
        }
        this.f3315a.e(view);
        return true;
    }

    void a(View view, int i10, boolean z10) {
        int iG = i10 < 0 ? this.f3315a.g() : h(i10);
        this.f3316b.e(iG, z10);
        if (z10) {
            l(view);
        }
        this.f3315a.f(view, iG);
    }

    void b(View view, boolean z10) {
        a(view, -1, z10);
    }

    void c(View view, int i10, ViewGroup.LayoutParams layoutParams, boolean z10) {
        int iG = i10 < 0 ? this.f3315a.g() : h(i10);
        this.f3316b.e(iG, z10);
        if (z10) {
            l(view);
        }
        this.f3315a.j(view, iG, layoutParams);
    }

    void d(int i10) {
        int iH = h(i10);
        this.f3316b.f(iH);
        this.f3315a.d(iH);
    }

    View e(int i10) {
        int size = this.f3317c.size();
        for (int i11 = 0; i11 < size; i11++) {
            View view = (View) this.f3317c.get(i11);
            RecyclerView.d0 d0VarC = this.f3315a.c(view);
            if (d0VarC.getLayoutPosition() == i10 && !d0VarC.isInvalid() && !d0VarC.isRemoved()) {
                return view;
            }
        }
        return null;
    }

    View f(int i10) {
        return this.f3315a.a(h(i10));
    }

    int g() {
        return this.f3315a.g() - this.f3317c.size();
    }

    View i(int i10) {
        return this.f3315a.a(i10);
    }

    int j() {
        return this.f3315a.g();
    }

    void k(View view) {
        int iK = this.f3315a.k(view);
        if (iK >= 0) {
            this.f3316b.h(iK);
            l(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    int m(View view) {
        int iK = this.f3315a.k(view);
        if (iK == -1 || this.f3316b.d(iK)) {
            return -1;
        }
        return iK - this.f3316b.b(iK);
    }

    boolean n(View view) {
        return this.f3317c.contains(view);
    }

    void o() {
        this.f3316b.g();
        for (int size = this.f3317c.size() - 1; size >= 0; size--) {
            this.f3315a.e((View) this.f3317c.get(size));
            this.f3317c.remove(size);
        }
        this.f3315a.i();
    }

    void p(View view) {
        int iK = this.f3315a.k(view);
        if (iK < 0) {
            return;
        }
        if (this.f3316b.f(iK)) {
            t(view);
        }
        this.f3315a.h(iK);
    }

    void q(int i10) {
        int iH = h(i10);
        View viewA = this.f3315a.a(iH);
        if (viewA == null) {
            return;
        }
        if (this.f3316b.f(iH)) {
            t(viewA);
        }
        this.f3315a.h(iH);
    }

    boolean r(View view) {
        int iK = this.f3315a.k(view);
        if (iK == -1) {
            t(view);
            return true;
        }
        if (!this.f3316b.d(iK)) {
            return false;
        }
        this.f3316b.f(iK);
        t(view);
        this.f3315a.h(iK);
        return true;
    }

    void s(View view) {
        int iK = this.f3315a.k(view);
        if (iK < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        if (this.f3316b.d(iK)) {
            this.f3316b.a(iK);
            t(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    public String toString() {
        return this.f3316b.toString() + ", hidden list:" + this.f3317c.size();
    }
}
