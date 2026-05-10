package j1;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class e extends g {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final n1.d f12704i;

    public e(List list) {
        super(list);
        int iMax = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            n1.d dVar = (n1.d) ((s1.a) list.get(i10)).f15504b;
            if (dVar != null) {
                iMax = Math.max(iMax, dVar.f());
            }
        }
        this.f12704i = new n1.d(new float[iMax], new int[iMax]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j1.a
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public n1.d i(s1.a aVar, float f10) {
        this.f12704i.g((n1.d) aVar.f15504b, (n1.d) aVar.f15505c, f10);
        return this.f12704i;
    }
}
