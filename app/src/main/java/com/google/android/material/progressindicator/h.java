package com.google.android.material.progressindicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.google.android.material.R$drawable;
import com.google.android.material.progressindicator.f;

/* JADX INFO: loaded from: classes.dex */
public final class h extends e {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private f f9912s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private g f9913t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Drawable f9914u;

    h(Context context, a aVar, f fVar, g gVar) {
        super(context, aVar);
        z(fVar);
        y(gVar);
    }

    static h t(Context context, CircularProgressIndicatorSpec circularProgressIndicatorSpec, b bVar) {
        h hVar = new h(context, circularProgressIndicatorSpec, bVar, new c(circularProgressIndicatorSpec));
        hVar.A(androidx.vectordrawable.graphics.drawable.g.b(context.getResources(), R$drawable.indeterminate_static, null));
        return hVar;
    }

    static h u(Context context, LinearProgressIndicatorSpec linearProgressIndicatorSpec, i iVar) {
        return new h(context, linearProgressIndicatorSpec, iVar, linearProgressIndicatorSpec.f9851h == 0 ? new j(linearProgressIndicatorSpec) : new k(context, linearProgressIndicatorSpec));
    }

    private boolean x() {
        h4.a aVar = this.f9891c;
        return aVar != null && aVar.a(this.f9889a.getContentResolver()) == 0.0f;
    }

    public void A(Drawable drawable) {
        this.f9914u = drawable;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable;
        Rect rect = new Rect();
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(rect)) {
            if (x() && (drawable = this.f9914u) != null) {
                drawable.setBounds(getBounds());
                v.a.n(this.f9914u, this.f9890b.f9857c[0]);
                this.f9914u.draw(canvas);
                return;
            }
            canvas.save();
            this.f9912s.g(canvas, getBounds(), h(), k(), j());
            int i10 = this.f9890b.f9861g;
            int alpha = getAlpha();
            if (i10 == 0) {
                this.f9912s.d(canvas, this.f9901p, 0.0f, 1.0f, this.f9890b.f9858d, alpha, 0);
            } else {
                f.a aVar = (f.a) this.f9913t.f9911b.get(0);
                f.a aVar2 = (f.a) this.f9913t.f9911b.get(r3.size() - 1);
                f fVar = this.f9912s;
                if (fVar instanceof i) {
                    fVar.d(canvas, this.f9901p, 0.0f, aVar.f9906a, this.f9890b.f9858d, alpha, i10);
                    this.f9912s.d(canvas, this.f9901p, aVar2.f9907b, 1.0f, this.f9890b.f9858d, alpha, i10);
                } else {
                    alpha = 0;
                    fVar.d(canvas, this.f9901p, aVar2.f9907b, 1.0f + aVar.f9906a, this.f9890b.f9858d, 0, i10);
                }
            }
            for (int i11 = 0; i11 < this.f9913t.f9911b.size(); i11++) {
                f.a aVar3 = (f.a) this.f9913t.f9911b.get(i11);
                this.f9912s.c(canvas, this.f9901p, aVar3, getAlpha());
                if (i11 > 0 && i10 > 0) {
                    this.f9912s.d(canvas, this.f9901p, ((f.a) this.f9913t.f9911b.get(i11 - 1)).f9907b, aVar3.f9906a, this.f9890b.f9858d, alpha, i10);
                }
            }
            canvas.restore();
        }
    }

    @Override // com.google.android.material.progressindicator.e, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f9912s.e();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f9912s.f();
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

    @Override // com.google.android.material.progressindicator.e
    public /* bridge */ /* synthetic */ boolean k() {
        return super.k();
    }

    @Override // com.google.android.material.progressindicator.e
    public /* bridge */ /* synthetic */ void m(androidx.vectordrawable.graphics.drawable.b bVar) {
        super.m(bVar);
    }

    @Override // com.google.android.material.progressindicator.e
    public /* bridge */ /* synthetic */ boolean q(boolean z10, boolean z11, boolean z12) {
        return super.q(z10, z11, z12);
    }

    @Override // com.google.android.material.progressindicator.e
    boolean r(boolean z10, boolean z11, boolean z12) {
        Drawable drawable;
        boolean zR = super.r(z10, z11, z12);
        if (x() && (drawable = this.f9914u) != null) {
            return drawable.setVisible(z10, z11);
        }
        if (!isRunning()) {
            this.f9913t.a();
        }
        if (z10 && z12) {
            this.f9913t.g();
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

    g v() {
        return this.f9913t;
    }

    f w() {
        return this.f9912s;
    }

    void y(g gVar) {
        this.f9913t = gVar;
        gVar.e(this);
    }

    void z(f fVar) {
        this.f9912s = fVar;
    }
}
