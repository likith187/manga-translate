package d6;

import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public class q extends a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Object f11598i;

    public q(m6.b bVar) {
        this(bVar, null);
    }

    @Override // d6.a
    float c() {
        return 1.0f;
    }

    @Override // d6.a
    public Object h() {
        m6.b bVar = this.f11540e;
        Object obj = this.f11598i;
        return bVar.b(0.0f, 0.0f, obj, obj, f(), f(), f());
    }

    @Override // d6.a
    Object i(m6.c cVar, float f10) {
        return h();
    }

    @Override // d6.a
    public void k() {
        if (this.f11540e != null) {
            super.k();
        }
    }

    @Override // d6.a
    public void m(float f10) {
        this.f11539d = f10;
    }

    public q(m6.b bVar, Object obj) {
        super(Collections.emptyList());
        n(bVar);
        this.f11598i = obj;
    }
}
