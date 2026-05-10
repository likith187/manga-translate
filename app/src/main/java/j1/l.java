package j1;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class l extends g {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final s1.d f12715i;

    public l(List list) {
        super(list);
        this.f12715i = new s1.d();
    }

    @Override // j1.a
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public s1.d i(s1.a aVar, float f10) {
        Object obj;
        s1.d dVar;
        Object obj2 = aVar.f15504b;
        if (obj2 == null || (obj = aVar.f15505c) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        s1.d dVar2 = (s1.d) obj2;
        s1.d dVar3 = (s1.d) obj;
        s1.c cVar = this.f12685e;
        if (cVar != null && (dVar = (s1.d) cVar.b(aVar.f15509g, aVar.f15510h.floatValue(), dVar2, dVar3, f10, e(), f())) != null) {
            return dVar;
        }
        this.f12715i.d(r1.i.i(dVar2.b(), dVar3.b(), f10), r1.i.i(dVar2.c(), dVar3.c(), f10));
        return this.f12715i;
    }
}
