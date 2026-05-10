package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import com.google.android.material.progressindicator.f;

/* JADX INFO: loaded from: classes.dex */
final class j extends g {

    /* JADX INFO: renamed from: i */
    private static final Property f9920i = new b(Float.class, "animationFraction");

    /* JADX INFO: renamed from: c */
    private ObjectAnimator f9921c;

    /* JADX INFO: renamed from: d */
    private j0.b f9922d;

    /* JADX INFO: renamed from: e */
    private final com.google.android.material.progressindicator.a f9923e;

    /* JADX INFO: renamed from: f */
    private int f9924f;

    /* JADX INFO: renamed from: g */
    private boolean f9925g;

    /* JADX INFO: renamed from: h */
    private float f9926h;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            j jVar = j.this;
            jVar.f9924f = (jVar.f9924f + 1) % j.this.f9923e.f9857c.length;
            j.this.f9925g = true;
        }
    }

    class b extends Property {
        b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a */
        public Float get(j jVar) {
            return Float.valueOf(jVar.n());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b */
        public void set(j jVar, Float f10) {
            jVar.r(f10.floatValue());
        }
    }

    public j(LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(3);
        this.f9924f = 1;
        this.f9923e = linearProgressIndicatorSpec;
        this.f9922d = new j0.b();
    }

    public float n() {
        return this.f9926h;
    }

    private void o() {
        if (this.f9921c == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<j, Float>) f9920i, 0.0f, 1.0f);
            this.f9921c = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(333L);
            this.f9921c.setInterpolator(null);
            this.f9921c.setRepeatCount(-1);
            this.f9921c.addListener(new a());
        }
    }

    private void p() {
        if (!this.f9925g || ((f.a) this.f9911b.get(1)).f9907b >= 1.0f) {
            return;
        }
        ((f.a) this.f9911b.get(2)).f9908c = ((f.a) this.f9911b.get(1)).f9908c;
        ((f.a) this.f9911b.get(1)).f9908c = ((f.a) this.f9911b.get(0)).f9908c;
        ((f.a) this.f9911b.get(0)).f9908c = this.f9923e.f9857c[this.f9924f];
        this.f9925g = false;
    }

    private void s(int i10) {
        ((f.a) this.f9911b.get(0)).f9906a = 0.0f;
        float fB = b(i10, 0, 667);
        f.a aVar = (f.a) this.f9911b.get(0);
        f.a aVar2 = (f.a) this.f9911b.get(1);
        float interpolation = this.f9922d.getInterpolation(fB);
        aVar2.f9906a = interpolation;
        aVar.f9907b = interpolation;
        f.a aVar3 = (f.a) this.f9911b.get(1);
        f.a aVar4 = (f.a) this.f9911b.get(2);
        float interpolation2 = this.f9922d.getInterpolation(fB + 0.49925038f);
        aVar4.f9906a = interpolation2;
        aVar3.f9907b = interpolation2;
        ((f.a) this.f9911b.get(2)).f9907b = 1.0f;
    }

    @Override // com.google.android.material.progressindicator.g
    public void a() {
        ObjectAnimator objectAnimator = this.f9921c;
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
    }

    @Override // com.google.android.material.progressindicator.g
    public void f() {
    }

    @Override // com.google.android.material.progressindicator.g
    public void g() {
        o();
        q();
        this.f9921c.start();
    }

    @Override // com.google.android.material.progressindicator.g
    public void h() {
    }

    void q() {
        this.f9925g = true;
        this.f9924f = 1;
        for (f.a aVar : this.f9911b) {
            com.google.android.material.progressindicator.a aVar2 = this.f9923e;
            aVar.f9908c = aVar2.f9857c[0];
            aVar.f9909d = aVar2.f9861g / 2;
        }
    }

    void r(float f10) {
        this.f9926h = f10;
        s((int) (f10 * 333.0f));
        p();
        this.f9910a.invalidateSelf();
    }
}
