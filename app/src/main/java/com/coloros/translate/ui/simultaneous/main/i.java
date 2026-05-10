package com.coloros.translate.ui.simultaneous.main;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import com.coloros.translate.R;
import com.coloros.translate.utils.o0;
import com.coui.appcompat.animation.COUIInEaseInterpolator;
import com.coui.appcompat.animation.COUIMoveEaseInterpolator;
import com.coui.appcompat.animation.COUIOutEaseInterpolator;
import com.coui.appcompat.pressfeedback.COUIPressFeedbackHelper;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.h0;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f6672i = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ValueAnimator f6673a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ValueAnimator f6674b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Animator f6675c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Animator f6676d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Animator f6677e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Animator f6678f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ValueAnimator f6679g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ValueAnimator f6680h;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ w8.l f6681a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f6682b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ w8.l f6683c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ boolean f6684f;

        public b(w8.l lVar, boolean z10, w8.l lVar2, boolean z11) {
            this.f6681a = lVar;
            this.f6682b = z10;
            this.f6683c = lVar2;
            this.f6684f = z11;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f6683c.invoke(Boolean.valueOf(this.f6684f));
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f6681a.invoke(Boolean.valueOf(this.f6682b));
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public static final class c extends com.coloros.translate.ui.simultaneous.main.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ValueAnimator f6685a;

        c(ValueAnimator valueAnimator) {
            this.f6685a = valueAnimator;
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            this.f6685a.removeAllUpdateListeners();
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            onAnimationCancel(animation);
        }
    }

    public static final class d extends com.coloros.translate.ui.simultaneous.main.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ValueAnimator f6686a;

        d(ValueAnimator valueAnimator) {
            this.f6686a = valueAnimator;
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            this.f6686a.removeAllUpdateListeners();
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            onAnimationCancel(animation);
        }
    }

    public static final class e extends com.coloros.translate.ui.simultaneous.main.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f6687a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f6688b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ AnimatorSet f6689c;

        e(View view, View view2, AnimatorSet animatorSet) {
            this.f6687a = view;
            this.f6688b = view2;
            this.f6689c = animatorSet;
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            this.f6688b.setVisibility(8);
            this.f6689c.removeAllListeners();
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            onAnimationCancel(animation);
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            this.f6687a.setVisibility(8);
            this.f6688b.setVisibility(0);
        }
    }

    public static final class f extends com.coloros.translate.ui.simultaneous.main.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f6690a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f6691b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ AnimatorSet f6692c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ w8.a f6693f;

        f(View view, View view2, AnimatorSet animatorSet, w8.a aVar) {
            this.f6690a = view;
            this.f6691b = view2;
            this.f6692c = animatorSet;
            this.f6693f = aVar;
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            this.f6691b.setVisibility(0);
            this.f6692c.removeAllListeners();
            this.f6693f.mo8invoke();
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            onAnimationCancel(animation);
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            this.f6690a.setVisibility(0);
            this.f6691b.setVisibility(0);
        }
    }

    public static final class g extends com.coloros.translate.ui.simultaneous.main.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f6694a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f6695b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f6696c;

        g(View view, View view2, View view3) {
            this.f6694a = view;
            this.f6695b = view2;
            this.f6696c = view3;
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            this.f6696c.setVisibility(0);
            this.f6695b.setVisibility(8);
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            onAnimationCancel(animation);
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            this.f6694a.setVisibility(0);
            this.f6695b.setVisibility(0);
            this.f6696c.setVisibility(8);
        }
    }

    public static final class h extends com.coloros.translate.ui.simultaneous.main.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f6697a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ w8.a f6698b;

        h(View view, w8.a aVar) {
            this.f6697a = view;
            this.f6698b = aVar;
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            this.f6697a.setVisibility(8);
            this.f6698b.mo8invoke();
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            onAnimationCancel(animation);
        }
    }

    /* JADX INFO: renamed from: com.coloros.translate.ui.simultaneous.main.i$i, reason: collision with other inner class name */
    static final class C0093i extends kotlin.jvm.internal.s implements w8.a {
        public static final C0093i INSTANCE = new C0093i();

        C0093i() {
            super(0);
        }

        public final void invoke() {
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }
    }

    public static final class j extends com.coloros.translate.ui.simultaneous.main.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f6699a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ValueAnimator f6700b;

        j(View view, ValueAnimator valueAnimator) {
            this.f6699a = view;
            this.f6700b = valueAnimator;
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            this.f6699a.setVisibility(8);
            this.f6700b.removeAllListeners();
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            onAnimationCancel(animation);
        }
    }

    public static final class k extends com.coloros.translate.ui.simultaneous.main.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MenuItem f6701a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f6702b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ValueAnimator f6703c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ w8.a f6704f;

        k(MenuItem menuItem, View view, ValueAnimator valueAnimator, w8.a aVar) {
            this.f6701a = menuItem;
            this.f6702b = view;
            this.f6703c = valueAnimator;
            this.f6704f = aVar;
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            this.f6701a.setVisible(true);
            this.f6703c.removeAllListeners();
            this.f6704f.mo8invoke();
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            onAnimationCancel(animation);
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            super.onAnimationStart(animation);
            this.f6701a.setVisible(true);
            View view = this.f6702b;
            if (view == null) {
                return;
            }
            view.setVisibility(8);
        }
    }

    public static final class l extends com.coloros.translate.ui.simultaneous.main.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MenuItem f6705a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ValueAnimator f6706b;

        l(MenuItem menuItem, ValueAnimator valueAnimator) {
            this.f6705a = menuItem;
            this.f6706b = valueAnimator;
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            this.f6705a.setVisible(false);
            this.f6706b.removeAllListeners();
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            onAnimationCancel(animation);
        }
    }

    public static final class m extends com.coloros.translate.ui.simultaneous.main.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MenuItem f6707a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f6708b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ValueAnimator f6709c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ w8.a f6710f;

        m(MenuItem menuItem, View view, ValueAnimator valueAnimator, w8.a aVar) {
            this.f6707a = menuItem;
            this.f6708b = view;
            this.f6709c = valueAnimator;
            this.f6710f = aVar;
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            this.f6708b.setVisibility(0);
            this.f6709c.removeAllListeners();
            this.f6710f.mo8invoke();
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            onAnimationCancel(animation);
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            super.onAnimationStart(animation);
            this.f6707a.setVisible(false);
            this.f6708b.setVisibility(0);
        }
    }

    private final ValueAnimator e(View view, float f10, float f11) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", f10, f11);
        kotlin.jvm.internal.r.d(objectAnimatorOfFloat, "ofFloat(...)");
        return objectAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean h(COUIPressFeedbackHelper feedback, View view, MotionEvent motionEvent) {
        kotlin.jvm.internal.r.e(feedback, "$feedback");
        Integer numValueOf = motionEvent != null ? Integer.valueOf(motionEvent.getAction()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            feedback.executeFeedbackAnimator(true);
        } else if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 3)) {
            feedback.executeFeedbackAnimator(false);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(View[] animatorViews, ValueAnimator it) {
        kotlin.jvm.internal.r.e(animatorViews, "$animatorViews");
        kotlin.jvm.internal.r.e(it, "it");
        Object animatedValue = it.getAnimatedValue();
        kotlin.jvm.internal.r.c(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float fFloatValue = ((Float) animatedValue).floatValue();
        for (View view : animatorViews) {
            if (view != null) {
                view.setAlpha(fFloatValue);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(View view, ValueAnimator animatedValue) {
        kotlin.jvm.internal.r.e(view, "$view");
        kotlin.jvm.internal.r.e(animatedValue, "animatedValue");
        Object animatedValue2 = animatedValue.getAnimatedValue();
        kotlin.jvm.internal.r.c(animatedValue2, "null cannot be cast to non-null type kotlin.Float");
        view.setAlpha(((Float) animatedValue2).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(View view, ValueAnimator animatedValue) {
        kotlin.jvm.internal.r.e(animatedValue, "animatedValue");
        Object animatedValue2 = animatedValue.getAnimatedValue();
        kotlin.jvm.internal.r.c(animatedValue2, "null cannot be cast to non-null type kotlin.Float");
        view.setAlpha(((Float) animatedValue2).floatValue());
    }

    public static /* synthetic */ void r(i iVar, MenuItem menuItem, View view, boolean z10, w8.a aVar, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        if ((i10 & 8) != 0) {
            aVar = C0093i.INSTANCE;
        }
        iVar.q(menuItem, view, z10, aVar);
    }

    public final void f() {
        h0 h0Var;
        h0 h0Var2;
        h0 h0Var3;
        h0 h0Var4;
        h0 h0Var5;
        h0 h0Var6;
        h0 h0Var7;
        ValueAnimator valueAnimator = this.f6673a;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
        }
        h0 h0Var8 = null;
        try {
            r.a aVar = n8.r.Companion;
            ValueAnimator valueAnimator2 = this.f6673a;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
                h0Var7 = h0.INSTANCE;
            } else {
                h0Var7 = null;
            }
            n8.r.m59constructorimpl(h0Var7);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            n8.r.m59constructorimpl(n8.s.a(th));
        }
        Animator animator = this.f6675c;
        if (animator != null) {
            animator.removeAllListeners();
        }
        Animator animator2 = this.f6676d;
        if (animator2 != null) {
            animator2.removeAllListeners();
        }
        try {
            Animator animator3 = this.f6675c;
            if (animator3 != null) {
                animator3.cancel();
                h0Var6 = h0.INSTANCE;
            } else {
                h0Var6 = null;
            }
            n8.r.m59constructorimpl(h0Var6);
        } catch (Throwable th2) {
            r.a aVar3 = n8.r.Companion;
            n8.r.m59constructorimpl(n8.s.a(th2));
        }
        try {
            Animator animator4 = this.f6676d;
            if (animator4 != null) {
                animator4.cancel();
                h0Var5 = h0.INSTANCE;
            } else {
                h0Var5 = null;
            }
            n8.r.m59constructorimpl(h0Var5);
        } catch (Throwable th3) {
            r.a aVar4 = n8.r.Companion;
            n8.r.m59constructorimpl(n8.s.a(th3));
        }
        Animator animator5 = this.f6677e;
        if (animator5 != null) {
            animator5.removeAllListeners();
        }
        Animator animator6 = this.f6678f;
        if (animator6 != null) {
            animator6.removeAllListeners();
        }
        try {
            Animator animator7 = this.f6677e;
            if (animator7 != null) {
                animator7.cancel();
                h0Var4 = h0.INSTANCE;
            } else {
                h0Var4 = null;
            }
            n8.r.m59constructorimpl(h0Var4);
        } catch (Throwable th4) {
            r.a aVar5 = n8.r.Companion;
            n8.r.m59constructorimpl(n8.s.a(th4));
        }
        try {
            Animator animator8 = this.f6678f;
            if (animator8 != null) {
                animator8.cancel();
                h0Var3 = h0.INSTANCE;
            } else {
                h0Var3 = null;
            }
            n8.r.m59constructorimpl(h0Var3);
        } catch (Throwable th5) {
            r.a aVar6 = n8.r.Companion;
            n8.r.m59constructorimpl(n8.s.a(th5));
        }
        ValueAnimator valueAnimator3 = this.f6679g;
        if (valueAnimator3 != null) {
            valueAnimator3.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator4 = this.f6680h;
        if (valueAnimator4 != null) {
            valueAnimator4.removeAllUpdateListeners();
        }
        try {
            ValueAnimator valueAnimator5 = this.f6679g;
            if (valueAnimator5 != null) {
                valueAnimator5.cancel();
                h0Var2 = h0.INSTANCE;
            } else {
                h0Var2 = null;
            }
            n8.r.m59constructorimpl(h0Var2);
        } catch (Throwable th6) {
            r.a aVar7 = n8.r.Companion;
            n8.r.m59constructorimpl(n8.s.a(th6));
        }
        try {
            ValueAnimator valueAnimator6 = this.f6680h;
            if (valueAnimator6 != null) {
                valueAnimator6.cancel();
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th7) {
            r.a aVar8 = n8.r.Companion;
            n8.r.m59constructorimpl(n8.s.a(th7));
        }
        n(null);
        ValueAnimator valueAnimator7 = this.f6674b;
        if (valueAnimator7 != null) {
            valueAnimator7.removeAllUpdateListeners();
        }
        try {
            ValueAnimator valueAnimator8 = this.f6674b;
            if (valueAnimator8 != null) {
                valueAnimator8.cancel();
                h0Var8 = h0.INSTANCE;
            }
            n8.r.m59constructorimpl(h0Var8);
        } catch (Throwable th8) {
            r.a aVar9 = n8.r.Companion;
            n8.r.m59constructorimpl(n8.s.a(th8));
        }
    }

    public final void g(View play) {
        kotlin.jvm.internal.r.e(play, "play");
        final COUIPressFeedbackHelper cOUIPressFeedbackHelper = new COUIPressFeedbackHelper(play, 0);
        play.setOnTouchListener(new View.OnTouchListener() { // from class: com.coloros.translate.ui.simultaneous.main.e
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return i.h(cOUIPressFeedbackHelper, view, motionEvent);
            }
        });
    }

    public final void i(View paddingView, final View[] animatorViews, boolean z10, boolean z11, w8.l animatorEndCallBack) {
        ValueAnimator valueAnimatorOfFloat;
        h0 h0Var;
        kotlin.jvm.internal.r.e(paddingView, "paddingView");
        kotlin.jvm.internal.r.e(animatorViews, "animatorViews");
        kotlin.jvm.internal.r.e(animatorEndCallBack, "animatorEndCallBack");
        try {
            r.a aVar = n8.r.Companion;
            ValueAnimator valueAnimator = this.f6673a;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator valueAnimator2 = this.f6674b;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            n8.r.m59constructorimpl(n8.s.a(th));
        }
        ValueAnimator valueAnimator3 = this.f6674b;
        if (valueAnimator3 != null) {
            valueAnimator3.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator4 = this.f6673a;
        if (valueAnimator4 != null) {
            valueAnimator4.removeAllUpdateListeners();
        }
        if (!z11) {
            for (View view : animatorViews) {
                if (view != null) {
                    view.setAlpha(1.0f);
                }
            }
            animatorEndCallBack.invoke(Boolean.valueOf(z10));
            return;
        }
        int length = animatorViews.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                break;
            }
            View view2 = animatorViews[i10];
            if (view2 != null) {
                view2.setAlpha(z10 ? 1.0f : 0.0f);
            }
            if (view2 != null) {
                view2.setVisibility(0);
            }
            i10++;
        }
        float[] fArr = {0.0f, 1.0f};
        if (z10) {
            // fill-array-data instruction
            fArr[0] = 1.0f;
            fArr[1] = 0.0f;
            valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        } else {
            valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        }
        this.f6673a = valueAnimatorOfFloat;
        if (valueAnimatorOfFloat != null) {
            valueAnimatorOfFloat.setDuration(200L);
            valueAnimatorOfFloat.setStartDelay(z10 ? 0L : 200L);
            valueAnimatorOfFloat.setInterpolator(z10 ? new COUIOutEaseInterpolator() : new COUIInEaseInterpolator());
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coloros.translate.ui.simultaneous.main.g
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator5) {
                    i.j(animatorViews, valueAnimator5);
                }
            });
            valueAnimatorOfFloat.addListener(new b(animatorEndCallBack, z10, animatorEndCallBack, z10));
            valueAnimatorOfFloat.start();
        }
    }

    public final void k(ImageView view) {
        kotlin.jvm.internal.r.e(view, "view");
        if (o0.e()) {
            view.setBackgroundResource(R.drawable.si_loading_tablet);
        } else if (com.coloros.translate.utils.z.g(null, 1, null)) {
            view.setBackgroundResource(R.drawable.si_loading_fold);
        } else {
            view.setBackgroundResource(R.drawable.si_loading_phone);
        }
        view.setAlpha(0.0f);
    }

    public final void l(final View view) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(view, "view");
        try {
            r.a aVar = n8.r.Companion;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.setDuration(200L);
            valueAnimatorOfFloat.setInterpolator(new COUIInEaseInterpolator());
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coloros.translate.ui.simultaneous.main.h
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    i.m(view, valueAnimator);
                }
            });
            valueAnimatorOfFloat.addListener(new c(valueAnimatorOfFloat));
            valueAnimatorOfFloat.start();
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("SimultaneousAnimationHelper", "shadowLightAnimaStart error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    public final void n(final View view) {
        Object objM59constructorimpl;
        h0 h0Var;
        try {
            r.a aVar = n8.r.Companion;
            if (view != null) {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
                valueAnimatorOfFloat.setDuration(200L);
                valueAnimatorOfFloat.setInterpolator(new COUIOutEaseInterpolator());
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coloros.translate.ui.simultaneous.main.f
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        i.o(view, valueAnimator);
                    }
                });
                valueAnimatorOfFloat.addListener(new d(valueAnimatorOfFloat));
                valueAnimatorOfFloat.start();
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("SimultaneousAnimationHelper", "shadowLightAnimaStop error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    public final void p(View recyclerview, View emptyView, View recordSwitch, boolean z10, boolean z11, w8.a animationEndCallBack) {
        h0 h0Var;
        kotlin.jvm.internal.r.e(recyclerview, "recyclerview");
        kotlin.jvm.internal.r.e(emptyView, "emptyView");
        kotlin.jvm.internal.r.e(recordSwitch, "recordSwitch");
        kotlin.jvm.internal.r.e(animationEndCallBack, "animationEndCallBack");
        Animator animator = this.f6675c;
        if (animator != null) {
            animator.removeAllListeners();
        }
        Animator animator2 = this.f6676d;
        if (animator2 != null) {
            animator2.removeAllListeners();
        }
        h0 h0Var2 = null;
        try {
            r.a aVar = n8.r.Companion;
            Animator animator3 = this.f6675c;
            if (animator3 != null) {
                animator3.cancel();
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            n8.r.m59constructorimpl(n8.s.a(th));
        }
        try {
            Animator animator4 = this.f6676d;
            if (animator4 != null) {
                animator4.cancel();
                h0Var2 = h0.INSTANCE;
            }
            n8.r.m59constructorimpl(h0Var2);
        } catch (Throwable th2) {
            r.a aVar3 = n8.r.Companion;
            n8.r.m59constructorimpl(n8.s.a(th2));
        }
        if (!z10) {
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setDuration(200L);
            animatorSet.setInterpolator(new COUIMoveEaseInterpolator());
            animatorSet.playTogether(e(recordSwitch, 1.0f, 0.0f), e(emptyView, 1.0f, 0.0f));
            animatorSet.addListener(new g(emptyView, recordSwitch, recyclerview));
            animatorSet.start();
            this.f6675c = animatorSet;
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.setDuration(200L);
            animatorSet2.setInterpolator(new COUIMoveEaseInterpolator());
            animatorSet2.playTogether(e(recyclerview, 0.0f, 1.0f));
            animatorSet2.addListener(new h(emptyView, animationEndCallBack));
            animatorSet2.setStartDelay(200L);
            animatorSet2.start();
            this.f6676d = animatorSet2;
            return;
        }
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.setDuration(200L);
        animatorSet3.setInterpolator(new PathInterpolator(0.9f, 0.0f, 0.7f, 1.0f));
        animatorSet3.playTogether(e(recyclerview, 1.0f, 0.0f));
        animatorSet3.addListener(new e(emptyView, recyclerview, animatorSet3));
        animatorSet3.start();
        this.f6675c = animatorSet3;
        AnimatorSet animatorSet4 = new AnimatorSet();
        animatorSet4.setDuration(200L);
        animatorSet4.setInterpolator(new COUIMoveEaseInterpolator());
        animatorSet4.playTogether(e(recordSwitch, 0.0f, 1.0f), e(emptyView, 0.0f, 1.0f));
        recordSwitch.setAlpha(0.0f);
        emptyView.setAlpha(0.0f);
        animatorSet4.addListener(new f(recordSwitch, emptyView, animatorSet4, animationEndCallBack));
        animatorSet4.setStartDelay(150L);
        animatorSet4.start();
        this.f6676d = animatorSet4;
    }

    public final void q(MenuItem historyView, View view, boolean z10, w8.a animationEndCallBack) {
        ValueAnimator valueAnimatorE;
        ValueAnimator valueAnimatorE2;
        h0 h0Var;
        h0 h0Var2;
        kotlin.jvm.internal.r.e(historyView, "historyView");
        kotlin.jvm.internal.r.e(animationEndCallBack, "animationEndCallBack");
        Animator animator = this.f6677e;
        if (animator != null) {
            animator.removeAllListeners();
        }
        Animator animator2 = this.f6678f;
        if (animator2 != null) {
            animator2.removeAllListeners();
        }
        ValueAnimator valueAnimatorE3 = null;
        try {
            r.a aVar = n8.r.Companion;
            Animator animator3 = this.f6677e;
            if (animator3 != null) {
                animator3.cancel();
                h0Var2 = h0.INSTANCE;
            } else {
                h0Var2 = null;
            }
            n8.r.m59constructorimpl(h0Var2);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            n8.r.m59constructorimpl(n8.s.a(th));
        }
        try {
            Animator animator4 = this.f6678f;
            if (animator4 != null) {
                animator4.cancel();
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th2) {
            r.a aVar3 = n8.r.Companion;
            n8.r.m59constructorimpl(n8.s.a(th2));
        }
        if (z10) {
            if (view != null) {
                valueAnimatorE2 = e(view, 1.0f, 0.0f);
                valueAnimatorE2.setDuration(200L);
                valueAnimatorE2.setInterpolator(new PathInterpolator(0.9f, 0.0f, 0.7f, 1.0f));
                view.setVisibility(0);
                historyView.setVisible(false);
                valueAnimatorE2.addListener(new j(view, valueAnimatorE2));
                valueAnimatorE2.start();
            } else {
                valueAnimatorE2 = null;
            }
            this.f6678f = valueAnimatorE2;
            View actionView = historyView.getActionView();
            if (actionView != null) {
                valueAnimatorE3 = e(actionView, 0.0f, 1.0f);
                valueAnimatorE3.setDuration(200L);
                valueAnimatorE3.setInterpolator(new COUIMoveEaseInterpolator());
                valueAnimatorE3.addListener(new k(historyView, view, valueAnimatorE3, animationEndCallBack));
                valueAnimatorE3.setStartDelay(150L);
                valueAnimatorE3.start();
            }
            this.f6677e = valueAnimatorE3;
            return;
        }
        View actionView2 = historyView.getActionView();
        if (actionView2 != null) {
            valueAnimatorE = e(actionView2, 1.0f, 0.0f);
            valueAnimatorE.setDuration(200L);
            valueAnimatorE.setInterpolator(new COUIMoveEaseInterpolator());
            if (view != null) {
                view.setVisibility(8);
            }
            historyView.setVisible(true);
            valueAnimatorE.addListener(new l(historyView, valueAnimatorE));
            valueAnimatorE.start();
        } else {
            valueAnimatorE = null;
        }
        this.f6677e = valueAnimatorE;
        if (view != null) {
            valueAnimatorE3 = e(view, 0.0f, 1.0f);
            valueAnimatorE3.setDuration(200L);
            valueAnimatorE3.setInterpolator(new COUIMoveEaseInterpolator());
            valueAnimatorE3.addListener(new m(historyView, view, valueAnimatorE3, animationEndCallBack));
            valueAnimatorE3.setStartDelay(200L);
            valueAnimatorE3.start();
        }
        this.f6678f = valueAnimatorE3;
    }
}
