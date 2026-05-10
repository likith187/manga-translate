package com.google.android.material.chip;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.i;
import com.oplus.aiunit.download.core.ErrorCode;
import i4.c;
import i4.d;
import j4.b;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import x3.h;

/* JADX INFO: loaded from: classes.dex */
public class a extends i implements Drawable.Callback, TextDrawableHelper.TextDrawableDelegate {

    /* JADX INFO: renamed from: n0 */
    private static final int[] f9310n0 = {16842910};

    /* JADX INFO: renamed from: o0 */
    private static final ShapeDrawable f9311o0 = new ShapeDrawable(new OvalShape());
    private h A;
    private h B;
    private float C;
    private float D;
    private float E;
    private float F;
    private float G;
    private float H;
    private float I;
    private float J;
    private final Context K;
    private final Paint L;
    private final Paint M;
    private final Paint.FontMetrics N;
    private final RectF O;
    private final PointF P;
    private final Path Q;
    private final TextDrawableHelper R;
    private int S;
    private int T;
    private int U;
    private int V;
    private int W;
    private int X;
    private boolean Y;
    private int Z;

    /* JADX INFO: renamed from: a */
    private ColorStateList f9312a;

    /* JADX INFO: renamed from: a0 */
    private int f9313a0;

    /* JADX INFO: renamed from: b */
    private ColorStateList f9314b;

    /* JADX INFO: renamed from: b0 */
    private ColorFilter f9315b0;

    /* JADX INFO: renamed from: c */
    private float f9316c;

    /* JADX INFO: renamed from: c0 */
    private PorterDuffColorFilter f9317c0;

    /* JADX INFO: renamed from: d0 */
    private ColorStateList f9318d0;

    /* JADX INFO: renamed from: e0 */
    private PorterDuff.Mode f9319e0;

    /* JADX INFO: renamed from: f */
    private float f9320f;

    /* JADX INFO: renamed from: f0 */
    private int[] f9321f0;

    /* JADX INFO: renamed from: g0 */
    private boolean f9322g0;

    /* JADX INFO: renamed from: h */
    private ColorStateList f9323h;

    /* JADX INFO: renamed from: h0 */
    private ColorStateList f9324h0;

    /* JADX INFO: renamed from: i */
    private float f9325i;

    /* JADX INFO: renamed from: i0 */
    private WeakReference f9326i0;

    /* JADX INFO: renamed from: j */
    private ColorStateList f9327j;

    /* JADX INFO: renamed from: j0 */
    private TextUtils.TruncateAt f9328j0;

    /* JADX INFO: renamed from: k */
    private CharSequence f9329k;

    /* JADX INFO: renamed from: k0 */
    private boolean f9330k0;

    /* JADX INFO: renamed from: l */
    private boolean f9331l;

    /* JADX INFO: renamed from: l0 */
    private int f9332l0;

    /* JADX INFO: renamed from: m */
    private Drawable f9333m;

    /* JADX INFO: renamed from: m0 */
    private boolean f9334m0;

    /* JADX INFO: renamed from: n */
    private ColorStateList f9335n;

    /* JADX INFO: renamed from: o */
    private float f9336o;

    /* JADX INFO: renamed from: p */
    private boolean f9337p;

    /* JADX INFO: renamed from: q */
    private boolean f9338q;

    /* JADX INFO: renamed from: r */
    private Drawable f9339r;

    /* JADX INFO: renamed from: s */
    private Drawable f9340s;

    /* JADX INFO: renamed from: t */
    private ColorStateList f9341t;

    /* JADX INFO: renamed from: u */
    private float f9342u;

    /* JADX INFO: renamed from: v */
    private CharSequence f9343v;

    /* JADX INFO: renamed from: w */
    private boolean f9344w;

    /* JADX INFO: renamed from: x */
    private boolean f9345x;

    /* JADX INFO: renamed from: y */
    private Drawable f9346y;

    /* JADX INFO: renamed from: z */
    private ColorStateList f9347z;

    /* JADX INFO: renamed from: com.google.android.material.chip.a$a */
    public interface InterfaceC0109a {
        void a();
    }

    private a(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f9320f = -1.0f;
        this.L = new Paint(1);
        this.N = new Paint.FontMetrics();
        this.O = new RectF();
        this.P = new PointF();
        this.Q = new Path();
        this.f9313a0 = 255;
        this.f9319e0 = PorterDuff.Mode.SRC_IN;
        this.f9326i0 = new WeakReference(null);
        initializeElevationOverlay(context);
        this.K = context;
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.R = textDrawableHelper;
        this.f9329k = "";
        textDrawableHelper.getTextPaint().density = context.getResources().getDisplayMetrics().density;
        this.M = null;
        int[] iArr = f9310n0;
        setState(iArr);
        v1(iArr);
        this.f9330k0 = true;
        if (b.f12752a) {
            f9311o0.setTint(-1);
        }
    }

    private void B(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (this.f9329k != null) {
            float fW = this.C + w() + this.F;
            float fA = this.J + A() + this.G;
            if (v.a.f(this) == 0) {
                rectF.left = rect.left + fW;
                rectF.right = rect.right - fA;
            } else {
                rectF.left = rect.left + fA;
                rectF.right = rect.right - fW;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    private static boolean B0(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    private float C() {
        this.R.getTextPaint().getFontMetrics(this.N);
        Paint.FontMetrics fontMetrics = this.N;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    private static boolean C0(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    private static boolean D0(d dVar) {
        return (dVar == null || dVar.i() == null || !dVar.i().isStateful()) ? false : true;
    }

    private boolean E() {
        return this.f9345x && this.f9346y != null && this.f9344w;
    }

    private void E0(AttributeSet attributeSet, int i10, int i11) {
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(this.K, attributeSet, R$styleable.Chip, i10, i11, new int[0]);
        this.f9334m0 = typedArrayObtainStyledAttributes.hasValue(R$styleable.Chip_shapeAppearance);
        l1(c.a(this.K, typedArrayObtainStyledAttributes, R$styleable.Chip_chipSurfaceColor));
        P0(c.a(this.K, typedArrayObtainStyledAttributes, R$styleable.Chip_chipBackgroundColor));
        d1(typedArrayObtainStyledAttributes.getDimension(R$styleable.Chip_chipMinHeight, 0.0f));
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.Chip_chipCornerRadius)) {
            R0(typedArrayObtainStyledAttributes.getDimension(R$styleable.Chip_chipCornerRadius, 0.0f));
        }
        h1(c.a(this.K, typedArrayObtainStyledAttributes, R$styleable.Chip_chipStrokeColor));
        j1(typedArrayObtainStyledAttributes.getDimension(R$styleable.Chip_chipStrokeWidth, 0.0f));
        I1(c.a(this.K, typedArrayObtainStyledAttributes, R$styleable.Chip_rippleColor));
        N1(typedArrayObtainStyledAttributes.getText(R$styleable.Chip_android_text));
        d dVarH = c.h(this.K, typedArrayObtainStyledAttributes, R$styleable.Chip_android_textAppearance);
        dVarH.l(typedArrayObtainStyledAttributes.getDimension(R$styleable.Chip_android_textSize, dVarH.j()));
        O1(dVarH);
        int i12 = typedArrayObtainStyledAttributes.getInt(R$styleable.Chip_android_ellipsize, 0);
        if (i12 == 1) {
            A1(TextUtils.TruncateAt.START);
        } else if (i12 == 2) {
            A1(TextUtils.TruncateAt.MIDDLE);
        } else if (i12 == 3) {
            A1(TextUtils.TruncateAt.END);
        }
        c1(typedArrayObtainStyledAttributes.getBoolean(R$styleable.Chip_chipIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            c1(typedArrayObtainStyledAttributes.getBoolean(R$styleable.Chip_chipIconEnabled, false));
        }
        V0(c.e(this.K, typedArrayObtainStyledAttributes, R$styleable.Chip_chipIcon));
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.Chip_chipIconTint)) {
            Z0(c.a(this.K, typedArrayObtainStyledAttributes, R$styleable.Chip_chipIconTint));
        }
        X0(typedArrayObtainStyledAttributes.getDimension(R$styleable.Chip_chipIconSize, -1.0f));
        y1(typedArrayObtainStyledAttributes.getBoolean(R$styleable.Chip_closeIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            y1(typedArrayObtainStyledAttributes.getBoolean(R$styleable.Chip_closeIconEnabled, false));
        }
        m1(c.e(this.K, typedArrayObtainStyledAttributes, R$styleable.Chip_closeIcon));
        w1(c.a(this.K, typedArrayObtainStyledAttributes, R$styleable.Chip_closeIconTint));
        r1(typedArrayObtainStyledAttributes.getDimension(R$styleable.Chip_closeIconSize, 0.0f));
        H0(typedArrayObtainStyledAttributes.getBoolean(R$styleable.Chip_android_checkable, false));
        O0(typedArrayObtainStyledAttributes.getBoolean(R$styleable.Chip_checkedIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            O0(typedArrayObtainStyledAttributes.getBoolean(R$styleable.Chip_checkedIconEnabled, false));
        }
        J0(c.e(this.K, typedArrayObtainStyledAttributes, R$styleable.Chip_checkedIcon));
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.Chip_checkedIconTint)) {
            L0(c.a(this.K, typedArrayObtainStyledAttributes, R$styleable.Chip_checkedIconTint));
        }
        L1(h.c(this.K, typedArrayObtainStyledAttributes, R$styleable.Chip_showMotionSpec));
        B1(h.c(this.K, typedArrayObtainStyledAttributes, R$styleable.Chip_hideMotionSpec));
        f1(typedArrayObtainStyledAttributes.getDimension(R$styleable.Chip_chipStartPadding, 0.0f));
        F1(typedArrayObtainStyledAttributes.getDimension(R$styleable.Chip_iconStartPadding, 0.0f));
        D1(typedArrayObtainStyledAttributes.getDimension(R$styleable.Chip_iconEndPadding, 0.0f));
        T1(typedArrayObtainStyledAttributes.getDimension(R$styleable.Chip_textStartPadding, 0.0f));
        Q1(typedArrayObtainStyledAttributes.getDimension(R$styleable.Chip_textEndPadding, 0.0f));
        t1(typedArrayObtainStyledAttributes.getDimension(R$styleable.Chip_closeIconStartPadding, 0.0f));
        o1(typedArrayObtainStyledAttributes.getDimension(R$styleable.Chip_closeIconEndPadding, 0.0f));
        T0(typedArrayObtainStyledAttributes.getDimension(R$styleable.Chip_chipEndPadding, 0.0f));
        H1(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.Chip_android_maxWidth, Integer.MAX_VALUE));
        typedArrayObtainStyledAttributes.recycle();
    }

    public static a F(Context context, AttributeSet attributeSet, int i10, int i11) {
        a aVar = new a(context, attributeSet, i10, i11);
        aVar.E0(attributeSet, i10, i11);
        return aVar;
    }

    private void G(Canvas canvas, Rect rect) {
        if (X1()) {
            v(rect, this.O);
            RectF rectF = this.O;
            float f10 = rectF.left;
            float f11 = rectF.top;
            canvas.translate(f10, f11);
            this.f9346y.setBounds(0, 0, (int) this.O.width(), (int) this.O.height());
            this.f9346y.draw(canvas);
            canvas.translate(-f10, -f11);
        }
    }

    private boolean G0(int[] iArr, int[] iArr2) {
        boolean z10;
        boolean zOnStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList = this.f9312a;
        int iCompositeElevationOverlayIfNeeded = compositeElevationOverlayIfNeeded(colorStateList != null ? colorStateList.getColorForState(iArr, this.S) : 0);
        boolean state = true;
        if (this.S != iCompositeElevationOverlayIfNeeded) {
            this.S = iCompositeElevationOverlayIfNeeded;
            zOnStateChange = true;
        }
        ColorStateList colorStateList2 = this.f9314b;
        int iCompositeElevationOverlayIfNeeded2 = compositeElevationOverlayIfNeeded(colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.T) : 0);
        if (this.T != iCompositeElevationOverlayIfNeeded2) {
            this.T = iCompositeElevationOverlayIfNeeded2;
            zOnStateChange = true;
        }
        int i10 = b4.a.i(iCompositeElevationOverlayIfNeeded, iCompositeElevationOverlayIfNeeded2);
        if ((this.U != i10) | (getFillColor() == null)) {
            this.U = i10;
            setFillColor(ColorStateList.valueOf(i10));
            zOnStateChange = true;
        }
        ColorStateList colorStateList3 = this.f9323h;
        int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.V) : 0;
        if (this.V != colorForState) {
            this.V = colorForState;
            zOnStateChange = true;
        }
        int colorForState2 = (this.f9324h0 == null || !b.e(iArr)) ? 0 : this.f9324h0.getColorForState(iArr, this.W);
        if (this.W != colorForState2) {
            this.W = colorForState2;
            if (this.f9322g0) {
                zOnStateChange = true;
            }
        }
        int colorForState3 = (this.R.getTextAppearance() == null || this.R.getTextAppearance().i() == null) ? 0 : this.R.getTextAppearance().i().getColorForState(iArr, this.X);
        if (this.X != colorForState3) {
            this.X = colorForState3;
            zOnStateChange = true;
        }
        boolean z11 = x0(getState(), R.attr.state_checked) && this.f9344w;
        if (this.Y == z11 || this.f9346y == null) {
            z10 = false;
        } else {
            float fW = w();
            this.Y = z11;
            if (fW != w()) {
                zOnStateChange = true;
                z10 = true;
            } else {
                z10 = false;
                zOnStateChange = true;
            }
        }
        ColorStateList colorStateList4 = this.f9318d0;
        int colorForState4 = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.Z) : 0;
        if (this.Z != colorForState4) {
            this.Z = colorForState4;
            this.f9317c0 = com.google.android.material.drawable.a.o(this, this.f9318d0, this.f9319e0);
        } else {
            state = zOnStateChange;
        }
        if (C0(this.f9333m)) {
            state |= this.f9333m.setState(iArr);
        }
        if (C0(this.f9346y)) {
            state |= this.f9346y.setState(iArr);
        }
        if (C0(this.f9339r)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            state |= this.f9339r.setState(iArr3);
        }
        if (b.f12752a && C0(this.f9340s)) {
            state |= this.f9340s.setState(iArr2);
        }
        if (state) {
            invalidateSelf();
        }
        if (z10) {
            F0();
        }
        return state;
    }

    private void H(Canvas canvas, Rect rect) {
        if (this.f9334m0) {
            return;
        }
        this.L.setColor(this.T);
        this.L.setStyle(Paint.Style.FILL);
        this.L.setColorFilter(v0());
        this.O.set(rect);
        canvas.drawRoundRect(this.O, S(), S(), this.L);
    }

    private void I(Canvas canvas, Rect rect) {
        if (Y1()) {
            v(rect, this.O);
            RectF rectF = this.O;
            float f10 = rectF.left;
            float f11 = rectF.top;
            canvas.translate(f10, f11);
            this.f9333m.setBounds(0, 0, (int) this.O.width(), (int) this.O.height());
            this.f9333m.draw(canvas);
            canvas.translate(-f10, -f11);
        }
    }

    private void J(Canvas canvas, Rect rect) {
        if (this.f9325i <= 0.0f || this.f9334m0) {
            return;
        }
        this.L.setColor(this.V);
        this.L.setStyle(Paint.Style.STROKE);
        if (!this.f9334m0) {
            this.L.setColorFilter(v0());
        }
        RectF rectF = this.O;
        float f10 = rect.left;
        float f11 = this.f9325i;
        rectF.set(f10 + (f11 / 2.0f), rect.top + (f11 / 2.0f), rect.right - (f11 / 2.0f), rect.bottom - (f11 / 2.0f));
        float f12 = this.f9320f - (this.f9325i / 2.0f);
        canvas.drawRoundRect(this.O, f12, f12, this.L);
    }

    private void K(Canvas canvas, Rect rect) {
        if (this.f9334m0) {
            return;
        }
        this.L.setColor(this.S);
        this.L.setStyle(Paint.Style.FILL);
        this.O.set(rect);
        canvas.drawRoundRect(this.O, S(), S(), this.L);
    }

    private void L(Canvas canvas, Rect rect) {
        if (Z1()) {
            y(rect, this.O);
            RectF rectF = this.O;
            float f10 = rectF.left;
            float f11 = rectF.top;
            canvas.translate(f10, f11);
            this.f9339r.setBounds(0, 0, (int) this.O.width(), (int) this.O.height());
            if (b.f12752a) {
                this.f9340s.setBounds(this.f9339r.getBounds());
                this.f9340s.jumpToCurrentState();
                this.f9340s.draw(canvas);
            } else {
                this.f9339r.draw(canvas);
            }
            canvas.translate(-f10, -f11);
        }
    }

    private void M(Canvas canvas, Rect rect) {
        this.L.setColor(this.W);
        this.L.setStyle(Paint.Style.FILL);
        this.O.set(rect);
        if (!this.f9334m0) {
            canvas.drawRoundRect(this.O, S(), S(), this.L);
        } else {
            calculatePathForSize(new RectF(rect), this.Q);
            super.drawShape(canvas, this.L, this.Q, getBoundsAsRectF());
        }
    }

    private void N(Canvas canvas, Rect rect) {
        Paint paint = this.M;
        if (paint != null) {
            paint.setColor(u.d.u(-16777216, ErrorCode.CODE_SERVICE_DIED));
            canvas.drawRect(rect, this.M);
            if (Y1() || X1()) {
                v(rect, this.O);
                canvas.drawRect(this.O, this.M);
            }
            if (this.f9329k != null) {
                canvas.drawLine(rect.left, rect.exactCenterY(), rect.right, rect.exactCenterY(), this.M);
            }
            if (Z1()) {
                y(rect, this.O);
                canvas.drawRect(this.O, this.M);
            }
            this.M.setColor(u.d.u(-65536, ErrorCode.CODE_SERVICE_DIED));
            x(rect, this.O);
            canvas.drawRect(this.O, this.M);
            this.M.setColor(u.d.u(-16711936, ErrorCode.CODE_SERVICE_DIED));
            z(rect, this.O);
            canvas.drawRect(this.O, this.M);
        }
    }

    private void O(Canvas canvas, Rect rect) {
        if (this.f9329k != null) {
            Paint.Align alignD = D(rect, this.P);
            B(rect, this.O);
            if (this.R.getTextAppearance() != null) {
                this.R.getTextPaint().drawableState = getState();
                this.R.updateTextPaintDrawState(this.K);
            }
            this.R.getTextPaint().setTextAlign(alignD);
            int iSave = 0;
            boolean z10 = Math.round(this.R.getTextWidth(r0().toString())) > Math.round(this.O.width());
            if (z10) {
                iSave = canvas.save();
                canvas.clipRect(this.O);
            }
            CharSequence charSequenceEllipsize = this.f9329k;
            if (z10 && this.f9328j0 != null) {
                charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, this.R.getTextPaint(), this.O.width(), this.f9328j0);
            }
            CharSequence charSequence = charSequenceEllipsize;
            int length = charSequence.length();
            PointF pointF = this.P;
            canvas.drawText(charSequence, 0, length, pointF.x, pointF.y, this.R.getTextPaint());
            if (z10) {
                canvas.restoreToCount(iSave);
            }
        }
    }

    private boolean X1() {
        return this.f9345x && this.f9346y != null && this.Y;
    }

    private boolean Y1() {
        return this.f9331l && this.f9333m != null;
    }

    private boolean Z1() {
        return this.f9338q && this.f9339r != null;
    }

    private void a2(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    private void b2() {
        this.f9324h0 = this.f9322g0 ? b.d(this.f9327j) : null;
    }

    private void c2() {
        this.f9340s = new RippleDrawable(b.d(p0()), this.f9339r, f9311o0);
    }

    private float j0() {
        Drawable drawable = this.Y ? this.f9346y : this.f9333m;
        float f10 = this.f9336o;
        if (f10 > 0.0f || drawable == null) {
            return f10;
        }
        float fCeil = (float) Math.ceil(ViewUtils.dpToPx(this.K, 24));
        return ((float) drawable.getIntrinsicHeight()) <= fCeil ? drawable.getIntrinsicHeight() : fCeil;
    }

    private float k0() {
        Drawable drawable = this.Y ? this.f9346y : this.f9333m;
        float f10 = this.f9336o;
        return (f10 > 0.0f || drawable == null) ? f10 : drawable.getIntrinsicWidth();
    }

    private void l1(ColorStateList colorStateList) {
        if (this.f9312a != colorStateList) {
            this.f9312a = colorStateList;
            onStateChange(getState());
        }
    }

    private void u(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        v.a.m(drawable, v.a.f(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.f9339r) {
            if (drawable.isStateful()) {
                drawable.setState(g0());
            }
            v.a.o(drawable, this.f9341t);
            return;
        }
        Drawable drawable2 = this.f9333m;
        if (drawable == drawable2 && this.f9337p) {
            v.a.o(drawable2, this.f9335n);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    private void v(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (Y1() || X1()) {
            float f10 = this.C + this.D;
            float fK0 = k0();
            if (v.a.f(this) == 0) {
                float f11 = rect.left + f10;
                rectF.left = f11;
                rectF.right = f11 + fK0;
            } else {
                float f12 = rect.right - f10;
                rectF.right = f12;
                rectF.left = f12 - fK0;
            }
            float fJ0 = j0();
            float fExactCenterY = rect.exactCenterY() - (fJ0 / 2.0f);
            rectF.top = fExactCenterY;
            rectF.bottom = fExactCenterY + fJ0;
        }
    }

    private ColorFilter v0() {
        ColorFilter colorFilter = this.f9315b0;
        return colorFilter != null ? colorFilter : this.f9317c0;
    }

    private void x(Rect rect, RectF rectF) {
        rectF.set(rect);
        if (Z1()) {
            float f10 = this.J + this.I + this.f9342u + this.H + this.G;
            if (v.a.f(this) == 0) {
                rectF.right = rect.right - f10;
            } else {
                rectF.left = rect.left + f10;
            }
        }
    }

    private static boolean x0(int[] iArr, int i10) {
        if (iArr == null) {
            return false;
        }
        for (int i11 : iArr) {
            if (i11 == i10) {
                return true;
            }
        }
        return false;
    }

    private void y(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (Z1()) {
            float f10 = this.J + this.I;
            if (v.a.f(this) == 0) {
                float f11 = rect.right - f10;
                rectF.right = f11;
                rectF.left = f11 - this.f9342u;
            } else {
                float f12 = rect.left + f10;
                rectF.left = f12;
                rectF.right = f12 + this.f9342u;
            }
            float fExactCenterY = rect.exactCenterY();
            float f13 = this.f9342u;
            float f14 = fExactCenterY - (f13 / 2.0f);
            rectF.top = f14;
            rectF.bottom = f14 + f13;
        }
    }

    private void z(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (Z1()) {
            float f10 = this.J + this.I + this.f9342u + this.H + this.G;
            if (v.a.f(this) == 0) {
                float f11 = rect.right;
                rectF.right = f11;
                rectF.left = f11 - f10;
            } else {
                int i10 = rect.left;
                rectF.left = i10;
                rectF.right = i10 + f10;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    float A() {
        if (Z1()) {
            return this.H + this.f9342u + this.I;
        }
        return 0.0f;
    }

    public boolean A0() {
        return this.f9338q;
    }

    public void A1(TextUtils.TruncateAt truncateAt) {
        this.f9328j0 = truncateAt;
    }

    public void B1(h hVar) {
        this.B = hVar;
    }

    public void C1(int i10) {
        B1(h.d(this.K, i10));
    }

    Paint.Align D(Rect rect, PointF pointF) {
        pointF.set(0.0f, 0.0f);
        Paint.Align align = Paint.Align.LEFT;
        if (this.f9329k != null) {
            float fW = this.C + w() + this.F;
            if (v.a.f(this) == 0) {
                pointF.x = rect.left + fW;
            } else {
                pointF.x = rect.right - fW;
                align = Paint.Align.RIGHT;
            }
            pointF.y = rect.centerY() - C();
        }
        return align;
    }

    public void D1(float f10) {
        if (this.E != f10) {
            float fW = w();
            this.E = f10;
            float fW2 = w();
            invalidateSelf();
            if (fW != fW2) {
                F0();
            }
        }
    }

    public void E1(int i10) {
        D1(this.K.getResources().getDimension(i10));
    }

    protected void F0() {
        InterfaceC0109a interfaceC0109a = (InterfaceC0109a) this.f9326i0.get();
        if (interfaceC0109a != null) {
            interfaceC0109a.a();
        }
    }

    public void F1(float f10) {
        if (this.D != f10) {
            float fW = w();
            this.D = f10;
            float fW2 = w();
            invalidateSelf();
            if (fW != fW2) {
                F0();
            }
        }
    }

    public void G1(int i10) {
        F1(this.K.getResources().getDimension(i10));
    }

    public void H0(boolean z10) {
        if (this.f9344w != z10) {
            this.f9344w = z10;
            float fW = w();
            if (!z10 && this.Y) {
                this.Y = false;
            }
            float fW2 = w();
            invalidateSelf();
            if (fW != fW2) {
                F0();
            }
        }
    }

    public void H1(int i10) {
        this.f9332l0 = i10;
    }

    public void I0(int i10) {
        H0(this.K.getResources().getBoolean(i10));
    }

    public void I1(ColorStateList colorStateList) {
        if (this.f9327j != colorStateList) {
            this.f9327j = colorStateList;
            b2();
            onStateChange(getState());
        }
    }

    public void J0(Drawable drawable) {
        if (this.f9346y != drawable) {
            float fW = w();
            this.f9346y = drawable;
            float fW2 = w();
            a2(this.f9346y);
            u(this.f9346y);
            invalidateSelf();
            if (fW != fW2) {
                F0();
            }
        }
    }

    public void J1(int i10) {
        I1(e.a.a(this.K, i10));
    }

    public void K0(int i10) {
        J0(e.a.b(this.K, i10));
    }

    void K1(boolean z10) {
        this.f9330k0 = z10;
    }

    public void L0(ColorStateList colorStateList) {
        if (this.f9347z != colorStateList) {
            this.f9347z = colorStateList;
            if (E()) {
                v.a.o(this.f9346y, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void L1(h hVar) {
        this.A = hVar;
    }

    public void M0(int i10) {
        L0(e.a.a(this.K, i10));
    }

    public void M1(int i10) {
        L1(h.d(this.K, i10));
    }

    public void N0(int i10) {
        O0(this.K.getResources().getBoolean(i10));
    }

    public void N1(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        if (TextUtils.equals(this.f9329k, charSequence)) {
            return;
        }
        this.f9329k = charSequence;
        this.R.setTextWidthDirty(true);
        invalidateSelf();
        F0();
    }

    public void O0(boolean z10) {
        if (this.f9345x != z10) {
            boolean zX1 = X1();
            this.f9345x = z10;
            boolean zX12 = X1();
            if (zX1 != zX12) {
                if (zX12) {
                    u(this.f9346y);
                } else {
                    a2(this.f9346y);
                }
                invalidateSelf();
                F0();
            }
        }
    }

    public void O1(d dVar) {
        this.R.setTextAppearance(dVar, this.K);
    }

    public Drawable P() {
        return this.f9346y;
    }

    public void P0(ColorStateList colorStateList) {
        if (this.f9314b != colorStateList) {
            this.f9314b = colorStateList;
            onStateChange(getState());
        }
    }

    public void P1(int i10) {
        O1(new d(this.K, i10));
    }

    public ColorStateList Q() {
        return this.f9347z;
    }

    public void Q0(int i10) {
        P0(e.a.a(this.K, i10));
    }

    public void Q1(float f10) {
        if (this.G != f10) {
            this.G = f10;
            invalidateSelf();
            F0();
        }
    }

    public ColorStateList R() {
        return this.f9314b;
    }

    public void R0(float f10) {
        if (this.f9320f != f10) {
            this.f9320f = f10;
            setShapeAppearanceModel(getShapeAppearanceModel().w(f10));
        }
    }

    public void R1(int i10) {
        Q1(this.K.getResources().getDimension(i10));
    }

    public float S() {
        return this.f9334m0 ? getTopLeftCornerResolvedSize() : this.f9320f;
    }

    public void S0(int i10) {
        R0(this.K.getResources().getDimension(i10));
    }

    public void S1(float f10) {
        d dVarS0 = s0();
        if (dVarS0 != null) {
            dVarS0.l(f10);
            this.R.getTextPaint().setTextSize(f10);
            onTextSizeChange();
        }
    }

    public float T() {
        return this.J;
    }

    public void T0(float f10) {
        if (this.J != f10) {
            this.J = f10;
            invalidateSelf();
            F0();
        }
    }

    public void T1(float f10) {
        if (this.F != f10) {
            this.F = f10;
            invalidateSelf();
            F0();
        }
    }

    public Drawable U() {
        Drawable drawable = this.f9333m;
        if (drawable != null) {
            return v.a.q(drawable);
        }
        return null;
    }

    public void U0(int i10) {
        T0(this.K.getResources().getDimension(i10));
    }

    public void U1(int i10) {
        T1(this.K.getResources().getDimension(i10));
    }

    public float V() {
        return this.f9336o;
    }

    public void V0(Drawable drawable) {
        Drawable drawableU = U();
        if (drawableU != drawable) {
            float fW = w();
            this.f9333m = drawable != null ? v.a.r(drawable).mutate() : null;
            float fW2 = w();
            a2(drawableU);
            if (Y1()) {
                u(this.f9333m);
            }
            invalidateSelf();
            if (fW != fW2) {
                F0();
            }
        }
    }

    public void V1(boolean z10) {
        if (this.f9322g0 != z10) {
            this.f9322g0 = z10;
            b2();
            onStateChange(getState());
        }
    }

    public ColorStateList W() {
        return this.f9335n;
    }

    public void W0(int i10) {
        V0(e.a.b(this.K, i10));
    }

    boolean W1() {
        return this.f9330k0;
    }

    public float X() {
        return this.f9316c;
    }

    public void X0(float f10) {
        if (this.f9336o != f10) {
            float fW = w();
            this.f9336o = f10;
            float fW2 = w();
            invalidateSelf();
            if (fW != fW2) {
                F0();
            }
        }
    }

    public float Y() {
        return this.C;
    }

    public void Y0(int i10) {
        X0(this.K.getResources().getDimension(i10));
    }

    public ColorStateList Z() {
        return this.f9323h;
    }

    public void Z0(ColorStateList colorStateList) {
        this.f9337p = true;
        if (this.f9335n != colorStateList) {
            this.f9335n = colorStateList;
            if (Y1()) {
                v.a.o(this.f9333m, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public float a0() {
        return this.f9325i;
    }

    public void a1(int i10) {
        Z0(e.a.a(this.K, i10));
    }

    public Drawable b0() {
        Drawable drawable = this.f9339r;
        if (drawable != null) {
            return v.a.q(drawable);
        }
        return null;
    }

    public void b1(int i10) {
        c1(this.K.getResources().getBoolean(i10));
    }

    public CharSequence c0() {
        return this.f9343v;
    }

    public void c1(boolean z10) {
        if (this.f9331l != z10) {
            boolean zY1 = Y1();
            this.f9331l = z10;
            boolean zY12 = Y1();
            if (zY1 != zY12) {
                if (zY12) {
                    u(this.f9333m);
                } else {
                    a2(this.f9333m);
                }
                invalidateSelf();
                F0();
            }
        }
    }

    public float d0() {
        return this.I;
    }

    public void d1(float f10) {
        if (this.f9316c != f10) {
            this.f9316c = f10;
            invalidateSelf();
            F0();
        }
    }

    @Override // com.google.android.material.shape.i, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.isEmpty() || getAlpha() == 0) {
            return;
        }
        int i10 = this.f9313a0;
        int iA = i10 < 255 ? y3.a.a(canvas, bounds.left, bounds.top, bounds.right, bounds.bottom, i10) : 0;
        K(canvas, bounds);
        H(canvas, bounds);
        if (this.f9334m0) {
            super.draw(canvas);
        }
        J(canvas, bounds);
        M(canvas, bounds);
        I(canvas, bounds);
        G(canvas, bounds);
        if (this.f9330k0) {
            O(canvas, bounds);
        }
        L(canvas, bounds);
        N(canvas, bounds);
        if (this.f9313a0 < 255) {
            canvas.restoreToCount(iA);
        }
    }

    public float e0() {
        return this.f9342u;
    }

    public void e1(int i10) {
        d1(this.K.getResources().getDimension(i10));
    }

    public float f0() {
        return this.H;
    }

    public void f1(float f10) {
        if (this.C != f10) {
            this.C = f10;
            invalidateSelf();
            F0();
        }
    }

    public int[] g0() {
        return this.f9321f0;
    }

    public void g1(int i10) {
        f1(this.K.getResources().getDimension(i10));
    }

    @Override // com.google.android.material.shape.i, android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f9313a0;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f9315b0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f9316c;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.min(Math.round(this.C + w() + this.F + this.R.getTextWidth(r0().toString()) + this.G + A() + this.J), this.f9332l0);
    }

    @Override // com.google.android.material.shape.i, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // com.google.android.material.shape.i, android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.f9334m0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.f9320f);
        } else {
            outline.setRoundRect(bounds, this.f9320f);
        }
        outline.setAlpha(getAlpha() / 255.0f);
    }

    public ColorStateList h0() {
        return this.f9341t;
    }

    public void h1(ColorStateList colorStateList) {
        if (this.f9323h != colorStateList) {
            this.f9323h = colorStateList;
            if (this.f9334m0) {
                setStrokeColor(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void i0(RectF rectF) {
        z(getBounds(), rectF);
    }

    public void i1(int i10) {
        h1(e.a.a(this.K, i10));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // com.google.android.material.shape.i, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return B0(this.f9312a) || B0(this.f9314b) || B0(this.f9323h) || (this.f9322g0 && B0(this.f9324h0)) || D0(this.R.getTextAppearance()) || E() || C0(this.f9333m) || C0(this.f9346y) || B0(this.f9318d0);
    }

    public void j1(float f10) {
        if (this.f9325i != f10) {
            this.f9325i = f10;
            this.L.setStrokeWidth(f10);
            if (this.f9334m0) {
                super.setStrokeWidth(f10);
            }
            invalidateSelf();
        }
    }

    public void k1(int i10) {
        j1(this.K.getResources().getDimension(i10));
    }

    public TextUtils.TruncateAt l0() {
        return this.f9328j0;
    }

    public h m0() {
        return this.B;
    }

    public void m1(Drawable drawable) {
        Drawable drawableB0 = b0();
        if (drawableB0 != drawable) {
            float fA = A();
            this.f9339r = drawable != null ? v.a.r(drawable).mutate() : null;
            if (b.f12752a) {
                c2();
            }
            float fA2 = A();
            a2(drawableB0);
            if (Z1()) {
                u(this.f9339r);
            }
            invalidateSelf();
            if (fA != fA2) {
                F0();
            }
        }
    }

    public float n0() {
        return this.E;
    }

    public void n1(CharSequence charSequence) {
        if (this.f9343v != charSequence) {
            this.f9343v = b0.a.c().h(charSequence);
            invalidateSelf();
        }
    }

    public float o0() {
        return this.D;
    }

    public void o1(float f10) {
        if (this.I != f10) {
            this.I = f10;
            invalidateSelf();
            if (Z1()) {
                F0();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i10) {
        boolean zOnLayoutDirectionChanged = super.onLayoutDirectionChanged(i10);
        if (Y1()) {
            zOnLayoutDirectionChanged |= v.a.m(this.f9333m, i10);
        }
        if (X1()) {
            zOnLayoutDirectionChanged |= v.a.m(this.f9346y, i10);
        }
        if (Z1()) {
            zOnLayoutDirectionChanged |= v.a.m(this.f9339r, i10);
        }
        if (!zOnLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i10) {
        boolean zOnLevelChange = super.onLevelChange(i10);
        if (Y1()) {
            zOnLevelChange |= this.f9333m.setLevel(i10);
        }
        if (X1()) {
            zOnLevelChange |= this.f9346y.setLevel(i10);
        }
        if (Z1()) {
            zOnLevelChange |= this.f9339r.setLevel(i10);
        }
        if (zOnLevelChange) {
            invalidateSelf();
        }
        return zOnLevelChange;
    }

    @Override // com.google.android.material.shape.i, android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(int[] iArr) {
        if (this.f9334m0) {
            super.onStateChange(iArr);
        }
        return G0(iArr, g0());
    }

    @Override // com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public void onTextSizeChange() {
        F0();
        invalidateSelf();
    }

    public ColorStateList p0() {
        return this.f9327j;
    }

    public void p1(int i10) {
        o1(this.K.getResources().getDimension(i10));
    }

    public h q0() {
        return this.A;
    }

    public void q1(int i10) {
        m1(e.a.b(this.K, i10));
    }

    public CharSequence r0() {
        return this.f9329k;
    }

    public void r1(float f10) {
        if (this.f9342u != f10) {
            this.f9342u = f10;
            invalidateSelf();
            if (Z1()) {
                F0();
            }
        }
    }

    public d s0() {
        return this.R.getTextAppearance();
    }

    public void s1(int i10) {
        r1(this.K.getResources().getDimension(i10));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j10);
        }
    }

    @Override // com.google.android.material.shape.i, android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        if (this.f9313a0 != i10) {
            this.f9313a0 = i10;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.shape.i, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f9315b0 != colorFilter) {
            this.f9315b0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.shape.i, android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        if (this.f9318d0 != colorStateList) {
            this.f9318d0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // com.google.android.material.shape.i, android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.f9319e0 != mode) {
            this.f9319e0 = mode;
            this.f9317c0 = com.google.android.material.drawable.a.o(this, this.f9318d0, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        boolean visible = super.setVisible(z10, z11);
        if (Y1()) {
            visible |= this.f9333m.setVisible(z10, z11);
        }
        if (X1()) {
            visible |= this.f9346y.setVisible(z10, z11);
        }
        if (Z1()) {
            visible |= this.f9339r.setVisible(z10, z11);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    public float t0() {
        return this.G;
    }

    public void t1(float f10) {
        if (this.H != f10) {
            this.H = f10;
            invalidateSelf();
            if (Z1()) {
                F0();
            }
        }
    }

    public float u0() {
        return this.F;
    }

    public void u1(int i10) {
        t1(this.K.getResources().getDimension(i10));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public boolean v1(int[] iArr) {
        if (Arrays.equals(this.f9321f0, iArr)) {
            return false;
        }
        this.f9321f0 = iArr;
        if (Z1()) {
            return G0(getState(), iArr);
        }
        return false;
    }

    float w() {
        if (Y1() || X1()) {
            return this.D + k0() + this.E;
        }
        return 0.0f;
    }

    public boolean w0() {
        return this.f9322g0;
    }

    public void w1(ColorStateList colorStateList) {
        if (this.f9341t != colorStateList) {
            this.f9341t = colorStateList;
            if (Z1()) {
                v.a.o(this.f9339r, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void x1(int i10) {
        w1(e.a.a(this.K, i10));
    }

    public boolean y0() {
        return this.f9344w;
    }

    public void y1(boolean z10) {
        if (this.f9338q != z10) {
            boolean zZ1 = Z1();
            this.f9338q = z10;
            boolean zZ12 = Z1();
            if (zZ1 != zZ12) {
                if (zZ12) {
                    u(this.f9339r);
                } else {
                    a2(this.f9339r);
                }
                invalidateSelf();
                F0();
            }
        }
    }

    public boolean z0() {
        return C0(this.f9339r);
    }

    public void z1(InterfaceC0109a interfaceC0109a) {
        this.f9326i0 = new WeakReference(interfaceC0109a);
    }
}
