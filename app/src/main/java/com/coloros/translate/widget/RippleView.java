package com.coloros.translate.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.PathInterpolator;
import com.coloros.translate.utils.z0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class RippleView extends View {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f7201h = new a(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f7202i = "RippleView";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final float f7203j = 28.0f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PathInterpolator f7204a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PathInterpolator f7205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AnimatorSet f7206c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f7207f;

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
        public void onAnimationCancel(Animator animation) {
            r.e(animation, "animation");
            super.onAnimationCancel(animation);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            r.e(animation, "animation");
            super.onAnimationEnd(animation);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            r.e(animation, "animation");
            RippleView.this.setAlpha(1.0f);
            super.onAnimationStart(animation);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RippleView(Context context, AttributeSet attrs) {
        super(context, attrs);
        r.e(context, "context");
        r.e(attrs, "attrs");
        this.f7204a = new PathInterpolator(0.35f, 0.0f, 0.43f, 1.0f);
        this.f7205b = new PathInterpolator(0.13f, 0.0f, 0.2f, 1.0f);
    }

    private final float b(float f10) {
        return (f10 * getResources().getDisplayMetrics().density) + 0.5f;
    }

    private final ValueAnimator c() {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat("scaleX", 1.0f, 1.79f), PropertyValuesHolder.ofFloat("scaleY", 1.0f, 1.79f));
        r.d(objectAnimatorOfPropertyValuesHolder, "ofPropertyValuesHolder(...)");
        objectAnimatorOfPropertyValuesHolder.setInterpolator(this.f7204a);
        objectAnimatorOfPropertyValuesHolder.setDuration(1867L);
        return objectAnimatorOfPropertyValuesHolder;
    }

    private final ValueAnimator d() {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat("alpha", 1.0f, 0.0f));
        r.d(objectAnimatorOfPropertyValuesHolder, "ofPropertyValuesHolder(...)");
        objectAnimatorOfPropertyValuesHolder.setStartDelay(1400L);
        objectAnimatorOfPropertyValuesHolder.setInterpolator(this.f7205b);
        objectAnimatorOfPropertyValuesHolder.setDuration(467L);
        return objectAnimatorOfPropertyValuesHolder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(RippleView this$0) {
        r.e(this$0, "this$0");
        AnimatorSet animatorSet = this$0.f7206c;
        if (animatorSet != null) {
            animatorSet.start();
        }
    }

    private final AnimatorSet getAnimatorSet() {
        ValueAnimator valueAnimatorC = c();
        ValueAnimator valueAnimatorD = d();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(valueAnimatorC).with(valueAnimatorD);
        return animatorSet;
    }

    public final void e() {
        this.f7206c = new AnimatorSet();
        AnimatorSet animatorSet = getAnimatorSet();
        AnimatorSet animatorSet2 = this.f7206c;
        if (animatorSet2 != null) {
            animatorSet2.playSequentially(animatorSet);
        }
        AnimatorSet animatorSet3 = this.f7206c;
        if (animatorSet3 != null) {
            animatorSet3.addListener(new b());
        }
        z0.h(0L, new Runnable() { // from class: com.coloros.translate.widget.p
            @Override // java.lang.Runnable
            public final void run() {
                RippleView.f(this.f7246a);
            }
        }, 1, null);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        r.e(canvas, "canvas");
        super.onDraw(canvas);
        Paint paint = new Paint();
        paint.setColor(this.f7207f);
        paint.setStyle(Paint.Style.FILL);
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, b(f7203j), paint);
    }

    public final void setColor(int i10) {
        this.f7207f = i10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RippleView(Context context) {
        super(context);
        r.e(context, "context");
        this.f7204a = new PathInterpolator(0.35f, 0.0f, 0.43f, 1.0f);
        this.f7205b = new PathInterpolator(0.13f, 0.0f, 0.2f, 1.0f);
    }
}
