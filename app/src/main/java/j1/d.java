package j1;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class d extends g {
    public d(List list) {
        super(list);
    }

    public float q() {
        return r(b(), d());
    }

    float r(s1.a aVar, float f10) {
        Float f11;
        if (aVar.f15504b == null || aVar.f15505c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        s1.c cVar = this.f12685e;
        return (cVar == null || (f11 = (Float) cVar.b(aVar.f15509g, aVar.f15510h.floatValue(), (Float) aVar.f15504b, (Float) aVar.f15505c, f10, e(), f())) == null) ? r1.i.i(aVar.g(), aVar.d(), f10) : f11.floatValue();
    }

    @Override // j1.a
    /* JADX INFO: renamed from: s */
    public Float i(s1.a aVar, float f10) {
        return Float.valueOf(r(aVar, f10));
    }
}
