package d6;

import android.graphics.Path;
import c6.s;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class m extends a {

    /* JADX INFO: renamed from: i */
    private final h6.n f11571i;

    /* JADX INFO: renamed from: j */
    private final Path f11572j;

    /* JADX INFO: renamed from: k */
    private List f11573k;

    public m(List list) {
        super(list);
        this.f11571i = new h6.n();
        this.f11572j = new Path();
    }

    @Override // d6.a
    /* JADX INFO: renamed from: p */
    public Path i(m6.c cVar, float f10) {
        this.f11571i.c((h6.n) cVar.f13847b, (h6.n) cVar.f13848c, f10);
        h6.n nVarG = this.f11571i;
        List list = this.f11573k;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                nVarG = ((s) this.f11573k.get(size)).g(nVarG);
            }
        }
        l6.g.h(nVarG, this.f11572j);
        return this.f11572j;
    }

    public void q(List list) {
        this.f11573k = list;
    }
}
