package com.google.android.material.shape;

/* JADX INFO: loaded from: classes.dex */
public final class h extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f10045a;

    public h(float f10) {
        this.f10045a = f10 - 0.001f;
    }

    @Override // com.google.android.material.shape.g
    boolean a() {
        return true;
    }

    @Override // com.google.android.material.shape.g
    public void b(float f10, float f11, float f12, p pVar) {
        float fSqrt = (float) ((((double) this.f10045a) * Math.sqrt(2.0d)) / 2.0d);
        float fSqrt2 = (float) Math.sqrt(Math.pow(this.f10045a, 2.0d) - Math.pow(fSqrt, 2.0d));
        pVar.n(f11 - fSqrt, ((float) (-((((double) this.f10045a) * Math.sqrt(2.0d)) - ((double) this.f10045a)))) + fSqrt2);
        pVar.m(f11, (float) (-((((double) this.f10045a) * Math.sqrt(2.0d)) - ((double) this.f10045a))));
        pVar.m(f11 + fSqrt, ((float) (-((((double) this.f10045a) * Math.sqrt(2.0d)) - ((double) this.f10045a)))) + fSqrt2);
    }
}
