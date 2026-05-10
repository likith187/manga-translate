package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.m0;
import com.google.android.material.R$id;
import com.google.android.material.circularreveal.c;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.List;
import x3.h;
import x3.i;
import x3.j;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Rect f10622c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final RectF f10623f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final RectF f10624h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int[] f10625i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f10626j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f10627k;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f10628a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f10629b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f10630c;

        a(boolean z10, View view, View view2) {
            this.f10628a = z10;
            this.f10629b = view;
            this.f10630c = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f10628a) {
                return;
            }
            this.f10629b.setVisibility(4);
            this.f10630c.setAlpha(1.0f);
            this.f10630c.setVisibility(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.f10628a) {
                this.f10629b.setVisibility(0);
                this.f10630c.setAlpha(0.0f);
                this.f10630c.setVisibility(4);
            }
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f10632a;

        b(View view) {
            this.f10632a = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f10632a.invalidate();
        }
    }

    class c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.google.android.material.circularreveal.c f10634a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Drawable f10635b;

        c(com.google.android.material.circularreveal.c cVar, Drawable drawable) {
            this.f10634a = cVar;
            this.f10635b = drawable;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f10634a.setCircularRevealOverlayDrawable(null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f10634a.setCircularRevealOverlayDrawable(this.f10635b);
        }
    }

    class d extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.google.android.material.circularreveal.c f10637a;

        d(com.google.android.material.circularreveal.c cVar) {
            this.f10637a = cVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            c.e revealInfo = this.f10637a.getRevealInfo();
            revealInfo.f9369c = Float.MAX_VALUE;
            this.f10637a.setRevealInfo(revealInfo);
        }
    }

    protected static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public h f10639a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public j f10640b;

        protected e() {
        }
    }

    public FabTransformationBehavior() {
        this.f10622c = new Rect();
        this.f10623f = new RectF();
        this.f10624h = new RectF();
        this.f10625i = new int[2];
    }

    private ViewGroup B(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    private ViewGroup g(View view) {
        View viewFindViewById = view.findViewById(R$id.mtrl_child_content_container);
        return viewFindViewById != null ? B(viewFindViewById) : ((view instanceof TransformationChildLayout) || (view instanceof TransformationChildCard)) ? B(((ViewGroup) view).getChildAt(0)) : B(view);
    }

    private void h(View view, e eVar, i iVar, i iVar2, float f10, float f11, float f12, float f13, RectF rectF) {
        float fO = o(eVar, iVar, f10, f12);
        float fO2 = o(eVar, iVar2, f11, f13);
        Rect rect = this.f10622c;
        view.getWindowVisibleDisplayFrame(rect);
        RectF rectF2 = this.f10623f;
        rectF2.set(rect);
        RectF rectF3 = this.f10624h;
        p(view, rectF3);
        rectF3.offset(fO, fO2);
        rectF3.intersect(rectF2);
        rectF.set(rectF3);
    }

    private void i(View view, RectF rectF) {
        p(view, rectF);
        rectF.offset(this.f10626j, this.f10627k);
    }

    private Pair j(float f10, float f11, boolean z10, e eVar) {
        i iVarH;
        i iVarH2;
        if (f10 == 0.0f || f11 == 0.0f) {
            iVarH = eVar.f10639a.h("translationXLinear");
            iVarH2 = eVar.f10639a.h("translationYLinear");
        } else if ((!z10 || f11 >= 0.0f) && (z10 || f11 <= 0.0f)) {
            iVarH = eVar.f10639a.h("translationXCurveDownwards");
            iVarH2 = eVar.f10639a.h("translationYCurveDownwards");
        } else {
            iVarH = eVar.f10639a.h("translationXCurveUpwards");
            iVarH2 = eVar.f10639a.h("translationYCurveUpwards");
        }
        return new Pair(iVarH, iVarH2);
    }

    private float k(View view, View view2, j jVar) {
        RectF rectF = this.f10623f;
        RectF rectF2 = this.f10624h;
        i(view, rectF);
        p(view2, rectF2);
        rectF2.offset(-m(view, view2, jVar), 0.0f);
        return rectF.centerX() - rectF2.left;
    }

    private float l(View view, View view2, j jVar) {
        RectF rectF = this.f10623f;
        RectF rectF2 = this.f10624h;
        i(view, rectF);
        p(view2, rectF2);
        rectF2.offset(0.0f, -n(view, view2, jVar));
        return rectF.centerY() - rectF2.top;
    }

    private float m(View view, View view2, j jVar) {
        float fCenterX;
        float fCenterX2;
        float f10;
        RectF rectF = this.f10623f;
        RectF rectF2 = this.f10624h;
        i(view, rectF);
        p(view2, rectF2);
        int i10 = jVar.f16388a & 7;
        if (i10 == 1) {
            fCenterX = rectF2.centerX();
            fCenterX2 = rectF.centerX();
        } else if (i10 == 3) {
            fCenterX = rectF2.left;
            fCenterX2 = rectF.left;
        } else {
            if (i10 != 5) {
                f10 = 0.0f;
                return f10 + jVar.f16389b;
            }
            fCenterX = rectF2.right;
            fCenterX2 = rectF.right;
        }
        f10 = fCenterX - fCenterX2;
        return f10 + jVar.f16389b;
    }

    private float n(View view, View view2, j jVar) {
        float fCenterY;
        float fCenterY2;
        float f10;
        RectF rectF = this.f10623f;
        RectF rectF2 = this.f10624h;
        i(view, rectF);
        p(view2, rectF2);
        int i10 = jVar.f16388a & 112;
        if (i10 == 16) {
            fCenterY = rectF2.centerY();
            fCenterY2 = rectF.centerY();
        } else if (i10 == 48) {
            fCenterY = rectF2.top;
            fCenterY2 = rectF.top;
        } else {
            if (i10 != 80) {
                f10 = 0.0f;
                return f10 + jVar.f16390c;
            }
            fCenterY = rectF2.bottom;
            fCenterY2 = rectF.bottom;
        }
        f10 = fCenterY - fCenterY2;
        return f10 + jVar.f16390c;
    }

    private float o(e eVar, i iVar, float f10, float f11) {
        long jC = iVar.c();
        long jD = iVar.d();
        i iVarH = eVar.f10639a.h("expansion");
        return x3.a.a(f10, f11, iVar.e().getInterpolation((((iVarH.c() + iVarH.d()) + 17) - jC) / jD));
    }

    private void p(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        view.getLocationInWindow(this.f10625i);
        rectF.offsetTo(r3[0], r3[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    private void q(View view, View view2, boolean z10, boolean z11, e eVar, List list, List list2) {
        ViewGroup viewGroupG;
        ObjectAnimator objectAnimatorOfFloat;
        if (view2 instanceof ViewGroup) {
            if (((view2 instanceof com.google.android.material.circularreveal.c) && com.google.android.material.circularreveal.b.f9353j == 0) || (viewGroupG = g(view2)) == null) {
                return;
            }
            if (z10) {
                if (!z11) {
                    x3.d.f16374a.set(viewGroupG, Float.valueOf(0.0f));
                }
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupG, (Property<ViewGroup, Float>) x3.d.f16374a, 1.0f);
            } else {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupG, (Property<ViewGroup, Float>) x3.d.f16374a, 0.0f);
            }
            eVar.f10639a.h("contentFade").a(objectAnimatorOfFloat);
            list.add(objectAnimatorOfFloat);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void r(View view, View view2, boolean z10, boolean z11, e eVar, List list, List list2) {
        ObjectAnimator objectAnimatorOfInt;
        if (view2 instanceof com.google.android.material.circularreveal.c) {
            com.google.android.material.circularreveal.c cVar = (com.google.android.material.circularreveal.c) view2;
            int iZ = z(view);
            int i10 = 16777215 & iZ;
            if (z10) {
                if (!z11) {
                    cVar.setCircularRevealScrimColor(iZ);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(cVar, (Property<com.google.android.material.circularreveal.c, Integer>) c.d.f9366a, i10);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(cVar, (Property<com.google.android.material.circularreveal.c, Integer>) c.d.f9366a, iZ);
            }
            objectAnimatorOfInt.setEvaluator(x3.c.b());
            eVar.f10639a.h("color").a(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
        }
    }

    private void s(View view, View view2, boolean z10, e eVar, List list) {
        float fM = m(view, view2, eVar.f10640b);
        float fN = n(view, view2, eVar.f10640b);
        Pair pairJ = j(fM, fN, z10, eVar);
        i iVar = (i) pairJ.first;
        i iVar2 = (i) pairJ.second;
        Property property = View.TRANSLATION_X;
        if (!z10) {
            fM = this.f10626j;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, fM);
        Property property2 = View.TRANSLATION_Y;
        if (!z10) {
            fN = this.f10627k;
        }
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, fN);
        iVar.a(objectAnimatorOfFloat);
        iVar2.a(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    private void t(View view, View view2, boolean z10, boolean z11, e eVar, List list, List list2) {
        ObjectAnimator objectAnimatorOfFloat;
        float fR = m0.r(view2) - m0.r(view);
        if (z10) {
            if (!z11) {
                view2.setTranslationZ(-fR);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, 0.0f);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -fR);
        }
        eVar.f10639a.h("elevation").a(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void u(View view, View view2, boolean z10, boolean z11, e eVar, float f10, float f11, List list, List list2) {
        Animator animatorA;
        if (view2 instanceof com.google.android.material.circularreveal.c) {
            com.google.android.material.circularreveal.c cVar = (com.google.android.material.circularreveal.c) view2;
            float fK = k(view, view2, eVar.f10640b);
            float fL = l(view, view2, eVar.f10640b);
            ((FloatingActionButton) view).h(this.f10622c);
            float fWidth = this.f10622c.width() / 2.0f;
            i iVarH = eVar.f10639a.h("expansion");
            if (z10) {
                if (!z11) {
                    cVar.setRevealInfo(new c.e(fK, fL, fWidth));
                }
                if (z11) {
                    fWidth = cVar.getRevealInfo().f9369c;
                }
                animatorA = com.google.android.material.circularreveal.a.a(cVar, fK, fL, f4.a.b(fK, fL, 0.0f, 0.0f, f10, f11));
                animatorA.addListener(new d(cVar));
                x(view2, iVarH.c(), (int) fK, (int) fL, fWidth, list);
            } else {
                float f12 = cVar.getRevealInfo().f9369c;
                Animator animatorA2 = com.google.android.material.circularreveal.a.a(cVar, fK, fL, fWidth);
                int i10 = (int) fK;
                int i11 = (int) fL;
                x(view2, iVarH.c(), i10, i11, f12, list);
                w(view2, iVarH.c(), iVarH.d(), eVar.f10639a.i(), i10, i11, fWidth, list);
                animatorA = animatorA2;
            }
            iVarH.a(animatorA);
            list.add(animatorA);
            list2.add(com.google.android.material.circularreveal.a.b(cVar));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void v(View view, View view2, boolean z10, boolean z11, e eVar, List list, List list2) {
        ObjectAnimator objectAnimatorOfInt;
        if ((view2 instanceof com.google.android.material.circularreveal.c) && (view instanceof ImageView)) {
            com.google.android.material.circularreveal.c cVar = (com.google.android.material.circularreveal.c) view2;
            Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable == null) {
                return;
            }
            drawable.mutate();
            if (z10) {
                if (!z11) {
                    drawable.setAlpha(255);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, (Property<Drawable, Integer>) x3.e.f16375b, 0);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, (Property<Drawable, Integer>) x3.e.f16375b, 255);
            }
            objectAnimatorOfInt.addUpdateListener(new b(view2));
            eVar.f10639a.h("iconFade").a(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
            list2.add(new c(cVar, drawable));
        }
    }

    private void w(View view, long j10, long j11, long j12, int i10, int i11, float f10, List list) {
        long j13 = j10 + j11;
        if (j13 < j12) {
            Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i10, i11, f10, f10);
            animatorCreateCircularReveal.setStartDelay(j13);
            animatorCreateCircularReveal.setDuration(j12 - j13);
            list.add(animatorCreateCircularReveal);
        }
    }

    private void x(View view, long j10, int i10, int i11, float f10, List list) {
        if (j10 > 0) {
            Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i10, i11, f10, f10);
            animatorCreateCircularReveal.setStartDelay(0L);
            animatorCreateCircularReveal.setDuration(j10);
            list.add(animatorCreateCircularReveal);
        }
    }

    private void y(View view, View view2, boolean z10, boolean z11, e eVar, List list, List list2, RectF rectF) {
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        float fM = m(view, view2, eVar.f10640b);
        float fN = n(view, view2, eVar.f10640b);
        Pair pairJ = j(fM, fN, z10, eVar);
        i iVar = (i) pairJ.first;
        i iVar2 = (i) pairJ.second;
        if (z10) {
            if (!z11) {
                view2.setTranslationX(-fM);
                view2.setTranslationY(-fN);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, 0.0f);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, 0.0f);
            h(view2, eVar, iVar, iVar2, -fM, -fN, 0.0f, 0.0f, rectF);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -fM);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -fN);
        }
        iVar.a(objectAnimatorOfFloat);
        iVar2.a(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    private int z(View view) {
        ColorStateList colorStateListO = m0.o(view);
        if (colorStateListO != null) {
            return colorStateListO.getColorForState(view.getDrawableState(), colorStateListO.getDefaultColor());
        }
        return 0;
    }

    protected abstract e A(Context context, boolean z10);

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    protected AnimatorSet f(View view, View view2, boolean z10, boolean z11) {
        e eVarA = A(view2.getContext(), z10);
        if (z10) {
            this.f10626j = view.getTranslationX();
            this.f10627k = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        t(view, view2, z10, z11, eVarA, arrayList, arrayList2);
        RectF rectF = this.f10623f;
        y(view, view2, z10, z11, eVarA, arrayList, arrayList2, rectF);
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        s(view, view2, z10, eVarA, arrayList);
        v(view, view2, z10, z11, eVarA, arrayList, arrayList2);
        u(view, view2, z10, z11, eVarA, fWidth, fHeight, arrayList, arrayList2);
        r(view, view2, z10, z11, eVarA, arrayList, arrayList2);
        q(view, view2, z10, z11, eVarA, arrayList, arrayList2);
        AnimatorSet animatorSet = new AnimatorSet();
        x3.b.a(animatorSet, arrayList);
        animatorSet.addListener(new a(z10, view2, view));
        int size = arrayList2.size();
        for (int i10 = 0; i10 < size; i10++) {
            animatorSet.addListener((Animator.AnimatorListener) arrayList2.get(i10));
        }
        return animatorSet;
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        }
        if (!(view2 instanceof FloatingActionButton)) {
            return false;
        }
        int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
        return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void onAttachedToLayoutParams(CoordinatorLayout.f fVar) {
        if (fVar.f1875h == 0) {
            fVar.f1875h = 80;
        }
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10622c = new Rect();
        this.f10623f = new RectF();
        this.f10624h = new RectF();
        this.f10625i = new int[2];
    }
}
