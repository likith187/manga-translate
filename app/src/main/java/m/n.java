package m;

/* JADX INFO: loaded from: classes.dex */
public class n implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f13774a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f13775b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f13776c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f13777d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f13778e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f13779f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f13780g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f13781h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f13782i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f13783j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f13784k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f13786m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f13787n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f13788o;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f13785l = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f13789p = false;

    private float c(float f10) {
        this.f13789p = false;
        float f11 = this.f13777d;
        if (f10 <= f11) {
            float f12 = this.f13774a;
            return (f12 * f10) + ((((this.f13775b - f12) * f10) * f10) / (f11 * 2.0f));
        }
        int i10 = this.f13783j;
        if (i10 == 1) {
            return this.f13780g;
        }
        float f13 = f10 - f11;
        float f14 = this.f13778e;
        if (f13 < f14) {
            float f15 = this.f13780g;
            float f16 = this.f13775b;
            return f15 + (f16 * f13) + ((((this.f13776c - f16) * f13) * f13) / (f14 * 2.0f));
        }
        if (i10 == 2) {
            return this.f13781h;
        }
        float f17 = f13 - f14;
        float f18 = this.f13779f;
        if (f17 > f18) {
            this.f13789p = true;
            return this.f13782i;
        }
        float f19 = this.f13781h;
        float f20 = this.f13776c;
        return (f19 + (f20 * f17)) - (((f20 * f17) * f17) / (f18 * 2.0f));
    }

    private void f(float f10, float f11, float f12, float f13, float f14) {
        this.f13789p = false;
        this.f13782i = f11;
        if (f10 == 0.0f) {
            f10 = 1.0E-4f;
        }
        float f15 = f10 / f12;
        float f16 = (f15 * f10) / 2.0f;
        if (f10 < 0.0f) {
            float fSqrt = (float) Math.sqrt((f11 - ((((-f10) / f12) * f10) / 2.0f)) * f12);
            if (fSqrt < f13) {
                this.f13784k = "backward accelerate, decelerate";
                this.f13783j = 2;
                this.f13774a = f10;
                this.f13775b = fSqrt;
                this.f13776c = 0.0f;
                float f17 = (fSqrt - f10) / f12;
                this.f13777d = f17;
                this.f13778e = fSqrt / f12;
                this.f13780g = ((f10 + fSqrt) * f17) / 2.0f;
                this.f13781h = f11;
                this.f13782i = f11;
                return;
            }
            this.f13784k = "backward accelerate cruse decelerate";
            this.f13783j = 3;
            this.f13774a = f10;
            this.f13775b = f13;
            this.f13776c = f13;
            float f18 = (f13 - f10) / f12;
            this.f13777d = f18;
            float f19 = f13 / f12;
            this.f13779f = f19;
            float f20 = ((f10 + f13) * f18) / 2.0f;
            float f21 = (f19 * f13) / 2.0f;
            this.f13778e = ((f11 - f20) - f21) / f13;
            this.f13780g = f20;
            this.f13781h = f11 - f21;
            this.f13782i = f11;
            return;
        }
        if (f16 >= f11) {
            this.f13784k = "hard stop";
            this.f13783j = 1;
            this.f13774a = f10;
            this.f13775b = 0.0f;
            this.f13780g = f11;
            this.f13777d = (2.0f * f11) / f10;
            return;
        }
        float f22 = f11 - f16;
        float f23 = f22 / f10;
        if (f23 + f15 < f14) {
            this.f13784k = "cruse decelerate";
            this.f13783j = 2;
            this.f13774a = f10;
            this.f13775b = f10;
            this.f13776c = 0.0f;
            this.f13780g = f22;
            this.f13781h = f11;
            this.f13777d = f23;
            this.f13778e = f15;
            return;
        }
        float fSqrt2 = (float) Math.sqrt((f12 * f11) + ((f10 * f10) / 2.0f));
        float f24 = (fSqrt2 - f10) / f12;
        this.f13777d = f24;
        float f25 = fSqrt2 / f12;
        this.f13778e = f25;
        if (fSqrt2 < f13) {
            this.f13784k = "accelerate decelerate";
            this.f13783j = 2;
            this.f13774a = f10;
            this.f13775b = fSqrt2;
            this.f13776c = 0.0f;
            this.f13777d = f24;
            this.f13778e = f25;
            this.f13780g = ((f10 + fSqrt2) * f24) / 2.0f;
            this.f13781h = f11;
            return;
        }
        this.f13784k = "accelerate cruse decelerate";
        this.f13783j = 3;
        this.f13774a = f10;
        this.f13775b = f13;
        this.f13776c = f13;
        float f26 = (f13 - f10) / f12;
        this.f13777d = f26;
        float f27 = f13 / f12;
        this.f13779f = f27;
        float f28 = ((f10 + f13) * f26) / 2.0f;
        float f29 = (f27 * f13) / 2.0f;
        this.f13778e = ((f11 - f28) - f29) / f13;
        this.f13780g = f28;
        this.f13781h = f11 - f29;
        this.f13782i = f11;
    }

    @Override // m.m
    public boolean a() {
        return b() < 1.0E-5f && Math.abs(this.f13782i - this.f13787n) < 1.0E-5f;
    }

    @Override // m.m
    public float b() {
        return this.f13785l ? -e(this.f13788o) : e(this.f13788o);
    }

    public void d(float f10, float f11, float f12, float f13, float f14, float f15) {
        this.f13789p = false;
        this.f13786m = f10;
        boolean z10 = f10 > f11;
        this.f13785l = z10;
        if (z10) {
            f(-f12, f10 - f11, f14, f15, f13);
        } else {
            f(f12, f11 - f10, f14, f15, f13);
        }
    }

    public float e(float f10) {
        float f11;
        float f12;
        float f13 = this.f13777d;
        if (f10 <= f13) {
            f11 = this.f13774a;
            f12 = this.f13775b;
        } else {
            int i10 = this.f13783j;
            if (i10 == 1) {
                return 0.0f;
            }
            f10 -= f13;
            f13 = this.f13778e;
            if (f10 >= f13) {
                if (i10 == 2) {
                    return 0.0f;
                }
                float f14 = f10 - f13;
                float f15 = this.f13779f;
                if (f14 >= f15) {
                    return 0.0f;
                }
                float f16 = this.f13776c;
                return f16 - ((f14 * f16) / f15);
            }
            f11 = this.f13775b;
            f12 = this.f13776c;
        }
        return f11 + (((f12 - f11) * f10) / f13);
    }

    @Override // m.m
    public float getInterpolation(float f10) {
        float fC = c(f10);
        this.f13787n = fC;
        this.f13788o = f10;
        boolean z10 = this.f13785l;
        float f11 = this.f13786m;
        return z10 ? f11 - fC : f11 + fC;
    }
}
