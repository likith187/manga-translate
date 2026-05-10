package j1;

import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public class q extends a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Object f12746i;

    public q(s1.c cVar) {
        this(cVar, null);
    }

    @Override // j1.a
    float c() {
        return 1.0f;
    }

    @Override // j1.a
    public Object h() {
        s1.c cVar = this.f12685e;
        Object obj = this.f12746i;
        return cVar.b(0.0f, 0.0f, obj, obj, f(), f(), f());
    }

    @Override // j1.a
    Object i(s1.a aVar, float f10) {
        return h();
    }

    @Override // j1.a
    public void l() {
        if (this.f12685e != null) {
            super.l();
        }
    }

    @Override // j1.a
    public void n(float f10) {
        this.f12684d = f10;
    }

    public q(s1.c cVar, Object obj) {
        super(Collections.emptyList());
        o(cVar);
        this.f12746i = obj;
    }
}
