package com.google.android.material.progressindicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import com.google.android.material.progressindicator.f;

/* JADX INFO: loaded from: classes.dex */
public final class d extends e {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final androidx.dynamicanimation.animation.d f9882x = new a("indicatorLevel");

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private f f9883s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final androidx.dynamicanimation.animation.g f9884t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final androidx.dynamicanimation.animation.f f9885u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final f.a f9886v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f9887w;

    class a extends androidx.dynamicanimation.animation.d {
        a(String str) {
            super(str);
        }

        @Override // androidx.dynamicanimation.animation.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(d dVar) {
            return dVar.y() * 10000.0f;
        }

        @Override // androidx.dynamicanimation.animation.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(d dVar, float f10) {
            dVar.A(f10 / 10000.0f);
        }
    }

    d(Context context, com.google.android.material.progressindicator.a aVar, f fVar) {
        super(context, aVar);
        this.f9887w = false;
        z(fVar);
        this.f9886v = new f.a();
        androidx.dynamicanimation.animation.g gVar = new androidx.dynamicanimation.animation.g();
        this.f9884t = gVar;
        gVar.d(1.0f);
        gVar.f(50.0f);
        androidx.dynamicanimation.animation.f fVar2 = new androidx.dynamicanimation.animation.f(this, f9882x);
        this.f9885u = fVar2;
        fVar2.x(gVar);
        n(1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(float f10) {
        this.f9886v.f9907b = f10;
        invalidateSelf();
    }

    static d v(Context context, CircularProgressIndicatorSpec circularProgressIndicatorSpec, b bVar) {
        return new d(context, circularProgressIndicatorSpec, bVar);
    }

    static d w(Context context, LinearProgressIndicatorSpec linearProgressIndicatorSpec, i iVar) {
        return new d(context, linearProgressIndicatorSpec, iVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float y() {
        return this.f9886v.f9907b;
    }

    void B(float f10) {
        setLevel((int) (f10 * 10000.0f));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect rect = new Rect();
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(rect)) {
            canvas.save();
            this.f9883s.g(canvas, getBounds(), h(), k(), j());
            this.f9901p.setStyle(Paint.Style.FILL);
            this.f9901p.setAntiAlias(true);
            f.a aVar = this.f9886v;
            com.google.android.material.progressindicator.a aVar2 = this.f9890b;
            aVar.f9908c = aVar2.f9857c[0];
            int iA = aVar2.f9861g;
            if (iA > 0) {
                if (!(this.f9883s instanceof i)) {
                    iA = (int) ((iA * x.a.a(y(), 0.0f, 0.01f)) / 0.01f);
                }
                this.f9883s.d(canvas, this.f9901p, y(), 1.0f, this.f9890b.f9858d, getAlpha(), iA);
            } else {
                this.f9883s.d(canvas, this.f9901p, 0.0f, 1.0f, aVar2.f9858d, getAlpha(), 0);
            }
            this.f9883s.c(canvas, this.f9901p, this.f9886v, getAlpha());
            this.f9883s.b(canvas, this.f9901p, this.f9890b.f9857c[0], getAlpha());
            canvas.restore();
        }
    }

    @Override // com.google.android.material.progressindicator.e, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f9883s.e();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f9883s.f();
    }

    @Override // com.google.android.material.progressindicator.e, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // com.google.android.material.progressindicator.e
    public /* bridge */ /* synthetic */ boolean i() {
        return super.i();
    }

    @Override // com.google.android.material.progressindicator.e, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ boolean isRunning() {
        return super.isRunning();
    }

    @Override // com.google.android.material.progressindicator.e
    public /* bridge */ /* synthetic */ boolean j() {
        return super.j();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f9885u.y();
        A(getLevel() / 10000.0f);
    }

    @Override // com.google.android.material.progressindicator.e
    public /* bridge */ /* synthetic */ boolean k() {
        return super.k();
    }

    @Override // com.google.android.material.progressindicator.e
    public /* bridge */ /* synthetic */ void m(androidx.vectordrawable.graphics.drawable.b bVar) {
        super.m(bVar);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i10) {
        if (this.f9887w) {
            this.f9885u.y();
            A(i10 / 10000.0f);
            return true;
        }
        this.f9885u.m(y() * 10000.0f);
        this.f9885u.s(i10);
        return true;
    }

    @Override // com.google.android.material.progressindicator.e
    public /* bridge */ /* synthetic */ boolean q(boolean z10, boolean z11, boolean z12) {
        return super.q(z10, z11, z12);
    }

    @Override // com.google.android.material.progressindicator.e
    boolean r(boolean z10, boolean z11, boolean z12) {
        boolean zR = super.r(z10, z11, z12);
        float fA = this.f9891c.a(this.f9889a.getContentResolver());
        if (fA == 0.0f) {
            this.f9887w = true;
        } else {
            this.f9887w = false;
            this.f9884t.f(50.0f / fA);
        }
        return zR;
    }

    @Override // com.google.android.material.progressindicator.e
    public /* bridge */ /* synthetic */ boolean s(androidx.vectordrawable.graphics.drawable.b bVar) {
        return super.s(bVar);
    }

    @Override // com.google.android.material.progressindicator.e, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(int i10) {
        super.setAlpha(i10);
    }

    @Override // com.google.android.material.progressindicator.e, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override // com.google.android.material.progressindicator.e, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setVisible(boolean z10, boolean z11) {
        return super.setVisible(z10, z11);
    }

    @Override // com.google.android.material.progressindicator.e, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ void start() {
        super.start();
    }

    @Override // com.google.android.material.progressindicator.e, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ void stop() {
        super.stop();
    }

    f x() {
        return this.f9883s;
    }

    void z(f fVar) {
        this.f9883s = fVar;
    }
}
