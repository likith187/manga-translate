package j1;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class b extends g {
    public b(List list) {
        super(list);
    }

    public int q() {
        return r(b(), d());
    }

    public int r(s1.a aVar, float f10) {
        Float f11;
        Integer num;
        if (aVar.f15504b == null || aVar.f15505c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        s1.c cVar = this.f12685e;
        return (cVar == null || (f11 = aVar.f15510h) == null || (num = (Integer) cVar.b(aVar.f15509g, f11.floatValue(), (Integer) aVar.f15504b, (Integer) aVar.f15505c, f10, e(), f())) == null) ? r1.b.c(r1.i.b(f10, 0.0f, 1.0f), ((Integer) aVar.f15504b).intValue(), ((Integer) aVar.f15505c).intValue()) : num.intValue();
    }

    @Override // j1.a
    /* JADX INFO: renamed from: s */
    public Integer i(s1.a aVar, float f10) {
        return Integer.valueOf(r(aVar, f10));
    }
}
