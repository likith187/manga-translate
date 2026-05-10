package defpackage;

import kotlin.jvm.internal.r;
import n8.q;
import n8.w;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f4171a;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f4185o;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Float f4188r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Float f4189s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Float f4190t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Float f4191u;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f4172b = 10.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f4173c = 1500.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f4174d = 200.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f4175e = 50.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f4176f = 0.2f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f4177g = 0.5f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f4178h = 0.75f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final float f4179i = 1.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final float f4180j = 62.5f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final float f4181k = 0.75f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final float f4184n = Float.MAX_VALUE;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f4186p = 0.2f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f4182l = (float) Math.sqrt(1500.0f);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f4183m = 0.5f;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f4187q = this.f4186p * 62.5f;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final c f4192v = new c();

    public b(float f10) {
        this.f4171a = f10;
    }

    public final float a() {
        return this.f4183m;
    }

    public final float b() {
        return this.f4171a;
    }

    public final void c() {
        if (this.f4185o) {
            return;
        }
        if (this.f4171a == this.f4184n) {
            throw new Error("Error: Final position of the spring must be set before the animation starts");
        }
        float f10 = this.f4183m;
        if (f10 > 1.0f) {
            float f11 = this.f4182l;
            float f12 = 1;
            this.f4188r = Float.valueOf(((-f10) * f11) + (f11 * ((float) Math.sqrt((f10 * f10) - f12))));
            float f13 = this.f4183m;
            float f14 = this.f4182l;
            this.f4189s = Float.valueOf(((-f13) * f14) - (f14 * ((float) Math.sqrt((f13 * f13) - f12))));
        } else if (f10 >= 0.0f && f10 < 1.0f) {
            this.f4190t = Float.valueOf(this.f4182l * ((float) Math.sqrt(1 - (f10 * f10))));
        }
        this.f4185o = true;
    }

    public final boolean d(float f10, float f11) {
        return Math.abs(f11) < this.f4187q && Math.abs(f10 - b()) < this.f4186p;
    }

    public final b e(float f10) {
        this.f4183m = 1 - f10;
        this.f4185o = false;
        return this;
    }

    public final b f(float f10) {
        this.f4171a = f10;
        return this;
    }

    public final b g(float f10) {
        this.f4182l = (float) Math.sqrt(Math.pow(6.283185307179586d / ((double) f10), 2.0d));
        this.f4191u = Float.valueOf(f10);
        this.f4185o = false;
        return this;
    }

    public final c h(float f10, float f11, float f12) {
        q qVarA;
        c();
        double d10 = ((double) f12) / 1000.0d;
        float f13 = f10 - this.f4171a;
        float f14 = this.f4183m;
        if (f14 > 1.0f) {
            Float f15 = this.f4189s;
            r.b(f15);
            float fFloatValue = (f15.floatValue() * f13) - f11;
            Float f16 = this.f4189s;
            r.b(f16);
            float fFloatValue2 = f16.floatValue();
            Float f17 = this.f4188r;
            r.b(f17);
            float fFloatValue3 = f13 - (fFloatValue / (fFloatValue2 - f17.floatValue()));
            Float f18 = this.f4189s;
            r.b(f18);
            float fFloatValue4 = (f18.floatValue() * f13) - f11;
            Float f19 = this.f4189s;
            r.b(f19);
            float fFloatValue5 = f19.floatValue();
            Float f20 = this.f4188r;
            r.b(f20);
            float fFloatValue6 = fFloatValue4 / (fFloatValue5 - f20.floatValue());
            Float f21 = this.f4189s;
            r.b(f21);
            double dExp = ((double) fFloatValue3) * Math.exp(((double) f21.floatValue()) * d10);
            Float f22 = this.f4188r;
            r.b(f22);
            Double dValueOf = Double.valueOf(dExp + (((double) fFloatValue6) * Math.exp(((double) f22.floatValue()) * d10)));
            Float f23 = this.f4189s;
            r.b(f23);
            double dFloatValue = fFloatValue3 * f23.floatValue();
            Float f24 = this.f4189s;
            r.b(f24);
            double dExp2 = dFloatValue * Math.exp(((double) f24.floatValue()) * d10);
            Float f25 = this.f4188r;
            r.b(f25);
            double dFloatValue2 = fFloatValue6 * f25.floatValue();
            Float f26 = this.f4188r;
            r.b(f26);
            qVarA = w.a(dValueOf, Double.valueOf(dExp2 + (dFloatValue2 * Math.exp(((double) f26.floatValue()) * d10))));
        } else if (f14 == 1.0f) {
            float f27 = this.f4182l;
            double d11 = f13;
            double d12 = f11 + (f27 * f13);
            double d13 = d11 + (d12 * d10);
            Double dValueOf2 = Double.valueOf(Math.exp(((double) (-f27)) * d10) * d13);
            double dExp3 = d13 * Math.exp(((double) (-this.f4182l)) * d10);
            float f28 = this.f4182l;
            qVarA = w.a(dValueOf2, Double.valueOf((dExp3 * ((double) (-f28))) + (d12 * Math.exp(((double) (-f28)) * d10))));
        } else {
            Float f29 = this.f4190t;
            r.b(f29);
            float fFloatValue7 = 1 / f29.floatValue();
            float f30 = this.f4183m;
            float f31 = this.f4182l;
            float f32 = fFloatValue7 * ((f30 * f31 * f13) + f11);
            double dExp4 = Math.exp(((double) ((-f30) * f31)) * d10);
            Float f33 = this.f4190t;
            r.b(f33);
            double dCos = ((double) f13) * Math.cos(((double) f33.floatValue()) * d10);
            Float f34 = this.f4190t;
            r.b(f34);
            Double dValueOf3 = Double.valueOf(dExp4 * (dCos + (((double) f32) * Math.sin(((double) f34.floatValue()) * d10))));
            double dExp5 = Math.exp(((double) ((-this.f4183m) * this.f4182l)) * d10);
            double d14 = (-this.f4183m) * this.f4182l * f13;
            Float f35 = this.f4190t;
            r.b(f35);
            double dCos2 = d14 * Math.cos(((double) f35.floatValue()) * d10);
            double d15 = this.f4183m * this.f4182l * f32;
            Float f36 = this.f4190t;
            r.b(f36);
            double dSin = dCos2 - (d15 * Math.sin(((double) f36.floatValue()) * d10));
            Float f37 = this.f4190t;
            r.b(f37);
            double dFloatValue3 = f37.floatValue() * f32;
            Float f38 = this.f4190t;
            r.b(f38);
            double dCos3 = dSin + (dFloatValue3 * Math.cos(((double) f38.floatValue()) * d10));
            Float f39 = this.f4190t;
            r.b(f39);
            double dFloatValue4 = f39.floatValue() * f13;
            Float f40 = this.f4190t;
            r.b(f40);
            qVarA = w.a(dValueOf3, Double.valueOf(dExp5 * (dCos3 - (dFloatValue4 * Math.sin(((double) f40.floatValue()) * d10)))));
        }
        double dDoubleValue = ((Number) qVarA.component1()).doubleValue();
        double dDoubleValue2 = ((Number) qVarA.component2()).doubleValue();
        this.f4192v.e((float) (((double) this.f4171a) + dDoubleValue));
        float f41 = (float) dDoubleValue2;
        this.f4192v.f(f41);
        this.f4192v.d(d(((float) dDoubleValue) + this.f4171a, f41));
        if (this.f4192v.a()) {
            this.f4192v.e(this.f4171a);
            this.f4192v.f(0.0f);
        }
        return this.f4192v;
    }
}
