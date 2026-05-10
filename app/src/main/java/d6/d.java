package d6;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class d extends g {
    public d(List list) {
        super(list);
    }

    public float p() {
        return q(b(), d());
    }

    float q(m6.c cVar, float f10) {
        Float f11;
        if (cVar.f13847b == null || cVar.f13848c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        m6.b bVar = this.f11540e;
        return (bVar == null || (f11 = (Float) bVar.b(cVar.f13852g, cVar.f13853h.floatValue(), (Float) cVar.f13847b, (Float) cVar.f13848c, f10, e(), f())) == null) ? l6.g.i(cVar.g(), cVar.d(), f10) : f11.floatValue();
    }

    @Override // d6.a
    /* JADX INFO: renamed from: r */
    public Float i(m6.c cVar, float f10) {
        return Float.valueOf(q(cVar, f10));
    }
}
