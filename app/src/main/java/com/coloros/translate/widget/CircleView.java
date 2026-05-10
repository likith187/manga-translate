package com.coloros.translate.widget;

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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class CircleView extends View {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f7174f = new a(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f7175h = "CircleView";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final float f7176i = 28.0f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PathInterpolator f7177a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PathInterpolator f7178b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f7179c;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CircleView(Context context, AttributeSet attrs) {
        super(context, attrs);
        r.e(context, "context");
        r.e(attrs, "attrs");
        this.f7177a = new PathInterpolator(0.4f, 0.0f, 0.6f, 1.0f);
        this.f7178b = new PathInterpolator(0.0f, 0.0f, 0.2f, 1.0f);
    }

    private final float a(float f10) {
        return (f10 * getResources().getDisplayMetrics().density) + 0.5f;
    }

    private final ValueAnimator b() {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat("scaleX", 1.0f, 0.92f), PropertyValuesHolder.ofFloat("scaleY", 1.0f, 0.92f));
        r.d(objectAnimatorOfPropertyValuesHolder, "ofPropertyValuesHolder(...)");
        objectAnimatorOfPropertyValuesHolder.setInterpolator(this.f7177a);
        objectAnimatorOfPropertyValuesHolder.setDuration(200L);
        return objectAnimatorOfPropertyValuesHolder;
    }

    private final ValueAnimator c() {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat("scaleX", 0.92f, 1.0f), PropertyValuesHolder.ofFloat("scaleY", 0.92f, 1.0f));
        r.d(objectAnimatorOfPropertyValuesHolder, "ofPropertyValuesHolder(...)");
        objectAnimatorOfPropertyValuesHolder.setStartDelay(200L);
        objectAnimatorOfPropertyValuesHolder.setInterpolator(this.f7178b);
        objectAnimatorOfPropertyValuesHolder.setDuration(333L);
        return objectAnimatorOfPropertyValuesHolder;
    }

    private final AnimatorSet getAnimatorSet() {
        ValueAnimator valueAnimatorB = b();
        ValueAnimator valueAnimatorC = c();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(valueAnimatorB).with(valueAnimatorC);
        return animatorSet;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        r.e(canvas, "canvas");
        super.onDraw(canvas);
        Paint paint = new Paint();
        paint.setColor(this.f7179c);
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, a(f7176i), paint);
    }

    public final void setColor(int i10) {
        this.f7179c = i10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CircleView(Context context) {
        super(context);
        r.e(context, "context");
        this.f7177a = new PathInterpolator(0.4f, 0.0f, 0.6f, 1.0f);
        this.f7178b = new PathInterpolator(0.0f, 0.0f, 0.2f, 1.0f);
    }
}
