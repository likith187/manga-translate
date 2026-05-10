package com.oplus.anim;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes2.dex */
public class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f11025a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f11026b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f11027c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f11028d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f11029e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bitmap f11030f;

    public g0(int i10, int i11, String str, String str2, String str3) {
        this.f11025a = i10;
        this.f11026b = i11;
        this.f11027c = str;
        this.f11028d = str2;
        this.f11029e = str3;
    }

    public Bitmap a() {
        return this.f11030f;
    }

    public String b() {
        return this.f11028d;
    }

    public int c() {
        return this.f11026b;
    }

    public String d() {
        return this.f11027c;
    }

    public int e() {
        return this.f11025a;
    }

    public void f(Bitmap bitmap) {
        this.f11030f = bitmap;
    }
}
