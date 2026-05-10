package com.airbnb.lottie;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
public class j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f4605a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4607c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4608d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f4609e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bitmap f4610f;

    public j0(int i10, int i11, String str, String str2, String str3) {
        this.f4605a = i10;
        this.f4606b = i11;
        this.f4607c = str;
        this.f4608d = str2;
        this.f4609e = str3;
    }

    public j0 a(float f10) {
        j0 j0Var = new j0((int) (this.f4605a * f10), (int) (this.f4606b * f10), this.f4607c, this.f4608d, this.f4609e);
        Bitmap bitmap = this.f4610f;
        if (bitmap != null) {
            j0Var.g(Bitmap.createScaledBitmap(bitmap, j0Var.f4605a, j0Var.f4606b, true));
        }
        return j0Var;
    }

    public Bitmap b() {
        return this.f4610f;
    }

    public String c() {
        return this.f4608d;
    }

    public int d() {
        return this.f4606b;
    }

    public String e() {
        return this.f4607c;
    }

    public int f() {
        return this.f4605a;
    }

    public void g(Bitmap bitmap) {
        this.f4610f = bitmap;
    }
}
