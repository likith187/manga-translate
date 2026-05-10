package j1;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: c */
    private final d f12683c;

    /* JADX INFO: renamed from: e */
    protected s1.c f12685e;

    /* JADX INFO: renamed from: a */
    final List f12681a = new ArrayList(1);

    /* JADX INFO: renamed from: b */
    private boolean f12682b = false;

    /* JADX INFO: renamed from: d */
    protected float f12684d = 0.0f;

    /* JADX INFO: renamed from: f */
    private Object f12686f = null;

    /* JADX INFO: renamed from: g */
    private float f12687g = -1.0f;

    /* JADX INFO: renamed from: h */
    private float f12688h = -1.0f;

    public interface b {
        void c();
    }

    private static final class c implements d {
        private c() {
        }

        @Override // j1.a.d
        public float a() {
            return 1.0f;
        }

        @Override // j1.a.d
        public boolean b(float f10) {
            throw new IllegalStateException("not implemented");
        }

        @Override // j1.a.d
        public float c() {
            return 0.0f;
        }

        @Override // j1.a.d
        public s1.a d() {
            throw new IllegalStateException("not implemented");
        }

        @Override // j1.a.d
        public boolean e(float f10) {
            return false;
        }

        @Override // j1.a.d
        public boolean isEmpty() {
            return true;
        }

        /* synthetic */ c(C0155a c0155a) {
            this();
        }
    }

    private interface d {
        float a();

        boolean b(float f10);

        float c();

        s1.a d();

        boolean e(float f10);

        boolean isEmpty();
    }

    private static final class e implements d {

        /* JADX INFO: renamed from: a */
        private final List f12689a;

        /* JADX INFO: renamed from: c */
        private s1.a f12691c = null;

        /* JADX INFO: renamed from: d */
        private float f12692d = -1.0f;

        /* JADX INFO: renamed from: b */
        private s1.a f12690b = f(0.0f);

        e(List list) {
            this.f12689a = list;
        }

        private s1.a f(float f10) {
            List list = this.f12689a;
            s1.a aVar = (s1.a) list.get(list.size() - 1);
            if (f10 >= aVar.f()) {
                return aVar;
            }
            for (int size = this.f12689a.size() - 2; size >= 1; size--) {
                s1.a aVar2 = (s1.a) this.f12689a.get(size);
                if (this.f12690b != aVar2 && aVar2.a(f10)) {
                    return aVar2;
                }
            }
            return (s1.a) this.f12689a.get(0);
        }

        @Override // j1.a.d
        public float a() {
            return ((s1.a) this.f12689a.get(r1.size() - 1)).c();
        }

        @Override // j1.a.d
        public boolean b(float f10) {
            s1.a aVar = this.f12691c;
            s1.a aVar2 = this.f12690b;
            if (aVar == aVar2 && this.f12692d == f10) {
                return true;
            }
            this.f12691c = aVar2;
            this.f12692d = f10;
            return false;
        }

        @Override // j1.a.d
        public float c() {
            return ((s1.a) this.f12689a.get(0)).f();
        }

        @Override // j1.a.d
        public s1.a d() {
            return this.f12690b;
        }

        @Override // j1.a.d
        public boolean e(float f10) {
            if (this.f12690b.a(f10)) {
                return !this.f12690b.i();
            }
            this.f12690b = f(f10);
            return true;
        }

        @Override // j1.a.d
        public boolean isEmpty() {
            return false;
        }
    }

    private static final class f implements d {

        /* JADX INFO: renamed from: a */
        private final s1.a f12693a;

        /* JADX INFO: renamed from: b */
        private float f12694b = -1.0f;

        f(List list) {
            this.f12693a = (s1.a) list.get(0);
        }

        @Override // j1.a.d
        public float a() {
            return this.f12693a.c();
        }

        @Override // j1.a.d
        public boolean b(float f10) {
            if (this.f12694b == f10) {
                return true;
            }
            this.f12694b = f10;
            return false;
        }

        @Override // j1.a.d
        public float c() {
            return this.f12693a.f();
        }

        @Override // j1.a.d
        public s1.a d() {
            return this.f12693a;
        }

        @Override // j1.a.d
        public boolean e(float f10) {
            return !this.f12693a.i();
        }

        @Override // j1.a.d
        public boolean isEmpty() {
            return false;
        }
    }

    a(List list) {
        this.f12683c = p(list);
    }

    private float g() {
        if (this.f12687g == -1.0f) {
            this.f12687g = this.f12683c.c();
        }
        return this.f12687g;
    }

    private static d p(List list) {
        return list.isEmpty() ? new c() : list.size() == 1 ? new f(list) : new e(list);
    }

    public void a(b bVar) {
        this.f12681a.add(bVar);
    }

    protected s1.a b() {
        com.airbnb.lottie.e.b("BaseKeyframeAnimation#getCurrentKeyframe");
        s1.a aVarD = this.f12683c.d();
        com.airbnb.lottie.e.c("BaseKeyframeAnimation#getCurrentKeyframe");
        return aVarD;
    }

    float c() {
        if (this.f12688h == -1.0f) {
            this.f12688h = this.f12683c.a();
        }
        return this.f12688h;
    }

    protected float d() {
        s1.a aVarB = b();
        if (aVarB == null || aVarB.i()) {
            return 0.0f;
        }
        return aVarB.f15506d.getInterpolation(e());
    }

    float e() {
        if (this.f12682b) {
            return 0.0f;
        }
        s1.a aVarB = b();
        if (aVarB.i()) {
            return 0.0f;
        }
        return (this.f12684d - aVarB.f()) / (aVarB.c() - aVarB.f());
    }

    public float f() {
        return this.f12684d;
    }

    public Object h() {
        float fE = e();
        if (this.f12685e == null && this.f12683c.b(fE)) {
            return this.f12686f;
        }
        s1.a aVarB = b();
        Interpolator interpolator = aVarB.f15507e;
        Object objI = (interpolator == null || aVarB.f15508f == null) ? i(aVarB, d()) : j(aVarB, fE, interpolator.getInterpolation(fE), aVarB.f15508f.getInterpolation(fE));
        this.f12686f = objI;
        return objI;
    }

    abstract Object i(s1.a aVar, float f10);

    protected Object j(s1.a aVar, float f10, float f11, float f12) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }

    public boolean k() {
        return this.f12685e != null;
    }

    public void l() {
        com.airbnb.lottie.e.b("BaseKeyframeAnimation#notifyListeners");
        for (int i10 = 0; i10 < this.f12681a.size(); i10++) {
            ((b) this.f12681a.get(i10)).c();
        }
        com.airbnb.lottie.e.c("BaseKeyframeAnimation#notifyListeners");
    }

    public void m() {
        this.f12682b = true;
    }

    public void n(float f10) {
        com.airbnb.lottie.e.b("BaseKeyframeAnimation#setProgress");
        if (this.f12683c.isEmpty()) {
            com.airbnb.lottie.e.c("BaseKeyframeAnimation#setProgress");
            return;
        }
        if (f10 < g()) {
            f10 = g();
        } else if (f10 > c()) {
            f10 = c();
        }
        if (f10 == this.f12684d) {
            com.airbnb.lottie.e.c("BaseKeyframeAnimation#setProgress");
            return;
        }
        this.f12684d = f10;
        if (this.f12683c.e(f10)) {
            l();
        }
        com.airbnb.lottie.e.c("BaseKeyframeAnimation#setProgress");
    }

    public void o(s1.c cVar) {
        s1.c cVar2 = this.f12685e;
        if (cVar2 != null) {
            cVar2.c(null);
        }
        this.f12685e = cVar;
        if (cVar != null) {
            cVar.c(this);
        }
    }
}
