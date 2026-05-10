package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class a implements c {
    a() {
    }

    private d o(b bVar) {
        return (d) bVar.getCardBackground();
    }

    @Override // androidx.cardview.widget.c
    public float a(b bVar) {
        return o(bVar).c();
    }

    @Override // androidx.cardview.widget.c
    public ColorStateList b(b bVar) {
        return o(bVar).b();
    }

    @Override // androidx.cardview.widget.c
    public void c(b bVar, Context context, ColorStateList colorStateList, float f10, float f11, float f12) {
        bVar.setCardBackground(new d(colorStateList, f10));
        View cardView = bVar.getCardView();
        cardView.setClipToOutline(true);
        cardView.setElevation(f11);
        n(bVar, f12);
    }

    @Override // androidx.cardview.widget.c
    public void d(b bVar, float f10) {
        o(bVar).h(f10);
    }

    @Override // androidx.cardview.widget.c
    public float e(b bVar) {
        return bVar.getCardView().getElevation();
    }

    @Override // androidx.cardview.widget.c
    public void f(b bVar) {
        if (!bVar.getUseCompatPadding()) {
            bVar.setShadowPadding(0, 0, 0, 0);
            return;
        }
        float fA = a(bVar);
        float fG = g(bVar);
        int iCeil = (int) Math.ceil(e.a(fA, fG, bVar.getPreventCornerOverlap()));
        int iCeil2 = (int) Math.ceil(e.b(fA, fG, bVar.getPreventCornerOverlap()));
        bVar.setShadowPadding(iCeil, iCeil2, iCeil, iCeil2);
    }

    @Override // androidx.cardview.widget.c
    public float g(b bVar) {
        return o(bVar).d();
    }

    @Override // androidx.cardview.widget.c
    public float h(b bVar) {
        return g(bVar) * 2.0f;
    }

    @Override // androidx.cardview.widget.c
    public float i(b bVar) {
        return g(bVar) * 2.0f;
    }

    @Override // androidx.cardview.widget.c
    public void initStatic() {
    }

    @Override // androidx.cardview.widget.c
    public void j(b bVar) {
        n(bVar, a(bVar));
    }

    @Override // androidx.cardview.widget.c
    public void k(b bVar, float f10) {
        bVar.getCardView().setElevation(f10);
    }

    @Override // androidx.cardview.widget.c
    public void l(b bVar) {
        n(bVar, a(bVar));
    }

    @Override // androidx.cardview.widget.c
    public void m(b bVar, ColorStateList colorStateList) {
        o(bVar).f(colorStateList);
    }

    @Override // androidx.cardview.widget.c
    public void n(b bVar, float f10) {
        o(bVar).g(f10, bVar.getUseCompatPadding(), bVar.getPreventCornerOverlap());
        f(bVar);
    }
}
