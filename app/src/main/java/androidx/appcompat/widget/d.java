package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.R$styleable;

/* JADX INFO: loaded from: classes.dex */
class d {

    /* JADX INFO: renamed from: a */
    private final View f846a;

    /* JADX INFO: renamed from: d */
    private f0 f849d;

    /* JADX INFO: renamed from: e */
    private f0 f850e;

    /* JADX INFO: renamed from: f */
    private f0 f851f;

    /* JADX INFO: renamed from: c */
    private int f848c = -1;

    /* JADX INFO: renamed from: b */
    private final g f847b = g.b();

    d(View view) {
        this.f846a = view;
    }

    private boolean a(Drawable drawable) {
        if (this.f851f == null) {
            this.f851f = new f0();
        }
        f0 f0Var = this.f851f;
        f0Var.a();
        ColorStateList colorStateListO = androidx.core.view.m0.o(this.f846a);
        if (colorStateListO != null) {
            f0Var.f881d = true;
            f0Var.f878a = colorStateListO;
        }
        PorterDuff.Mode modeP = androidx.core.view.m0.p(this.f846a);
        if (modeP != null) {
            f0Var.f880c = true;
            f0Var.f879b = modeP;
        }
        if (!f0Var.f881d && !f0Var.f880c) {
            return false;
        }
        g.i(drawable, f0Var, this.f846a.getDrawableState());
        return true;
    }

    private boolean k() {
        return this.f849d != null;
    }

    void b() {
        Drawable background = this.f846a.getBackground();
        if (background != null) {
            if (k() && a(background)) {
                return;
            }
            f0 f0Var = this.f850e;
            if (f0Var != null) {
                g.i(background, f0Var, this.f846a.getDrawableState());
                return;
            }
            f0 f0Var2 = this.f849d;
            if (f0Var2 != null) {
                g.i(background, f0Var2, this.f846a.getDrawableState());
            }
        }
    }

    ColorStateList c() {
        f0 f0Var = this.f850e;
        if (f0Var != null) {
            return f0Var.f878a;
        }
        return null;
    }

    PorterDuff.Mode d() {
        f0 f0Var = this.f850e;
        if (f0Var != null) {
            return f0Var.f879b;
        }
        return null;
    }

    void e(AttributeSet attributeSet, int i10) {
        h0 h0VarW = h0.w(this.f846a.getContext(), attributeSet, R$styleable.ViewBackgroundHelper, i10, 0);
        View view = this.f846a;
        androidx.core.view.m0.h0(view, view.getContext(), R$styleable.ViewBackgroundHelper, attributeSet, h0VarW.r(), i10, 0);
        try {
            if (h0VarW.s(R$styleable.ViewBackgroundHelper_android_background)) {
                this.f848c = h0VarW.n(R$styleable.ViewBackgroundHelper_android_background, -1);
                ColorStateList colorStateListF = this.f847b.f(this.f846a.getContext(), this.f848c);
                if (colorStateListF != null) {
                    h(colorStateListF);
                }
            }
            if (h0VarW.s(R$styleable.ViewBackgroundHelper_backgroundTint)) {
                androidx.core.view.m0.o0(this.f846a, h0VarW.c(R$styleable.ViewBackgroundHelper_backgroundTint));
            }
            if (h0VarW.s(R$styleable.ViewBackgroundHelper_backgroundTintMode)) {
                androidx.core.view.m0.p0(this.f846a, u.d(h0VarW.k(R$styleable.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
            h0VarW.y();
        } catch (Throwable th) {
            h0VarW.y();
            throw th;
        }
    }

    void f(Drawable drawable) {
        this.f848c = -1;
        h(null);
        b();
    }

    void g(int i10) {
        this.f848c = i10;
        g gVar = this.f847b;
        h(gVar != null ? gVar.f(this.f846a.getContext(), i10) : null);
        b();
    }

    void h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f849d == null) {
                this.f849d = new f0();
            }
            f0 f0Var = this.f849d;
            f0Var.f878a = colorStateList;
            f0Var.f881d = true;
        } else {
            this.f849d = null;
        }
        b();
    }

    void i(ColorStateList colorStateList) {
        if (this.f850e == null) {
            this.f850e = new f0();
        }
        f0 f0Var = this.f850e;
        f0Var.f878a = colorStateList;
        f0Var.f881d = true;
        b();
    }

    void j(PorterDuff.Mode mode) {
        if (this.f850e == null) {
            this.f850e = new f0();
        }
        f0 f0Var = this.f850e;
        f0Var.f879b = mode;
        f0Var.f880c = true;
        b();
    }
}
