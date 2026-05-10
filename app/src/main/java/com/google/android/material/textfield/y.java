package com.google.android.material.textfield;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.h0;
import androidx.core.view.m0;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.ViewUtils;

/* JADX INFO: loaded from: classes.dex */
class y extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextInputLayout f10536a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TextView f10537b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private CharSequence f10538c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final CheckableImageButton f10539f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ColorStateList f10540h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private PorterDuff.Mode f10541i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f10542j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ImageView.ScaleType f10543k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View.OnLongClickListener f10544l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f10545m;

    y(TextInputLayout textInputLayout, h0 h0Var) {
        super(textInputLayout.getContext());
        this.f10536a = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R$layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.f10539f = checkableImageButton;
        t.e(checkableImageButton);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.f10537b = appCompatTextView;
        j(h0Var);
        i(h0Var);
        addView(checkableImageButton);
        addView(appCompatTextView);
    }

    private void C() {
        int i10 = (this.f10538c == null || this.f10545m) ? 8 : 0;
        setVisibility((this.f10539f.getVisibility() == 0 || i10 == 0) ? 0 : 8);
        this.f10537b.setVisibility(i10);
        this.f10536a.o0();
    }

    private void i(h0 h0Var) {
        this.f10537b.setVisibility(8);
        this.f10537b.setId(R$id.textinput_prefix_text);
        this.f10537b.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        m0.l0(this.f10537b, 1);
        o(h0Var.n(R$styleable.TextInputLayout_prefixTextAppearance, 0));
        if (h0Var.s(R$styleable.TextInputLayout_prefixTextColor)) {
            p(h0Var.c(R$styleable.TextInputLayout_prefixTextColor));
        }
        n(h0Var.p(R$styleable.TextInputLayout_prefixText));
    }

    private void j(h0 h0Var) {
        if (i4.c.j(getContext())) {
            androidx.core.view.m.c((ViewGroup.MarginLayoutParams) this.f10539f.getLayoutParams(), 0);
        }
        u(null);
        v(null);
        if (h0Var.s(R$styleable.TextInputLayout_startIconTint)) {
            this.f10540h = i4.c.b(getContext(), h0Var, R$styleable.TextInputLayout_startIconTint);
        }
        if (h0Var.s(R$styleable.TextInputLayout_startIconTintMode)) {
            this.f10541i = ViewUtils.parseTintMode(h0Var.k(R$styleable.TextInputLayout_startIconTintMode, -1), null);
        }
        if (h0Var.s(R$styleable.TextInputLayout_startIconDrawable)) {
            s(h0Var.g(R$styleable.TextInputLayout_startIconDrawable));
            if (h0Var.s(R$styleable.TextInputLayout_startIconContentDescription)) {
                r(h0Var.p(R$styleable.TextInputLayout_startIconContentDescription));
            }
            q(h0Var.a(R$styleable.TextInputLayout_startIconCheckable, true));
        }
        t(h0Var.f(R$styleable.TextInputLayout_startIconMinSize, getResources().getDimensionPixelSize(R$dimen.mtrl_min_touch_target_size)));
        if (h0Var.s(R$styleable.TextInputLayout_startIconScaleType)) {
            w(t.b(h0Var.k(R$styleable.TextInputLayout_startIconScaleType, -1)));
        }
    }

    void A(d0.h hVar) {
        if (this.f10537b.getVisibility() != 0) {
            hVar.J0(this.f10539f);
        } else {
            hVar.t0(this.f10537b);
            hVar.J0(this.f10537b);
        }
    }

    void B() {
        EditText editText = this.f10536a.f10376f;
        if (editText == null) {
            return;
        }
        m0.z0(this.f10537b, k() ? 0 : m0.A(editText), editText.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(R$dimen.material_input_text_to_prefix_suffix_padding), editText.getCompoundPaddingBottom());
    }

    CharSequence a() {
        return this.f10538c;
    }

    ColorStateList b() {
        return this.f10537b.getTextColors();
    }

    int c() {
        return m0.A(this) + m0.A(this.f10537b) + (k() ? this.f10539f.getMeasuredWidth() + androidx.core.view.m.a((ViewGroup.MarginLayoutParams) this.f10539f.getLayoutParams()) : 0);
    }

    TextView d() {
        return this.f10537b;
    }

    CharSequence e() {
        return this.f10539f.getContentDescription();
    }

    Drawable f() {
        return this.f10539f.getDrawable();
    }

    int g() {
        return this.f10542j;
    }

    ImageView.ScaleType h() {
        return this.f10543k;
    }

    boolean k() {
        return this.f10539f.getVisibility() == 0;
    }

    void l(boolean z10) {
        this.f10545m = z10;
        C();
    }

    void m() {
        t.d(this.f10536a, this.f10539f, this.f10540h);
    }

    void n(CharSequence charSequence) {
        this.f10538c = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f10537b.setText(charSequence);
        C();
    }

    void o(int i10) {
        androidx.core.widget.j.o(this.f10537b, i10);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        B();
    }

    void p(ColorStateList colorStateList) {
        this.f10537b.setTextColor(colorStateList);
    }

    void q(boolean z10) {
        this.f10539f.setCheckable(z10);
    }

    void r(CharSequence charSequence) {
        if (e() != charSequence) {
            this.f10539f.setContentDescription(charSequence);
        }
    }

    void s(Drawable drawable) {
        this.f10539f.setImageDrawable(drawable);
        if (drawable != null) {
            t.a(this.f10536a, this.f10539f, this.f10540h, this.f10541i);
            z(true);
            m();
        } else {
            z(false);
            u(null);
            v(null);
            r(null);
        }
    }

    void t(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("startIconSize cannot be less than 0");
        }
        if (i10 != this.f10542j) {
            this.f10542j = i10;
            t.g(this.f10539f, i10);
        }
    }

    void u(View.OnClickListener onClickListener) {
        t.h(this.f10539f, onClickListener, this.f10544l);
    }

    void v(View.OnLongClickListener onLongClickListener) {
        this.f10544l = onLongClickListener;
        t.i(this.f10539f, onLongClickListener);
    }

    void w(ImageView.ScaleType scaleType) {
        this.f10543k = scaleType;
        t.j(this.f10539f, scaleType);
    }

    void x(ColorStateList colorStateList) {
        if (this.f10540h != colorStateList) {
            this.f10540h = colorStateList;
            t.a(this.f10536a, this.f10539f, colorStateList, this.f10541i);
        }
    }

    void y(PorterDuff.Mode mode) {
        if (this.f10541i != mode) {
            this.f10541i = mode;
            t.a(this.f10536a, this.f10539f, this.f10540h, mode);
        }
    }

    void z(boolean z10) {
        if (k() != z10) {
            this.f10539f.setVisibility(z10 ? 0 : 8);
            B();
            C();
        }
    }
}
