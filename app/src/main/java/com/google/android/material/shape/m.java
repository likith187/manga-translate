package com.google.android.material.shape;

/* JADX INFO: loaded from: classes.dex */
public class m extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    float f10074a = -1.0f;

    @Override // com.google.android.material.shape.e
    public void a(p pVar, float f10, float f11, float f12) {
        pVar.o(0.0f, f12 * f11, 180.0f, 180.0f - f10);
        float f13 = f12 * 2.0f * f11;
        pVar.a(0.0f, 0.0f, f13, f13, 180.0f, f10);
    }
}
