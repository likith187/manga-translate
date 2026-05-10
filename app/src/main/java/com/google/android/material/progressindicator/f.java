package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    com.google.android.material.progressindicator.a f9905a;

    protected static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f9906a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f9907b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f9908c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f9909d;

        protected a() {
        }
    }

    public f(com.google.android.material.progressindicator.a aVar) {
        this.f9905a = aVar;
    }

    abstract void a(Canvas canvas, Rect rect, float f10, boolean z10, boolean z11);

    abstract void b(Canvas canvas, Paint paint, int i10, int i11);

    abstract void c(Canvas canvas, Paint paint, a aVar, int i10);

    abstract void d(Canvas canvas, Paint paint, float f10, float f11, int i10, int i11, int i12);

    abstract int e();

    abstract int f();

    void g(Canvas canvas, Rect rect, float f10, boolean z10, boolean z11) {
        this.f9905a.e();
        a(canvas, rect, f10, z10, z11);
    }
}
