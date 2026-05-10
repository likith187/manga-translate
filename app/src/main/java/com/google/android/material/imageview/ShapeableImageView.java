package com.google.android.material.imageview;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.shape.i;
import com.google.android.material.shape.n;
import com.google.android.material.shape.o;
import com.google.android.material.shape.r;
import i4.c;

/* JADX INFO: loaded from: classes.dex */
public class ShapeableImageView extends AppCompatImageView implements r {

    /* JADX INFO: renamed from: v */
    private static final int f9686v = R$style.Widget_MaterialComponents_ShapeableImageView;

    /* JADX INFO: renamed from: a */
    private final o f9687a;

    /* JADX INFO: renamed from: b */
    private final RectF f9688b;

    /* JADX INFO: renamed from: c */
    private final RectF f9689c;

    /* JADX INFO: renamed from: f */
    private final Paint f9690f;

    /* JADX INFO: renamed from: h */
    private final Paint f9691h;

    /* JADX INFO: renamed from: i */
    private final Path f9692i;

    /* JADX INFO: renamed from: j */
    private ColorStateList f9693j;

    /* JADX INFO: renamed from: k */
    private i f9694k;

    /* JADX INFO: renamed from: l */
    private n f9695l;

    /* JADX INFO: renamed from: m */
    private float f9696m;

    /* JADX INFO: renamed from: n */
    private Path f9697n;

    /* JADX INFO: renamed from: o */
    private int f9698o;

    /* JADX INFO: renamed from: p */
    private int f9699p;

    /* JADX INFO: renamed from: q */
    private int f9700q;

    /* JADX INFO: renamed from: r */
    private int f9701r;

    /* JADX INFO: renamed from: s */
    private int f9702s;

    /* JADX INFO: renamed from: t */
    private int f9703t;

    /* JADX INFO: renamed from: u */
    private boolean f9704u;

    class a extends ViewOutlineProvider {

        /* JADX INFO: renamed from: a */
        private final Rect f9705a = new Rect();

        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            if (ShapeableImageView.this.f9695l == null) {
                return;
            }
            if (ShapeableImageView.this.f9694k == null) {
                ShapeableImageView.this.f9694k = new i(ShapeableImageView.this.f9695l);
            }
            ShapeableImageView.this.f9688b.round(this.f9705a);
            ShapeableImageView.this.f9694k.setBounds(this.f9705a);
            ShapeableImageView.this.f9694k.getOutline(outline);
        }
    }

    public ShapeableImageView(Context context) {
        this(context, null, 0);
    }

    private void e(Canvas canvas) {
        if (this.f9693j == null) {
            return;
        }
        this.f9690f.setStrokeWidth(this.f9696m);
        int colorForState = this.f9693j.getColorForState(getDrawableState(), this.f9693j.getDefaultColor());
        if (this.f9696m <= 0.0f || colorForState == 0) {
            return;
        }
        this.f9690f.setColor(colorForState);
        canvas.drawPath(this.f9692i, this.f9690f);
    }

    private boolean f() {
        return (this.f9702s == Integer.MIN_VALUE && this.f9703t == Integer.MIN_VALUE) ? false : true;
    }

    private boolean g() {
        return getLayoutDirection() == 1;
    }

    private void h(int i10, int i11) {
        this.f9688b.set(getPaddingLeft(), getPaddingTop(), i10 - getPaddingRight(), i11 - getPaddingBottom());
        this.f9687a.d(this.f9695l, 1.0f, this.f9688b, this.f9692i);
        this.f9697n.rewind();
        this.f9697n.addPath(this.f9692i);
        this.f9689c.set(0.0f, 0.0f, i10, i11);
        this.f9697n.addRect(this.f9689c, Path.Direction.CCW);
    }

    public int getContentPaddingBottom() {
        return this.f9701r;
    }

    public final int getContentPaddingEnd() {
        int i10 = this.f9703t;
        return i10 != Integer.MIN_VALUE ? i10 : g() ? this.f9698o : this.f9700q;
    }

    public int getContentPaddingLeft() {
        int i10;
        int i11;
        if (f()) {
            if (g() && (i11 = this.f9703t) != Integer.MIN_VALUE) {
                return i11;
            }
            if (!g() && (i10 = this.f9702s) != Integer.MIN_VALUE) {
                return i10;
            }
        }
        return this.f9698o;
    }

    public int getContentPaddingRight() {
        int i10;
        int i11;
        if (f()) {
            if (g() && (i11 = this.f9702s) != Integer.MIN_VALUE) {
                return i11;
            }
            if (!g() && (i10 = this.f9703t) != Integer.MIN_VALUE) {
                return i10;
            }
        }
        return this.f9700q;
    }

    public final int getContentPaddingStart() {
        int i10 = this.f9702s;
        return i10 != Integer.MIN_VALUE ? i10 : g() ? this.f9700q : this.f9698o;
    }

    public int getContentPaddingTop() {
        return this.f9699p;
    }

    @Override // android.view.View
    public int getPaddingBottom() {
        return super.getPaddingBottom() - getContentPaddingBottom();
    }

    @Override // android.view.View
    public int getPaddingEnd() {
        return super.getPaddingEnd() - getContentPaddingEnd();
    }

    @Override // android.view.View
    public int getPaddingLeft() {
        return super.getPaddingLeft() - getContentPaddingLeft();
    }

    @Override // android.view.View
    public int getPaddingRight() {
        return super.getPaddingRight() - getContentPaddingRight();
    }

    @Override // android.view.View
    public int getPaddingStart() {
        return super.getPaddingStart() - getContentPaddingStart();
    }

    @Override // android.view.View
    public int getPaddingTop() {
        return super.getPaddingTop() - getContentPaddingTop();
    }

    public n getShapeAppearanceModel() {
        return this.f9695l;
    }

    public ColorStateList getStrokeColor() {
        return this.f9693j;
    }

    public float getStrokeWidth() {
        return this.f9696m;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.f9697n, this.f9691h);
        e(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (!this.f9704u && isLayoutDirectionResolved()) {
            this.f9704u = true;
            if (isPaddingRelative() || f()) {
                setPaddingRelative(super.getPaddingStart(), super.getPaddingTop(), super.getPaddingEnd(), super.getPaddingBottom());
            } else {
                setPadding(super.getPaddingLeft(), super.getPaddingTop(), super.getPaddingRight(), super.getPaddingBottom());
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        h(i10, i11);
    }

    @Override // android.view.View
    public void setPadding(int i10, int i11, int i12, int i13) {
        super.setPadding(i10 + getContentPaddingLeft(), i11 + getContentPaddingTop(), i12 + getContentPaddingRight(), i13 + getContentPaddingBottom());
    }

    @Override // android.view.View
    public void setPaddingRelative(int i10, int i11, int i12, int i13) {
        super.setPaddingRelative(i10 + getContentPaddingStart(), i11 + getContentPaddingTop(), i12 + getContentPaddingEnd(), i13 + getContentPaddingBottom());
    }

    @Override // com.google.android.material.shape.r
    public void setShapeAppearanceModel(n nVar) {
        this.f9695l = nVar;
        i iVar = this.f9694k;
        if (iVar != null) {
            iVar.setShapeAppearanceModel(nVar);
        }
        h(getWidth(), getHeight());
        invalidate();
        invalidateOutline();
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.f9693j = colorStateList;
        invalidate();
    }

    public void setStrokeColorResource(int i10) {
        setStrokeColor(e.a.a(getContext(), i10));
    }

    public void setStrokeWidth(float f10) {
        if (this.f9696m != f10) {
            this.f9696m = f10;
            invalidate();
        }
    }

    public void setStrokeWidthResource(int i10) {
        setStrokeWidth(getResources().getDimensionPixelSize(i10));
    }

    public ShapeableImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ShapeableImageView(Context context, AttributeSet attributeSet, int i10) {
        int i11 = f9686v;
        super(m4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f9687a = o.k();
        this.f9692i = new Path();
        this.f9704u = false;
        Context context2 = getContext();
        Paint paint = new Paint();
        this.f9691h = paint;
        paint.setAntiAlias(true);
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.f9688b = new RectF();
        this.f9689c = new RectF();
        this.f9697n = new Path();
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R$styleable.ShapeableImageView, i10, i11);
        setLayerType(2, null);
        this.f9693j = c.a(context2, typedArrayObtainStyledAttributes, R$styleable.ShapeableImageView_strokeColor);
        this.f9696m = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_strokeWidth, 0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPadding, 0);
        this.f9698o = dimensionPixelSize;
        this.f9699p = dimensionPixelSize;
        this.f9700q = dimensionPixelSize;
        this.f9701r = dimensionPixelSize;
        this.f9698o = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingLeft, dimensionPixelSize);
        this.f9699p = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingTop, dimensionPixelSize);
        this.f9700q = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingRight, dimensionPixelSize);
        this.f9701r = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingBottom, dimensionPixelSize);
        this.f9702s = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingStart, Integer.MIN_VALUE);
        this.f9703t = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingEnd, Integer.MIN_VALUE);
        typedArrayObtainStyledAttributes.recycle();
        Paint paint2 = new Paint();
        this.f9690f = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        this.f9695l = n.e(context2, attributeSet, i10, i11).m();
        setOutlineProvider(new a());
    }
}
