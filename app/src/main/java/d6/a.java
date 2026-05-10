package d6;

import android.view.animation.Interpolator;
import com.oplus.anim.k0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f11538c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected m6.b f11540e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final List f11536a = new ArrayList(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f11537b = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected float f11539d = 0.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Object f11541f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f11542g = -1.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f11543h = -1.0f;

    public interface b {
        void c();
    }

    private static final class c implements d {
        private c() {
        }

        @Override // d6.a.d
        public float a() {
            return 1.0f;
        }

        @Override // d6.a.d
        public boolean b(float f10) {
            throw new IllegalStateException("not implemented");
        }

        @Override // d6.a.d
        public float c() {
            return 0.0f;
        }

        @Override // d6.a.d
        public m6.c d() {
            throw new IllegalStateException("not implemented");
        }

        @Override // d6.a.d
        public boolean e(float f10) {
            return false;
        }

        @Override // d6.a.d
        public boolean isEmpty() {
            return true;
        }
    }

    private interface d {
        float a();

        boolean b(float f10);

        float c();

        m6.c d();

        boolean e(float f10);

        boolean isEmpty();
    }

    private static final class e implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f11544a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private m6.c f11546c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f11547d = -1.0f;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private m6.c f11545b = f(0.0f);

        e(List list) {
            this.f11544a = list;
        }

        private m6.c f(float f10) {
            List list = this.f11544a;
            m6.c cVar = (m6.c) list.get(list.size() - 1);
            if (f10 >= cVar.f()) {
                return cVar;
            }
            for (int size = this.f11544a.size() - 2; size >= 1; size--) {
                m6.c cVar2 = (m6.c) this.f11544a.get(size);
                if (this.f11545b != cVar2 && cVar2.a(f10)) {
                    return cVar2;
                }
            }
            return (m6.c) this.f11544a.get(0);
        }

        @Override // d6.a.d
        public float a() {
            return ((m6.c) this.f11544a.get(r1.size() - 1)).c();
        }

        @Override // d6.a.d
        public boolean b(float f10) {
            m6.c cVar = this.f11546c;
            m6.c cVar2 = this.f11545b;
            if (cVar == cVar2 && this.f11547d == f10) {
                return true;
            }
            this.f11546c = cVar2;
            this.f11547d = f10;
            return false;
        }

        @Override // d6.a.d
        public float c() {
            return ((m6.c) this.f11544a.get(0)).f();
        }

        @Override // d6.a.d
        public m6.c d() {
            return this.f11545b;
        }

        @Override // d6.a.d
        public boolean e(float f10) {
            if (this.f11545b.a(f10)) {
                return !this.f11545b.i();
            }
            this.f11545b = f(f10);
            return true;
        }

        @Override // d6.a.d
        public boolean isEmpty() {
            return false;
        }
    }

    private static final class f implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final m6.c f11548a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f11549b = -1.0f;

        f(List list) {
            this.f11548a = (m6.c) list.get(0);
        }

        @Override // d6.a.d
        public float a() {
            return this.f11548a.c();
        }

        @Override // d6.a.d
        public boolean b(float f10) {
            if (this.f11549b == f10) {
                return true;
            }
            this.f11549b = f10;
            return false;
        }

        @Override // d6.a.d
        public float c() {
            return this.f11548a.f();
        }

        @Override // d6.a.d
        public m6.c d() {
            return this.f11548a;
        }

        @Override // d6.a.d
        public boolean e(float f10) {
            return !this.f11548a.i();
        }

        @Override // d6.a.d
        public boolean isEmpty() {
            return false;
        }
    }

    a(List list) {
        this.f11538c = o(list);
    }

    private float g() {
        if (this.f11542g == -1.0f) {
            this.f11542g = this.f11538c.c();
        }
        return this.f11542g;
    }

    private static d o(List list) {
        return list.isEmpty() ? new c() : list.size() == 1 ? new f(list) : new e(list);
    }

    public void a(b bVar) {
        this.f11536a.add(bVar);
    }

    protected m6.c b() {
        k0.a("BaseKeyframeAnimation#getCurrentKeyframe");
        m6.c cVarD = this.f11538c.d();
        k0.b("BaseKeyframeAnimation#getCurrentKeyframe");
        return cVarD;
    }

    float c() {
        if (this.f11543h == -1.0f) {
            this.f11543h = this.f11538c.a();
        }
        return this.f11543h;
    }

    protected float d() {
        m6.c cVarB = b();
        if (cVarB == null || cVarB.i()) {
            return 0.0f;
        }
        return cVarB.f13849d.getInterpolation(e());
    }

    float e() {
        if (this.f11537b) {
            return 0.0f;
        }
        m6.c cVarB = b();
        if (cVarB.i()) {
            return 0.0f;
        }
        return (this.f11539d - cVarB.f()) / (cVarB.c() - cVarB.f());
    }

    public float f() {
        return this.f11539d;
    }

    public Object h() {
        float fE = e();
        if (this.f11540e == null && this.f11538c.b(fE)) {
            return this.f11541f;
        }
        m6.c cVarB = b();
        Interpolator interpolator = cVarB.f13850e;
        Object objI = (interpolator == null || cVarB.f13851f == null) ? i(cVarB, d()) : j(cVarB, fE, interpolator.getInterpolation(fE), cVarB.f13851f.getInterpolation(fE));
        this.f11541f = objI;
        return objI;
    }

    abstract Object i(m6.c cVar, float f10);

    protected Object j(m6.c cVar, float f10, float f11, float f12) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }

    public void k() {
        for (int i10 = 0; i10 < this.f11536a.size(); i10++) {
            ((b) this.f11536a.get(i10)).c();
        }
    }

    public void l() {
        this.f11537b = true;
    }

    public void m(float f10) {
        if (this.f11538c.isEmpty()) {
            return;
        }
        if (f10 < g()) {
            f10 = g();
        } else if (f10 > c()) {
            f10 = c();
        }
        if (f10 == this.f11539d) {
            return;
        }
        this.f11539d = f10;
        if (this.f11538c.e(f10)) {
            k();
        }
    }

    public void n(m6.b bVar) {
        m6.b bVar2 = this.f11540e;
        if (bVar2 != null) {
            bVar2.c(null);
        }
        this.f11540e = bVar;
        if (bVar != null) {
            bVar.c(this);
        }
    }
}
