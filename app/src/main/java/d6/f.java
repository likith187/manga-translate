package d6;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class f extends g {
    public f(List list) {
        super(list);
    }

    public int p() {
        return q(b(), d());
    }

    int q(m6.c cVar, float f10) {
        Integer num;
        if (cVar.f13847b == null || cVar.f13848c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        m6.b bVar = this.f11540e;
        return (bVar == null || (num = (Integer) bVar.b(cVar.f13852g, cVar.f13853h.floatValue(), (Integer) cVar.f13847b, (Integer) cVar.f13848c, f10, e(), f())) == null) ? l6.g.j(cVar.h(), cVar.e(), f10) : num.intValue();
    }

    @Override // d6.a
    /* JADX INFO: renamed from: r */
    public Integer i(m6.c cVar, float f10) {
        return Integer.valueOf(q(cVar, f10));
    }
}
