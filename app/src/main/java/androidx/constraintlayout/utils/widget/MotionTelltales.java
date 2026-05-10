package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewParent;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class MotionTelltales extends MockView {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Paint f1639o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    MotionLayout f1640p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    float[] f1641q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    Matrix f1642r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f1643s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f1644t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    float f1645u;

    public MotionTelltales(Context context) {
        super(context);
        this.f1639o = new Paint();
        this.f1641q = new float[2];
        this.f1642r = new Matrix();
        this.f1643s = 0;
        this.f1644t = -65281;
        this.f1645u = 0.25f;
        a(context, null);
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MotionTelltales);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.MotionTelltales_telltales_tailColor) {
                    this.f1644t = typedArrayObtainStyledAttributes.getColor(index, this.f1644t);
                } else if (index == R$styleable.MotionTelltales_telltales_velocityMode) {
                    this.f1643s = typedArrayObtainStyledAttributes.getInt(index, this.f1643s);
                } else if (index == R$styleable.MotionTelltales_telltales_tailScale) {
                    this.f1645u = typedArrayObtainStyledAttributes.getFloat(index, this.f1645u);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f1639o.setColor(this.f1644t);
        this.f1639o.setStrokeWidth(5.0f);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // androidx.constraintlayout.utils.widget.MockView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        getMatrix().invert(this.f1642r);
        if (this.f1640p == null) {
            ViewParent parent = getParent();
            if (parent instanceof MotionLayout) {
                this.f1640p = (MotionLayout) parent;
                return;
            }
            return;
        }
        int width = getWidth();
        int height = getHeight();
        float[] fArr = {0.1f, 0.25f, 0.5f, 0.75f, 0.9f};
        for (int i10 = 0; i10 < 5; i10++) {
            float f10 = fArr[i10];
            for (int i11 = 0; i11 < 5; i11++) {
                float f11 = fArr[i11];
                this.f1640p.W(this, f11, f10, this.f1641q, this.f1643s);
                this.f1642r.mapVectors(this.f1641q);
                float f12 = width * f11;
                float f13 = height * f10;
                float[] fArr2 = this.f1641q;
                float f14 = fArr2[0];
                float f15 = this.f1645u;
                float f16 = f13 - (fArr2[1] * f15);
                this.f1642r.mapVectors(fArr2);
                canvas.drawLine(f12, f13, f12 - (f14 * f15), f16, this.f1639o);
            }
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        postInvalidate();
    }

    public void setText(CharSequence charSequence) {
        this.f1600i = charSequence.toString();
        requestLayout();
    }

    public MotionTelltales(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1639o = new Paint();
        this.f1641q = new float[2];
        this.f1642r = new Matrix();
        this.f1643s = 0;
        this.f1644t = -65281;
        this.f1645u = 0.25f;
        a(context, attributeSet);
    }

    public MotionTelltales(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1639o = new Paint();
        this.f1641q = new float[2];
        this.f1642r = new Matrix();
        this.f1643s = 0;
        this.f1644t = -65281;
        this.f1645u = 0.25f;
        a(context, attributeSet);
    }
}
