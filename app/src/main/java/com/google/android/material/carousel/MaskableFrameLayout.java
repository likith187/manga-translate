package com.google.android.material.carousel;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.google.android.material.carousel.MaskableFrameLayout;
import com.google.android.material.shape.n;
import com.google.android.material.shape.r;
import com.google.android.material.shape.s;
import y3.a;

/* JADX INFO: loaded from: classes.dex */
public class MaskableFrameLayout extends FrameLayout implements h, r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f9199a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RectF f9200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private n f9201c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final s f9202f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Boolean f9203h;

    public MaskableFrameLayout(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.android.material.shape.d d(com.google.android.material.shape.d dVar) {
        return dVar instanceof com.google.android.material.shape.a ? com.google.android.material.shape.c.b((com.google.android.material.shape.a) dVar) : dVar;
    }

    private void e() {
        this.f9202f.f(this, this.f9200b);
    }

    private void f() {
        if (this.f9199a != -1.0f) {
            float fB = x3.a.b(0.0f, getWidth() / 2.0f, 0.0f, 1.0f, this.f9199a);
            setMaskRectF(new RectF(fB, 0.0f, getWidth() - fB, getHeight()));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        this.f9202f.e(canvas, new a.InterfaceC0243a() { // from class: z3.d
            @Override // y3.a.InterfaceC0243a
            public final void a(Canvas canvas2) {
                this.f16636a.c(canvas2);
            }
        });
    }

    @Override // android.view.View
    public void getFocusedRect(Rect rect) {
        RectF rectF = this.f9200b;
        rect.set((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    public RectF getMaskRectF() {
        return this.f9200b;
    }

    @Deprecated
    public float getMaskXPercentage() {
        return this.f9199a;
    }

    public n getShapeAppearanceModel() {
        return this.f9201c;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Boolean bool = this.f9203h;
        if (bool != null) {
            this.f9202f.h(this, bool.booleanValue());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f9203h = Boolean.valueOf(this.f9202f.c());
        this.f9202f.h(this, true);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (this.f9199a != -1.0f) {
            f();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f9200b.isEmpty() && motionEvent.getAction() == 0) {
            if (!this.f9200b.contains(motionEvent.getX(), motionEvent.getY())) {
                return false;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setForceCompatClipping(boolean z10) {
        this.f9202f.h(this, z10);
    }

    @Override // com.google.android.material.carousel.h
    public void setMaskRectF(RectF rectF) {
        this.f9200b.set(rectF);
        e();
    }

    @Deprecated
    public void setMaskXPercentage(float f10) {
        float fA = x.a.a(f10, 0.0f, 1.0f);
        if (this.f9199a != fA) {
            this.f9199a = fA;
            f();
        }
    }

    public void setOnMaskChangedListener(z3.e eVar) {
    }

    @Override // com.google.android.material.shape.r
    public void setShapeAppearanceModel(n nVar) {
        n nVarY = nVar.y(new n.c() { // from class: z3.c
            @Override // com.google.android.material.shape.n.c
            public final com.google.android.material.shape.d a(com.google.android.material.shape.d dVar) {
                return MaskableFrameLayout.d(dVar);
            }
        });
        this.f9201c = nVarY;
        this.f9202f.g(this, nVarY);
    }

    public MaskableFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaskableFrameLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f9199a = -1.0f;
        this.f9200b = new RectF();
        this.f9202f = s.a(this);
        this.f9203h = null;
        setShapeAppearanceModel(n.f(context, attributeSet, i10, 0, 0).m());
    }
}
