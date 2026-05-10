package com.google.android.material.shape;

/* JADX INFO: loaded from: classes.dex */
public class f extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    float f10044a = -1.0f;

    @Override // com.google.android.material.shape.e
    public void a(p pVar, float f10, float f11, float f12) {
        pVar.o(0.0f, f12 * f11, 180.0f, 180.0f - f10);
        double d10 = f12;
        double d11 = f11;
        pVar.m((float) (Math.sin(Math.toRadians(f10)) * d10 * d11), (float) (Math.sin(Math.toRadians(90.0f - f10)) * d10 * d11));
    }
}
