package androidx.dynamicanimation.animation;

import androidx.dynamicanimation.animation.c;

/* JADX INFO: loaded from: classes.dex */
public class b extends c {
    private final a A;
    private float B;
    private float C;
    private long D;
    private long E;

    static final class a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f2281c;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c.p f2279a = new c.p();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f2280b = -4.2f;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f2282d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f2283e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private float f2284f = 0.0f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private float f2285g = 0.0f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private float f2286h = 0.0f;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private float f2287i = 0.0f;

        a() {
        }

        private float g(long j10) {
            if (j10 >= this.f2283e) {
                return this.f2287i;
            }
            long j11 = this.f2282d;
            float f10 = (j10 - j11) / (r0 - j11);
            float f11 = this.f2286h;
            return f11 + ((this.f2287i - f11) * f10);
        }

        private float h(long j10) {
            if (j10 >= this.f2283e) {
                return this.f2285g;
            }
            long j11 = this.f2282d;
            float f10 = (j10 - j11) / (r0 - j11);
            float f11 = this.f2284f;
            return f11 + ((this.f2285g - f11) * f10);
        }

        public boolean i(float f10, float f11) {
            return Math.abs(f11) < this.f2281c;
        }

        void j(float f10) {
            this.f2281c = f10 * 62.5f;
        }

        c.p k(float f10, float f11, long j10, long j11) {
            if (this.f2285g < 0.0f) {
                float f12 = j11;
                this.f2279a.f2317b = (float) (((double) f11) * Math.exp((f12 / 1000.0f) * this.f2280b));
                c.p pVar = this.f2279a;
                float f13 = this.f2280b;
                pVar.f2316a = (float) (((double) (f10 - (f11 / f13))) + (((double) (f11 / f13)) * Math.exp((f13 * f12) / 1000.0f)));
            } else {
                this.f2279a.f2317b = h(j10);
                this.f2279a.f2316a = g(j10);
            }
            c.p pVar2 = this.f2279a;
            if (i(pVar2.f2316a, pVar2.f2317b)) {
                this.f2279a.f2317b = 0.0f;
            }
            return this.f2279a;
        }
    }

    public b(Object obj, d dVar) {
        super(obj, dVar);
        a aVar = new a();
        this.A = aVar;
        this.B = 0.0f;
        this.C = -1.0f;
        this.D = 0L;
        this.E = 120L;
        aVar.j(f());
    }

    @Override // androidx.dynamicanimation.animation.c
    void o(float f10) {
        this.A.j(f10);
    }

    @Override // androidx.dynamicanimation.animation.c
    public void p() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.D = jCurrentTimeMillis;
        this.A.f2282d = jCurrentTimeMillis;
        this.A.f2283e = this.D + this.E;
        this.A.f2284f = this.B;
        this.A.f2285g = this.C;
        this.A.f2286h = 0.0f;
        this.A.f2287i = this.f2308g;
        super.p();
    }

    @Override // androidx.dynamicanimation.animation.c
    boolean r(long j10) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        c.p pVarK = this.A.k(this.f2303b, this.f2302a, jCurrentTimeMillis, j10);
        float f10 = pVarK.f2316a;
        this.f2303b = f10;
        float f11 = pVarK.f2317b;
        this.f2302a = f11;
        float f12 = this.C;
        if (f12 >= 0.0f && (f11 <= f12 || jCurrentTimeMillis >= this.D + this.E)) {
            this.f2303b = this.f2308g;
            return true;
        }
        float f13 = this.f2309h;
        if (f10 < f13) {
            this.f2303b = f13;
            return true;
        }
        float f14 = this.f2308g;
        if (f10 <= f14) {
            return s(f10, f11);
        }
        this.f2303b = f14;
        return true;
    }

    boolean s(float f10, float f11) {
        return f10 >= this.f2308g || f10 <= this.f2309h || this.A.i(f10, f11);
    }

    public b t(float f10) {
        if (f10 <= 0.0f) {
            throw new IllegalArgumentException("Velocity must be positive");
        }
        this.C = f10;
        return this;
    }

    public b u(float f10) {
        super.i(f10);
        return this;
    }

    public b v(float f10) {
        super.j(f10);
        return this;
    }

    public b w(float f10) {
        super.n(f10);
        this.B = f10;
        return this;
    }
}
