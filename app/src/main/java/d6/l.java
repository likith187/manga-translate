package d6;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class l extends g {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final m6.d f11570i;

    public l(List list) {
        super(list);
        this.f11570i = new m6.d();
    }

    @Override // d6.a
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public m6.d i(m6.c cVar, float f10) {
        Object obj;
        m6.d dVar;
        Object obj2 = cVar.f13847b;
        if (obj2 == null || (obj = cVar.f13848c) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        m6.d dVar2 = (m6.d) obj2;
        m6.d dVar3 = (m6.d) obj;
        m6.b bVar = this.f11540e;
        if (bVar != null && (dVar = (m6.d) bVar.b(cVar.f13852g, cVar.f13853h.floatValue(), dVar2, dVar3, f10, e(), f())) != null) {
            return dVar;
        }
        this.f11570i.d(l6.g.i(dVar2.b(), dVar3.b(), f10), l6.g.i(dVar2.c(), dVar3.c(), f10));
        return this.f11570i;
    }
}
