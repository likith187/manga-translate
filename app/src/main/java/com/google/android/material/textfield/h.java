package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.google.android.material.shape.i;

/* JADX INFO: loaded from: classes.dex */
abstract class h extends com.google.android.material.shape.i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b f10441a;

    private static class c extends h {
        c(b bVar) {
            super(bVar);
        }

        @Override // com.google.android.material.shape.i
        protected void drawStrokeShape(Canvas canvas) {
            if (this.f10441a.f10442w.isEmpty()) {
                super.drawStrokeShape(canvas);
                return;
            }
            canvas.save();
            canvas.clipOutRect(this.f10441a.f10442w);
            super.drawStrokeShape(canvas);
            canvas.restore();
        }
    }

    static h v(com.google.android.material.shape.n nVar) {
        if (nVar == null) {
            nVar = new com.google.android.material.shape.n();
        }
        return w(new b(nVar, new RectF()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static h w(b bVar) {
        return new c(bVar);
    }

    void A(RectF rectF) {
        z(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    @Override // com.google.android.material.shape.i, android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.f10441a = new b(this.f10441a);
        return this;
    }

    boolean x() {
        return !this.f10441a.f10442w.isEmpty();
    }

    void y() {
        z(0.0f, 0.0f, 0.0f, 0.0f);
    }

    void z(float f10, float f11, float f12, float f13) {
        if (f10 == this.f10441a.f10442w.left && f11 == this.f10441a.f10442w.top && f12 == this.f10441a.f10442w.right && f13 == this.f10441a.f10442w.bottom) {
            return;
        }
        this.f10441a.f10442w.set(f10, f11, f12, f13);
        invalidateSelf();
    }

    private static final class b extends i.c {

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private final RectF f10442w;

        @Override // com.google.android.material.shape.i.c, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            h hVarW = h.w(this);
            hVarW.invalidateSelf();
            return hVarW;
        }

        private b(com.google.android.material.shape.n nVar, RectF rectF) {
            super(nVar, null);
            this.f10442w = rectF;
        }

        private b(b bVar) {
            super(bVar);
            this.f10442w = bVar.f10442w;
        }
    }

    private h(b bVar) {
        super(bVar);
        this.f10441a = bVar;
    }
}
