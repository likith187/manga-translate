package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckedTextView;
import androidx.appcompat.R$styleable;

/* JADX INFO: loaded from: classes.dex */
class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CheckedTextView f862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ColorStateList f863b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PorterDuff.Mode f864c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f865d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f866e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f867f;

    e(CheckedTextView checkedTextView) {
        this.f862a = checkedTextView;
    }

    void a() {
        Drawable drawableA = androidx.core.widget.b.a(this.f862a);
        if (drawableA != null) {
            if (this.f865d || this.f866e) {
                Drawable drawableMutate = v.a.r(drawableA).mutate();
                if (this.f865d) {
                    v.a.o(drawableMutate, this.f863b);
                }
                if (this.f866e) {
                    v.a.p(drawableMutate, this.f864c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(this.f862a.getDrawableState());
                }
                this.f862a.setCheckMarkDrawable(drawableMutate);
            }
        }
    }

    ColorStateList b() {
        return this.f863b;
    }

    PorterDuff.Mode c() {
        return this.f864c;
    }

    void d(AttributeSet attributeSet, int i10) {
        int iN;
        int iN2;
        h0 h0VarW = h0.w(this.f862a.getContext(), attributeSet, R$styleable.CheckedTextView, i10, 0);
        CheckedTextView checkedTextView = this.f862a;
        androidx.core.view.m0.h0(checkedTextView, checkedTextView.getContext(), R$styleable.CheckedTextView, attributeSet, h0VarW.r(), i10, 0);
        try {
            if (h0VarW.s(R$styleable.CheckedTextView_checkMarkCompat) && (iN2 = h0VarW.n(R$styleable.CheckedTextView_checkMarkCompat, 0)) != 0) {
                try {
                    CheckedTextView checkedTextView2 = this.f862a;
                    checkedTextView2.setCheckMarkDrawable(e.a.b(checkedTextView2.getContext(), iN2));
                } catch (Resources.NotFoundException unused) {
                    if (h0VarW.s(R$styleable.CheckedTextView_android_checkMark)) {
                        CheckedTextView checkedTextView3 = this.f862a;
                        checkedTextView3.setCheckMarkDrawable(e.a.b(checkedTextView3.getContext(), iN));
                    }
                }
            } else if (h0VarW.s(R$styleable.CheckedTextView_android_checkMark) && (iN = h0VarW.n(R$styleable.CheckedTextView_android_checkMark, 0)) != 0) {
                CheckedTextView checkedTextView32 = this.f862a;
                checkedTextView32.setCheckMarkDrawable(e.a.b(checkedTextView32.getContext(), iN));
            }
            if (h0VarW.s(R$styleable.CheckedTextView_checkMarkTint)) {
                androidx.core.widget.b.b(this.f862a, h0VarW.c(R$styleable.CheckedTextView_checkMarkTint));
            }
            if (h0VarW.s(R$styleable.CheckedTextView_checkMarkTintMode)) {
                androidx.core.widget.b.c(this.f862a, u.d(h0VarW.k(R$styleable.CheckedTextView_checkMarkTintMode, -1), null));
            }
        } finally {
            h0VarW.y();
        }
    }

    void e() {
        if (this.f867f) {
            this.f867f = false;
        } else {
            this.f867f = true;
            a();
        }
    }

    void f(ColorStateList colorStateList) {
        this.f863b = colorStateList;
        this.f865d = true;
        a();
    }

    void g(PorterDuff.Mode mode) {
        this.f864c = mode;
        this.f866e = true;
        a();
    }
}
