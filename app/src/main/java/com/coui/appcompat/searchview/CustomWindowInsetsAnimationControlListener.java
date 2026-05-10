package com.coui.appcompat.searchview;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.graphics.Insets;
import android.view.WindowInsetsAnimationControlListener;
import android.view.WindowInsetsAnimationController;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class CustomWindowInsetsAnimationControlListener implements WindowInsetsAnimationControlListener {
    public static final Companion Companion = new Companion(null);
    private static final Interpolator FAST_OUT_LINEAR_IN_INTERPOLATOR = new PathInterpolator(0.4f, 0.0f, 1.0f, 1.0f);
    private static final TypeEvaluator<Insets> INSETS_EVALUATOR = new TypeEvaluator() { // from class: com.coui.appcompat.searchview.v
        @Override // android.animation.TypeEvaluator
        public final Object evaluate(float f10, Object obj, Object obj2) {
            return CustomWindowInsetsAnimationControlListener.INSETS_EVALUATOR$lambda$2(f10, (Insets) obj, (Insets) obj2);
        }
    };
    private Animator mAnimator;
    private final int mDuration;
    private final Interpolator mInsetsInterpolator;
    private final boolean mShow;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TypeEvaluator<Insets> getINSETS_EVALUATOR() {
            return CustomWindowInsetsAnimationControlListener.INSETS_EVALUATOR;
        }

        private Companion() {
        }
    }

    public CustomWindowInsetsAnimationControlListener(boolean z10, int i10, Interpolator mInsetsInterpolator) {
        kotlin.jvm.internal.r.e(mInsetsInterpolator, "mInsetsInterpolator");
        this.mShow = z10;
        this.mDuration = i10;
        this.mInsetsInterpolator = mInsetsInterpolator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Insets INSETS_EVALUATOR$lambda$2(float f10, Insets startValue, Insets endValue) {
        kotlin.jvm.internal.r.e(startValue, "startValue");
        kotlin.jvm.internal.r.e(endValue, "endValue");
        return Insets.of((int) (startValue.left + ((endValue.left - r0) * f10)), (int) (startValue.top + ((endValue.top - r1) * f10)), (int) (startValue.right + ((endValue.right - r2) * f10)), (int) (startValue.bottom + (f10 * (endValue.bottom - r6))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float _get_alphaInterpolator_$lambda$1(float f10) {
        return Math.min(1.0f, 2 * f10);
    }

    private final Interpolator getAlphaInterpolator() {
        return this.mShow ? new Interpolator() { // from class: com.coui.appcompat.searchview.w
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f10) {
                return CustomWindowInsetsAnimationControlListener._get_alphaInterpolator_$lambda$1(f10);
            }
        } : FAST_OUT_LINEAR_IN_INTERPOLATOR;
    }

    private final ValueAnimator runTransition(final WindowInsetsAnimationController windowInsetsAnimationController, final boolean z10) {
        final ValueAnimator animator = ValueAnimator.ofFloat(0.0f, 1.0f);
        animator.setDuration(this.mDuration);
        animator.setInterpolator(new LinearInterpolator());
        final Interpolator interpolator = this.mInsetsInterpolator;
        final Interpolator alphaInterpolator = getAlphaInterpolator();
        final Insets hiddenStateInsets = z10 ? windowInsetsAnimationController.getHiddenStateInsets() : windowInsetsAnimationController.getShownStateInsets();
        kotlin.jvm.internal.r.d(hiddenStateInsets, "if (show) controller.hid…ntroller.shownStateInsets");
        final Insets shownStateInsets = z10 ? windowInsetsAnimationController.getShownStateInsets() : windowInsetsAnimationController.getHiddenStateInsets();
        kotlin.jvm.internal.r.d(shownStateInsets, "if (show) controller.sho…troller.hiddenStateInsets");
        animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.searchview.u
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CustomWindowInsetsAnimationControlListener.runTransition$lambda$0(windowInsetsAnimationController, animator, this, interpolator, hiddenStateInsets, shownStateInsets, alphaInterpolator, valueAnimator);
            }
        });
        animator.addListener(new AnimatorListenerAdapter() { // from class: com.coui.appcompat.searchview.CustomWindowInsetsAnimationControlListener.runTransition.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                kotlin.jvm.internal.r.e(animation, "animation");
                if (windowInsetsAnimationController.isCancelled()) {
                    return;
                }
                windowInsetsAnimationController.finish(z10);
            }
        });
        animator.start();
        kotlin.jvm.internal.r.d(animator, "animator");
        return animator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runTransition$lambda$0(WindowInsetsAnimationController controller, ValueAnimator valueAnimator, CustomWindowInsetsAnimationControlListener this$0, Interpolator insetsInterpolator, Insets start, Insets end, Interpolator alphaInterpolator, ValueAnimator animation) {
        kotlin.jvm.internal.r.e(controller, "$controller");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(insetsInterpolator, "$insetsInterpolator");
        kotlin.jvm.internal.r.e(start, "$start");
        kotlin.jvm.internal.r.e(end, "$end");
        kotlin.jvm.internal.r.e(alphaInterpolator, "$alphaInterpolator");
        kotlin.jvm.internal.r.e(animation, "animation");
        if (!controller.isReady()) {
            valueAnimator.cancel();
            return;
        }
        float animatedFraction = animation.getAnimatedFraction();
        controller.setInsetsAndAlpha(INSETS_EVALUATOR.evaluate(insetsInterpolator.getInterpolation(animatedFraction), start, end), alphaInterpolator.getInterpolation(this$0.mShow ? animatedFraction : 1 - animatedFraction), animatedFraction);
    }

    @Override // android.view.WindowInsetsAnimationControlListener
    public void onCancelled(WindowInsetsAnimationController windowInsetsAnimationController) {
        Animator animator = this.mAnimator;
        if (animator != null) {
            kotlin.jvm.internal.r.b(animator);
            animator.cancel();
        }
    }

    @Override // android.view.WindowInsetsAnimationControlListener
    public void onFinished(WindowInsetsAnimationController controller) {
        kotlin.jvm.internal.r.e(controller, "controller");
    }

    @Override // android.view.WindowInsetsAnimationControlListener
    public void onReady(WindowInsetsAnimationController controller, int i10) {
        kotlin.jvm.internal.r.e(controller, "controller");
        this.mAnimator = runTransition(controller, this.mShow);
    }
}
