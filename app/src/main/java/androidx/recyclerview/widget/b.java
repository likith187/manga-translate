package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class b implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RecyclerView.h f3263a;

    public b(RecyclerView.h hVar) {
        this.f3263a = hVar;
    }

    @Override // androidx.recyclerview.widget.r
    public void a(int i10, int i11) {
        this.f3263a.notifyItemRangeRemoved(i10, i11);
    }

    @Override // androidx.recyclerview.widget.r
    public void b(int i10, int i11) {
        this.f3263a.notifyItemMoved(i10, i11);
    }

    @Override // androidx.recyclerview.widget.r
    public void c(int i10, int i11) {
        this.f3263a.notifyItemRangeInserted(i10, i11);
    }

    @Override // androidx.recyclerview.widget.r
    public void d(int i10, int i11, Object obj) {
        this.f3263a.notifyItemRangeChanged(i10, i11, obj);
    }
}
