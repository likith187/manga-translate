package androidx.constraintlayout.utils.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.appcompat.R$attr;
import androidx.constraintlayout.motion.widget.c;
import androidx.constraintlayout.widget.R$styleable;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class MotionLabel extends View implements c {
    private int A;
    private int B;
    private boolean C;
    private float D;
    private float E;
    private float F;
    private Drawable G;
    Matrix H;
    private Bitmap I;
    private BitmapShader J;
    private Matrix K;
    private float L;
    private float M;
    private float N;
    private float O;
    Paint P;
    private int Q;
    Rect R;
    Paint S;
    float T;
    float U;
    float V;
    float W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    TextPaint f1613a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    float f1614a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Path f1615b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1616c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1617f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f1618h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f1619i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f1620j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    ViewOutlineProvider f1621k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    RectF f1622l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f1623m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f1624n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f1625o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f1626p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f1627q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f1628r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    boolean f1629s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Rect f1630t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f1631u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f1632v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f1633w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f1634x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f1635y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Layout f1636z;

    class a extends ViewOutlineProvider {
        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, MotionLabel.this.getWidth(), MotionLabel.this.getHeight(), (Math.min(r3, r4) * MotionLabel.this.f1619i) / 2.0f);
        }
    }

    class b extends ViewOutlineProvider {
        b() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, MotionLabel.this.getWidth(), MotionLabel.this.getHeight(), MotionLabel.this.f1620j);
        }
    }

    public MotionLabel(Context context) {
        super(context);
        this.f1613a = new TextPaint();
        this.f1615b = new Path();
        this.f1616c = 65535;
        this.f1617f = 65535;
        this.f1618h = false;
        this.f1619i = 0.0f;
        this.f1620j = Float.NaN;
        this.f1623m = 48.0f;
        this.f1624n = Float.NaN;
        this.f1627q = 0.0f;
        this.f1628r = "Hello World";
        this.f1629s = true;
        this.f1630t = new Rect();
        this.f1631u = 1;
        this.f1632v = 1;
        this.f1633w = 1;
        this.f1634x = 1;
        this.A = 8388659;
        this.B = 0;
        this.C = false;
        this.L = Float.NaN;
        this.M = Float.NaN;
        this.N = 0.0f;
        this.O = 0.0f;
        this.P = new Paint();
        this.Q = 0;
        this.U = Float.NaN;
        this.V = Float.NaN;
        this.W = Float.NaN;
        this.f1614a0 = Float.NaN;
        g(context, null);
    }

    private void d(float f10, float f11, float f12, float f13) {
        if (this.K == null) {
            return;
        }
        this.E = f12 - f10;
        this.F = f13 - f11;
        k();
    }

    private void g(Context context, AttributeSet attributeSet) {
        setUpTheme(context);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.MotionLabel);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.MotionLabel_android_text) {
                    setText(typedArrayObtainStyledAttributes.getText(index));
                } else if (index == R$styleable.MotionLabel_android_fontFamily) {
                    this.f1635y = typedArrayObtainStyledAttributes.getString(index);
                } else if (index == R$styleable.MotionLabel_scaleFromTextSize) {
                    this.f1624n = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, (int) this.f1624n);
                } else if (index == R$styleable.MotionLabel_android_textSize) {
                    this.f1623m = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, (int) this.f1623m);
                } else if (index == R$styleable.MotionLabel_android_textStyle) {
                    this.f1625o = typedArrayObtainStyledAttributes.getInt(index, this.f1625o);
                } else if (index == R$styleable.MotionLabel_android_typeface) {
                    this.f1626p = typedArrayObtainStyledAttributes.getInt(index, this.f1626p);
                } else if (index == R$styleable.MotionLabel_android_textColor) {
                    this.f1616c = typedArrayObtainStyledAttributes.getColor(index, this.f1616c);
                } else if (index == R$styleable.MotionLabel_borderRound) {
                    float dimension = typedArrayObtainStyledAttributes.getDimension(index, this.f1620j);
                    this.f1620j = dimension;
                    setRound(dimension);
                } else if (index == R$styleable.MotionLabel_borderRoundPercent) {
                    float f10 = typedArrayObtainStyledAttributes.getFloat(index, this.f1619i);
                    this.f1619i = f10;
                    setRoundPercent(f10);
                } else if (index == R$styleable.MotionLabel_android_gravity) {
                    setGravity(typedArrayObtainStyledAttributes.getInt(index, -1));
                } else if (index == R$styleable.MotionLabel_android_autoSizeTextType) {
                    this.B = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == R$styleable.MotionLabel_textOutlineColor) {
                    this.f1617f = typedArrayObtainStyledAttributes.getInt(index, this.f1617f);
                    this.f1618h = true;
                } else if (index == R$styleable.MotionLabel_textOutlineThickness) {
                    this.f1627q = typedArrayObtainStyledAttributes.getDimension(index, this.f1627q);
                    this.f1618h = true;
                } else if (index == R$styleable.MotionLabel_textBackground) {
                    this.G = typedArrayObtainStyledAttributes.getDrawable(index);
                    this.f1618h = true;
                } else if (index == R$styleable.MotionLabel_textBackgroundPanX) {
                    this.U = typedArrayObtainStyledAttributes.getFloat(index, this.U);
                } else if (index == R$styleable.MotionLabel_textBackgroundPanY) {
                    this.V = typedArrayObtainStyledAttributes.getFloat(index, this.V);
                } else if (index == R$styleable.MotionLabel_textPanX) {
                    this.N = typedArrayObtainStyledAttributes.getFloat(index, this.N);
                } else if (index == R$styleable.MotionLabel_textPanY) {
                    this.O = typedArrayObtainStyledAttributes.getFloat(index, this.O);
                } else if (index == R$styleable.MotionLabel_textBackgroundRotate) {
                    this.f1614a0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1614a0);
                } else if (index == R$styleable.MotionLabel_textBackgroundZoom) {
                    this.W = typedArrayObtainStyledAttributes.getFloat(index, this.W);
                } else if (index == R$styleable.MotionLabel_textureHeight) {
                    this.L = typedArrayObtainStyledAttributes.getDimension(index, this.L);
                } else if (index == R$styleable.MotionLabel_textureWidth) {
                    this.M = typedArrayObtainStyledAttributes.getDimension(index, this.M);
                } else if (index == R$styleable.MotionLabel_textureEffect) {
                    this.Q = typedArrayObtainStyledAttributes.getInt(index, this.Q);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        j();
        i();
    }

    private float getHorizontalOffset() {
        float f10 = Float.isNaN(this.f1624n) ? 1.0f : this.f1623m / this.f1624n;
        TextPaint textPaint = this.f1613a;
        String str = this.f1628r;
        return (((((Float.isNaN(this.E) ? getMeasuredWidth() : this.E) - getPaddingLeft()) - getPaddingRight()) - (f10 * textPaint.measureText(str, 0, str.length()))) * (this.N + 1.0f)) / 2.0f;
    }

    private float getVerticalOffset() {
        float f10 = Float.isNaN(this.f1624n) ? 1.0f : this.f1623m / this.f1624n;
        Paint.FontMetrics fontMetrics = this.f1613a.getFontMetrics();
        float measuredHeight = ((Float.isNaN(this.F) ? getMeasuredHeight() : this.F) - getPaddingTop()) - getPaddingBottom();
        float f11 = fontMetrics.descent;
        float f12 = fontMetrics.ascent;
        return (((measuredHeight - ((f11 - f12) * f10)) * (1.0f - this.O)) / 2.0f) - (f10 * f12);
    }

    private void h(String str, int i10, int i11) {
        Typeface typefaceCreate;
        if (str != null) {
            typefaceCreate = Typeface.create(str, i11);
            if (typefaceCreate != null) {
                setTypeface(typefaceCreate);
                return;
            }
        } else {
            typefaceCreate = null;
        }
        if (i10 == 1) {
            typefaceCreate = Typeface.SANS_SERIF;
        } else if (i10 == 2) {
            typefaceCreate = Typeface.SERIF;
        } else if (i10 == 3) {
            typefaceCreate = Typeface.MONOSPACE;
        }
        if (i11 <= 0) {
            this.f1613a.setFakeBoldText(false);
            this.f1613a.setTextSkewX(0.0f);
            setTypeface(typefaceCreate);
        } else {
            Typeface typefaceDefaultFromStyle = typefaceCreate == null ? Typeface.defaultFromStyle(i11) : Typeface.create(typefaceCreate, i11);
            setTypeface(typefaceDefaultFromStyle);
            int i12 = (~(typefaceDefaultFromStyle != null ? typefaceDefaultFromStyle.getStyle() : 0)) & i11;
            this.f1613a.setFakeBoldText((i12 & 1) != 0);
            this.f1613a.setTextSkewX((i12 & 2) != 0 ? -0.25f : 0.0f);
        }
    }

    private void j() {
        if (this.G != null) {
            this.K = new Matrix();
            int intrinsicWidth = this.G.getIntrinsicWidth();
            int intrinsicHeight = this.G.getIntrinsicHeight();
            if (intrinsicWidth <= 0 && (intrinsicWidth = getWidth()) == 0) {
                intrinsicWidth = Float.isNaN(this.M) ? 128 : (int) this.M;
            }
            if (intrinsicHeight <= 0 && (intrinsicHeight = getHeight()) == 0) {
                intrinsicHeight = Float.isNaN(this.L) ? 128 : (int) this.L;
            }
            if (this.Q != 0) {
                intrinsicWidth /= 2;
                intrinsicHeight /= 2;
            }
            this.I = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(this.I);
            this.G.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            this.G.setFilterBitmap(true);
            this.G.draw(canvas);
            if (this.Q != 0) {
                this.I = e(this.I, 4);
            }
            Bitmap bitmap = this.I;
            Shader.TileMode tileMode = Shader.TileMode.REPEAT;
            this.J = new BitmapShader(bitmap, tileMode, tileMode);
        }
    }

    private void k() {
        float f10 = Float.isNaN(this.U) ? 0.0f : this.U;
        float f11 = Float.isNaN(this.V) ? 0.0f : this.V;
        float f12 = Float.isNaN(this.W) ? 1.0f : this.W;
        float f13 = Float.isNaN(this.f1614a0) ? 0.0f : this.f1614a0;
        this.K.reset();
        float width = this.I.getWidth();
        float height = this.I.getHeight();
        float f14 = Float.isNaN(this.M) ? this.E : this.M;
        float f15 = Float.isNaN(this.L) ? this.F : this.L;
        float f16 = f12 * (width * f15 < height * f14 ? f14 / width : f15 / height);
        this.K.postScale(f16, f16);
        float f17 = width * f16;
        float f18 = f14 - f17;
        float f19 = f16 * height;
        float f20 = f15 - f19;
        if (!Float.isNaN(this.L)) {
            f20 = this.L / 2.0f;
        }
        if (!Float.isNaN(this.M)) {
            f18 = this.M / 2.0f;
        }
        this.K.postTranslate((((f10 * f18) + f14) - f17) * 0.5f, (((f11 * f20) + f15) - f19) * 0.5f);
        this.K.postRotate(f13, f14 / 2.0f, f15 / 2.0f);
        this.J.setLocalMatrix(this.K);
    }

    private void setUpTheme(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R$attr.colorPrimary, typedValue, true);
        TextPaint textPaint = this.f1613a;
        int i10 = typedValue.data;
        this.f1616c = i10;
        textPaint.setColor(i10);
    }

    @Override // androidx.constraintlayout.motion.widget.c
    public void a(float f10, float f11, float f12, float f13) {
        int i10 = (int) (f10 + 0.5f);
        this.D = f10 - i10;
        int i11 = (int) (f12 + 0.5f);
        int i12 = i11 - i10;
        int i13 = (int) (f13 + 0.5f);
        int i14 = (int) (0.5f + f11);
        int i15 = i13 - i14;
        float f14 = f12 - f10;
        this.E = f14;
        float f15 = f13 - f11;
        this.F = f15;
        d(f10, f11, f12, f13);
        if (getMeasuredHeight() == i15 && getMeasuredWidth() == i12) {
            super.layout(i10, i14, i11, i13);
        } else {
            measure(View.MeasureSpec.makeMeasureSpec(i12, 1073741824), View.MeasureSpec.makeMeasureSpec(i15, 1073741824));
            super.layout(i10, i14, i11, i13);
        }
        if (this.C) {
            if (this.R == null) {
                this.S = new Paint();
                this.R = new Rect();
                this.S.set(this.f1613a);
                this.T = this.S.getTextSize();
            }
            this.E = f14;
            this.F = f15;
            Paint paint = this.S;
            String str = this.f1628r;
            paint.getTextBounds(str, 0, str.length(), this.R);
            float fHeight = this.R.height() * 1.3f;
            float f16 = (f14 - this.f1632v) - this.f1631u;
            float f17 = (f15 - this.f1634x) - this.f1633w;
            float fWidth = this.R.width();
            if (fWidth * f17 > fHeight * f16) {
                this.f1613a.setTextSize((this.T * f16) / fWidth);
            } else {
                this.f1613a.setTextSize((this.T * f17) / fHeight);
            }
            if (this.f1618h || !Float.isNaN(this.f1624n)) {
                f(Float.isNaN(this.f1624n) ? 1.0f : this.f1623m / this.f1624n);
            }
        }
    }

    Bitmap e(Bitmap bitmap, int i10) {
        int width = bitmap.getWidth() / 2;
        int height = bitmap.getHeight() / 2;
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, width, height, true);
        for (int i11 = 0; i11 < i10 && width >= 32 && height >= 32; i11++) {
            width /= 2;
            height /= 2;
            bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateScaledBitmap, width, height, true);
        }
        return bitmapCreateScaledBitmap;
    }

    void f(float f10) {
        if (this.f1618h || f10 != 1.0f) {
            this.f1615b.reset();
            String str = this.f1628r;
            int length = str.length();
            this.f1613a.getTextBounds(str, 0, length, this.f1630t);
            this.f1613a.getTextPath(str, 0, length, 0.0f, 0.0f, this.f1615b);
            if (f10 != 1.0f) {
                Log.v("MotionLabel", androidx.constraintlayout.motion.widget.a.a() + " scale " + f10);
                Matrix matrix = new Matrix();
                matrix.postScale(f10, f10);
                this.f1615b.transform(matrix);
            }
            Rect rect = this.f1630t;
            rect.right--;
            rect.left++;
            rect.bottom++;
            rect.top--;
            RectF rectF = new RectF();
            rectF.bottom = getHeight();
            rectF.right = getWidth();
            this.f1629s = false;
        }
    }

    public float getRound() {
        return this.f1620j;
    }

    public float getRoundPercent() {
        return this.f1619i;
    }

    public float getScaleFromTextSize() {
        return this.f1624n;
    }

    public float getTextBackgroundPanX() {
        return this.U;
    }

    public float getTextBackgroundPanY() {
        return this.V;
    }

    public float getTextBackgroundRotate() {
        return this.f1614a0;
    }

    public float getTextBackgroundZoom() {
        return this.W;
    }

    public int getTextOutlineColor() {
        return this.f1617f;
    }

    public float getTextPanX() {
        return this.N;
    }

    public float getTextPanY() {
        return this.O;
    }

    public float getTextureHeight() {
        return this.L;
    }

    public float getTextureWidth() {
        return this.M;
    }

    public Typeface getTypeface() {
        return this.f1613a.getTypeface();
    }

    void i() {
        this.f1631u = getPaddingLeft();
        this.f1632v = getPaddingRight();
        this.f1633w = getPaddingTop();
        this.f1634x = getPaddingBottom();
        h(this.f1635y, this.f1626p, this.f1625o);
        this.f1613a.setColor(this.f1616c);
        this.f1613a.setStrokeWidth(this.f1627q);
        this.f1613a.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f1613a.setFlags(128);
        setTextSize(this.f1623m);
        this.f1613a.setAntiAlias(true);
    }

    @Override // android.view.View
    public void layout(int i10, int i11, int i12, int i13) {
        super.layout(i10, i11, i12, i13);
        boolean zIsNaN = Float.isNaN(this.f1624n);
        float f10 = zIsNaN ? 1.0f : this.f1623m / this.f1624n;
        this.E = i12 - i10;
        this.F = i13 - i11;
        if (this.C) {
            if (this.R == null) {
                this.S = new Paint();
                this.R = new Rect();
                this.S.set(this.f1613a);
                this.T = this.S.getTextSize();
            }
            Paint paint = this.S;
            String str = this.f1628r;
            paint.getTextBounds(str, 0, str.length(), this.R);
            int iWidth = this.R.width();
            int iHeight = (int) (this.R.height() * 1.3f);
            float f11 = (this.E - this.f1632v) - this.f1631u;
            float f12 = (this.F - this.f1634x) - this.f1633w;
            if (zIsNaN) {
                float f13 = iWidth;
                float f14 = iHeight;
                if (f13 * f12 > f14 * f11) {
                    this.f1613a.setTextSize((this.T * f11) / f13);
                } else {
                    this.f1613a.setTextSize((this.T * f12) / f14);
                }
            } else {
                float f15 = iWidth;
                float f16 = iHeight;
                f10 = f15 * f12 > f16 * f11 ? f11 / f15 : f12 / f16;
            }
        }
        if (this.f1618h || !zIsNaN) {
            d(i10, i11, i12, i13);
            f(f10);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f10 = Float.isNaN(this.f1624n) ? 1.0f : this.f1623m / this.f1624n;
        super.onDraw(canvas);
        if (!this.f1618h && f10 == 1.0f) {
            canvas.drawText(this.f1628r, this.D + this.f1631u + getHorizontalOffset(), this.f1633w + getVerticalOffset(), this.f1613a);
            return;
        }
        if (this.f1629s) {
            f(f10);
        }
        if (this.H == null) {
            this.H = new Matrix();
        }
        if (!this.f1618h) {
            float horizontalOffset = this.f1631u + getHorizontalOffset();
            float verticalOffset = this.f1633w + getVerticalOffset();
            this.H.reset();
            this.H.preTranslate(horizontalOffset, verticalOffset);
            this.f1615b.transform(this.H);
            this.f1613a.setColor(this.f1616c);
            this.f1613a.setStyle(Paint.Style.FILL_AND_STROKE);
            this.f1613a.setStrokeWidth(this.f1627q);
            canvas.drawPath(this.f1615b, this.f1613a);
            this.H.reset();
            this.H.preTranslate(-horizontalOffset, -verticalOffset);
            this.f1615b.transform(this.H);
            return;
        }
        this.P.set(this.f1613a);
        this.H.reset();
        float horizontalOffset2 = this.f1631u + getHorizontalOffset();
        float verticalOffset2 = this.f1633w + getVerticalOffset();
        this.H.postTranslate(horizontalOffset2, verticalOffset2);
        this.H.preScale(f10, f10);
        this.f1615b.transform(this.H);
        if (this.J != null) {
            this.f1613a.setFilterBitmap(true);
            this.f1613a.setShader(this.J);
        } else {
            this.f1613a.setColor(this.f1616c);
        }
        this.f1613a.setStyle(Paint.Style.FILL);
        this.f1613a.setStrokeWidth(this.f1627q);
        canvas.drawPath(this.f1615b, this.f1613a);
        if (this.J != null) {
            this.f1613a.setShader(null);
        }
        this.f1613a.setColor(this.f1617f);
        this.f1613a.setStyle(Paint.Style.STROKE);
        this.f1613a.setStrokeWidth(this.f1627q);
        canvas.drawPath(this.f1615b, this.f1613a);
        this.H.reset();
        this.H.postTranslate(-horizontalOffset2, -verticalOffset2);
        this.f1615b.transform(this.H);
        this.f1613a.set(this.P);
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        this.C = false;
        this.f1631u = getPaddingLeft();
        this.f1632v = getPaddingRight();
        this.f1633w = getPaddingTop();
        this.f1634x = getPaddingBottom();
        if (mode != 1073741824 || mode2 != 1073741824) {
            TextPaint textPaint = this.f1613a;
            String str = this.f1628r;
            textPaint.getTextBounds(str, 0, str.length(), this.f1630t);
            if (mode != 1073741824) {
                size = (int) (this.f1630t.width() + 0.99999f);
            }
            size += this.f1631u + this.f1632v;
            if (mode2 != 1073741824) {
                int fontMetricsInt = (int) (this.f1613a.getFontMetricsInt(null) + 0.99999f);
                if (mode2 == Integer.MIN_VALUE) {
                    fontMetricsInt = Math.min(size2, fontMetricsInt);
                }
                size2 = this.f1633w + this.f1634x + fontMetricsInt;
            }
        } else if (this.B != 0) {
            this.C = true;
        }
        setMeasuredDimension(size, size2);
    }

    @SuppressLint({"RtlHardcoded"})
    public void setGravity(int i10) {
        if ((i10 & 8388615) == 0) {
            i10 |= 8388611;
        }
        if ((i10 & 112) == 0) {
            i10 |= 48;
        }
        if (i10 != this.A) {
            invalidate();
        }
        this.A = i10;
        int i11 = i10 & 112;
        if (i11 == 48) {
            this.O = -1.0f;
        } else if (i11 != 80) {
            this.O = 0.0f;
        } else {
            this.O = 1.0f;
        }
        int i12 = i10 & 8388615;
        if (i12 != 3) {
            if (i12 != 5) {
                if (i12 != 8388611) {
                    if (i12 != 8388613) {
                        this.N = 0.0f;
                        return;
                    }
                }
            }
            this.N = 1.0f;
            return;
        }
        this.N = -1.0f;
    }

    public void setRound(float f10) {
        if (Float.isNaN(f10)) {
            this.f1620j = f10;
            float f11 = this.f1619i;
            this.f1619i = -1.0f;
            setRoundPercent(f11);
            return;
        }
        boolean z10 = this.f1620j != f10;
        this.f1620j = f10;
        if (f10 != 0.0f) {
            if (this.f1615b == null) {
                this.f1615b = new Path();
            }
            if (this.f1622l == null) {
                this.f1622l = new RectF();
            }
            if (this.f1621k == null) {
                b bVar = new b();
                this.f1621k = bVar;
                setOutlineProvider(bVar);
            }
            setClipToOutline(true);
            this.f1622l.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f1615b.reset();
            Path path = this.f1615b;
            RectF rectF = this.f1622l;
            float f12 = this.f1620j;
            path.addRoundRect(rectF, f12, f12, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public void setRoundPercent(float f10) {
        boolean z10 = this.f1619i != f10;
        this.f1619i = f10;
        if (f10 != 0.0f) {
            if (this.f1615b == null) {
                this.f1615b = new Path();
            }
            if (this.f1622l == null) {
                this.f1622l = new RectF();
            }
            if (this.f1621k == null) {
                a aVar = new a();
                this.f1621k = aVar;
                setOutlineProvider(aVar);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float fMin = (Math.min(width, height) * this.f1619i) / 2.0f;
            this.f1622l.set(0.0f, 0.0f, width, height);
            this.f1615b.reset();
            this.f1615b.addRoundRect(this.f1622l, fMin, fMin, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public void setScaleFromTextSize(float f10) {
        this.f1624n = f10;
    }

    public void setText(CharSequence charSequence) {
        this.f1628r = charSequence.toString();
        invalidate();
    }

    public void setTextBackgroundPanX(float f10) {
        this.U = f10;
        k();
        invalidate();
    }

    public void setTextBackgroundPanY(float f10) {
        this.V = f10;
        k();
        invalidate();
    }

    public void setTextBackgroundRotate(float f10) {
        this.f1614a0 = f10;
        k();
        invalidate();
    }

    public void setTextBackgroundZoom(float f10) {
        this.W = f10;
        k();
        invalidate();
    }

    public void setTextFillColor(int i10) {
        this.f1616c = i10;
        invalidate();
    }

    public void setTextOutlineColor(int i10) {
        this.f1617f = i10;
        this.f1618h = true;
        invalidate();
    }

    public void setTextOutlineThickness(float f10) {
        this.f1627q = f10;
        this.f1618h = true;
        if (Float.isNaN(f10)) {
            this.f1627q = 1.0f;
            this.f1618h = false;
        }
        invalidate();
    }

    public void setTextPanX(float f10) {
        this.N = f10;
        invalidate();
    }

    public void setTextPanY(float f10) {
        this.O = f10;
        invalidate();
    }

    public void setTextSize(float f10) {
        this.f1623m = f10;
        TextPaint textPaint = this.f1613a;
        if (!Float.isNaN(this.f1624n)) {
            f10 = this.f1624n;
        }
        textPaint.setTextSize(f10);
        f(Float.isNaN(this.f1624n) ? 1.0f : this.f1623m / this.f1624n);
        requestLayout();
        invalidate();
    }

    public void setTextureHeight(float f10) {
        this.L = f10;
        k();
        invalidate();
    }

    public void setTextureWidth(float f10) {
        this.M = f10;
        k();
        invalidate();
    }

    public void setTypeface(Typeface typeface) {
        if (Objects.equals(this.f1613a.getTypeface(), typeface)) {
            return;
        }
        this.f1613a.setTypeface(typeface);
        if (this.f1636z != null) {
            this.f1636z = null;
            requestLayout();
            invalidate();
        }
    }

    public MotionLabel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1613a = new TextPaint();
        this.f1615b = new Path();
        this.f1616c = 65535;
        this.f1617f = 65535;
        this.f1618h = false;
        this.f1619i = 0.0f;
        this.f1620j = Float.NaN;
        this.f1623m = 48.0f;
        this.f1624n = Float.NaN;
        this.f1627q = 0.0f;
        this.f1628r = "Hello World";
        this.f1629s = true;
        this.f1630t = new Rect();
        this.f1631u = 1;
        this.f1632v = 1;
        this.f1633w = 1;
        this.f1634x = 1;
        this.A = 8388659;
        this.B = 0;
        this.C = false;
        this.L = Float.NaN;
        this.M = Float.NaN;
        this.N = 0.0f;
        this.O = 0.0f;
        this.P = new Paint();
        this.Q = 0;
        this.U = Float.NaN;
        this.V = Float.NaN;
        this.W = Float.NaN;
        this.f1614a0 = Float.NaN;
        g(context, attributeSet);
    }

    public MotionLabel(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1613a = new TextPaint();
        this.f1615b = new Path();
        this.f1616c = 65535;
        this.f1617f = 65535;
        this.f1618h = false;
        this.f1619i = 0.0f;
        this.f1620j = Float.NaN;
        this.f1623m = 48.0f;
        this.f1624n = Float.NaN;
        this.f1627q = 0.0f;
        this.f1628r = "Hello World";
        this.f1629s = true;
        this.f1630t = new Rect();
        this.f1631u = 1;
        this.f1632v = 1;
        this.f1633w = 1;
        this.f1634x = 1;
        this.A = 8388659;
        this.B = 0;
        this.C = false;
        this.L = Float.NaN;
        this.M = Float.NaN;
        this.N = 0.0f;
        this.O = 0.0f;
        this.P = new Paint();
        this.Q = 0;
        this.U = Float.NaN;
        this.V = Float.NaN;
        this.W = Float.NaN;
        this.f1614a0 = Float.NaN;
        g(context, attributeSet);
    }
}
