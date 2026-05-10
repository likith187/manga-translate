package com.google.android.material.floatingactionbutton;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import com.google.android.material.shape.n;
import com.google.android.material.shape.o;

/* JADX INFO: loaded from: classes.dex */
class c extends Drawable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f9618b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float f9624h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f9625i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f9626j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f9627k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f9628l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f9629m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private n f9631o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ColorStateList f9632p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o f9617a = o.k();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Path f9619c = new Path();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Rect f9620d = new Rect();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RectF f9621e = new RectF();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final RectF f9622f = new RectF();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b f9623g = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f9630n = true;

    private class b extends Drawable.ConstantState {
        private b() {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return c.this;
        }
    }

    c(n nVar) {
        this.f9631o = nVar;
        Paint paint = new Paint(1);
        this.f9618b = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    private Shader a() {
        copyBounds(this.f9620d);
        float fHeight = this.f9624h / r1.height();
        return new LinearGradient(0.0f, r1.top, 0.0f, r1.bottom, new int[]{u.d.o(this.f9625i, this.f9629m), u.d.o(this.f9626j, this.f9629m), u.d.o(u.d.u(this.f9626j, 0), this.f9629m), u.d.o(u.d.u(this.f9628l, 0), this.f9629m), u.d.o(this.f9628l, this.f9629m), u.d.o(this.f9627k, this.f9629m)}, new float[]{0.0f, fHeight, 0.5f, 0.5f, 1.0f - fHeight, 1.0f}, Shader.TileMode.CLAMP);
    }

    protected RectF b() {
        this.f9622f.set(getBounds());
        return this.f9622f;
    }

    void c(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f9629m = colorStateList.getColorForState(getState(), this.f9629m);
        }
        this.f9632p = colorStateList;
        this.f9630n = true;
        invalidateSelf();
    }

    public void d(float f10) {
        if (this.f9624h != f10) {
            this.f9624h = f10;
            this.f9618b.setStrokeWidth(f10 * 1.3333f);
            this.f9630n = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f9630n) {
            this.f9618b.setShader(a());
            this.f9630n = false;
        }
        float strokeWidth = this.f9618b.getStrokeWidth() / 2.0f;
        copyBounds(this.f9620d);
        this.f9621e.set(this.f9620d);
        float fMin = Math.min(this.f9631o.r().a(b()), this.f9621e.width() / 2.0f);
        if (this.f9631o.u(b())) {
            this.f9621e.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(this.f9621e, fMin, fMin, this.f9618b);
        }
    }

    void e(int i10, int i11, int i12, int i13) {
        this.f9625i = i10;
        this.f9626j = i11;
        this.f9627k = i12;
        this.f9628l = i13;
    }

    public void f(n nVar) {
        this.f9631o = nVar;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f9623g;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f9624h > 0.0f ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.f9631o.u(b())) {
            outline.setRoundRect(getBounds(), this.f9631o.r().a(b()));
        } else {
            copyBounds(this.f9620d);
            this.f9621e.set(this.f9620d);
            this.f9617a.d(this.f9631o, 1.0f, this.f9621e, this.f9619c);
            com.google.android.material.drawable.a.l(outline, this.f9619c);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        if (!this.f9631o.u(b())) {
            return true;
        }
        int iRound = Math.round(this.f9624h);
        rect.set(iRound, iRound, iRound, iRound);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f9632p;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f9630n = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.f9632p;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.f9629m)) != this.f9629m) {
            this.f9630n = true;
            this.f9629m = colorForState;
        }
        if (this.f9630n) {
            invalidateSelf();
        }
        return this.f9630n;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f9618b.setAlpha(i10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f9618b.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
