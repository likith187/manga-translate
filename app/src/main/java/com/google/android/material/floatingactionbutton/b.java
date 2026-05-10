package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.Property;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
import x3.h;

/* JADX INFO: loaded from: classes.dex */
abstract class b implements f {

    /* JADX INFO: renamed from: a */
    private final Context f9610a;

    /* JADX INFO: renamed from: b */
    private final ExtendedFloatingActionButton f9611b;

    /* JADX INFO: renamed from: c */
    private final ArrayList f9612c = new ArrayList();

    /* JADX INFO: renamed from: d */
    private final com.google.android.material.floatingactionbutton.a f9613d;

    /* JADX INFO: renamed from: e */
    private h f9614e;

    /* JADX INFO: renamed from: f */
    private h f9615f;

    class a extends Property {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a */
        public Float get(ExtendedFloatingActionButton extendedFloatingActionButton) {
            return Float.valueOf(x3.a.a(0.0f, 1.0f, (Color.alpha(extendedFloatingActionButton.getCurrentTextColor()) / 255.0f) / Color.alpha(extendedFloatingActionButton.H.getColorForState(extendedFloatingActionButton.getDrawableState(), b.this.f9611b.H.getDefaultColor()))));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b */
        public void set(ExtendedFloatingActionButton extendedFloatingActionButton, Float f10) {
            int colorForState = extendedFloatingActionButton.H.getColorForState(extendedFloatingActionButton.getDrawableState(), b.this.f9611b.H.getDefaultColor());
            ColorStateList colorStateListValueOf = ColorStateList.valueOf(Color.argb((int) (x3.a.a(0.0f, Color.alpha(colorForState) / 255.0f, f10.floatValue()) * 255.0f), Color.red(colorForState), Color.green(colorForState), Color.blue(colorForState)));
            if (f10.floatValue() == 1.0f) {
                extendedFloatingActionButton.B(extendedFloatingActionButton.H);
            } else {
                extendedFloatingActionButton.B(colorStateListValueOf);
            }
        }
    }

    b(ExtendedFloatingActionButton extendedFloatingActionButton, com.google.android.material.floatingactionbutton.a aVar) {
        this.f9611b = extendedFloatingActionButton;
        this.f9610a = extendedFloatingActionButton.getContext();
        this.f9613d = aVar;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public void a() {
        this.f9613d.b();
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public h d() {
        return this.f9615f;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public AnimatorSet e() {
        return k(l());
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public final List f() {
        return this.f9612c;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public final void i(h hVar) {
        this.f9615f = hVar;
    }

    AnimatorSet k(h hVar) {
        ArrayList arrayList = new ArrayList();
        if (hVar.j("opacity")) {
            arrayList.add(hVar.f("opacity", this.f9611b, View.ALPHA));
        }
        if (hVar.j("scale")) {
            arrayList.add(hVar.f("scale", this.f9611b, View.SCALE_Y));
            arrayList.add(hVar.f("scale", this.f9611b, View.SCALE_X));
        }
        if (hVar.j("width")) {
            arrayList.add(hVar.f("width", this.f9611b, ExtendedFloatingActionButton.M));
        }
        if (hVar.j("height")) {
            arrayList.add(hVar.f("height", this.f9611b, ExtendedFloatingActionButton.N));
        }
        if (hVar.j("paddingStart")) {
            arrayList.add(hVar.f("paddingStart", this.f9611b, ExtendedFloatingActionButton.O));
        }
        if (hVar.j("paddingEnd")) {
            arrayList.add(hVar.f("paddingEnd", this.f9611b, ExtendedFloatingActionButton.P));
        }
        if (hVar.j("labelOpacity")) {
            arrayList.add(hVar.f("labelOpacity", this.f9611b, new a(Float.class, "LABEL_OPACITY_PROPERTY")));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        x3.b.a(animatorSet, arrayList);
        return animatorSet;
    }

    public final h l() {
        h hVar = this.f9615f;
        if (hVar != null) {
            return hVar;
        }
        if (this.f9614e == null) {
            this.f9614e = h.d(this.f9610a, b());
        }
        return (h) c0.h.e(this.f9614e);
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public void onAnimationEnd() {
        this.f9613d.b();
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public void onAnimationStart(Animator animator) {
        this.f9613d.c(animator);
    }
}
