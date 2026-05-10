package com.google.android.material.circularreveal.cardview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.circularreveal.b;
import com.google.android.material.circularreveal.c;

/* JADX INFO: loaded from: classes.dex */
public class CircularRevealCardView extends MaterialCardView implements c {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final b f9370u;

    public CircularRevealCardView(Context context) {
        this(context, null);
    }

    @Override // com.google.android.material.circularreveal.c
    public void a() {
        this.f9370u.b();
    }

    @Override // com.google.android.material.circularreveal.b.a
    public void b(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // com.google.android.material.circularreveal.c
    public void c() {
        this.f9370u.a();
    }

    @Override // com.google.android.material.circularreveal.b.a
    public boolean d() {
        return super.isOpaque();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        b bVar = this.f9370u;
        if (bVar != null) {
            bVar.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    public Drawable getCircularRevealOverlayDrawable() {
        return this.f9370u.e();
    }

    @Override // com.google.android.material.circularreveal.c
    public int getCircularRevealScrimColor() {
        return this.f9370u.f();
    }

    @Override // com.google.android.material.circularreveal.c
    public c.e getRevealInfo() {
        return this.f9370u.h();
    }

    @Override // android.view.View
    public boolean isOpaque() {
        b bVar = this.f9370u;
        return bVar != null ? bVar.j() : super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.c
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f9370u.k(drawable);
    }

    @Override // com.google.android.material.circularreveal.c
    public void setCircularRevealScrimColor(int i10) {
        this.f9370u.l(i10);
    }

    @Override // com.google.android.material.circularreveal.c
    public void setRevealInfo(c.e eVar) {
        this.f9370u.m(eVar);
    }

    public CircularRevealCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9370u = new b(this);
    }
}
