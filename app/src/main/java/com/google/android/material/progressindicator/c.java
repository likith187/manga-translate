package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import com.google.android.material.progressindicator.f;

/* JADX INFO: loaded from: classes.dex */
final class c extends g {

    /* JADX INFO: renamed from: k */
    private static final int[] f9867k = {0, 1350, 2700, 4050};

    /* JADX INFO: renamed from: l */
    private static final int[] f9868l = {667, 2017, 3367, 4717};

    /* JADX INFO: renamed from: m */
    private static final int[] f9869m = {1000, 2350, 3700, 5050};

    /* JADX INFO: renamed from: n */
    private static final Property f9870n = new C0115c(Float.class, "animationFraction");

    /* JADX INFO: renamed from: o */
    private static final Property f9871o = new d(Float.class, "completeEndFraction");

    /* JADX INFO: renamed from: c */
    private ObjectAnimator f9872c;

    /* JADX INFO: renamed from: d */
    private ObjectAnimator f9873d;

    /* JADX INFO: renamed from: e */
    private final j0.b f9874e;

    /* JADX INFO: renamed from: f */
    private final com.google.android.material.progressindicator.a f9875f;

    /* JADX INFO: renamed from: g */
    private int f9876g;

    /* JADX INFO: renamed from: h */
    private float f9877h;

    /* JADX INFO: renamed from: i */
    private float f9878i;

    /* JADX INFO: renamed from: j */
    androidx.vectordrawable.graphics.drawable.b f9879j;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            c cVar = c.this;
            cVar.f9876g = (cVar.f9876g + 4) % c.this.f9875f.f9857c.length;
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            c.this.a();
            c cVar = c.this;
            androidx.vectordrawable.graphics.drawable.b bVar = cVar.f9879j;
            if (bVar != null) {
                bVar.b(cVar.f9910a);
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.progressindicator.c$c */
    class C0115c extends Property {
        C0115c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a */
        public Float get(c cVar) {
            return Float.valueOf(cVar.o());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b */
        public void set(c cVar, Float f10) {
            cVar.t(f10.floatValue());
        }
    }

    class d extends Property {
        d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a */
        public Float get(c cVar) {
            return Float.valueOf(cVar.p());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b */
        public void set(c cVar, Float f10) {
            cVar.u(f10.floatValue());
        }
    }

    public c(CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(1);
        this.f9876g = 0;
        this.f9879j = null;
        this.f9875f = circularProgressIndicatorSpec;
        this.f9874e = new j0.b();
    }

    public float o() {
        return this.f9877h;
    }

    public float p() {
        return this.f9878i;
    }

    private void q() {
        if (this.f9872c == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<c, Float>) f9870n, 0.0f, 1.0f);
            this.f9872c = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(5400L);
            this.f9872c.setInterpolator(null);
            this.f9872c.setRepeatCount(-1);
            this.f9872c.addListener(new a());
        }
        if (this.f9873d == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, (Property<c, Float>) f9871o, 0.0f, 1.0f);
            this.f9873d = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(333L);
            this.f9873d.setInterpolator(this.f9874e);
            this.f9873d.addListener(new b());
        }
    }

    private void r(int i10) {
        for (int i11 = 0; i11 < 4; i11++) {
            float fB = b(i10, f9869m[i11], 333);
            if (fB >= 0.0f && fB <= 1.0f) {
                int i12 = i11 + this.f9876g;
                int[] iArr = this.f9875f.f9857c;
                int length = i12 % iArr.length;
                int length2 = (length + 1) % iArr.length;
                int i13 = iArr[length];
                int i14 = iArr[length2];
                ((f.a) this.f9911b.get(0)).f9908c = x3.c.b().evaluate(this.f9874e.getInterpolation(fB), Integer.valueOf(i13), Integer.valueOf(i14)).intValue();
                return;
            }
        }
    }

    public void u(float f10) {
        this.f9878i = f10;
    }

    private void v(int i10) {
        f.a aVar = (f.a) this.f9911b.get(0);
        float f10 = this.f9877h;
        aVar.f9906a = (f10 * 1520.0f) - 20.0f;
        aVar.f9907b = f10 * 1520.0f;
        for (int i11 = 0; i11 < 4; i11++) {
            aVar.f9907b += this.f9874e.getInterpolation(b(i10, f9867k[i11], 667)) * 250.0f;
            aVar.f9906a += this.f9874e.getInterpolation(b(i10, f9868l[i11], 667)) * 250.0f;
        }
        float f11 = aVar.f9906a;
        float f12 = aVar.f9907b;
        aVar.f9906a = (f11 + ((f12 - f11) * this.f9878i)) / 360.0f;
        aVar.f9907b = f12 / 360.0f;
    }

    @Override // com.google.android.material.progressindicator.g
    void a() {
        ObjectAnimator objectAnimator = this.f9872c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.g
    public void c() {
        s();
    }

    @Override // com.google.android.material.progressindicator.g
    public void d(androidx.vectordrawable.graphics.drawable.b bVar) {
        this.f9879j = bVar;
    }

    @Override // com.google.android.material.progressindicator.g
    void f() {
        ObjectAnimator objectAnimator = this.f9873d;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        if (this.f9910a.isVisible()) {
            this.f9873d.start();
        } else {
            a();
        }
    }

    @Override // com.google.android.material.progressindicator.g
    void g() {
        q();
        s();
        this.f9872c.start();
    }

    @Override // com.google.android.material.progressindicator.g
    public void h() {
        this.f9879j = null;
    }

    void s() {
        this.f9876g = 0;
        ((f.a) this.f9911b.get(0)).f9908c = this.f9875f.f9857c[0];
        this.f9878i = 0.0f;
    }

    void t(float f10) {
        this.f9877h = f10;
        int i10 = (int) (f10 * 5400.0f);
        v(i10);
        r(i10);
        this.f9910a.invalidateSelf();
    }
}
