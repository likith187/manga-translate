package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import com.coui.appcompat.list.COUIBackgroundAnimationUtil;
import com.google.android.material.R$attr;
import com.google.android.material.R$drawable;
import com.google.android.material.R$string;

/* JADX INFO: loaded from: classes.dex */
class f extends s {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f10430e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f10431f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final TimeInterpolator f10432g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final TimeInterpolator f10433h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private EditText f10434i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final View.OnClickListener f10435j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final View.OnFocusChangeListener f10436k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private AnimatorSet f10437l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ValueAnimator f10438m;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            f.this.f10497b.a0(true);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            f.this.f10497b.a0(false);
        }
    }

    f(r rVar) {
        super(rVar);
        this.f10435j = new View.OnClickListener() { // from class: com.google.android.material.textfield.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f10425a.G(view);
            }
        };
        this.f10436k = new View.OnFocusChangeListener() { // from class: com.google.android.material.textfield.b
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z10) {
                this.f10426a.H(view, z10);
            }
        };
        this.f10430e = g4.i.f(rVar.getContext(), R$attr.motionDurationShort3, 100);
        this.f10431f = g4.i.f(rVar.getContext(), R$attr.motionDurationShort3, COUIBackgroundAnimationUtil.APPEAR_DURATION);
        this.f10432g = g4.i.g(rVar.getContext(), R$attr.motionEasingLinearInterpolator, x3.a.f16368a);
        this.f10433h = g4.i.g(rVar.getContext(), R$attr.motionEasingEmphasizedInterpolator, x3.a.f16371d);
    }

    private void A(boolean z10) {
        boolean z11 = this.f10497b.F() == z10;
        if (z10 && !this.f10437l.isRunning()) {
            this.f10438m.cancel();
            this.f10437l.start();
            if (z11) {
                this.f10437l.end();
                return;
            }
            return;
        }
        if (z10) {
            return;
        }
        this.f10437l.cancel();
        this.f10438m.start();
        if (z11) {
            this.f10438m.end();
        }
    }

    private ValueAnimator B(float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(this.f10432g);
        valueAnimatorOfFloat.setDuration(this.f10430e);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.c
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f10427a.E(valueAnimator);
            }
        });
        return valueAnimatorOfFloat;
    }

    private ValueAnimator C() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(this.f10433h);
        valueAnimatorOfFloat.setDuration(this.f10431f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.e
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f10429a.F(valueAnimator);
            }
        });
        return valueAnimatorOfFloat;
    }

    private void D() {
        ValueAnimator valueAnimatorC = C();
        ValueAnimator valueAnimatorB = B(0.0f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f10437l = animatorSet;
        animatorSet.playTogether(valueAnimatorC, valueAnimatorB);
        this.f10437l.addListener(new a());
        ValueAnimator valueAnimatorB2 = B(1.0f, 0.0f);
        this.f10438m = valueAnimatorB2;
        valueAnimatorB2.addListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E(ValueAnimator valueAnimator) {
        this.f10499d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f10499d.setScaleX(fFloatValue);
        this.f10499d.setScaleY(fFloatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G(View view) {
        EditText editText = this.f10434i;
        if (editText == null) {
            return;
        }
        Editable text = editText.getText();
        if (text != null) {
            text.clear();
        }
        r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H(View view, boolean z10) {
        A(J());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I() {
        A(true);
    }

    private boolean J() {
        EditText editText = this.f10434i;
        return editText != null && (editText.hasFocus() || this.f10499d.hasFocus()) && this.f10434i.getText().length() > 0;
    }

    @Override // com.google.android.material.textfield.s
    void a(Editable editable) {
        if (this.f10497b.w() != null) {
            return;
        }
        A(J());
    }

    @Override // com.google.android.material.textfield.s
    int c() {
        return R$string.clear_text_end_icon_content_description;
    }

    @Override // com.google.android.material.textfield.s
    int d() {
        return R$drawable.mtrl_ic_cancel;
    }

    @Override // com.google.android.material.textfield.s
    View.OnFocusChangeListener e() {
        return this.f10436k;
    }

    @Override // com.google.android.material.textfield.s
    View.OnClickListener f() {
        return this.f10435j;
    }

    @Override // com.google.android.material.textfield.s
    View.OnFocusChangeListener g() {
        return this.f10436k;
    }

    @Override // com.google.android.material.textfield.s
    public void n(EditText editText) {
        this.f10434i = editText;
        this.f10496a.setEndIconVisible(J());
    }

    @Override // com.google.android.material.textfield.s
    void q(boolean z10) {
        if (this.f10497b.w() == null) {
            return;
        }
        A(z10);
    }

    @Override // com.google.android.material.textfield.s
    void s() {
        D();
    }

    @Override // com.google.android.material.textfield.s
    void u() {
        EditText editText = this.f10434i;
        if (editText != null) {
            editText.post(new Runnable() { // from class: com.google.android.material.textfield.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f10428a.I();
                }
            });
        }
    }
}
