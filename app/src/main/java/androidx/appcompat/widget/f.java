package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import androidx.appcompat.R$styleable;

/* JADX INFO: loaded from: classes.dex */
class f {

    /* JADX INFO: renamed from: a */
    private final CompoundButton f872a;

    /* JADX INFO: renamed from: b */
    private ColorStateList f873b = null;

    /* JADX INFO: renamed from: c */
    private PorterDuff.Mode f874c = null;

    /* JADX INFO: renamed from: d */
    private boolean f875d = false;

    /* JADX INFO: renamed from: e */
    private boolean f876e = false;

    /* JADX INFO: renamed from: f */
    private boolean f877f;

    f(CompoundButton compoundButton) {
        this.f872a = compoundButton;
    }

    void a() {
        Drawable drawableA = androidx.core.widget.c.a(this.f872a);
        if (drawableA != null) {
            if (this.f875d || this.f876e) {
                Drawable drawableMutate = v.a.r(drawableA).mutate();
                if (this.f875d) {
                    v.a.o(drawableMutate, this.f873b);
                }
                if (this.f876e) {
                    v.a.p(drawableMutate, this.f874c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(this.f872a.getDrawableState());
                }
                this.f872a.setButtonDrawable(drawableMutate);
            }
        }
    }

    ColorStateList b() {
        return this.f873b;
    }

    PorterDuff.Mode c() {
        return this.f874c;
    }

    void d(AttributeSet attributeSet, int i10) {
        int iN;
        int iN2;
        h0 h0VarW = h0.w(this.f872a.getContext(), attributeSet, R$styleable.CompoundButton, i10, 0);
        CompoundButton compoundButton = this.f872a;
        androidx.core.view.m0.h0(compoundButton, compoundButton.getContext(), R$styleable.CompoundButton, attributeSet, h0VarW.r(), i10, 0);
        try {
            if (h0VarW.s(R$styleable.CompoundButton_buttonCompat) && (iN2 = h0VarW.n(R$styleable.CompoundButton_buttonCompat, 0)) != 0) {
                try {
                    CompoundButton compoundButton2 = this.f872a;
                    compoundButton2.setButtonDrawable(e.a.b(compoundButton2.getContext(), iN2));
                } catch (Resources.NotFoundException unused) {
                    if (h0VarW.s(R$styleable.CompoundButton_android_button)) {
                        CompoundButton compoundButton3 = this.f872a;
                        compoundButton3.setButtonDrawable(e.a.b(compoundButton3.getContext(), iN));
                    }
                }
            } else if (h0VarW.s(R$styleable.CompoundButton_android_button) && (iN = h0VarW.n(R$styleable.CompoundButton_android_button, 0)) != 0) {
                CompoundButton compoundButton32 = this.f872a;
                compoundButton32.setButtonDrawable(e.a.b(compoundButton32.getContext(), iN));
            }
            if (h0VarW.s(R$styleable.CompoundButton_buttonTint)) {
                androidx.core.widget.c.d(this.f872a, h0VarW.c(R$styleable.CompoundButton_buttonTint));
            }
            if (h0VarW.s(R$styleable.CompoundButton_buttonTintMode)) {
                androidx.core.widget.c.e(this.f872a, u.d(h0VarW.k(R$styleable.CompoundButton_buttonTintMode, -1), null));
            }
        } finally {
            h0VarW.y();
        }
    }

    void e() {
        if (this.f877f) {
            this.f877f = false;
        } else {
            this.f877f = true;
            a();
        }
    }

    void f(ColorStateList colorStateList) {
        this.f873b = colorStateList;
        this.f875d = true;
        a();
    }

    void g(PorterDuff.Mode mode) {
        this.f874c = mode;
        this.f876e = true;
        a();
    }
}
