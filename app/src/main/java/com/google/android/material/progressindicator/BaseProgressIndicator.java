package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import androidx.core.view.m0;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.progressindicator.a;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseProgressIndicator<S extends com.google.android.material.progressindicator.a> extends ProgressBar {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    static final int f9827r = R$style.Widget_MaterialComponents_ProgressIndicator;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    com.google.android.material.progressindicator.a f9828a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f9829b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f9830c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f9831f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f9832h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f9833i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f9834j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    h4.a f9835k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f9836l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f9837m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Runnable f9838n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Runnable f9839o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final androidx.vectordrawable.graphics.drawable.b f9840p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final androidx.vectordrawable.graphics.drawable.b f9841q;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseProgressIndicator.this.k();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseProgressIndicator.this.j();
            BaseProgressIndicator.this.f9834j = -1L;
        }
    }

    class c extends androidx.vectordrawable.graphics.drawable.b {
        c() {
        }

        @Override // androidx.vectordrawable.graphics.drawable.b
        public void b(Drawable drawable) {
            BaseProgressIndicator.this.setIndeterminate(false);
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            baseProgressIndicator.o(baseProgressIndicator.f9829b, BaseProgressIndicator.this.f9830c);
        }
    }

    class d extends androidx.vectordrawable.graphics.drawable.b {
        d() {
        }

        @Override // androidx.vectordrawable.graphics.drawable.b
        public void b(Drawable drawable) {
            super.b(drawable);
            if (BaseProgressIndicator.this.f9836l) {
                return;
            }
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            baseProgressIndicator.setVisibility(baseProgressIndicator.f9837m);
        }
    }

    protected BaseProgressIndicator(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(m4.a.c(context, attributeSet, i10, f9827r), attributeSet, i10);
        this.f9834j = -1L;
        this.f9836l = false;
        this.f9837m = 4;
        this.f9838n = new a();
        this.f9839o = new b();
        this.f9840p = new c();
        this.f9841q = new d();
        Context context2 = getContext();
        this.f9828a = i(context2, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R$styleable.BaseProgressIndicator, i10, i11, new int[0]);
        this.f9832h = typedArrayObtainStyledAttributes.getInt(R$styleable.BaseProgressIndicator_showDelay, -1);
        this.f9833i = Math.min(typedArrayObtainStyledAttributes.getInt(R$styleable.BaseProgressIndicator_minHideDelay, -1), 1000);
        typedArrayObtainStyledAttributes.recycle();
        this.f9835k = new h4.a();
        this.f9831f = true;
    }

    private f getCurrentDrawingDelegate() {
        if (isIndeterminate()) {
            if (getIndeterminateDrawable() == null) {
                return null;
            }
            return getIndeterminateDrawable().w();
        }
        if (getProgressDrawable() == null) {
            return null;
        }
        return getProgressDrawable().x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        ((e) getCurrentDrawable()).q(false, false, true);
        if (m()) {
            setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        if (this.f9833i > 0) {
            this.f9834j = SystemClock.uptimeMillis();
        }
        setVisibility(0);
    }

    private boolean m() {
        return (getProgressDrawable() == null || !getProgressDrawable().isVisible()) && (getIndeterminateDrawable() == null || !getIndeterminateDrawable().isVisible());
    }

    private void n() {
        if (getProgressDrawable() != null && getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().v().d(this.f9840p);
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().m(this.f9841q);
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().m(this.f9841q);
        }
    }

    private void p() {
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().s(this.f9841q);
            getIndeterminateDrawable().v().h();
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().s(this.f9841q);
        }
    }

    @Override // android.widget.ProgressBar
    public Drawable getCurrentDrawable() {
        return isIndeterminate() ? getIndeterminateDrawable() : getProgressDrawable();
    }

    public int getHideAnimationBehavior() {
        return this.f9828a.f9860f;
    }

    public int[] getIndicatorColor() {
        return this.f9828a.f9857c;
    }

    public int getIndicatorTrackGapSize() {
        return this.f9828a.f9861g;
    }

    public int getShowAnimationBehavior() {
        return this.f9828a.f9859e;
    }

    public int getTrackColor() {
        return this.f9828a.f9858d;
    }

    public int getTrackCornerRadius() {
        return this.f9828a.f9856b;
    }

    public int getTrackThickness() {
        return this.f9828a.f9855a;
    }

    protected void h(boolean z10) {
        if (this.f9831f) {
            ((e) getCurrentDrawable()).q(q(), false, z10);
        }
    }

    abstract com.google.android.material.progressindicator.a i(Context context, AttributeSet attributeSet);

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        if (getCurrentDrawable() != null) {
            getCurrentDrawable().invalidateSelf();
        }
    }

    boolean l() {
        View view = this;
        while (view.getVisibility() == 0) {
            Object parent = view.getParent();
            if (parent == null) {
                return getWindowVisibility() == 0;
            }
            if (!(parent instanceof View)) {
                return true;
            }
            view = (View) parent;
        }
        return false;
    }

    public void o(int i10, boolean z10) {
        if (!isIndeterminate()) {
            super.setProgress(i10);
            if (getProgressDrawable() == null || z10) {
                return;
            }
            getProgressDrawable().jumpToCurrentState();
            return;
        }
        if (getProgressDrawable() != null) {
            this.f9829b = i10;
            this.f9830c = z10;
            this.f9836l = true;
            if (!getIndeterminateDrawable().isVisible() || this.f9835k.a(getContext().getContentResolver()) == 0.0f) {
                this.f9840p.b(getIndeterminateDrawable());
            } else {
                getIndeterminateDrawable().v().f();
            }
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        n();
        if (q()) {
            k();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f9839o);
        removeCallbacks(this.f9838n);
        ((e) getCurrentDrawable()).i();
        p();
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        try {
            int iSave = canvas.save();
            if (getPaddingLeft() != 0 || getPaddingTop() != 0) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            if (getPaddingRight() != 0 || getPaddingBottom() != 0) {
                canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
            }
            getCurrentDrawable().draw(canvas);
            canvas.restoreToCount(iSave);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected synchronized void onMeasure(int i10, int i11) {
        try {
            f currentDrawingDelegate = getCurrentDrawingDelegate();
            if (currentDrawingDelegate == null) {
                return;
            }
            setMeasuredDimension(currentDrawingDelegate.f() < 0 ? View.getDefaultSize(getSuggestedMinimumWidth(), i10) : currentDrawingDelegate.f() + getPaddingLeft() + getPaddingRight(), currentDrawingDelegate.e() < 0 ? View.getDefaultSize(getSuggestedMinimumHeight(), i11) : currentDrawingDelegate.e() + getPaddingTop() + getPaddingBottom());
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        h(i10 == 0);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        h(false);
    }

    boolean q() {
        return m0.N(this) && getWindowVisibility() == 0 && l();
    }

    public void setAnimatorDurationScaleProvider(h4.a aVar) {
        this.f9835k = aVar;
        if (getProgressDrawable() != null) {
            getProgressDrawable().f9891c = aVar;
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().f9891c = aVar;
        }
    }

    public void setHideAnimationBehavior(int i10) {
        this.f9828a.f9860f = i10;
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public synchronized void setIndeterminate(boolean z10) {
        try {
            if (z10 == isIndeterminate()) {
                return;
            }
            e eVar = (e) getCurrentDrawable();
            if (eVar != null) {
                eVar.i();
            }
            super.setIndeterminate(z10);
            e eVar2 = (e) getCurrentDrawable();
            if (eVar2 != null) {
                eVar2.q(q(), false, false);
            }
            if ((eVar2 instanceof h) && q()) {
                ((h) eVar2).v().g();
            }
            this.f9836l = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateDrawable(Drawable drawable) {
        if (drawable == null) {
            super.setIndeterminateDrawable(null);
        } else {
            if (!(drawable instanceof h)) {
                throw new IllegalArgumentException("Cannot set framework drawable as indeterminate drawable.");
            }
            ((e) drawable).i();
            super.setIndeterminateDrawable(drawable);
        }
    }

    public void setIndicatorColor(int... iArr) {
        if (iArr.length == 0) {
            iArr = new int[]{b4.a.b(getContext(), R$attr.colorPrimary, -1)};
        }
        if (Arrays.equals(getIndicatorColor(), iArr)) {
            return;
        }
        this.f9828a.f9857c = iArr;
        getIndeterminateDrawable().v().c();
        invalidate();
    }

    public void setIndicatorTrackGapSize(int i10) {
        com.google.android.material.progressindicator.a aVar = this.f9828a;
        if (aVar.f9861g != i10) {
            aVar.f9861g = i10;
            aVar.e();
            invalidate();
        }
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i10) {
        if (isIndeterminate()) {
            return;
        }
        o(i10, false);
    }

    @Override // android.widget.ProgressBar
    public void setProgressDrawable(Drawable drawable) {
        if (drawable == null) {
            super.setProgressDrawable(null);
        } else {
            if (!(drawable instanceof com.google.android.material.progressindicator.d)) {
                throw new IllegalArgumentException("Cannot set framework drawable as progress drawable.");
            }
            com.google.android.material.progressindicator.d dVar = (com.google.android.material.progressindicator.d) drawable;
            dVar.i();
            super.setProgressDrawable(dVar);
            dVar.B(getProgress() / getMax());
        }
    }

    public void setShowAnimationBehavior(int i10) {
        this.f9828a.f9859e = i10;
        invalidate();
    }

    public void setTrackColor(int i10) {
        com.google.android.material.progressindicator.a aVar = this.f9828a;
        if (aVar.f9858d != i10) {
            aVar.f9858d = i10;
            invalidate();
        }
    }

    public void setTrackCornerRadius(int i10) {
        com.google.android.material.progressindicator.a aVar = this.f9828a;
        if (aVar.f9856b != i10) {
            aVar.f9856b = Math.min(i10, aVar.f9855a / 2);
            invalidate();
        }
    }

    public void setTrackThickness(int i10) {
        com.google.android.material.progressindicator.a aVar = this.f9828a;
        if (aVar.f9855a != i10) {
            aVar.f9855a = i10;
            requestLayout();
        }
    }

    public void setVisibilityAfterHide(int i10) {
        if (i10 != 0 && i10 != 4 && i10 != 8) {
            throw new IllegalArgumentException("The component's visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View.");
        }
        this.f9837m = i10;
    }

    @Override // android.widget.ProgressBar
    public h getIndeterminateDrawable() {
        return (h) super.getIndeterminateDrawable();
    }

    @Override // android.widget.ProgressBar
    public com.google.android.material.progressindicator.d getProgressDrawable() {
        return (com.google.android.material.progressindicator.d) super.getProgressDrawable();
    }
}
