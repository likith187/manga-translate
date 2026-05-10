package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.m0;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class u {
    private ColorStateList A;
    private Typeface B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f10500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f10501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f10502c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TimeInterpolator f10503d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final TimeInterpolator f10504e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final TimeInterpolator f10505f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Context f10506g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final TextInputLayout f10507h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private LinearLayout f10508i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f10509j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private FrameLayout f10510k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Animator f10511l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final float f10512m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f10513n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f10514o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private CharSequence f10515p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f10516q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private TextView f10517r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private CharSequence f10518s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f10519t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f10520u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ColorStateList f10521v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private CharSequence f10522w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f10523x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private TextView f10524y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f10525z;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f10526a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TextView f10527b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f10528c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ TextView f10529f;

        a(int i10, TextView textView, int i11, TextView textView2) {
            this.f10526a = i10;
            this.f10527b = textView;
            this.f10528c = i11;
            this.f10529f = textView2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            u.this.f10513n = this.f10526a;
            u.this.f10511l = null;
            TextView textView = this.f10527b;
            if (textView != null) {
                textView.setVisibility(4);
                if (this.f10528c == 1 && u.this.f10517r != null) {
                    u.this.f10517r.setText((CharSequence) null);
                }
            }
            TextView textView2 = this.f10529f;
            if (textView2 != null) {
                textView2.setTranslationY(0.0f);
                this.f10529f.setAlpha(1.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            TextView textView = this.f10529f;
            if (textView != null) {
                textView.setVisibility(0);
                this.f10529f.setAlpha(0.0f);
            }
        }
    }

    class b extends View.AccessibilityDelegate {
        b() {
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            EditText editText = u.this.f10507h.getEditText();
            if (editText != null) {
                accessibilityNodeInfo.setLabeledBy(editText);
            }
        }
    }

    public u(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f10506g = context;
        this.f10507h = textInputLayout;
        this.f10512m = context.getResources().getDimensionPixelSize(R$dimen.design_textinput_caption_translate_y);
        this.f10500a = g4.i.f(context, R$attr.motionDurationShort4, 217);
        this.f10501b = g4.i.f(context, R$attr.motionDurationMedium4, 167);
        this.f10502c = g4.i.f(context, R$attr.motionDurationShort4, 167);
        this.f10503d = g4.i.g(context, R$attr.motionEasingEmphasizedDecelerateInterpolator, x3.a.f16371d);
        int i10 = R$attr.motionEasingEmphasizedDecelerateInterpolator;
        TimeInterpolator timeInterpolator = x3.a.f16368a;
        this.f10504e = g4.i.g(context, i10, timeInterpolator);
        this.f10505f = g4.i.g(context, R$attr.motionEasingLinearInterpolator, timeInterpolator);
    }

    private void D(int i10, int i11) {
        TextView textViewM;
        TextView textViewM2;
        if (i10 == i11) {
            return;
        }
        if (i11 != 0 && (textViewM2 = m(i11)) != null) {
            textViewM2.setVisibility(0);
            textViewM2.setAlpha(1.0f);
        }
        if (i10 != 0 && (textViewM = m(i10)) != null) {
            textViewM.setVisibility(4);
            if (i10 == 1) {
                textViewM.setText((CharSequence) null);
            }
        }
        this.f10513n = i11;
    }

    private void M(TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    private void O(ViewGroup viewGroup, int i10) {
        if (i10 == 0) {
            viewGroup.setVisibility(8);
        }
    }

    private boolean P(TextView textView, CharSequence charSequence) {
        return m0.O(this.f10507h) && this.f10507h.isEnabled() && !(this.f10514o == this.f10513n && textView != null && TextUtils.equals(textView.getText(), charSequence));
    }

    private void S(int i10, int i11, boolean z10) {
        if (i10 == i11) {
            return;
        }
        if (z10) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f10511l = animatorSet;
            ArrayList arrayList = new ArrayList();
            i(arrayList, this.f10523x, this.f10524y, 2, i10, i11);
            i(arrayList, this.f10516q, this.f10517r, 1, i10, i11);
            x3.b.a(animatorSet, arrayList);
            animatorSet.addListener(new a(i11, m(i10), i10, m(i11)));
            animatorSet.start();
        } else {
            D(i10, i11);
        }
        this.f10507h.p0();
        this.f10507h.u0(z10);
        this.f10507h.A0();
    }

    private boolean g() {
        return (this.f10508i == null || this.f10507h.getEditText() == null) ? false : true;
    }

    private void i(List list, boolean z10, TextView textView, int i10, int i11, int i12) {
        if (textView == null || !z10) {
            return;
        }
        if (i10 == i12 || i10 == i11) {
            ObjectAnimator objectAnimatorJ = j(textView, i12 == i10);
            if (i10 == i12 && i11 != 0) {
                objectAnimatorJ.setStartDelay(this.f10502c);
            }
            list.add(objectAnimatorJ);
            if (i12 != i10 || i11 == 0) {
                return;
            }
            ObjectAnimator objectAnimatorK = k(textView);
            objectAnimatorK.setStartDelay(this.f10502c);
            list.add(objectAnimatorK);
        }
    }

    private ObjectAnimator j(TextView textView, boolean z10) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, z10 ? 1.0f : 0.0f);
        objectAnimatorOfFloat.setDuration(z10 ? this.f10501b : this.f10502c);
        objectAnimatorOfFloat.setInterpolator(z10 ? this.f10504e : this.f10505f);
        return objectAnimatorOfFloat;
    }

    private ObjectAnimator k(TextView textView) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_Y, -this.f10512m, 0.0f);
        objectAnimatorOfFloat.setDuration(this.f10500a);
        objectAnimatorOfFloat.setInterpolator(this.f10503d);
        return objectAnimatorOfFloat;
    }

    private TextView m(int i10) {
        if (i10 == 1) {
            return this.f10517r;
        }
        if (i10 != 2) {
            return null;
        }
        return this.f10524y;
    }

    private int v(boolean z10, int i10, int i11) {
        return z10 ? this.f10506g.getResources().getDimensionPixelSize(i10) : i11;
    }

    private boolean y(int i10) {
        return (i10 != 1 || this.f10517r == null || TextUtils.isEmpty(this.f10515p)) ? false : true;
    }

    boolean A() {
        return this.f10516q;
    }

    boolean B() {
        return this.f10523x;
    }

    void C(TextView textView, int i10) {
        FrameLayout frameLayout;
        if (this.f10508i == null) {
            return;
        }
        if (!z(i10) || (frameLayout = this.f10510k) == null) {
            this.f10508i.removeView(textView);
        } else {
            frameLayout.removeView(textView);
        }
        int i11 = this.f10509j - 1;
        this.f10509j = i11;
        O(this.f10508i, i11);
    }

    void E(int i10) {
        this.f10519t = i10;
        TextView textView = this.f10517r;
        if (textView != null) {
            m0.l0(textView, i10);
        }
    }

    void F(CharSequence charSequence) {
        this.f10518s = charSequence;
        TextView textView = this.f10517r;
        if (textView != null) {
            textView.setContentDescription(charSequence);
        }
    }

    void G(boolean z10) {
        if (this.f10516q == z10) {
            return;
        }
        h();
        if (z10) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.f10506g);
            this.f10517r = appCompatTextView;
            appCompatTextView.setId(R$id.textinput_error);
            this.f10517r.setTextAlignment(5);
            Typeface typeface = this.B;
            if (typeface != null) {
                this.f10517r.setTypeface(typeface);
            }
            H(this.f10520u);
            I(this.f10521v);
            F(this.f10518s);
            E(this.f10519t);
            this.f10517r.setVisibility(4);
            e(this.f10517r, 0);
        } else {
            w();
            C(this.f10517r, 0);
            this.f10517r = null;
            this.f10507h.p0();
            this.f10507h.A0();
        }
        this.f10516q = z10;
    }

    void H(int i10) {
        this.f10520u = i10;
        TextView textView = this.f10517r;
        if (textView != null) {
            this.f10507h.c0(textView, i10);
        }
    }

    void I(ColorStateList colorStateList) {
        this.f10521v = colorStateList;
        TextView textView = this.f10517r;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    void J(int i10) {
        this.f10525z = i10;
        TextView textView = this.f10524y;
        if (textView != null) {
            androidx.core.widget.j.o(textView, i10);
        }
    }

    void K(boolean z10) {
        if (this.f10523x == z10) {
            return;
        }
        h();
        if (z10) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.f10506g);
            this.f10524y = appCompatTextView;
            appCompatTextView.setId(R$id.textinput_helper_text);
            this.f10524y.setTextAlignment(5);
            Typeface typeface = this.B;
            if (typeface != null) {
                this.f10524y.setTypeface(typeface);
            }
            this.f10524y.setVisibility(4);
            m0.l0(this.f10524y, 1);
            J(this.f10525z);
            L(this.A);
            e(this.f10524y, 1);
            this.f10524y.setAccessibilityDelegate(new b());
        } else {
            x();
            C(this.f10524y, 1);
            this.f10524y = null;
            this.f10507h.p0();
            this.f10507h.A0();
        }
        this.f10523x = z10;
    }

    void L(ColorStateList colorStateList) {
        this.A = colorStateList;
        TextView textView = this.f10524y;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    void N(Typeface typeface) {
        if (typeface != this.B) {
            this.B = typeface;
            M(this.f10517r, typeface);
            M(this.f10524y, typeface);
        }
    }

    void Q(CharSequence charSequence) {
        h();
        this.f10515p = charSequence;
        this.f10517r.setText(charSequence);
        int i10 = this.f10513n;
        if (i10 != 1) {
            this.f10514o = 1;
        }
        S(i10, this.f10514o, P(this.f10517r, charSequence));
    }

    void R(CharSequence charSequence) {
        h();
        this.f10522w = charSequence;
        this.f10524y.setText(charSequence);
        int i10 = this.f10513n;
        if (i10 != 2) {
            this.f10514o = 2;
        }
        S(i10, this.f10514o, P(this.f10524y, charSequence));
    }

    void e(TextView textView, int i10) {
        if (this.f10508i == null && this.f10510k == null) {
            LinearLayout linearLayout = new LinearLayout(this.f10506g);
            this.f10508i = linearLayout;
            linearLayout.setOrientation(0);
            this.f10507h.addView(this.f10508i, -1, -2);
            this.f10510k = new FrameLayout(this.f10506g);
            this.f10508i.addView(this.f10510k, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (this.f10507h.getEditText() != null) {
                f();
            }
        }
        if (z(i10)) {
            this.f10510k.setVisibility(0);
            this.f10510k.addView(textView);
        } else {
            this.f10508i.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f10508i.setVisibility(0);
        this.f10509j++;
    }

    void f() {
        if (g()) {
            EditText editText = this.f10507h.getEditText();
            boolean zJ = i4.c.j(this.f10506g);
            m0.z0(this.f10508i, v(zJ, R$dimen.material_helper_text_font_1_3_padding_horizontal, m0.A(editText)), v(zJ, R$dimen.material_helper_text_font_1_3_padding_top, this.f10506g.getResources().getDimensionPixelSize(R$dimen.material_helper_text_default_padding_top)), v(zJ, R$dimen.material_helper_text_font_1_3_padding_horizontal, m0.z(editText)), 0);
        }
    }

    void h() {
        Animator animator = this.f10511l;
        if (animator != null) {
            animator.cancel();
        }
    }

    boolean l() {
        return y(this.f10514o);
    }

    int n() {
        return this.f10519t;
    }

    CharSequence o() {
        return this.f10518s;
    }

    CharSequence p() {
        return this.f10515p;
    }

    int q() {
        TextView textView = this.f10517r;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    ColorStateList r() {
        TextView textView = this.f10517r;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    CharSequence s() {
        return this.f10522w;
    }

    View t() {
        return this.f10524y;
    }

    int u() {
        TextView textView = this.f10524y;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    void w() {
        this.f10515p = null;
        h();
        if (this.f10513n == 1) {
            if (!this.f10523x || TextUtils.isEmpty(this.f10522w)) {
                this.f10514o = 0;
            } else {
                this.f10514o = 2;
            }
        }
        S(this.f10513n, this.f10514o, P(this.f10517r, ""));
    }

    void x() {
        h();
        int i10 = this.f10513n;
        if (i10 == 2) {
            this.f10514o = 0;
        }
        S(i10, this.f10514o, P(this.f10524y, ""));
    }

    boolean z(int i10) {
        return i10 == 0 || i10 == 1;
    }
}
