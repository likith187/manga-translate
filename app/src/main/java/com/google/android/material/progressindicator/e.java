package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.util.Property;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class e extends Drawable implements Animatable {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final Property f9888r = new c(Float.class, "growFraction");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f9889a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final com.google.android.material.progressindicator.a f9890b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ValueAnimator f9892f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ValueAnimator f9893h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f9894i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f9895j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f9896k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List f9897l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private androidx.vectordrawable.graphics.drawable.b f9898m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f9899n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f9900o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f9902q;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final Paint f9901p = new Paint();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    h4.a f9891c = new h4.a();

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            e.this.f();
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            e.super.setVisible(false, false);
            e.this.e();
        }
    }

    class c extends Property {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(e eVar) {
            return Float.valueOf(eVar.h());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(e eVar, Float f10) {
            eVar.n(f10.floatValue());
        }
    }

    e(Context context, com.google.android.material.progressindicator.a aVar) {
        this.f9889a = context;
        this.f9890b = aVar;
        setAlpha(255);
    }

    private void d(ValueAnimator... valueAnimatorArr) {
        boolean z10 = this.f9899n;
        this.f9899n = true;
        for (ValueAnimator valueAnimator : valueAnimatorArr) {
            valueAnimator.cancel();
        }
        this.f9899n = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        androidx.vectordrawable.graphics.drawable.b bVar = this.f9898m;
        if (bVar != null) {
            bVar.b(this);
        }
        List list = this.f9897l;
        if (list == null || this.f9899n) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((androidx.vectordrawable.graphics.drawable.b) it.next()).b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        androidx.vectordrawable.graphics.drawable.b bVar = this.f9898m;
        if (bVar != null) {
            bVar.c(this);
        }
        List list = this.f9897l;
        if (list == null || this.f9899n) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((androidx.vectordrawable.graphics.drawable.b) it.next()).c(this);
        }
    }

    private void g(ValueAnimator... valueAnimatorArr) {
        boolean z10 = this.f9899n;
        this.f9899n = true;
        for (ValueAnimator valueAnimator : valueAnimatorArr) {
            valueAnimator.end();
        }
        this.f9899n = z10;
    }

    private void l() {
        if (this.f9892f == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<e, Float>) f9888r, 0.0f, 1.0f);
            this.f9892f = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(500L);
            this.f9892f.setInterpolator(x3.a.f16369b);
            p(this.f9892f);
        }
        if (this.f9893h == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, (Property<e, Float>) f9888r, 1.0f, 0.0f);
            this.f9893h = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(500L);
            this.f9893h.setInterpolator(x3.a.f16369b);
            o(this.f9893h);
        }
    }

    private void o(ValueAnimator valueAnimator) {
        ValueAnimator valueAnimator2 = this.f9893h;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            throw new IllegalArgumentException("Cannot set hideAnimator while the current hideAnimator is running.");
        }
        this.f9893h = valueAnimator;
        valueAnimator.addListener(new b());
    }

    private void p(ValueAnimator valueAnimator) {
        ValueAnimator valueAnimator2 = this.f9892f;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            throw new IllegalArgumentException("Cannot set showAnimator while the current showAnimator is running.");
        }
        this.f9892f = valueAnimator;
        valueAnimator.addListener(new a());
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f9902q;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    float h() {
        if (this.f9890b.b() || this.f9890b.a()) {
            return (this.f9895j || this.f9894i) ? this.f9896k : this.f9900o;
        }
        return 1.0f;
    }

    public boolean i() {
        return q(false, false, false);
    }

    public boolean isRunning() {
        return k() || j();
    }

    public boolean j() {
        ValueAnimator valueAnimator = this.f9893h;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.f9895j;
    }

    public boolean k() {
        ValueAnimator valueAnimator = this.f9892f;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.f9894i;
    }

    public void m(androidx.vectordrawable.graphics.drawable.b bVar) {
        if (this.f9897l == null) {
            this.f9897l = new ArrayList();
        }
        if (this.f9897l.contains(bVar)) {
            return;
        }
        this.f9897l.add(bVar);
    }

    void n(float f10) {
        if (this.f9900o != f10) {
            this.f9900o = f10;
            invalidateSelf();
        }
    }

    public boolean q(boolean z10, boolean z11, boolean z12) {
        return r(z10, z11, z12 && this.f9891c.a(this.f9889a.getContentResolver()) > 0.0f);
    }

    boolean r(boolean z10, boolean z11, boolean z12) {
        l();
        if (!isVisible() && !z10) {
            return false;
        }
        ValueAnimator valueAnimator = z10 ? this.f9892f : this.f9893h;
        ValueAnimator valueAnimator2 = z10 ? this.f9893h : this.f9892f;
        if (!z12) {
            if (valueAnimator2.isRunning()) {
                d(valueAnimator2);
            }
            if (valueAnimator.isRunning()) {
                valueAnimator.end();
            } else {
                g(valueAnimator);
            }
            return super.setVisible(z10, false);
        }
        if (valueAnimator.isRunning()) {
            return false;
        }
        boolean z13 = !z10 || super.setVisible(z10, false);
        if (!(z10 ? this.f9890b.b() : this.f9890b.a())) {
            g(valueAnimator);
            return z13;
        }
        if (z11 || !valueAnimator.isPaused()) {
            valueAnimator.start();
        } else {
            valueAnimator.resume();
        }
        return z13;
    }

    public boolean s(androidx.vectordrawable.graphics.drawable.b bVar) {
        List list = this.f9897l;
        if (list == null || !list.contains(bVar)) {
            return false;
        }
        this.f9897l.remove(bVar);
        if (!this.f9897l.isEmpty()) {
            return true;
        }
        this.f9897l = null;
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f9902q = i10;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f9901p.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        return q(z10, z11, true);
    }

    public void start() {
        r(true, true, false);
    }

    public void stop() {
        r(false, true, false);
    }
}
