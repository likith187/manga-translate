package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public abstract class x extends RecyclerView.m {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f3467g = true;

    public abstract boolean A(RecyclerView.d0 d0Var);

    public final void B(RecyclerView.d0 d0Var) {
        J(d0Var);
        h(d0Var);
    }

    public final void C(RecyclerView.d0 d0Var) {
        K(d0Var);
    }

    public final void D(RecyclerView.d0 d0Var, boolean z10) {
        L(d0Var, z10);
        h(d0Var);
    }

    public final void E(RecyclerView.d0 d0Var, boolean z10) {
        M(d0Var, z10);
    }

    public final void F(RecyclerView.d0 d0Var) {
        N(d0Var);
        h(d0Var);
    }

    public final void G(RecyclerView.d0 d0Var) {
        O(d0Var);
    }

    public final void H(RecyclerView.d0 d0Var) {
        P(d0Var);
        h(d0Var);
    }

    public final void I(RecyclerView.d0 d0Var) {
        Q(d0Var);
    }

    public void J(RecyclerView.d0 d0Var) {
    }

    public void K(RecyclerView.d0 d0Var) {
    }

    public void L(RecyclerView.d0 d0Var, boolean z10) {
    }

    public void M(RecyclerView.d0 d0Var, boolean z10) {
    }

    public void N(RecyclerView.d0 d0Var) {
    }

    public void O(RecyclerView.d0 d0Var) {
    }

    public void P(RecyclerView.d0 d0Var) {
    }

    public void Q(RecyclerView.d0 d0Var) {
    }

    public void R(boolean z10) {
        this.f3467g = z10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean a(RecyclerView.d0 d0Var, RecyclerView.m.b bVar, RecyclerView.m.b bVar2) {
        int i10;
        int i11;
        return (bVar == null || ((i10 = bVar.f3152a) == (i11 = bVar2.f3152a) && bVar.f3153b == bVar2.f3153b)) ? x(d0Var) : z(d0Var, i10, bVar.f3153b, i11, bVar2.f3153b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean b(RecyclerView.d0 d0Var, RecyclerView.d0 d0Var2, RecyclerView.m.b bVar, RecyclerView.m.b bVar2) {
        int i10;
        int i11;
        int i12 = bVar.f3152a;
        int i13 = bVar.f3153b;
        if (d0Var2.shouldIgnore()) {
            int i14 = bVar.f3152a;
            i11 = bVar.f3153b;
            i10 = i14;
        } else {
            i10 = bVar2.f3152a;
            i11 = bVar2.f3153b;
        }
        return y(d0Var, d0Var2, i12, i13, i10, i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean c(RecyclerView.d0 d0Var, RecyclerView.m.b bVar, RecyclerView.m.b bVar2) {
        int i10 = bVar.f3152a;
        int i11 = bVar.f3153b;
        View view = d0Var.itemView;
        int left = bVar2 == null ? view.getLeft() : bVar2.f3152a;
        int top = bVar2 == null ? view.getTop() : bVar2.f3153b;
        if (d0Var.isRemoved() || (i10 == left && i11 == top)) {
            return A(d0Var);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return z(d0Var, i10, i11, left, top);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean d(RecyclerView.d0 d0Var, RecyclerView.m.b bVar, RecyclerView.m.b bVar2) {
        int i10 = bVar.f3152a;
        int i11 = bVar2.f3152a;
        if (i10 != i11 || bVar.f3153b != bVar2.f3153b) {
            return z(d0Var, i10, bVar.f3153b, i11, bVar2.f3153b);
        }
        F(d0Var);
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean f(RecyclerView.d0 d0Var) {
        return !this.f3467g || d0Var.isInvalid();
    }

    public abstract boolean x(RecyclerView.d0 d0Var);

    public abstract boolean y(RecyclerView.d0 d0Var, RecyclerView.d0 d0Var2, int i10, int i11, int i12, int i13);

    public abstract boolean z(RecyclerView.d0 d0Var, int i10, int i11, int i12, int i13);
}
