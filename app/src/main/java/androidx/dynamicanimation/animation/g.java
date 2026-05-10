package androidx.dynamicanimation.animation;

import androidx.dynamicanimation.animation.c;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    double f2320a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    double f2321b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2322c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double f2323d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private double f2324e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private double f2325f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private double f2326g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private double f2327h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private double f2328i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final c.p f2329j;

    public g() {
        this.f2320a = Math.sqrt(1500.0d);
        this.f2321b = 0.5d;
        this.f2322c = false;
        this.f2328i = Double.MAX_VALUE;
        this.f2329j = new c.p();
    }

    private void b() {
        if (this.f2322c) {
            return;
        }
        if (this.f2328i == Double.MAX_VALUE) {
            throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
        }
        double d10 = this.f2321b;
        if (d10 > 1.0d) {
            double d11 = this.f2320a;
            this.f2325f = ((-d10) * d11) + (d11 * Math.sqrt((d10 * d10) - 1.0d));
            double d12 = this.f2321b;
            double d13 = this.f2320a;
            this.f2326g = ((-d12) * d13) - (d13 * Math.sqrt((d12 * d12) - 1.0d));
        } else if (d10 >= 0.0d && d10 < 1.0d) {
            this.f2327h = this.f2320a * Math.sqrt(1.0d - (d10 * d10));
        }
        this.f2322c = true;
    }

    public float a() {
        return (float) this.f2328i;
    }

    public boolean c(float f10, float f11) {
        return ((double) Math.abs(f11)) < this.f2324e && ((double) Math.abs(f10 - a())) < this.f2323d;
    }

    public g d(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("Damping ratio must be non-negative");
        }
        this.f2321b = f10;
        this.f2322c = false;
        return this;
    }

    public g e(float f10) {
        this.f2328i = f10;
        return this;
    }

    public g f(float f10) {
        if (f10 <= 0.0f) {
            throw new IllegalArgumentException("Spring stiffness constant must be positive.");
        }
        this.f2320a = Math.sqrt(f10);
        this.f2322c = false;
        return this;
    }

    void g(double d10) {
        double dAbs = Math.abs(d10);
        this.f2323d = dAbs;
        this.f2324e = dAbs * 62.5d;
    }

    c.p h(double d10, double d11, long j10) {
        double dCos;
        double dPow;
        b();
        double d12 = j10 / 1000.0d;
        double d13 = d10 - this.f2328i;
        double d14 = this.f2321b;
        if (d14 > 1.0d) {
            double d15 = this.f2326g;
            double d16 = this.f2325f;
            double d17 = d13 - (((d15 * d13) - d11) / (d15 - d16));
            double d18 = ((d13 * d15) - d11) / (d15 - d16);
            dPow = (Math.pow(2.718281828459045d, d15 * d12) * d17) + (Math.pow(2.718281828459045d, this.f2325f * d12) * d18);
            double d19 = this.f2326g;
            double dPow2 = d17 * d19 * Math.pow(2.718281828459045d, d19 * d12);
            double d20 = this.f2325f;
            dCos = dPow2 + (d18 * d20 * Math.pow(2.718281828459045d, d20 * d12));
        } else if (d14 == 1.0d) {
            double d21 = this.f2320a;
            double d22 = d11 + (d21 * d13);
            double d23 = d13 + (d22 * d12);
            dPow = Math.pow(2.718281828459045d, (-d21) * d12) * d23;
            double dPow3 = d23 * Math.pow(2.718281828459045d, (-this.f2320a) * d12);
            double d24 = this.f2320a;
            dCos = (d22 * Math.pow(2.718281828459045d, (-d24) * d12)) + (dPow3 * (-d24));
        } else {
            double d25 = 1.0d / this.f2327h;
            double d26 = this.f2320a;
            double d27 = d25 * ((d14 * d26 * d13) + d11);
            double dPow4 = Math.pow(2.718281828459045d, (-d14) * d26 * d12) * ((Math.cos(this.f2327h * d12) * d13) + (Math.sin(this.f2327h * d12) * d27));
            double d28 = this.f2320a;
            double d29 = this.f2321b;
            double d30 = (-d28) * dPow4 * d29;
            double dPow5 = Math.pow(2.718281828459045d, (-d29) * d28 * d12);
            double d31 = this.f2327h;
            double dSin = (-d31) * d13 * Math.sin(d31 * d12);
            double d32 = this.f2327h;
            dCos = d30 + (dPow5 * (dSin + (d27 * d32 * Math.cos(d32 * d12))));
            dPow = dPow4;
        }
        c.p pVar = this.f2329j;
        pVar.f2316a = (float) (dPow + this.f2328i);
        pVar.f2317b = (float) dCos;
        return pVar;
    }

    public g(float f10) {
        this.f2320a = Math.sqrt(1500.0d);
        this.f2321b = 0.5d;
        this.f2322c = false;
        this.f2328i = Double.MAX_VALUE;
        this.f2329j = new c.p();
        this.f2328i = f10;
    }
}
