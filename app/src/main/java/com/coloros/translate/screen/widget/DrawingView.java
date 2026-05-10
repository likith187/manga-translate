package com.coloros.translate.screen.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.PathInterpolator;
import com.coloros.translate.screen.R$dimen;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class DrawingView extends View {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final a f5735s = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint f5736a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path f5737b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RectF f5738c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f5739f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f5740h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int[] f5741i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f5742j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f5743k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f5744l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f5745m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final PathInterpolator f5746n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ValueAnimator f5747o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Color f5748p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f5749q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f5750r;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements Animator.AnimatorListener {
        public b() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            DrawingView.this.e();
            DrawingView.this.f5747o = null;
            DrawingView.c(DrawingView.this);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public DrawingView(Context context) {
        super(context);
        this.f5736a = new Paint();
        this.f5737b = new Path();
        this.f5738c = new RectF();
        float dimension = getResources().getDimension(R$dimen.dp_40);
        this.f5739f = dimension;
        this.f5740h = dimension;
        Context context2 = getContext();
        kotlin.jvm.internal.r.d(context2, "getContext(...)");
        this.f5741i = com.coloros.translate.screen.utils.k.d(context2);
        this.f5743k = getContext().getResources().getDimension(R$dimen.dp_15);
        this.f5746n = new PathInterpolator(0.74f, 0.0f, 0.67f, 1.0f);
        Color colorValueOf = Color.valueOf(Color.parseColor("#00AEFF"));
        kotlin.jvm.internal.r.d(colorValueOf, "valueOf(...)");
        this.f5748p = colorValueOf;
        this.f5749q = true;
        this.f5750r = Color.argb(0.6f, colorValueOf.red(), colorValueOf.green(), colorValueOf.blue());
        f();
    }

    public static final /* synthetic */ c c(DrawingView drawingView) {
        drawingView.getClass();
        return null;
    }

    private final void f() {
        this.f5736a.setColor(this.f5750r);
        this.f5736a.setStyle(Paint.Style.STROKE);
        this.f5736a.setStrokeWidth(24.0f);
        this.f5736a.setAntiAlias(true);
        this.f5736a.setStrokeCap(Paint.Cap.ROUND);
        Context context = getContext();
        kotlin.jvm.internal.r.d(context, "getContext(...)");
        this.f5742j = com.coloros.translate.screen.utils.k.e(context);
        this.f5744l = getNavigationBarHeight();
    }

    private final boolean g() {
        return getContext().getResources().getConfiguration().orientation == 2;
    }

    private final int getNavigationBarHeight() {
        if (g()) {
            Context context = getContext();
            kotlin.jvm.internal.r.d(context, "getContext(...)");
            if (com.coloros.translate.screen.utils.k.f(context)) {
                return 0;
            }
        }
        Context context2 = getContext();
        kotlin.jvm.internal.r.d(context2, "getContext(...)");
        if (com.coloros.translate.screen.utils.p.d(context2)) {
            return 0;
        }
        Context context3 = getContext();
        kotlin.jvm.internal.r.d(context3, "getContext(...)");
        return com.coloros.translate.screen.utils.k.a(context3);
    }

    private final void h() {
        postDelayed(new Runnable() { // from class: com.coloros.translate.screen.widget.a
            @Override // java.lang.Runnable
            public final void run() {
                DrawingView.i(this.f5964a);
            }
        }, 150L);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.6f, 0.0f);
        valueAnimatorOfFloat.setInterpolator(this.f5746n);
        valueAnimatorOfFloat.setDuration(200L);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coloros.translate.screen.widget.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DrawingView.j(this.f5974a, valueAnimator);
            }
        });
        kotlin.jvm.internal.r.b(valueAnimatorOfFloat);
        valueAnimatorOfFloat.addListener(new b());
        valueAnimatorOfFloat.start();
        this.f5747o = valueAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(DrawingView this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.getClass();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(DrawingView this$0, ValueAnimator animation) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        kotlin.jvm.internal.r.c(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float fFloatValue = ((Float) animatedValue).floatValue();
        Color color = this$0.f5748p;
        int iArgb = Color.argb(fFloatValue, color.red(), color.green(), color.blue());
        this$0.f5750r = iArgb;
        this$0.f5736a.setColor(iArgb);
        this$0.invalidate();
    }

    private final void k(float f10, float f11) {
        RectF rectF = this.f5738c;
        float f12 = rectF.left;
        float f13 = rectF.top;
        float f14 = rectF.right;
        float f15 = rectF.bottom;
        if (f10 < f12) {
            rectF.left = f10;
        } else if (f10 > f14) {
            rectF.right = f10;
        }
        if (f11 < f13) {
            rectF.top = f11;
        } else if (f11 > f15) {
            rectF.bottom = f11;
        }
    }

    public final void e() {
        Color color = this.f5748p;
        int iArgb = Color.argb(0.6f, color.red(), color.green(), color.blue());
        this.f5750r = iArgb;
        this.f5736a.setColor(iArgb);
        this.f5737b.reset();
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        kotlin.jvm.internal.r.e(canvas, "canvas");
        super.onDraw(canvas);
        this.f5736a.setColor(this.f5750r);
        canvas.drawColor(1711276032);
        canvas.drawPath(this.f5737b, this.f5736a);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 == 4) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        e();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        kotlin.jvm.internal.r.e(event, "event");
        if (!this.f5749q || this.f5747o != null) {
            return false;
        }
        float x10 = event.getX();
        float y10 = event.getY();
        int action = event.getAction();
        if (action == 0) {
            if (y10 <= this.f5742j + this.f5743k) {
                this.f5745m = false;
                return false;
            }
            float fMin = Math.min(y10, this.f5741i[1] - this.f5744l);
            this.f5745m = true;
            this.f5737b.reset();
            this.f5737b.moveTo(x10, fMin);
            this.f5738c.set(x10, fMin, x10, fMin);
            return true;
        }
        if (action != 1) {
            if (action != 2) {
                return false;
            }
            if (!this.f5745m) {
                return true;
            }
            float fMin2 = Math.min(Math.max(y10, this.f5742j), this.f5741i[1] - this.f5744l);
            this.f5737b.lineTo(x10, fMin2);
            k(x10, fMin2);
            invalidate();
            return true;
        }
        if (!this.f5745m) {
            return true;
        }
        RectF rectF = this.f5738c;
        float fMax = rectF.left;
        float f10 = rectF.right;
        float fMax2 = rectF.top;
        float f11 = rectF.bottom;
        float f12 = f10 - fMax;
        float f13 = f11 - fMax2;
        float f14 = this.f5740h;
        if (f13 < f14) {
            fMax2 = Math.max(0.0f, fMax2 - ((f14 - f13) / 2));
            float f15 = this.f5740h;
            float f16 = fMax2 + f15;
            int i10 = this.f5741i[1];
            int i11 = this.f5744l;
            if (f16 > i10 - i11) {
                float f17 = i10 - i11;
                fMax2 = f17 - f15;
                f11 = f17;
            } else {
                f11 = f16;
            }
        }
        float f18 = this.f5739f;
        if (f12 < f18) {
            fMax = Math.max(0.0f, fMax - ((f18 - f12) / 2));
            float f19 = this.f5739f;
            float f20 = fMax + f19;
            int i12 = this.f5741i[0];
            if (f20 > i12) {
                float f21 = i12;
                float f22 = f21 - f19;
                f10 = f21;
                fMax = f22;
            } else {
                f10 = f20;
            }
        }
        this.f5738c.set(fMax, fMax2, f10, f11);
        this.f5749q = false;
        h();
        return true;
    }

    public final void setCallback(c cVar) {
    }

    public final void setDrawEnable(boolean z10) {
        this.f5749q = z10;
    }

    public DrawingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5736a = new Paint();
        this.f5737b = new Path();
        this.f5738c = new RectF();
        float dimension = getResources().getDimension(R$dimen.dp_40);
        this.f5739f = dimension;
        this.f5740h = dimension;
        Context context2 = getContext();
        kotlin.jvm.internal.r.d(context2, "getContext(...)");
        this.f5741i = com.coloros.translate.screen.utils.k.d(context2);
        this.f5743k = getContext().getResources().getDimension(R$dimen.dp_15);
        this.f5746n = new PathInterpolator(0.74f, 0.0f, 0.67f, 1.0f);
        Color colorValueOf = Color.valueOf(Color.parseColor("#00AEFF"));
        kotlin.jvm.internal.r.d(colorValueOf, "valueOf(...)");
        this.f5748p = colorValueOf;
        this.f5749q = true;
        this.f5750r = Color.argb(0.6f, colorValueOf.red(), colorValueOf.green(), colorValueOf.blue());
        f();
    }

    public DrawingView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f5736a = new Paint();
        this.f5737b = new Path();
        this.f5738c = new RectF();
        float dimension = getResources().getDimension(R$dimen.dp_40);
        this.f5739f = dimension;
        this.f5740h = dimension;
        Context context2 = getContext();
        kotlin.jvm.internal.r.d(context2, "getContext(...)");
        this.f5741i = com.coloros.translate.screen.utils.k.d(context2);
        this.f5743k = getContext().getResources().getDimension(R$dimen.dp_15);
        this.f5746n = new PathInterpolator(0.74f, 0.0f, 0.67f, 1.0f);
        Color colorValueOf = Color.valueOf(Color.parseColor("#00AEFF"));
        kotlin.jvm.internal.r.d(colorValueOf, "valueOf(...)");
        this.f5748p = colorValueOf;
        this.f5749q = true;
        this.f5750r = Color.argb(0.6f, colorValueOf.red(), colorValueOf.green(), colorValueOf.blue());
        f();
    }
}
