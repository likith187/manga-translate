package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.m0;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ViewUtils;
import g4.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class ClockHandView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f10570a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TimeInterpolator f10571b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ValueAnimator f10572c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f10573f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f10574h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f10575i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f10576j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f10577k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f10578l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final List f10579m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f10580n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final float f10581o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Paint f10582p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final RectF f10583q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f10584r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f10585s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f10586t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private double f10587u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f10588v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f10589w;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            animator.end();
        }
    }

    public interface b {
        void a(float f10, boolean z10);
    }

    public ClockHandView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialClockStyle);
    }

    private void c(float f10, float f11) {
        this.f10589w = f4.a.a((float) (getWidth() / 2), (float) (getHeight() / 2), f10, f11) > ((float) h(2)) + ViewUtils.dpToPx(getContext(), 12) ? 1 : 2;
    }

    private void d(Canvas canvas) {
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float f10 = width;
        float fH = h(this.f10589w);
        float fCos = (((float) Math.cos(this.f10587u)) * fH) + f10;
        float f11 = height;
        float fSin = (fH * ((float) Math.sin(this.f10587u))) + f11;
        this.f10582p.setStrokeWidth(0.0f);
        canvas.drawCircle(fCos, fSin, this.f10580n, this.f10582p);
        double dSin = Math.sin(this.f10587u);
        double dCos = Math.cos(this.f10587u);
        this.f10582p.setStrokeWidth(this.f10584r);
        canvas.drawLine(f10, f11, width + ((int) (dCos * d)), height + ((int) (d * dSin)), this.f10582p);
        canvas.drawCircle(f10, f11, this.f10581o, this.f10582p);
    }

    private int f(float f10, float f11) {
        int degrees = (int) Math.toDegrees(Math.atan2(f11 - (getHeight() / 2), f10 - (getWidth() / 2)));
        int i10 = degrees + 90;
        return i10 < 0 ? degrees + 450 : i10;
    }

    private int h(int i10) {
        int i11 = this.f10588v;
        return i10 == 2 ? Math.round(i11 * 0.66f) : i11;
    }

    private Pair j(float f10) {
        float fG = g();
        if (Math.abs(fG - f10) > 180.0f) {
            if (fG > 180.0f && f10 < 180.0f) {
                f10 += 360.0f;
            }
            if (fG < 180.0f && f10 > 180.0f) {
                fG += 360.0f;
            }
        }
        return new Pair(Float.valueOf(fG), Float.valueOf(f10));
    }

    private boolean k(float f10, float f11, boolean z10, boolean z11, boolean z12) {
        float f12 = f(f10, f11);
        boolean z13 = false;
        boolean z14 = g() != f12;
        if (z11 && z14) {
            return true;
        }
        if (!z14 && !z10) {
            return false;
        }
        if (z12 && this.f10573f) {
            z13 = true;
        }
        o(f12, z13);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(ValueAnimator valueAnimator) {
        p(((Float) valueAnimator.getAnimatedValue()).floatValue(), true);
    }

    private void p(float f10, boolean z10) {
        float f11 = f10 % 360.0f;
        this.f10585s = f11;
        this.f10587u = Math.toRadians(f11 - 90.0f);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float fH = h(this.f10589w);
        float fCos = width + (((float) Math.cos(this.f10587u)) * fH);
        float fSin = height + (fH * ((float) Math.sin(this.f10587u)));
        RectF rectF = this.f10583q;
        int i10 = this.f10580n;
        rectF.set(fCos - i10, fSin - i10, fCos + i10, fSin + i10);
        Iterator it = this.f10579m.iterator();
        while (it.hasNext()) {
            ((b) it.next()).a(f11, z10);
        }
        invalidate();
    }

    public void b(b bVar) {
        this.f10579m.add(bVar);
    }

    public RectF e() {
        return this.f10583q;
    }

    public float g() {
        return this.f10585s;
    }

    public int i() {
        return this.f10580n;
    }

    public void m(int i10) {
        this.f10588v = i10;
        invalidate();
    }

    public void n(float f10) {
        o(f10, false);
    }

    public void o(float f10, boolean z10) {
        ValueAnimator valueAnimator = this.f10572c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z10) {
            p(f10, false);
            return;
        }
        Pair pairJ = j(f10);
        this.f10572c.setFloatValues(((Float) pairJ.first).floatValue(), ((Float) pairJ.second).floatValue());
        this.f10572c.setDuration(this.f10570a);
        this.f10572c.setInterpolator(this.f10571b);
        this.f10572c.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.timepicker.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f10611a.l(valueAnimator2);
            }
        });
        this.f10572c.addListener(new a());
        this.f10572c.start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        d(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (this.f10572c.isRunning()) {
            return;
        }
        n(g());
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        boolean z11;
        boolean z12;
        int actionMasked = motionEvent.getActionMasked();
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        if (actionMasked == 0) {
            this.f10574h = x10;
            this.f10575i = y10;
            this.f10576j = true;
            this.f10586t = false;
            z10 = true;
            z11 = false;
            z12 = false;
        } else if (actionMasked == 1 || actionMasked == 2) {
            int i10 = (int) (x10 - this.f10574h);
            int i11 = (int) (y10 - this.f10575i);
            this.f10576j = (i10 * i10) + (i11 * i11) > this.f10577k;
            z11 = this.f10586t;
            boolean z13 = actionMasked == 1;
            if (this.f10578l) {
                c(x10, y10);
            }
            z12 = z13;
            z10 = false;
        } else {
            z11 = false;
            z10 = false;
            z12 = false;
        }
        this.f10586t |= k(x10, y10, z11, z10, z12);
        return true;
    }

    void q(boolean z10) {
        if (this.f10578l && !z10) {
            this.f10589w = 1;
        }
        this.f10578l = z10;
        invalidate();
    }

    public ClockHandView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f10572c = new ValueAnimator();
        this.f10579m = new ArrayList();
        Paint paint = new Paint();
        this.f10582p = paint;
        this.f10583q = new RectF();
        this.f10589w = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ClockHandView, i10, R$style.Widget_MaterialComponents_TimePicker_Clock);
        this.f10570a = i.f(context, R$attr.motionDurationLong2, 200);
        this.f10571b = i.g(context, R$attr.motionEasingEmphasizedInterpolator, x3.a.f16369b);
        this.f10588v = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ClockHandView_materialCircleRadius, 0);
        this.f10580n = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ClockHandView_selectorSize, 0);
        this.f10584r = getResources().getDimensionPixelSize(R$dimen.material_clock_hand_stroke_width);
        this.f10581o = r7.getDimensionPixelSize(R$dimen.material_clock_hand_center_dot_radius);
        int color = typedArrayObtainStyledAttributes.getColor(R$styleable.ClockHandView_clockHandColor, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        n(0.0f);
        this.f10577k = ViewConfiguration.get(context).getScaledTouchSlop();
        m0.t0(this, 2);
        typedArrayObtainStyledAttributes.recycle();
    }
}
