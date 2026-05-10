package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class k {

    /* JADX INFO: renamed from: a */
    private final ImageView f901a;

    /* JADX INFO: renamed from: b */
    private f0 f902b;

    /* JADX INFO: renamed from: c */
    private f0 f903c;

    /* JADX INFO: renamed from: d */
    private f0 f904d;

    /* JADX INFO: renamed from: e */
    private int f905e = 0;

    public k(ImageView imageView) {
        this.f901a = imageView;
    }

    private boolean a(Drawable drawable) {
        if (this.f904d == null) {
            this.f904d = new f0();
        }
        f0 f0Var = this.f904d;
        f0Var.a();
        ColorStateList colorStateListA = androidx.core.widget.g.a(this.f901a);
        if (colorStateListA != null) {
            f0Var.f881d = true;
            f0Var.f878a = colorStateListA;
        }
        PorterDuff.Mode modeB = androidx.core.widget.g.b(this.f901a);
        if (modeB != null) {
            f0Var.f880c = true;
            f0Var.f879b = modeB;
        }
        if (!f0Var.f881d && !f0Var.f880c) {
            return false;
        }
        g.i(drawable, f0Var, this.f901a.getDrawableState());
        return true;
    }

    private boolean l() {
        return this.f902b != null;
    }

    void b() {
        if (this.f901a.getDrawable() != null) {
            this.f901a.getDrawable().setLevel(this.f905e);
        }
    }

    void c() {
        Drawable drawable = this.f901a.getDrawable();
        if (drawable != null) {
            u.b(drawable);
        }
        if (drawable != null) {
            if (l() && a(drawable)) {
                return;
            }
            f0 f0Var = this.f903c;
            if (f0Var != null) {
                g.i(drawable, f0Var, this.f901a.getDrawableState());
                return;
            }
            f0 f0Var2 = this.f902b;
            if (f0Var2 != null) {
                g.i(drawable, f0Var2, this.f901a.getDrawableState());
            }
        }
    }

    ColorStateList d() {
        f0 f0Var = this.f903c;
        if (f0Var != null) {
            return f0Var.f878a;
        }
        return null;
    }

    PorterDuff.Mode e() {
        f0 f0Var = this.f903c;
        if (f0Var != null) {
            return f0Var.f879b;
        }
        return null;
    }

    boolean f() {
        return !(this.f901a.getBackground() instanceof RippleDrawable);
    }

    public void g(AttributeSet attributeSet, int i10) {
        int iN;
        h0 h0VarW = h0.w(this.f901a.getContext(), attributeSet, R$styleable.AppCompatImageView, i10, 0);
        ImageView imageView = this.f901a;
        androidx.core.view.m0.h0(imageView, imageView.getContext(), R$styleable.AppCompatImageView, attributeSet, h0VarW.r(), i10, 0);
        try {
            Drawable drawable = this.f901a.getDrawable();
            if (drawable == null && (iN = h0VarW.n(R$styleable.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = e.a.b(this.f901a.getContext(), iN)) != null) {
                this.f901a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                u.b(drawable);
            }
            if (h0VarW.s(R$styleable.AppCompatImageView_tint)) {
                androidx.core.widget.g.c(this.f901a, h0VarW.c(R$styleable.AppCompatImageView_tint));
            }
            if (h0VarW.s(R$styleable.AppCompatImageView_tintMode)) {
                androidx.core.widget.g.d(this.f901a, u.d(h0VarW.k(R$styleable.AppCompatImageView_tintMode, -1), null));
            }
            h0VarW.y();
        } catch (Throwable th) {
            h0VarW.y();
            throw th;
        }
    }

    void h(Drawable drawable) {
        this.f905e = drawable.getLevel();
    }

    public void i(int i10) {
        if (i10 != 0) {
            Drawable drawableB = e.a.b(this.f901a.getContext(), i10);
            if (drawableB != null) {
                u.b(drawableB);
            }
            this.f901a.setImageDrawable(drawableB);
        } else {
            this.f901a.setImageDrawable(null);
        }
        c();
    }

    void j(ColorStateList colorStateList) {
        if (this.f903c == null) {
            this.f903c = new f0();
        }
        f0 f0Var = this.f903c;
        f0Var.f878a = colorStateList;
        f0Var.f881d = true;
        c();
    }

    void k(PorterDuff.Mode mode) {
        if (this.f903c == null) {
            this.f903c = new f0();
        }
        f0 f0Var = this.f903c;
        f0Var.f879b = mode;
        f0Var.f880c = true;
        c();
    }
}
