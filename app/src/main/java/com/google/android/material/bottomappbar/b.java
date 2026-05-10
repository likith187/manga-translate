package com.google.android.material.bottomappbar;

import com.google.android.material.shape.g;
import com.google.android.material.shape.p;

/* JADX INFO: loaded from: classes.dex */
public class b extends g implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f9025a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f9026b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f9027c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f9028f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f9029h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f9030i = -1.0f;

    public b(float f10, float f11, float f12) {
        this.f9026b = f10;
        this.f9025a = f11;
        j(f12);
        this.f9029h = 0.0f;
    }

    @Override // com.google.android.material.shape.g
    public void b(float f10, float f11, float f12, p pVar) {
        float f13;
        float f14;
        float f15 = this.f9027c;
        if (f15 == 0.0f) {
            pVar.m(f10, 0.0f);
            return;
        }
        float f16 = ((this.f9026b * 2.0f) + f15) / 2.0f;
        float f17 = f12 * this.f9025a;
        float f18 = f11 + this.f9029h;
        float f19 = (this.f9028f * f12) + ((1.0f - f12) * f16);
        if (f19 / f16 >= 1.0f) {
            pVar.m(f10, 0.0f);
            return;
        }
        float f20 = this.f9030i;
        float f21 = f20 * f12;
        boolean z10 = f20 == -1.0f || Math.abs((f20 * 2.0f) - f15) < 0.1f;
        if (z10) {
            f13 = f19;
            f14 = 0.0f;
        } else {
            f14 = 1.75f;
            f13 = 0.0f;
        }
        float f22 = f16 + f17;
        float f23 = f13 + f17;
        float fSqrt = (float) Math.sqrt((f22 * f22) - (f23 * f23));
        float f24 = f18 - fSqrt;
        float f25 = f18 + fSqrt;
        float degrees = (float) Math.toDegrees(Math.atan(fSqrt / f23));
        float f26 = (90.0f - degrees) + f14;
        pVar.m(f24, 0.0f);
        float f27 = f17 * 2.0f;
        pVar.a(f24 - f17, 0.0f, f24 + f17, f27, 270.0f, degrees);
        if (z10) {
            pVar.a(f18 - f16, (-f16) - f13, f18 + f16, f16 - f13, 180.0f - f26, (f26 * 2.0f) - 180.0f);
        } else {
            float f28 = this.f9026b;
            float f29 = f21 * 2.0f;
            float f30 = f18 - f16;
            pVar.a(f30, -(f21 + f28), f30 + f28 + f29, f28 + f21, 180.0f - f26, ((f26 * 2.0f) - 180.0f) / 2.0f);
            float f31 = f18 + f16;
            float f32 = this.f9026b;
            pVar.m(f31 - ((f32 / 2.0f) + f21), f32 + f21);
            float f33 = this.f9026b;
            pVar.a(f31 - (f29 + f33), -(f21 + f33), f31, f33 + f21, 90.0f, f26 - 90.0f);
        }
        pVar.a(f25 - f17, 0.0f, f25 + f17, f27, 270.0f - degrees, degrees);
        pVar.m(f10, 0.0f);
    }

    float d() {
        return this.f9028f;
    }

    public float e() {
        return this.f9030i;
    }

    float f() {
        return this.f9026b;
    }

    float g() {
        return this.f9025a;
    }

    public float h() {
        return this.f9027c;
    }

    public float i() {
        return this.f9029h;
    }

    void j(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
        }
        this.f9028f = f10;
    }

    public void k(float f10) {
        this.f9030i = f10;
    }

    void l(float f10) {
        this.f9026b = f10;
    }

    void m(float f10) {
        this.f9025a = f10;
    }

    public void n(float f10) {
        this.f9027c = f10;
    }

    void o(float f10) {
        this.f9029h = f10;
    }
}
