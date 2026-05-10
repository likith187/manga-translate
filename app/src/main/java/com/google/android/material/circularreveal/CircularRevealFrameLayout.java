package com.google.android.material.circularreveal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.material.circularreveal.c;

/* JADX INFO: loaded from: classes.dex */
public class CircularRevealFrameLayout extends FrameLayout implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f9348a;

    public CircularRevealFrameLayout(Context context) {
        this(context, null);
    }

    @Override // com.google.android.material.circularreveal.c
    public void a() {
        this.f9348a.b();
    }

    @Override // com.google.android.material.circularreveal.b.a
    public void b(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // com.google.android.material.circularreveal.c
    public void c() {
        this.f9348a.a();
    }

    @Override // com.google.android.material.circularreveal.b.a
    public boolean d() {
        return super.isOpaque();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        b bVar = this.f9348a;
        if (bVar != null) {
            bVar.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    public Drawable getCircularRevealOverlayDrawable() {
        return this.f9348a.e();
    }

    @Override // com.google.android.material.circularreveal.c
    public int getCircularRevealScrimColor() {
        return this.f9348a.f();
    }

    @Override // com.google.android.material.circularreveal.c
    public c.e getRevealInfo() {
        return this.f9348a.h();
    }

    @Override // android.view.View
    public boolean isOpaque() {
        b bVar = this.f9348a;
        return bVar != null ? bVar.j() : super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.c
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f9348a.k(drawable);
    }

    @Override // com.google.android.material.circularreveal.c
    public void setCircularRevealScrimColor(int i10) {
        this.f9348a.l(i10);
    }

    @Override // com.google.android.material.circularreveal.c
    public void setRevealInfo(c.e eVar) {
        this.f9348a.m(eVar);
    }

    public CircularRevealFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9348a = new b(this);
    }
}
