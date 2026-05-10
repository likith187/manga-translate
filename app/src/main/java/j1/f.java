package j1;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class f extends g {
    public f(List list) {
        super(list);
    }

    public int q() {
        return r(b(), d());
    }

    int r(s1.a aVar, float f10) {
        Integer num;
        if (aVar.f15504b == null || aVar.f15505c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        s1.c cVar = this.f12685e;
        return (cVar == null || (num = (Integer) cVar.b(aVar.f15509g, aVar.f15510h.floatValue(), (Integer) aVar.f15504b, (Integer) aVar.f15505c, f10, e(), f())) == null) ? r1.i.j(aVar.h(), aVar.e(), f10) : num.intValue();
    }

    @Override // j1.a
    /* JADX INFO: renamed from: s */
    public Integer i(s1.a aVar, float f10) {
        return Integer.valueOf(r(aVar, f10));
    }
}
