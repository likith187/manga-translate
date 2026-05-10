package androidx.preference;

import android.R;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class l extends RecyclerView.d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SparseArray f2998a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2999b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3000c;

    l(View view) {
        super(view);
        SparseArray sparseArray = new SparseArray(4);
        this.f2998a = sparseArray;
        sparseArray.put(R.id.title, view.findViewById(R.id.title));
        sparseArray.put(R.id.summary, view.findViewById(R.id.summary));
        sparseArray.put(R.id.icon, view.findViewById(R.id.icon));
        int i10 = R$id.icon_frame;
        sparseArray.put(i10, view.findViewById(i10));
        sparseArray.put(R.id.icon_frame, view.findViewById(R.id.icon_frame));
    }

    public View b(int i10) {
        View view = (View) this.f2998a.get(i10);
        if (view != null) {
            return view;
        }
        View viewFindViewById = this.itemView.findViewById(i10);
        if (viewFindViewById != null) {
            this.f2998a.put(i10, viewFindViewById);
        }
        return viewFindViewById;
    }

    public boolean c() {
        return this.f2999b;
    }

    public boolean d() {
        return this.f3000c;
    }

    public void e(boolean z10) {
        this.f2999b = z10;
    }

    public void f(boolean z10) {
        this.f3000c = z10;
    }
}
