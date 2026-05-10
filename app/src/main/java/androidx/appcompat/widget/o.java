package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.R$styleable;

/* JADX INFO: loaded from: classes.dex */
class o extends m {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SeekBar f936d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Drawable f937e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ColorStateList f938f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private PorterDuff.Mode f939g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f940h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f941i;

    o(SeekBar seekBar) {
        super(seekBar);
        this.f938f = null;
        this.f939g = null;
        this.f940h = false;
        this.f941i = false;
        this.f936d = seekBar;
    }

    private void f() {
        Drawable drawable = this.f937e;
        if (drawable != null) {
            if (this.f940h || this.f941i) {
                Drawable drawableR = v.a.r(drawable.mutate());
                this.f937e = drawableR;
                if (this.f940h) {
                    v.a.o(drawableR, this.f938f);
                }
                if (this.f941i) {
                    v.a.p(this.f937e, this.f939g);
                }
                if (this.f937e.isStateful()) {
                    this.f937e.setState(this.f936d.getDrawableState());
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.m
    void c(AttributeSet attributeSet, int i10) {
        super.c(attributeSet, i10);
        h0 h0VarW = h0.w(this.f936d.getContext(), attributeSet, R$styleable.AppCompatSeekBar, i10, 0);
        SeekBar seekBar = this.f936d;
        androidx.core.view.m0.h0(seekBar, seekBar.getContext(), R$styleable.AppCompatSeekBar, attributeSet, h0VarW.r(), i10, 0);
        Drawable drawableH = h0VarW.h(R$styleable.AppCompatSeekBar_android_thumb);
        if (drawableH != null) {
            this.f936d.setThumb(drawableH);
        }
        j(h0VarW.g(R$styleable.AppCompatSeekBar_tickMark));
        if (h0VarW.s(R$styleable.AppCompatSeekBar_tickMarkTintMode)) {
            this.f939g = u.d(h0VarW.k(R$styleable.AppCompatSeekBar_tickMarkTintMode, -1), this.f939g);
            this.f941i = true;
        }
        if (h0VarW.s(R$styleable.AppCompatSeekBar_tickMarkTint)) {
            this.f938f = h0VarW.c(R$styleable.AppCompatSeekBar_tickMarkTint);
            this.f940h = true;
        }
        h0VarW.y();
        f();
    }

    void g(Canvas canvas) {
        if (this.f937e != null) {
            int max = this.f936d.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f937e.getIntrinsicWidth();
                int intrinsicHeight = this.f937e.getIntrinsicHeight();
                int i10 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i11 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f937e.setBounds(-i10, -i11, i10, i11);
                float width = ((this.f936d.getWidth() - this.f936d.getPaddingLeft()) - this.f936d.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(this.f936d.getPaddingLeft(), this.f936d.getHeight() / 2);
                for (int i12 = 0; i12 <= max; i12++) {
                    this.f937e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }

    void h() {
        Drawable drawable = this.f937e;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f936d.getDrawableState())) {
            this.f936d.invalidateDrawable(drawable);
        }
    }

    void i() {
        Drawable drawable = this.f937e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    void j(Drawable drawable) {
        Drawable drawable2 = this.f937e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f937e = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f936d);
            v.a.m(drawable, this.f936d.getLayoutDirection());
            if (drawable.isStateful()) {
                drawable.setState(this.f936d.getDrawableState());
            }
            f();
        }
        this.f936d.invalidate();
    }
}
