package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.c;
import androidx.recyclerview.widget.d;
import androidx.recyclerview.widget.k;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class q extends RecyclerView.h {
    final d mDiffer;
    private final d.b mListener;

    class a implements d.b {
        a() {
        }

        @Override // androidx.recyclerview.widget.d.b
        public void a(List list, List list2) {
            q.this.onCurrentListChanged(list, list2);
        }
    }

    protected q(k.f fVar) {
        a aVar = new a();
        this.mListener = aVar;
        d dVar = new d(new b(this), new c.a(fVar).a());
        this.mDiffer = dVar;
        dVar.a(aVar);
    }

    public List<Object> getCurrentList() {
        return this.mDiffer.b();
    }

    protected Object getItem(int i10) {
        return this.mDiffer.b().get(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemCount() {
        return this.mDiffer.b().size();
    }

    public void onCurrentListChanged(List<Object> list, List<Object> list2) {
    }

    public void submitList(List<Object> list) {
        this.mDiffer.e(list);
    }

    public void submitList(List<Object> list, Runnable runnable) {
        this.mDiffer.f(list, runnable);
    }
}
