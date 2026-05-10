package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.util.Property;
import android.view.View;
import c0.h;
import com.google.android.material.R$color;
import com.google.android.material.shape.i;
import com.google.android.material.shape.n;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class e extends d {
    private StateListAnimator O;

    static class a extends i {
        a(n nVar) {
            super(nVar);
        }

        @Override // com.google.android.material.shape.i, android.graphics.drawable.Drawable
        public boolean isStateful() {
            return true;
        }
    }

    e(FloatingActionButton floatingActionButton, k4.b bVar) {
        super(floatingActionButton, bVar);
    }

    private StateListAnimator j0(float f10, float f11, float f12) {
        StateListAnimator stateListAnimator = new StateListAnimator();
        stateListAnimator.addState(d.I, k0(f10, f12));
        stateListAnimator.addState(d.J, k0(f10, f11));
        stateListAnimator.addState(d.K, k0(f10, f11));
        stateListAnimator.addState(d.L, k0(f10, f11));
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        arrayList.add(ObjectAnimator.ofFloat(this.f9656w, "elevation", f10).setDuration(0L));
        arrayList.add(ObjectAnimator.ofFloat(this.f9656w, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
        animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
        animatorSet.setInterpolator(d.D);
        stateListAnimator.addState(d.M, animatorSet);
        stateListAnimator.addState(d.N, k0(0.0f, 0.0f));
        return stateListAnimator;
    }

    private Animator k0(float f10, float f11) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.f9656w, "elevation", f10).setDuration(0L)).with(ObjectAnimator.ofFloat(this.f9656w, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, f11).setDuration(100L));
        animatorSet.setInterpolator(d.D);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void A() {
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void C() {
        f0();
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void E(int[] iArr) {
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void F(float f10, float f11, float f12) {
        if (this.f9656w.getStateListAnimator() == this.O) {
            StateListAnimator stateListAnimatorJ0 = j0(f10, f11, f12);
            this.O = stateListAnimatorJ0;
            this.f9656w.setStateListAnimator(stateListAnimatorJ0);
        }
        if (Z()) {
            f0();
        }
    }

    @Override // com.google.android.material.floatingactionbutton.d
    boolean K() {
        return false;
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void V(ColorStateList colorStateList) {
        Drawable drawable = this.f9636c;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(j4.b.d(colorStateList));
        } else {
            super.V(colorStateList);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.d
    boolean Z() {
        return this.f9657x.b() || !b0();
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void d0() {
    }

    c i0(int i10, ColorStateList colorStateList) {
        Context context = this.f9656w.getContext();
        c cVar = new c((n) h.e(this.f9634a));
        cVar.e(r.a.c(context, R$color.design_fab_stroke_top_outer_color), r.a.c(context, R$color.design_fab_stroke_top_inner_color), r.a.c(context, R$color.design_fab_stroke_end_inner_color), r.a.c(context, R$color.design_fab_stroke_end_outer_color));
        cVar.d(i10);
        cVar.c(colorStateList);
        return cVar;
    }

    i l0() {
        return new a((n) h.e(this.f9634a));
    }

    @Override // com.google.android.material.floatingactionbutton.d
    public float m() {
        return this.f9656w.getElevation();
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void r(Rect rect) {
        if (this.f9657x.b()) {
            super.r(rect);
        } else if (b0()) {
            rect.set(0, 0, 0, 0);
        } else {
            int sizeDimension = (this.f9644k - this.f9656w.getSizeDimension()) / 2;
            rect.set(sizeDimension, sizeDimension, sizeDimension, sizeDimension);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void x(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i10) {
        Drawable layerDrawable;
        i iVarL0 = l0();
        this.f9635b = iVarL0;
        iVarL0.setTintList(colorStateList);
        if (mode != null) {
            this.f9635b.setTintMode(mode);
        }
        this.f9635b.initializeElevationOverlay(this.f9656w.getContext());
        if (i10 > 0) {
            this.f9637d = i0(i10, colorStateList);
            layerDrawable = new LayerDrawable(new Drawable[]{(Drawable) h.e(this.f9637d), (Drawable) h.e(this.f9635b)});
        } else {
            this.f9637d = null;
            layerDrawable = this.f9635b;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(j4.b.d(colorStateList2), layerDrawable, null);
        this.f9636c = rippleDrawable;
        this.f9638e = rippleDrawable;
    }
}
