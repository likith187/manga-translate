package com.google.android.material.shape;

/* JADX INFO: loaded from: classes.dex */
public final class k extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f10071a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f10072b;

    public k(g gVar, float f10) {
        this.f10071a = gVar;
        this.f10072b = f10;
    }

    @Override // com.google.android.material.shape.g
    boolean a() {
        return this.f10071a.a();
    }

    @Override // com.google.android.material.shape.g
    public void b(float f10, float f11, float f12, p pVar) {
        this.f10071a.b(f10, f11 - this.f10072b, f12, pVar);
    }
}
