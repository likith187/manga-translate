package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.Property;
import android.view.animation.Interpolator;
import com.google.android.material.R$anim;
import com.google.android.material.progressindicator.f;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class k extends g {

    /* JADX INFO: renamed from: k */
    private static final int[] f9928k = {533, 567, 850, 750};

    /* JADX INFO: renamed from: l */
    private static final int[] f9929l = {1267, 1000, 333, 0};

    /* JADX INFO: renamed from: m */
    private static final Property f9930m = new c(Float.class, "animationFraction");

    /* JADX INFO: renamed from: c */
    private ObjectAnimator f9931c;

    /* JADX INFO: renamed from: d */
    private ObjectAnimator f9932d;

    /* JADX INFO: renamed from: e */
    private final Interpolator[] f9933e;

    /* JADX INFO: renamed from: f */
    private final com.google.android.material.progressindicator.a f9934f;

    /* JADX INFO: renamed from: g */
    private int f9935g;

    /* JADX INFO: renamed from: h */
    private boolean f9936h;

    /* JADX INFO: renamed from: i */
    private float f9937i;

    /* JADX INFO: renamed from: j */
    androidx.vectordrawable.graphics.drawable.b f9938j;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            k kVar = k.this;
            kVar.f9935g = (kVar.f9935g + 1) % k.this.f9934f.f9857c.length;
            k.this.f9936h = true;
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            k.this.a();
            k kVar = k.this;
            androidx.vectordrawable.graphics.drawable.b bVar = kVar.f9938j;
            if (bVar != null) {
                bVar.b(kVar.f9910a);
            }
        }
    }

    class c extends Property {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a */
        public Float get(k kVar) {
            return Float.valueOf(kVar.n());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b */
        public void set(k kVar, Float f10) {
            kVar.r(f10.floatValue());
        }
    }

    public k(Context context, LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(2);
        this.f9935g = 0;
        this.f9938j = null;
        this.f9934f = linearProgressIndicatorSpec;
        this.f9933e = new Interpolator[]{androidx.vectordrawable.graphics.drawable.d.a(context, R$anim.linear_indeterminate_line1_head_interpolator), androidx.vectordrawable.graphics.drawable.d.a(context, R$anim.linear_indeterminate_line1_tail_interpolator), androidx.vectordrawable.graphics.drawable.d.a(context, R$anim.linear_indeterminate_line2_head_interpolator), androidx.vectordrawable.graphics.drawable.d.a(context, R$anim.linear_indeterminate_line2_tail_interpolator)};
    }

    public float n() {
        return this.f9937i;
    }

    private void o() {
        if (this.f9931c == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<k, Float>) f9930m, 0.0f, 1.0f);
            this.f9931c = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(1800L);
            this.f9931c.setInterpolator(null);
            this.f9931c.setRepeatCount(-1);
            this.f9931c.addListener(new a());
        }
        if (this.f9932d == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, (Property<k, Float>) f9930m, 1.0f);
            this.f9932d = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(1800L);
            this.f9932d.setInterpolator(null);
            this.f9932d.addListener(new b());
        }
    }

    private void p() {
        if (this.f9936h) {
            Iterator it = this.f9911b.iterator();
            while (it.hasNext()) {
                ((f.a) it.next()).f9908c = this.f9934f.f9857c[this.f9935g];
            }
            this.f9936h = false;
        }
    }

    private void s(int i10) {
        for (int i11 = 0; i11 < this.f9911b.size(); i11++) {
            f.a aVar = (f.a) this.f9911b.get(i11);
            int[] iArr = f9929l;
            int i12 = i11 * 2;
            int i13 = iArr[i12];
            int[] iArr2 = f9928k;
            aVar.f9906a = x.a.a(this.f9933e[i12].getInterpolation(b(i10, i13, iArr2[i12])), 0.0f, 1.0f);
            int i14 = i12 + 1;
            aVar.f9907b = x.a.a(this.f9933e[i14].getInterpolation(b(i10, iArr[i14], iArr2[i14])), 0.0f, 1.0f);
        }
    }

    @Override // com.google.android.material.progressindicator.g
    public void a() {
        ObjectAnimator objectAnimator = this.f9931c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.g
    public void c() {
        q();
    }

    @Override // com.google.android.material.progressindicator.g
    public void d(androidx.vectordrawable.graphics.drawable.b bVar) {
        this.f9938j = bVar;
    }

    @Override // com.google.android.material.progressindicator.g
    public void f() {
        ObjectAnimator objectAnimator = this.f9932d;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        a();
        if (this.f9910a.isVisible()) {
            this.f9932d.setFloatValues(this.f9937i, 1.0f);
            this.f9932d.setDuration((long) ((1.0f - this.f9937i) * 1800.0f));
            this.f9932d.start();
        }
    }

    @Override // com.google.android.material.progressindicator.g
    public void g() {
        o();
        q();
        this.f9931c.start();
    }

    @Override // com.google.android.material.progressindicator.g
    public void h() {
        this.f9938j = null;
    }

    void q() {
        this.f9935g = 0;
        Iterator it = this.f9911b.iterator();
        while (it.hasNext()) {
            ((f.a) it.next()).f9908c = this.f9934f.f9857c[0];
        }
    }

    void r(float f10) {
        this.f9937i = f10;
        s((int) (f10 * 1800.0f));
        p();
        this.f9910a.invalidateSelf();
    }
}
