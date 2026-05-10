package j1;

import android.graphics.Path;
import i1.s;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class m extends a {

    /* JADX INFO: renamed from: i */
    private final n1.o f12716i;

    /* JADX INFO: renamed from: j */
    private final Path f12717j;

    /* JADX INFO: renamed from: k */
    private Path f12718k;

    /* JADX INFO: renamed from: l */
    private Path f12719l;

    /* JADX INFO: renamed from: m */
    private List f12720m;

    public m(List list) {
        super(list);
        this.f12716i = new n1.o();
        this.f12717j = new Path();
    }

    @Override // j1.a
    /* JADX INFO: renamed from: q */
    public Path i(s1.a aVar, float f10) {
        n1.o oVar = (n1.o) aVar.f15504b;
        n1.o oVar2 = (n1.o) aVar.f15505c;
        this.f12716i.c(oVar, oVar2 == null ? oVar : oVar2, f10);
        n1.o oVarI = this.f12716i;
        List list = this.f12720m;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                oVarI = ((s) this.f12720m.get(size)).i(oVarI);
            }
        }
        r1.i.h(oVarI, this.f12717j);
        if (this.f12685e == null) {
            return this.f12717j;
        }
        if (this.f12718k == null) {
            this.f12718k = new Path();
            this.f12719l = new Path();
        }
        r1.i.h(oVar, this.f12718k);
        if (oVar2 != null) {
            r1.i.h(oVar2, this.f12719l);
        }
        s1.c cVar = this.f12685e;
        float f11 = aVar.f15509g;
        float fFloatValue = aVar.f15510h.floatValue();
        Path path = this.f12718k;
        return (Path) cVar.b(f11, fFloatValue, path, oVar2 == null ? path : this.f12719l, f10, e(), f());
    }

    public void r(List list) {
        this.f12720m = list;
    }
}
