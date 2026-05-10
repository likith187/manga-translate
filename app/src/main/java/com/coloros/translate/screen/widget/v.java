package com.coloros.translate.screen.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import com.coloros.translate.screen.R$dimen;
import com.coloros.translate.screen.R$drawable;
import com.coloros.translate.screen.R$layout;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class v {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f6089b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final PathInterpolator f6090c = new PathInterpolator(0.3f, 0.0f, 0.1f, 1.0f);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f6091a;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            ViewParent parent = v.this.f6091a.getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(v.this.f6091a);
            }
        }
    }

    public v(FrameLayout rootView, Context themeContext) {
        kotlin.jvm.internal.r.e(rootView, "rootView");
        kotlin.jvm.internal.r.e(themeContext, "themeContext");
        View viewInflate = LayoutInflater.from(themeContext).inflate(R$layout.layout_trans_float_view_tips, (ViewGroup) null, false);
        kotlin.jvm.internal.r.d(viewInflate, "inflate(...)");
        this.f6091a = viewInflate;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 49);
        viewInflate.setBackground(themeContext.getDrawable(R$drawable.float_view_tips_background));
        viewInflate.setForceDarkAllowed(false);
        viewInflate.setAlpha(0.0f);
        layoutParams.topMargin = y8.a.b((com.coloros.translate.screen.utils.k.b(themeContext) * 0.16f) - themeContext.getResources().getDimension(R$dimen.dp_62));
        rootView.addView(viewInflate, layoutParams);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(367L);
        valueAnimatorOfFloat.setInterpolator(f6090c);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coloros.translate.screen.widget.u
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                v.f(this.f6086a, valueAnimator);
            }
        });
        valueAnimatorOfFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(v this$0, ValueAnimator it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        View view = this$0.f6091a;
        Object animatedValue = it.getAnimatedValue();
        kotlin.jvm.internal.r.c(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        view.setAlpha(((Float) animatedValue).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(v this$0, ValueAnimator it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        View view = this$0.f6091a;
        Object animatedValue = it.getAnimatedValue();
        kotlin.jvm.internal.r.c(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        view.setAlpha(((Float) animatedValue).floatValue());
    }

    public final void d() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat.setDuration(367L);
        valueAnimatorOfFloat.setInterpolator(f6090c);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coloros.translate.screen.widget.t
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                v.e(this.f6083a, valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new b());
        valueAnimatorOfFloat.start();
    }
}
