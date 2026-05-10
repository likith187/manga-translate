package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.util.Property;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.core.view.m0;
import com.google.android.material.R$attr;
import com.google.android.material.R$integer;
import com.google.android.material.internal.StateListAnimator;
import com.google.android.material.shape.n;
import com.google.android.material.shape.r;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
abstract class d {
    static final TimeInterpolator D = x3.a.f16370c;
    private static final int E = R$attr.motionDurationLong2;
    private static final int F = R$attr.motionEasingEmphasizedInterpolator;
    private static final int G = R$attr.motionDurationMedium1;
    private static final int H = R$attr.motionEasingEmphasizedAccelerateInterpolator;
    static final int[] I = {16842919, 16842910};
    static final int[] J = {16843623, 16842908, 16842910};
    static final int[] K = {16842908, 16842910};
    static final int[] L = {16843623, 16842910};
    static final int[] M = {16842910};
    static final int[] N = new int[0];
    private ViewTreeObserver.OnPreDrawListener C;

    /* JADX INFO: renamed from: a */
    n f9634a;

    /* JADX INFO: renamed from: b */
    com.google.android.material.shape.i f9635b;

    /* JADX INFO: renamed from: c */
    Drawable f9636c;

    /* JADX INFO: renamed from: d */
    com.google.android.material.floatingactionbutton.c f9637d;

    /* JADX INFO: renamed from: e */
    Drawable f9638e;

    /* JADX INFO: renamed from: f */
    boolean f9639f;

    /* JADX INFO: renamed from: h */
    float f9641h;

    /* JADX INFO: renamed from: i */
    float f9642i;

    /* JADX INFO: renamed from: j */
    float f9643j;

    /* JADX INFO: renamed from: k */
    int f9644k;

    /* JADX INFO: renamed from: l */
    private final StateListAnimator f9645l;

    /* JADX INFO: renamed from: m */
    private Animator f9646m;

    /* JADX INFO: renamed from: n */
    private x3.h f9647n;

    /* JADX INFO: renamed from: o */
    private x3.h f9648o;

    /* JADX INFO: renamed from: p */
    private float f9649p;

    /* JADX INFO: renamed from: r */
    private int f9651r;

    /* JADX INFO: renamed from: t */
    private ArrayList f9653t;

    /* JADX INFO: renamed from: u */
    private ArrayList f9654u;

    /* JADX INFO: renamed from: v */
    private ArrayList f9655v;

    /* JADX INFO: renamed from: w */
    final FloatingActionButton f9656w;

    /* JADX INFO: renamed from: x */
    final k4.b f9657x;

    /* JADX INFO: renamed from: g */
    boolean f9640g = true;

    /* JADX INFO: renamed from: q */
    private float f9650q = 1.0f;

    /* JADX INFO: renamed from: s */
    private int f9652s = 0;

    /* JADX INFO: renamed from: y */
    private final Rect f9658y = new Rect();

    /* JADX INFO: renamed from: z */
    private final RectF f9659z = new RectF();
    private final RectF A = new RectF();
    private final Matrix B = new Matrix();

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        private boolean f9660a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ boolean f9661b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ j f9662c;

        a(boolean z10, j jVar) {
            this.f9661b = z10;
            this.f9662c = jVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f9660a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d.this.f9652s = 0;
            d.this.f9646m = null;
            if (this.f9660a) {
                return;
            }
            FloatingActionButton floatingActionButton = d.this.f9656w;
            boolean z10 = this.f9661b;
            floatingActionButton.internalSetVisibility(z10 ? 8 : 4, z10);
            j jVar = this.f9662c;
            if (jVar != null) {
                jVar.b();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            d.this.f9656w.internalSetVisibility(0, this.f9661b);
            d.this.f9652s = 1;
            d.this.f9646m = animator;
            this.f9660a = false;
        }
    }

    class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ boolean f9664a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ j f9665b;

        b(boolean z10, j jVar) {
            this.f9664a = z10;
            this.f9665b = jVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d.this.f9652s = 0;
            d.this.f9646m = null;
            j jVar = this.f9665b;
            if (jVar != null) {
                jVar.a();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            d.this.f9656w.internalSetVisibility(0, this.f9664a);
            d.this.f9652s = 2;
            d.this.f9646m = animator;
        }
    }

    class c extends x3.g {
        c() {
        }

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a */
        public Matrix evaluate(float f10, Matrix matrix, Matrix matrix2) {
            d.this.f9650q = f10;
            return super.evaluate(f10, matrix, matrix2);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.d$d */
    class C0114d implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ float f9668a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ float f9669b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ float f9670c;

        /* JADX INFO: renamed from: f */
        final /* synthetic */ float f9671f;

        /* JADX INFO: renamed from: h */
        final /* synthetic */ float f9672h;

        /* JADX INFO: renamed from: i */
        final /* synthetic */ float f9673i;

        /* JADX INFO: renamed from: j */
        final /* synthetic */ float f9674j;

        /* JADX INFO: renamed from: k */
        final /* synthetic */ Matrix f9675k;

        C0114d(float f10, float f11, float f12, float f13, float f14, float f15, float f16, Matrix matrix) {
            this.f9668a = f10;
            this.f9669b = f11;
            this.f9670c = f12;
            this.f9671f = f13;
            this.f9672h = f14;
            this.f9673i = f15;
            this.f9674j = f16;
            this.f9675k = matrix;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            d.this.f9656w.setAlpha(x3.a.b(this.f9668a, this.f9669b, 0.0f, 0.2f, fFloatValue));
            d.this.f9656w.setScaleX(x3.a.a(this.f9670c, this.f9671f, fFloatValue));
            d.this.f9656w.setScaleY(x3.a.a(this.f9672h, this.f9671f, fFloatValue));
            d.this.f9650q = x3.a.a(this.f9673i, this.f9674j, fFloatValue);
            d.this.h(x3.a.a(this.f9673i, this.f9674j, fFloatValue), this.f9675k);
            d.this.f9656w.setImageMatrix(this.f9675k);
        }
    }

    class e implements ViewTreeObserver.OnPreDrawListener {
        e() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            d.this.H();
            return true;
        }
    }

    private class f extends l {
        f() {
            super(d.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.d.l
        protected float a() {
            return 0.0f;
        }
    }

    private class g extends l {
        g() {
            super(d.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.d.l
        protected float a() {
            d dVar = d.this;
            return dVar.f9641h + dVar.f9642i;
        }
    }

    private class h extends l {
        h() {
            super(d.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.d.l
        protected float a() {
            d dVar = d.this;
            return dVar.f9641h + dVar.f9643j;
        }
    }

    interface i {
        void a();

        void b();
    }

    interface j {
        void a();

        void b();
    }

    private class k extends l {
        k() {
            super(d.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.d.l
        protected float a() {
            return d.this.f9641h;
        }
    }

    private abstract class l extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a */
        private boolean f9682a;

        /* JADX INFO: renamed from: b */
        private float f9683b;

        /* JADX INFO: renamed from: c */
        private float f9684c;

        private l() {
        }

        protected abstract float a();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d.this.g0((int) this.f9684c);
            this.f9682a = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.f9682a) {
                com.google.android.material.shape.i iVar = d.this.f9635b;
                this.f9683b = iVar == null ? 0.0f : iVar.getElevation();
                this.f9684c = a();
                this.f9682a = true;
            }
            d dVar = d.this;
            float f10 = this.f9683b;
            dVar.g0((int) (f10 + ((this.f9684c - f10) * valueAnimator.getAnimatedFraction())));
        }

        /* synthetic */ l(d dVar, a aVar) {
            this();
        }
    }

    d(FloatingActionButton floatingActionButton, k4.b bVar) {
        this.f9656w = floatingActionButton;
        this.f9657x = bVar;
        StateListAnimator stateListAnimator = new StateListAnimator();
        this.f9645l = stateListAnimator;
        stateListAnimator.addState(I, k(new h()));
        stateListAnimator.addState(J, k(new g()));
        stateListAnimator.addState(K, k(new g()));
        stateListAnimator.addState(L, k(new g()));
        stateListAnimator.addState(M, k(new k()));
        stateListAnimator.addState(N, k(new f()));
        this.f9649p = floatingActionButton.getRotation();
    }

    private boolean a0() {
        return m0.O(this.f9656w) && !this.f9656w.isInEditMode();
    }

    public void h(float f10, Matrix matrix) {
        matrix.reset();
        if (this.f9656w.getDrawable() == null || this.f9651r == 0) {
            return;
        }
        RectF rectF = this.f9659z;
        RectF rectF2 = this.A;
        rectF.set(0.0f, 0.0f, r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
        int i10 = this.f9651r;
        rectF2.set(0.0f, 0.0f, i10, i10);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        int i11 = this.f9651r;
        matrix.postScale(f10, f10, i11 / 2.0f, i11 / 2.0f);
    }

    private void h0(ObjectAnimator objectAnimator) {
    }

    private AnimatorSet i(x3.h hVar, float f10, float f11, float f12) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f9656w, (Property<FloatingActionButton, Float>) View.ALPHA, f10);
        hVar.h("opacity").a(objectAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f9656w, (Property<FloatingActionButton, Float>) View.SCALE_X, f11);
        hVar.h("scale").a(objectAnimatorOfFloat2);
        h0(objectAnimatorOfFloat2);
        arrayList.add(objectAnimatorOfFloat2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f9656w, (Property<FloatingActionButton, Float>) View.SCALE_Y, f11);
        hVar.h("scale").a(objectAnimatorOfFloat3);
        h0(objectAnimatorOfFloat3);
        arrayList.add(objectAnimatorOfFloat3);
        h(f12, this.B);
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(this.f9656w, new x3.f(), new c(), new Matrix(this.B));
        hVar.h("iconScale").a(objectAnimatorOfObject);
        arrayList.add(objectAnimatorOfObject);
        AnimatorSet animatorSet = new AnimatorSet();
        x3.b.a(animatorSet, arrayList);
        return animatorSet;
    }

    private AnimatorSet j(float f10, float f11, float f12, int i10, int i11) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new C0114d(this.f9656w.getAlpha(), f10, this.f9656w.getScaleX(), f11, this.f9656w.getScaleY(), this.f9650q, f12, new Matrix(this.B)));
        arrayList.add(valueAnimatorOfFloat);
        x3.b.a(animatorSet, arrayList);
        animatorSet.setDuration(g4.i.f(this.f9656w.getContext(), i10, this.f9656w.getContext().getResources().getInteger(R$integer.material_motion_duration_long_1)));
        animatorSet.setInterpolator(g4.i.g(this.f9656w.getContext(), i11, x3.a.f16369b));
        return animatorSet;
    }

    private ValueAnimator k(l lVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(D);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(lVar);
        valueAnimator.addUpdateListener(lVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    private ViewTreeObserver.OnPreDrawListener q() {
        if (this.C == null) {
            this.C = new e();
        }
        return this.C;
    }

    abstract void A();

    void B() {
        com.google.android.material.shape.i iVar = this.f9635b;
        if (iVar != null) {
            com.google.android.material.shape.j.f(this.f9656w, iVar);
        }
        if (K()) {
            this.f9656w.getViewTreeObserver().addOnPreDrawListener(q());
        }
    }

    abstract void C();

    void D() {
        ViewTreeObserver viewTreeObserver = this.f9656w.getViewTreeObserver();
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = this.C;
        if (onPreDrawListener != null) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            this.C = null;
        }
    }

    abstract void E(int[] iArr);

    abstract void F(float f10, float f11, float f12);

    void G(Rect rect) {
        c0.h.f(this.f9638e, "Didn't initialize content background");
        if (!Z()) {
            this.f9657x.a(this.f9638e);
        } else {
            this.f9657x.a(new InsetDrawable(this.f9638e, rect.left, rect.top, rect.right, rect.bottom));
        }
    }

    void H() {
        float rotation = this.f9656w.getRotation();
        if (this.f9649p != rotation) {
            this.f9649p = rotation;
            d0();
        }
    }

    void I() {
        ArrayList arrayList = this.f9655v;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((i) it.next()).b();
            }
        }
    }

    void J() {
        ArrayList arrayList = this.f9655v;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((i) it.next()).a();
            }
        }
    }

    abstract boolean K();

    void L(ColorStateList colorStateList) {
        com.google.android.material.shape.i iVar = this.f9635b;
        if (iVar != null) {
            iVar.setTintList(colorStateList);
        }
        com.google.android.material.floatingactionbutton.c cVar = this.f9637d;
        if (cVar != null) {
            cVar.c(colorStateList);
        }
    }

    void M(PorterDuff.Mode mode) {
        com.google.android.material.shape.i iVar = this.f9635b;
        if (iVar != null) {
            iVar.setTintMode(mode);
        }
    }

    final void N(float f10) {
        if (this.f9641h != f10) {
            this.f9641h = f10;
            F(f10, this.f9642i, this.f9643j);
        }
    }

    void O(boolean z10) {
        this.f9639f = z10;
    }

    final void P(x3.h hVar) {
        this.f9648o = hVar;
    }

    final void Q(float f10) {
        if (this.f9642i != f10) {
            this.f9642i = f10;
            F(this.f9641h, f10, this.f9643j);
        }
    }

    final void R(float f10) {
        this.f9650q = f10;
        Matrix matrix = this.B;
        h(f10, matrix);
        this.f9656w.setImageMatrix(matrix);
    }

    final void S(int i10) {
        if (this.f9651r != i10) {
            this.f9651r = i10;
            e0();
        }
    }

    void T(int i10) {
        this.f9644k = i10;
    }

    final void U(float f10) {
        if (this.f9643j != f10) {
            this.f9643j = f10;
            F(this.f9641h, this.f9642i, f10);
        }
    }

    void V(ColorStateList colorStateList) {
        Drawable drawable = this.f9636c;
        if (drawable != null) {
            v.a.o(drawable, j4.b.d(colorStateList));
        }
    }

    void W(boolean z10) {
        this.f9640g = z10;
        f0();
    }

    final void X(n nVar) {
        this.f9634a = nVar;
        com.google.android.material.shape.i iVar = this.f9635b;
        if (iVar != null) {
            iVar.setShapeAppearanceModel(nVar);
        }
        Object obj = this.f9636c;
        if (obj instanceof r) {
            ((r) obj).setShapeAppearanceModel(nVar);
        }
        com.google.android.material.floatingactionbutton.c cVar = this.f9637d;
        if (cVar != null) {
            cVar.f(nVar);
        }
    }

    final void Y(x3.h hVar) {
        this.f9647n = hVar;
    }

    abstract boolean Z();

    final boolean b0() {
        return !this.f9639f || this.f9656w.getSizeDimension() >= this.f9644k;
    }

    void c0(j jVar, boolean z10) {
        if (z()) {
            return;
        }
        Animator animator = this.f9646m;
        if (animator != null) {
            animator.cancel();
        }
        boolean z11 = this.f9647n == null;
        if (!a0()) {
            this.f9656w.internalSetVisibility(0, z10);
            this.f9656w.setAlpha(1.0f);
            this.f9656w.setScaleY(1.0f);
            this.f9656w.setScaleX(1.0f);
            R(1.0f);
            if (jVar != null) {
                jVar.a();
                return;
            }
            return;
        }
        if (this.f9656w.getVisibility() != 0) {
            this.f9656w.setAlpha(0.0f);
            this.f9656w.setScaleY(z11 ? 0.4f : 0.0f);
            this.f9656w.setScaleX(z11 ? 0.4f : 0.0f);
            R(z11 ? 0.4f : 0.0f);
        }
        x3.h hVar = this.f9647n;
        AnimatorSet animatorSetI = hVar != null ? i(hVar, 1.0f, 1.0f, 1.0f) : j(1.0f, 1.0f, 1.0f, E, F);
        animatorSetI.addListener(new b(z10, jVar));
        ArrayList arrayList = this.f9653t;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetI.addListener((Animator.AnimatorListener) it.next());
            }
        }
        animatorSetI.start();
    }

    abstract void d0();

    public void e(Animator.AnimatorListener animatorListener) {
        if (this.f9654u == null) {
            this.f9654u = new ArrayList();
        }
        this.f9654u.add(animatorListener);
    }

    final void e0() {
        R(this.f9650q);
    }

    void f(Animator.AnimatorListener animatorListener) {
        if (this.f9653t == null) {
            this.f9653t = new ArrayList();
        }
        this.f9653t.add(animatorListener);
    }

    final void f0() {
        Rect rect = this.f9658y;
        r(rect);
        G(rect);
        this.f9657x.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
    }

    void g(i iVar) {
        if (this.f9655v == null) {
            this.f9655v = new ArrayList();
        }
        this.f9655v.add(iVar);
    }

    void g0(float f10) {
        com.google.android.material.shape.i iVar = this.f9635b;
        if (iVar != null) {
            iVar.setElevation(f10);
        }
    }

    final Drawable l() {
        return this.f9638e;
    }

    abstract float m();

    boolean n() {
        return this.f9639f;
    }

    final x3.h o() {
        return this.f9648o;
    }

    float p() {
        return this.f9642i;
    }

    void r(Rect rect) {
        int iV = v();
        int iMax = Math.max(iV, (int) Math.ceil(this.f9640g ? m() + this.f9643j : 0.0f));
        int iMax2 = Math.max(iV, (int) Math.ceil(r1 * 1.5f));
        rect.set(iMax, iMax2, iMax, iMax2);
    }

    float s() {
        return this.f9643j;
    }

    final n t() {
        return this.f9634a;
    }

    final x3.h u() {
        return this.f9647n;
    }

    int v() {
        if (this.f9639f) {
            return Math.max((this.f9644k - this.f9656w.getSizeDimension()) / 2, 0);
        }
        return 0;
    }

    void w(j jVar, boolean z10) {
        if (y()) {
            return;
        }
        Animator animator = this.f9646m;
        if (animator != null) {
            animator.cancel();
        }
        if (!a0()) {
            this.f9656w.internalSetVisibility(z10 ? 8 : 4, z10);
            if (jVar != null) {
                jVar.b();
                return;
            }
            return;
        }
        x3.h hVar = this.f9648o;
        AnimatorSet animatorSetI = hVar != null ? i(hVar, 0.0f, 0.0f, 0.0f) : j(0.0f, 0.4f, 0.4f, G, H);
        animatorSetI.addListener(new a(z10, jVar));
        ArrayList arrayList = this.f9654u;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetI.addListener((Animator.AnimatorListener) it.next());
            }
        }
        animatorSetI.start();
    }

    abstract void x(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i10);

    boolean y() {
        return this.f9656w.getVisibility() == 0 ? this.f9652s == 1 : this.f9652s != 2;
    }

    boolean z() {
        return this.f9656w.getVisibility() != 0 ? this.f9652s == 2 : this.f9652s != 1;
    }
}
