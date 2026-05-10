package com.google.android.material.circularreveal.coordinatorlayout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.circularreveal.b;
import com.google.android.material.circularreveal.c;

/* JADX INFO: loaded from: classes.dex */
public class CircularRevealCoordinatorLayout extends CoordinatorLayout implements c {
    private final b C;

    public CircularRevealCoordinatorLayout(Context context) {
        this(context, null);
    }

    @Override // com.google.android.material.circularreveal.c
    public void a() {
        this.C.b();
    }

    @Override // com.google.android.material.circularreveal.b.a
    public void b(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // com.google.android.material.circularreveal.c
    public void c() {
        this.C.a();
    }

    @Override // com.google.android.material.circularreveal.b.a
    public boolean d() {
        return super.isOpaque();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        b bVar = this.C;
        if (bVar != null) {
            bVar.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    public Drawable getCircularRevealOverlayDrawable() {
        return this.C.e();
    }

    @Override // com.google.android.material.circularreveal.c
    public int getCircularRevealScrimColor() {
        return this.C.f();
    }

    @Override // com.google.android.material.circularreveal.c
    public c.e getRevealInfo() {
        return this.C.h();
    }

    @Override // android.view.View
    public boolean isOpaque() {
        b bVar = this.C;
        return bVar != null ? bVar.j() : super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.c
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.C.k(drawable);
    }

    @Override // com.google.android.material.circularreveal.c
    public void setCircularRevealScrimColor(int i10) {
        this.C.l(i10);
    }

    @Override // com.google.android.material.circularreveal.c
    public void setRevealInfo(c.e eVar) {
        this.C.m(eVar);
    }

    public CircularRevealCoordinatorLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.C = new b(this);
    }
}
