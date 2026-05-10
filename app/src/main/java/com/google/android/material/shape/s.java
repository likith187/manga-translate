package com.google.android.material.shape;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import y3.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class s {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    n f10148c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f10146a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f10147b = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    RectF f10149d = new RectF();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Path f10150e = new Path();

    public static s a(View view) {
        return Build.VERSION.SDK_INT >= 33 ? new u(view) : new t(view);
    }

    private boolean d() {
        RectF rectF = this.f10149d;
        return rectF.left <= rectF.right && rectF.top <= rectF.bottom;
    }

    private void k() {
        if (!d() || this.f10148c == null) {
            return;
        }
        o.k().d(this.f10148c, 1.0f, this.f10149d, this.f10150e);
    }

    abstract void b(View view);

    public boolean c() {
        return this.f10146a;
    }

    public void e(Canvas canvas, a.InterfaceC0243a interfaceC0243a) {
        if (!j() || this.f10150e.isEmpty()) {
            interfaceC0243a.a(canvas);
            return;
        }
        canvas.save();
        canvas.clipPath(this.f10150e);
        interfaceC0243a.a(canvas);
        canvas.restore();
    }

    public void f(View view, RectF rectF) {
        this.f10149d = rectF;
        k();
        b(view);
    }

    public void g(View view, n nVar) {
        this.f10148c = nVar;
        k();
        b(view);
    }

    public void h(View view, boolean z10) {
        if (z10 != this.f10146a) {
            this.f10146a = z10;
            b(view);
        }
    }

    public void i(View view, boolean z10) {
        this.f10147b = z10;
        b(view);
    }

    abstract boolean j();
}
