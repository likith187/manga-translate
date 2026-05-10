package com.google.android.material.shape;

import android.graphics.Outline;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewOutlineProvider;

/* JADX INFO: loaded from: classes.dex */
class t extends s {

    /* JADX INFO: renamed from: f */
    private boolean f10151f = false;

    /* JADX INFO: renamed from: g */
    private float f10152g = 0.0f;

    class a extends ViewOutlineProvider {
        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            t tVar = t.this;
            if (tVar.f10148c == null || tVar.f10149d.isEmpty()) {
                return;
            }
            t tVar2 = t.this;
            RectF rectF = tVar2.f10149d;
            outline.setRoundRect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom, tVar2.f10152g);
        }
    }

    t(View view) {
        n(view);
    }

    private float m() {
        RectF rectF;
        n nVar = this.f10148c;
        if (nVar == null || (rectF = this.f10149d) == null) {
            return 0.0f;
        }
        return nVar.f10081f.a(rectF);
    }

    private void n(View view) {
        view.setOutlineProvider(new a());
    }

    private boolean o() {
        n nVar;
        if (this.f10149d.isEmpty() || (nVar = this.f10148c) == null) {
            return false;
        }
        return nVar.u(this.f10149d);
    }

    private boolean p() {
        n nVar;
        if (!this.f10149d.isEmpty() && (nVar = this.f10148c) != null && this.f10147b && !nVar.u(this.f10149d) && q(this.f10148c)) {
            float fA = this.f10148c.r().a(this.f10149d);
            float fA2 = this.f10148c.t().a(this.f10149d);
            float fA3 = this.f10148c.j().a(this.f10149d);
            float fA4 = this.f10148c.l().a(this.f10149d);
            if (fA == 0.0f && fA3 == 0.0f && fA2 == fA4) {
                RectF rectF = this.f10149d;
                rectF.set(rectF.left - fA2, rectF.top, rectF.right, rectF.bottom);
                this.f10152g = fA2;
                return true;
            }
            if (fA == 0.0f && fA2 == 0.0f && fA3 == fA4) {
                RectF rectF2 = this.f10149d;
                rectF2.set(rectF2.left, rectF2.top - fA3, rectF2.right, rectF2.bottom);
                this.f10152g = fA3;
                return true;
            }
            if (fA2 == 0.0f && fA4 == 0.0f && fA == fA3) {
                RectF rectF3 = this.f10149d;
                rectF3.set(rectF3.left, rectF3.top, rectF3.right + fA, rectF3.bottom);
                this.f10152g = fA;
                return true;
            }
            if (fA3 == 0.0f && fA4 == 0.0f && fA == fA2) {
                RectF rectF4 = this.f10149d;
                rectF4.set(rectF4.left, rectF4.top, rectF4.right, rectF4.bottom + fA);
                this.f10152g = fA;
                return true;
            }
        }
        return false;
    }

    private static boolean q(n nVar) {
        return (nVar.q() instanceof m) && (nVar.s() instanceof m) && (nVar.i() instanceof m) && (nVar.k() instanceof m);
    }

    @Override // com.google.android.material.shape.s
    void b(View view) {
        this.f10152g = m();
        this.f10151f = o() || p();
        view.setClipToOutline(!j());
        if (j()) {
            view.invalidate();
        } else {
            view.invalidateOutline();
        }
    }

    @Override // com.google.android.material.shape.s
    boolean j() {
        return !this.f10151f || this.f10146a;
    }
}
