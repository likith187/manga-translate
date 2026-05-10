package com.google.android.material.slider;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import android.widget.SeekBar;
import androidx.appcompat.app.t;
import androidx.core.view.m0;
import com.coui.appcompat.version.COUIVersionUtil;
import com.google.android.material.R$attr;
import com.google.android.material.R$color;
import com.google.android.material.R$dimen;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewOverlayImpl;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.i;
import com.google.android.material.shape.n;
import com.google.android.material.slider.BaseSlider;
import com.oplus.aiunit.core.ConfigPackage;
import d0.h;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
abstract class BaseSlider<S extends BaseSlider<S, L, T>, L, T> extends View {

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private static final String f10188y0 = "BaseSlider";
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private int H;
    private int I;
    private int J;
    private int K;
    private int L;
    private int M;
    private int N;
    private int O;
    private int P;
    private float Q;
    private MotionEvent R;
    private boolean S;
    private float T;
    private float U;
    private ArrayList V;
    private int W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint f10190a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private int f10191a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f10192b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private float f10193b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Paint f10194c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private float[] f10195c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private boolean f10196d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private int f10197e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Paint f10198f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private int f10199f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private int f10200g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Paint f10201h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private boolean f10202h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Paint f10203i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private boolean f10204i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Paint f10205j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private boolean f10206j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final e f10207k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private ColorStateList f10208k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final AccessibilityManager f10209l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private ColorStateList f10210l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private d f10211m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private ColorStateList f10212m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f10213n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private ColorStateList f10214n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final List f10215o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private ColorStateList f10216o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final List f10217p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private final Path f10218p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final List f10219q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private final RectF f10220q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f10221r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private final RectF f10222r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ValueAnimator f10223s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private final i f10224s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ValueAnimator f10225t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private Drawable f10226t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final int f10227u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private List f10228u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f10229v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private float f10230v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f10231w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private int f10232w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f10233x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private final ViewTreeObserver.OnScrollChangedListener f10234x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f10235y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f10236z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    static final int f10189z0 = R$style.Widget_MaterialComponents_Slider;
    private static final int A0 = R$attr.motionDurationMedium4;
    private static final int B0 = R$attr.motionDurationShort3;
    private static final int C0 = R$attr.motionEasingEmphasizedInterpolator;
    private static final int D0 = R$attr.motionEasingEmphasizedAccelerateInterpolator;

    static class SliderState extends View.BaseSavedState {
        public static final Parcelable.Creator<SliderState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f10237a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f10238b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ArrayList f10239c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        float f10240f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f10241h;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SliderState createFromParcel(Parcel parcel) {
                return new SliderState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SliderState[] newArray(int i10) {
                return new SliderState[i10];
            }
        }

        /* synthetic */ SliderState(Parcel parcel, a aVar) {
            this(parcel);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeFloat(this.f10237a);
            parcel.writeFloat(this.f10238b);
            parcel.writeList(this.f10239c);
            parcel.writeFloat(this.f10240f);
            parcel.writeBooleanArray(new boolean[]{this.f10241h});
        }

        SliderState(Parcelable parcelable) {
            super(parcelable);
        }

        private SliderState(Parcel parcel) {
            super(parcel);
            this.f10237a = parcel.readFloat();
            this.f10238b = parcel.readFloat();
            ArrayList arrayList = new ArrayList();
            this.f10239c = arrayList;
            parcel.readList(arrayList, Float.class.getClassLoader());
            this.f10240f = parcel.readFloat();
            this.f10241h = parcel.createBooleanArray()[0];
        }
    }

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Iterator it = BaseSlider.this.f10215o.iterator();
            while (it.hasNext()) {
                ((n4.a) it.next()).F(fFloatValue);
            }
            m0.Z(BaseSlider.this);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            ViewOverlayImpl contentViewOverlay = ViewUtils.getContentViewOverlay(BaseSlider.this);
            Iterator it = BaseSlider.this.f10215o.iterator();
            while (it.hasNext()) {
                contentViewOverlay.remove((n4.a) it.next());
            }
        }
    }

    static /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f10244a;

        static {
            int[] iArr = new int[f.values().length];
            f10244a = iArr;
            try {
                iArr[f.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10244a[f.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10244a[f.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f10244a[f.BOTH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private static class e extends androidx.customview.widget.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final BaseSlider f10247a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Rect f10248b;

        e(BaseSlider baseSlider) {
            super(baseSlider);
            this.f10248b = new Rect();
            this.f10247a = baseSlider;
        }

        private String t(int i10) {
            return i10 == this.f10247a.getValues().size() + (-1) ? this.f10247a.getContext().getString(R$string.material_slider_range_end) : i10 == 0 ? this.f10247a.getContext().getString(R$string.material_slider_range_start) : "";
        }

        @Override // androidx.customview.widget.a
        protected int getVirtualViewAt(float f10, float f11) {
            for (int i10 = 0; i10 < this.f10247a.getValues().size(); i10++) {
                this.f10247a.r0(i10, this.f10248b);
                if (this.f10248b.contains((int) f10, (int) f11)) {
                    return i10;
                }
            }
            return -1;
        }

        @Override // androidx.customview.widget.a
        protected void getVisibleVirtualViews(List list) {
            for (int i10 = 0; i10 < this.f10247a.getValues().size(); i10++) {
                list.add(Integer.valueOf(i10));
            }
        }

        @Override // androidx.customview.widget.a
        protected boolean onPerformActionForVirtualView(int i10, int i11, Bundle bundle) {
            if (!this.f10247a.isEnabled()) {
                return false;
            }
            if (i11 != 4096 && i11 != 8192) {
                if (i11 == 16908349 && bundle != null && bundle.containsKey("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE")) {
                    if (this.f10247a.p0(i10, bundle.getFloat("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"))) {
                        this.f10247a.s0();
                        this.f10247a.postInvalidate();
                        invalidateVirtualView(i10);
                        return true;
                    }
                }
                return false;
            }
            float fL = this.f10247a.l(20);
            if (i11 == 8192) {
                fL = -fL;
            }
            if (this.f10247a.Q()) {
                fL = -fL;
            }
            if (!this.f10247a.p0(i10, x.a.a(this.f10247a.getValues().get(i10).floatValue() + fL, this.f10247a.getValueFrom(), this.f10247a.getValueTo()))) {
                return false;
            }
            this.f10247a.s0();
            this.f10247a.postInvalidate();
            invalidateVirtualView(i10);
            return true;
        }

        @Override // androidx.customview.widget.a
        protected void onPopulateNodeForVirtualView(int i10, h hVar) {
            hVar.b(h.a.L);
            List<Float> values = this.f10247a.getValues();
            float fFloatValue = values.get(i10).floatValue();
            float valueFrom = this.f10247a.getValueFrom();
            float valueTo = this.f10247a.getValueTo();
            if (this.f10247a.isEnabled()) {
                if (fFloatValue > valueFrom) {
                    hVar.a(ConfigPackage.FRAME_SIZE_6);
                }
                if (fFloatValue < valueTo) {
                    hVar.a(ConfigPackage.FRAME_SIZE_5);
                }
            }
            hVar.z0(h.g.a(1, valueFrom, valueTo, fFloatValue));
            hVar.h0(SeekBar.class.getName());
            StringBuilder sb = new StringBuilder();
            if (this.f10247a.getContentDescription() != null) {
                sb.append(this.f10247a.getContentDescription());
                sb.append(",");
            }
            String strA = this.f10247a.A(fFloatValue);
            String string = this.f10247a.getContext().getString(R$string.material_slider_value);
            if (values.size() > 1) {
                string = t(i10);
            }
            sb.append(String.format(Locale.US, "%s, %s", string, strA));
            hVar.l0(sb.toString());
            this.f10247a.r0(i10, this.f10248b);
            hVar.c0(this.f10248b);
        }
    }

    private enum f {
        BOTH,
        LEFT,
        RIGHT,
        NONE
    }

    public BaseSlider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.sliderStyle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String A(float f10) {
        if (J()) {
            throw null;
        }
        return String.format(((float) ((int) f10)) == f10 ? "%.0f" : "%.2f", Float.valueOf(f10));
    }

    private void A0() {
        if (this.T >= this.U) {
            throw new IllegalStateException(String.format("valueFrom(%s) must be smaller than valueTo(%s)", Float.valueOf(this.T), Float.valueOf(this.U)));
        }
    }

    private float[] B() {
        float fFloatValue = ((Float) this.V.get(0)).floatValue();
        ArrayList arrayList = this.V;
        float fFloatValue2 = ((Float) arrayList.get(arrayList.size() - 1)).floatValue();
        if (this.V.size() == 1) {
            fFloatValue = this.T;
        }
        float fB0 = b0(fFloatValue);
        float fB02 = b0(fFloatValue2);
        return Q() ? new float[]{fB02, fB0} : new float[]{fB0, fB02};
    }

    private void B0() {
        if (this.U <= this.T) {
            throw new IllegalStateException(String.format("valueTo(%s) must be greater than valueFrom(%s)", Float.valueOf(this.U), Float.valueOf(this.T)));
        }
    }

    private static float C(ValueAnimator valueAnimator, float f10) {
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return f10;
        }
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        valueAnimator.cancel();
        return fFloatValue;
    }

    private void C0() {
        for (Float f10 : this.V) {
            if (f10.floatValue() < this.T || f10.floatValue() > this.U) {
                throw new IllegalStateException(String.format("Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)", f10, Float.valueOf(this.T), Float.valueOf(this.U)));
            }
            if (this.f10193b0 > 0.0f && !D0(f10.floatValue())) {
                throw new IllegalStateException(String.format("Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)", f10, Float.valueOf(this.T), Float.valueOf(this.f10193b0), Float.valueOf(this.f10193b0)));
            }
        }
    }

    private float D(int i10, float f10) {
        float minSeparation = getMinSeparation();
        if (this.f10232w0 == 0) {
            minSeparation = q(minSeparation);
        }
        if (Q()) {
            minSeparation = -minSeparation;
        }
        int i11 = i10 + 1;
        int i12 = i10 - 1;
        return x.a.a(f10, i12 < 0 ? this.T : ((Float) this.V.get(i12)).floatValue() + minSeparation, i11 >= this.V.size() ? this.U : ((Float) this.V.get(i11)).floatValue() - minSeparation);
    }

    private boolean D0(float f10) {
        return O(new BigDecimal(Float.toString(f10)).subtract(new BigDecimal(Float.toString(this.T)), MathContext.DECIMAL64).doubleValue());
    }

    private int E(ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    private float E0(float f10) {
        return (b0(f10) * this.f10200g0) + this.G;
    }

    private float[] F(float f10, float f11) {
        return new float[]{f10, f10, f11, f11, f11, f11, f10, f10};
    }

    private void F0() {
        float f10 = this.f10193b0;
        if (f10 == 0.0f) {
            return;
        }
        if (((int) f10) != f10) {
            Log.w(f10188y0, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.", "stepSize", Float.valueOf(f10)));
        }
        float f11 = this.T;
        if (((int) f11) != f11) {
            Log.w(f10188y0, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.", "valueFrom", Float.valueOf(f11)));
        }
        float f12 = this.U;
        if (((int) f12) != f12) {
            Log.w(f10188y0, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.", "valueTo", Float.valueOf(f12)));
        }
    }

    private float G() {
        double dO0 = o0(this.f10230v0);
        if (Q()) {
            dO0 = 1.0d - dO0;
        }
        float f10 = this.U;
        float f11 = this.T;
        return (float) ((dO0 * ((double) (f10 - f11))) + ((double) f11));
    }

    private float H() {
        float f10 = this.f10230v0;
        if (Q()) {
            f10 = 1.0f - f10;
        }
        float f11 = this.U;
        float f12 = this.T;
        return (f10 * (f11 - f12)) + f12;
    }

    private boolean I() {
        return this.K > 0;
    }

    private Drawable K(Drawable drawable) {
        Drawable drawableNewDrawable = drawable.mutate().getConstantState().newDrawable();
        h(drawableNewDrawable);
        return drawableNewDrawable;
    }

    private void L() {
        this.f10190a.setStrokeWidth(this.F);
        this.f10192b.setStrokeWidth(this.F);
    }

    private boolean M() {
        for (ViewParent parent = getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if ((viewGroup.canScrollVertically(1) || viewGroup.canScrollVertically(-1)) && viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
        }
        return false;
    }

    private static boolean N(MotionEvent motionEvent) {
        return motionEvent.getToolType(0) == 3;
    }

    private boolean O(double d10) {
        double dDoubleValue = new BigDecimal(Double.toString(d10)).divide(new BigDecimal(Float.toString(this.f10193b0)), MathContext.DECIMAL64).doubleValue();
        return Math.abs(((double) Math.round(dDoubleValue)) - dDoubleValue) < 1.0E-4d;
    }

    private boolean P(MotionEvent motionEvent) {
        return !N(motionEvent) && M();
    }

    private boolean R() {
        Rect rect = new Rect();
        ViewUtils.getContentView(this).getHitRect(rect);
        return getLocalVisibleRect(rect);
    }

    private void S(Resources resources) {
        this.C = resources.getDimensionPixelSize(R$dimen.mtrl_slider_widget_height);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R$dimen.mtrl_slider_track_side_padding);
        this.f10229v = dimensionPixelOffset;
        this.G = dimensionPixelOffset;
        this.f10231w = resources.getDimensionPixelSize(R$dimen.mtrl_slider_thumb_radius);
        this.f10233x = resources.getDimensionPixelSize(R$dimen.mtrl_slider_track_height);
        this.f10235y = resources.getDimensionPixelSize(R$dimen.mtrl_slider_tick_radius);
        this.f10236z = resources.getDimensionPixelSize(R$dimen.mtrl_slider_tick_radius);
        this.A = resources.getDimensionPixelSize(R$dimen.mtrl_slider_tick_min_spacing);
        this.P = resources.getDimensionPixelSize(R$dimen.mtrl_slider_label_padding);
    }

    private void T() {
        if (this.f10193b0 <= 0.0f) {
            return;
        }
        x0();
        int iMin = Math.min((int) (((this.U - this.T) / this.f10193b0) + 1.0f), (this.f10200g0 / this.A) + 1);
        float[] fArr = this.f10195c0;
        if (fArr == null || fArr.length != iMin * 2) {
            this.f10195c0 = new float[iMin * 2];
        }
        float f10 = this.f10200g0 / (iMin - 1);
        for (int i10 = 0; i10 < iMin * 2; i10 += 2) {
            float[] fArr2 = this.f10195c0;
            fArr2[i10] = this.G + ((i10 / 2.0f) * f10);
            fArr2[i10 + 1] = m();
        }
    }

    private void U(Canvas canvas, int i10, int i11) {
        if (m0()) {
            canvas.drawCircle((int) (this.G + (b0(((Float) this.V.get(this.f10191a0)).floatValue()) * i10)), i11, this.J, this.f10198f);
        }
    }

    private void V(Canvas canvas, int i10) {
        if (this.N <= 0) {
            return;
        }
        if (this.V.size() >= 1) {
            ArrayList arrayList = this.V;
            float fFloatValue = ((Float) arrayList.get(arrayList.size() - 1)).floatValue();
            float f10 = this.U;
            if (fFloatValue < f10) {
                canvas.drawPoint(E0(f10), i10, this.f10205j);
            }
        }
        if (this.V.size() > 1) {
            float fFloatValue2 = ((Float) this.V.get(0)).floatValue();
            float f11 = this.T;
            if (fFloatValue2 > f11) {
                canvas.drawPoint(E0(f11), i10, this.f10205j);
            }
        }
    }

    private void W(Canvas canvas) {
        if (!this.f10196d0 || this.f10193b0 <= 0.0f) {
            return;
        }
        float[] fArrB = B();
        int iCeil = (int) Math.ceil(fArrB[0] * ((this.f10195c0.length / 2.0f) - 1.0f));
        int iFloor = (int) Math.floor(fArrB[1] * ((this.f10195c0.length / 2.0f) - 1.0f));
        if (iCeil > 0) {
            canvas.drawPoints(this.f10195c0, 0, iCeil * 2, this.f10201h);
        }
        if (iCeil <= iFloor) {
            canvas.drawPoints(this.f10195c0, iCeil * 2, ((iFloor - iCeil) + 1) * 2, this.f10203i);
        }
        int i10 = (iFloor + 1) * 2;
        float[] fArr = this.f10195c0;
        if (i10 < fArr.length) {
            canvas.drawPoints(fArr, i10, fArr.length - i10, this.f10201h);
        }
    }

    private boolean X() {
        int iMax = this.f10229v + Math.max(Math.max(Math.max((this.H / 2) - this.f10231w, 0), Math.max((this.F - this.f10233x) / 2, 0)), Math.max(Math.max(this.f10197e0 - this.f10235y, 0), Math.max(this.f10199f0 - this.f10236z, 0)));
        if (this.G == iMax) {
            return false;
        }
        this.G = iMax;
        if (!m0.O(this)) {
            return true;
        }
        v0(getWidth());
        return true;
    }

    private boolean Y() {
        int iMax = Math.max(this.C, Math.max(this.F + getPaddingTop() + getPaddingBottom(), this.I + getPaddingTop() + getPaddingBottom()));
        if (iMax == this.D) {
            return false;
        }
        this.D = iMax;
        return true;
    }

    private boolean Z(int i10) {
        int i11 = this.f10191a0;
        int iC = (int) x.a.c(((long) i11) + ((long) i10), 0L, this.V.size() - 1);
        this.f10191a0 = iC;
        if (iC == i11) {
            return false;
        }
        if (this.W != -1) {
            this.W = iC;
        }
        s0();
        postInvalidate();
        return true;
    }

    private boolean a0(int i10) {
        if (Q()) {
            i10 = i10 == Integer.MIN_VALUE ? Integer.MAX_VALUE : -i10;
        }
        return Z(i10);
    }

    private float b0(float f10) {
        float f11 = this.T;
        float f12 = (f10 - f11) / (this.U - f11);
        return Q() ? 1.0f - f12 : f12;
    }

    private Boolean c0(int i10, KeyEvent keyEvent) {
        if (i10 == 61) {
            return keyEvent.hasNoModifiers() ? Boolean.valueOf(Z(1)) : keyEvent.isShiftPressed() ? Boolean.valueOf(Z(-1)) : Boolean.FALSE;
        }
        if (i10 != 66) {
            if (i10 != 81) {
                if (i10 == 69) {
                    Z(-1);
                    return Boolean.TRUE;
                }
                if (i10 != 70) {
                    switch (i10) {
                        case COUIVersionUtil.COUI_8_2 /* 21 */:
                            a0(-1);
                            break;
                        case 22:
                            a0(1);
                            break;
                    }
                    return Boolean.TRUE;
                }
            }
            Z(1);
            return Boolean.TRUE;
        }
        this.W = this.f10191a0;
        postInvalidate();
        return Boolean.TRUE;
    }

    private void d0() {
        Iterator it = this.f10219q.iterator();
        if (it.hasNext()) {
            t.a(it.next());
            throw null;
        }
    }

    private void e0() {
        Iterator it = this.f10219q.iterator();
        if (it.hasNext()) {
            t.a(it.next());
            throw null;
        }
    }

    private void g0(n4.a aVar, float f10) {
        int iB0 = (this.G + ((int) (b0(f10) * this.f10200g0))) - (aVar.getIntrinsicWidth() / 2);
        int iM = m() - (this.P + (this.I / 2));
        aVar.setBounds(iB0, iM - aVar.getIntrinsicHeight(), aVar.getIntrinsicWidth() + iB0, iM);
        Rect rect = new Rect(aVar.getBounds());
        DescendantOffsetUtils.offsetDescendantRect(ViewUtils.getContentView(this), this, rect);
        aVar.setBounds(rect);
    }

    private void h(Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth == -1 && intrinsicHeight == -1) {
            drawable.setBounds(0, 0, this.H, this.I);
        } else {
            float fMax = Math.max(this.H, this.I) / Math.max(intrinsicWidth, intrinsicHeight);
            drawable.setBounds(0, 0, (int) (intrinsicWidth * fMax), (int) (intrinsicHeight * fMax));
        }
    }

    private void h0(Context context, AttributeSet attributeSet, int i10) {
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R$styleable.Slider, i10, f10189z0, new int[0]);
        this.f10213n = typedArrayObtainStyledAttributes.getResourceId(R$styleable.Slider_labelStyle, R$style.Widget_MaterialComponents_Tooltip);
        this.T = typedArrayObtainStyledAttributes.getFloat(R$styleable.Slider_android_valueFrom, 0.0f);
        this.U = typedArrayObtainStyledAttributes.getFloat(R$styleable.Slider_android_valueTo, 1.0f);
        setValues(Float.valueOf(this.T));
        this.f10193b0 = typedArrayObtainStyledAttributes.getFloat(R$styleable.Slider_android_stepSize, 0.0f);
        this.B = (int) Math.ceil(typedArrayObtainStyledAttributes.getDimension(R$styleable.Slider_minTouchTargetSize, (float) Math.ceil(ViewUtils.dpToPx(getContext(), 48))));
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(R$styleable.Slider_trackColor);
        int i11 = zHasValue ? R$styleable.Slider_trackColor : R$styleable.Slider_trackColorInactive;
        int i12 = zHasValue ? R$styleable.Slider_trackColor : R$styleable.Slider_trackColorActive;
        ColorStateList colorStateListA = i4.c.a(context, typedArrayObtainStyledAttributes, i11);
        if (colorStateListA == null) {
            colorStateListA = e.a.a(context, R$color.material_slider_inactive_track_color);
        }
        setTrackInactiveTintList(colorStateListA);
        ColorStateList colorStateListA2 = i4.c.a(context, typedArrayObtainStyledAttributes, i12);
        if (colorStateListA2 == null) {
            colorStateListA2 = e.a.a(context, R$color.material_slider_active_track_color);
        }
        setTrackActiveTintList(colorStateListA2);
        this.f10224s0.setFillColor(i4.c.a(context, typedArrayObtainStyledAttributes, R$styleable.Slider_thumbColor));
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.Slider_thumbStrokeColor)) {
            setThumbStrokeColor(i4.c.a(context, typedArrayObtainStyledAttributes, R$styleable.Slider_thumbStrokeColor));
        }
        setThumbStrokeWidth(typedArrayObtainStyledAttributes.getDimension(R$styleable.Slider_thumbStrokeWidth, 0.0f));
        ColorStateList colorStateListA3 = i4.c.a(context, typedArrayObtainStyledAttributes, R$styleable.Slider_haloColor);
        if (colorStateListA3 == null) {
            colorStateListA3 = e.a.a(context, R$color.material_slider_halo_color);
        }
        setHaloTintList(colorStateListA3);
        this.f10196d0 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.Slider_tickVisible, true);
        boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(R$styleable.Slider_tickColor);
        int i13 = zHasValue2 ? R$styleable.Slider_tickColor : R$styleable.Slider_tickColorInactive;
        int i14 = zHasValue2 ? R$styleable.Slider_tickColor : R$styleable.Slider_tickColorActive;
        ColorStateList colorStateListA4 = i4.c.a(context, typedArrayObtainStyledAttributes, i13);
        if (colorStateListA4 == null) {
            colorStateListA4 = e.a.a(context, R$color.material_slider_inactive_tick_marks_color);
        }
        setTickInactiveTintList(colorStateListA4);
        ColorStateList colorStateListA5 = i4.c.a(context, typedArrayObtainStyledAttributes, i14);
        if (colorStateListA5 == null) {
            colorStateListA5 = e.a.a(context, R$color.material_slider_active_tick_marks_color);
        }
        setTickActiveTintList(colorStateListA5);
        setThumbTrackGapSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.Slider_thumbTrackGapSize, 0));
        setTrackStopIndicatorSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.Slider_trackStopIndicatorSize, 0));
        setTrackInsideCornerSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.Slider_trackInsideCornerSize, 0));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.Slider_thumbRadius, 0) * 2;
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.Slider_thumbWidth, dimensionPixelSize);
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.Slider_thumbHeight, dimensionPixelSize);
        setThumbWidth(dimensionPixelSize2);
        setThumbHeight(dimensionPixelSize3);
        setHaloRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.Slider_haloRadius, 0));
        setThumbElevation(typedArrayObtainStyledAttributes.getDimension(R$styleable.Slider_thumbElevation, 0.0f));
        setTrackHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.Slider_trackHeight, 0));
        setTickActiveRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.Slider_tickRadiusActive, this.N / 2));
        setTickInactiveRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.Slider_tickRadiusInactive, this.N / 2));
        setLabelBehavior(typedArrayObtainStyledAttributes.getInt(R$styleable.Slider_labelBehavior, 0));
        if (!typedArrayObtainStyledAttributes.getBoolean(R$styleable.Slider_android_enabled, true)) {
            setEnabled(false);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void i(n4.a aVar) {
        aVar.E(ViewUtils.getContentView(this));
    }

    private void i0(int i10) {
        d dVar = this.f10211m;
        if (dVar == null) {
            this.f10211m = new d(this, null);
        } else {
            removeCallbacks(dVar);
        }
        this.f10211m.a(i10);
        postDelayed(this.f10211m, 200L);
    }

    private Float j(int i10) {
        float fL = this.f10204i0 ? l(20) : k();
        if (i10 == 21) {
            if (!Q()) {
                fL = -fL;
            }
            return Float.valueOf(fL);
        }
        if (i10 == 22) {
            if (Q()) {
                fL = -fL;
            }
            return Float.valueOf(fL);
        }
        if (i10 == 69) {
            return Float.valueOf(-fL);
        }
        if (i10 == 70 || i10 == 81) {
            return Float.valueOf(fL);
        }
        return null;
    }

    private void j0(n4.a aVar, float f10) {
        aVar.G(A(f10));
        g0(aVar, f10);
        ViewUtils.getContentViewOverlay(this).add(aVar);
    }

    private float k() {
        float f10 = this.f10193b0;
        if (f10 == 0.0f) {
            return 1.0f;
        }
        return f10;
    }

    private void k0(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("At least one value must be set");
        }
        Collections.sort(arrayList);
        if (this.V.size() == arrayList.size() && this.V.equals(arrayList)) {
            return;
        }
        this.V = arrayList;
        this.f10206j0 = true;
        this.f10191a0 = 0;
        s0();
        o();
        s();
        postInvalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float l(int i10) {
        float fK = k();
        return (this.U - this.T) / fK <= i10 ? fK : Math.round(r1 / r2) * fK;
    }

    private boolean l0() {
        return this.E == 3;
    }

    private int m() {
        return (this.D / 2) + ((this.E == 1 || l0()) ? ((n4.a) this.f10215o.get(0)).getIntrinsicHeight() : 0);
    }

    private boolean m0() {
        return this.f10202h0 || !(getBackground() instanceof RippleDrawable);
    }

    private ValueAnimator n(boolean z10) {
        int iF;
        TimeInterpolator timeInterpolatorG;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(C(z10 ? this.f10225t : this.f10223s, z10 ? 0.0f : 1.0f), z10 ? 1.0f : 0.0f);
        if (z10) {
            iF = g4.i.f(getContext(), A0, 83);
            timeInterpolatorG = g4.i.g(getContext(), C0, x3.a.f16372e);
        } else {
            iF = g4.i.f(getContext(), B0, 117);
            timeInterpolatorG = g4.i.g(getContext(), D0, x3.a.f16370c);
        }
        valueAnimatorOfFloat.setDuration(iF);
        valueAnimatorOfFloat.setInterpolator(timeInterpolatorG);
        valueAnimatorOfFloat.addUpdateListener(new a());
        return valueAnimatorOfFloat;
    }

    private boolean n0(float f10) {
        return p0(this.W, f10);
    }

    private void o() {
        if (this.f10215o.size() > this.V.size()) {
            List<n4.a> listSubList = this.f10215o.subList(this.V.size(), this.f10215o.size());
            for (n4.a aVar : listSubList) {
                if (m0.N(this)) {
                    p(aVar);
                }
            }
            listSubList.clear();
        }
        while (true) {
            if (this.f10215o.size() >= this.V.size()) {
                break;
            }
            n4.a aVarY = n4.a.y(getContext(), null, 0, this.f10213n);
            this.f10215o.add(aVarY);
            if (m0.N(this)) {
                i(aVarY);
            }
        }
        int i10 = this.f10215o.size() != 1 ? 1 : 0;
        Iterator it = this.f10215o.iterator();
        while (it.hasNext()) {
            ((n4.a) it.next()).setStrokeWidth(i10);
        }
    }

    private double o0(float f10) {
        float f11 = this.f10193b0;
        if (f11 <= 0.0f) {
            return f10;
        }
        int i10 = (int) ((this.U - this.T) / f11);
        return ((double) Math.round(f10 * i10)) / ((double) i10);
    }

    private void p(n4.a aVar) {
        ViewOverlayImpl contentViewOverlay = ViewUtils.getContentViewOverlay(this);
        if (contentViewOverlay != null) {
            contentViewOverlay.remove(aVar);
            aVar.A(ViewUtils.getContentView(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean p0(int i10, float f10) {
        this.f10191a0 = i10;
        if (Math.abs(f10 - ((Float) this.V.get(i10)).floatValue()) < 1.0E-4d) {
            return false;
        }
        this.V.set(i10, Float.valueOf(D(i10, f10)));
        r(i10);
        return true;
    }

    private float q(float f10) {
        if (f10 == 0.0f) {
            return 0.0f;
        }
        float f11 = (f10 - this.G) / this.f10200g0;
        float f12 = this.T;
        return (f11 * (f12 - this.U)) + f12;
    }

    private boolean q0() {
        return n0(G());
    }

    private void r(int i10) {
        Iterator it = this.f10217p.iterator();
        if (it.hasNext()) {
            t.a(it.next());
            ((Float) this.V.get(i10)).floatValue();
            throw null;
        }
        AccessibilityManager accessibilityManager = this.f10209l;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            return;
        }
        i0(i10);
    }

    private void s() {
        Iterator it = this.f10217p.iterator();
        while (it.hasNext()) {
            t.a(it.next());
            Iterator it2 = this.V.iterator();
            if (it2.hasNext()) {
                ((Float) it2.next()).floatValue();
                throw null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s0() {
        if (m0() || getMeasuredWidth() <= 0) {
            return;
        }
        Drawable background = getBackground();
        if (background instanceof RippleDrawable) {
            int iB0 = (int) ((b0(((Float) this.V.get(this.f10191a0)).floatValue()) * this.f10200g0) + this.G);
            int iM = m();
            int i10 = this.J;
            v.a.l(background, iB0 - i10, iM - i10, iB0 + i10, iM + i10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b5 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void t(android.graphics.Canvas r12, int r13, int r14) {
        /*
            Method dump skipped, instruction units count: 208
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.slider.BaseSlider.t(android.graphics.Canvas, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t0() {
        int i10 = this.E;
        if (i10 == 0 || i10 == 1) {
            if (this.W == -1 || !isEnabled()) {
                y();
                return;
            } else {
                x();
                return;
            }
        }
        if (i10 == 2) {
            y();
            return;
        }
        if (i10 != 3) {
            throw new IllegalArgumentException("Unexpected labelBehavior: " + this.E);
        }
        if (isEnabled() && R()) {
            x();
        } else {
            y();
        }
    }

    private void u(Canvas canvas, int i10, int i11) {
        float[] fArrB = B();
        float f10 = i10;
        float f11 = this.G + (fArrB[1] * f10);
        if (f11 < r1 + i10) {
            if (I()) {
                float f12 = i11;
                int i12 = this.F;
                this.f10220q0.set(f11 + this.K, f12 - (i12 / 2.0f), this.G + i10 + (i12 / 2.0f), f12 + (i12 / 2.0f));
                u0(canvas, this.f10190a, this.f10220q0, f.RIGHT);
            } else {
                this.f10190a.setStyle(Paint.Style.STROKE);
                this.f10190a.setStrokeCap(Paint.Cap.ROUND);
                float f13 = i11;
                canvas.drawLine(f11, f13, this.G + i10, f13, this.f10190a);
            }
        }
        int i13 = this.G;
        float f14 = i13 + (fArrB[0] * f10);
        if (f14 > i13) {
            if (!I()) {
                this.f10190a.setStyle(Paint.Style.STROKE);
                this.f10190a.setStrokeCap(Paint.Cap.ROUND);
                float f15 = i11;
                canvas.drawLine(this.G, f15, f14, f15, this.f10190a);
                return;
            }
            RectF rectF = this.f10220q0;
            float f16 = this.G;
            int i14 = this.F;
            float f17 = i11;
            rectF.set(f16 - (i14 / 2.0f), f17 - (i14 / 2.0f), f14 - this.K, f17 + (i14 / 2.0f));
            u0(canvas, this.f10190a, this.f10220q0, f.LEFT);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void u0(android.graphics.Canvas r9, android.graphics.Paint r10, android.graphics.RectF r11, com.google.android.material.slider.BaseSlider.f r12) {
        /*
            r8 = this;
            int r0 = r8.F
            float r1 = (float) r0
            r2 = 1073741824(0x40000000, float:2.0)
            float r1 = r1 / r2
            float r0 = (float) r0
            float r0 = r0 / r2
            int[] r3 = com.google.android.material.slider.BaseSlider.c.f10244a
            int r4 = r12.ordinal()
            r4 = r3[r4]
            r5 = 3
            r6 = 2
            r7 = 1
            if (r4 == r7) goto L22
            if (r4 == r6) goto L1e
            if (r4 == r5) goto L1a
            goto L26
        L1a:
            int r1 = r8.O
            float r1 = (float) r1
            goto L26
        L1e:
            int r0 = r8.O
        L20:
            float r0 = (float) r0
            goto L26
        L22:
            int r0 = r8.O
            float r1 = (float) r0
            goto L20
        L26:
            android.graphics.Paint$Style r4 = android.graphics.Paint.Style.FILL
            r10.setStyle(r4)
            android.graphics.Paint$Cap r4 = android.graphics.Paint.Cap.BUTT
            r10.setStrokeCap(r4)
            r10.setAntiAlias(r7)
            android.graphics.Path r4 = r8.f10218p0
            r4.reset()
            float r4 = r11.width()
            float r7 = r1 + r0
            int r4 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r4 < 0) goto L53
            android.graphics.Path r12 = r8.f10218p0
            float[] r0 = r8.F(r1, r0)
            android.graphics.Path$Direction r1 = android.graphics.Path.Direction.CW
            r12.addRoundRect(r11, r0, r1)
            android.graphics.Path r8 = r8.f10218p0
            r9.drawPath(r8, r10)
            goto Lac
        L53:
            float r4 = java.lang.Math.min(r1, r0)
            float r0 = java.lang.Math.max(r1, r0)
            r9.save()
            android.graphics.Path r1 = r8.f10218p0
            android.graphics.Path$Direction r7 = android.graphics.Path.Direction.CW
            r1.addRoundRect(r11, r4, r4, r7)
            android.graphics.Path r1 = r8.f10218p0
            r9.clipPath(r1)
            int r12 = r12.ordinal()
            r12 = r3[r12]
            if (r12 == r6) goto L97
            if (r12 == r5) goto L88
            android.graphics.RectF r12 = r8.f10222r0
            float r1 = r11.centerX()
            float r1 = r1 - r0
            float r2 = r11.top
            float r3 = r11.centerX()
            float r3 = r3 + r0
            float r11 = r11.bottom
            r12.set(r1, r2, r3, r11)
            goto La4
        L88:
            android.graphics.RectF r12 = r8.f10222r0
            float r1 = r11.right
            float r2 = r2 * r0
            float r2 = r1 - r2
            float r3 = r11.top
            float r11 = r11.bottom
            r12.set(r2, r3, r1, r11)
            goto La4
        L97:
            android.graphics.RectF r12 = r8.f10222r0
            float r1 = r11.left
            float r3 = r11.top
            float r2 = r2 * r0
            float r2 = r2 + r1
            float r11 = r11.bottom
            r12.set(r1, r3, r2, r11)
        La4:
            android.graphics.RectF r8 = r8.f10222r0
            r9.drawRoundRect(r8, r0, r0, r10)
            r9.restore()
        Lac:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.slider.BaseSlider.u0(android.graphics.Canvas, android.graphics.Paint, android.graphics.RectF, com.google.android.material.slider.BaseSlider$f):void");
    }

    private void v(Canvas canvas, int i10, int i11, float f10, Drawable drawable) {
        canvas.save();
        canvas.translate((this.G + ((int) (b0(f10) * i10))) - (drawable.getBounds().width() / 2.0f), i11 - (drawable.getBounds().height() / 2.0f));
        drawable.draw(canvas);
        canvas.restore();
    }

    private void v0(int i10) {
        this.f10200g0 = Math.max(i10 - (this.G * 2), 0);
        T();
    }

    private void w(Canvas canvas, int i10, int i11) {
        for (int i12 = 0; i12 < this.V.size(); i12++) {
            float fFloatValue = ((Float) this.V.get(i12)).floatValue();
            Drawable drawable = this.f10226t0;
            if (drawable != null) {
                v(canvas, i10, i11, fFloatValue, drawable);
            } else if (i12 < this.f10228u0.size()) {
                v(canvas, i10, i11, fFloatValue, (Drawable) this.f10228u0.get(i12));
            } else {
                if (!isEnabled()) {
                    canvas.drawCircle(this.G + (b0(fFloatValue) * i10), i11, getThumbRadius(), this.f10194c);
                }
                v(canvas, i10, i11, fFloatValue, this.f10224s0);
            }
        }
    }

    private void w0() {
        boolean zY = Y();
        boolean zX = X();
        if (zY) {
            requestLayout();
        } else if (zX) {
            postInvalidate();
        }
    }

    private void x() {
        if (!this.f10221r) {
            this.f10221r = true;
            ValueAnimator valueAnimatorN = n(true);
            this.f10223s = valueAnimatorN;
            this.f10225t = null;
            valueAnimatorN.start();
        }
        Iterator it = this.f10215o.iterator();
        for (int i10 = 0; i10 < this.V.size() && it.hasNext(); i10++) {
            if (i10 != this.f10191a0) {
                j0((n4.a) it.next(), ((Float) this.V.get(i10)).floatValue());
            }
        }
        if (!it.hasNext()) {
            throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(this.f10215o.size()), Integer.valueOf(this.V.size())));
        }
        j0((n4.a) it.next(), ((Float) this.V.get(this.f10191a0)).floatValue());
    }

    private void x0() {
        if (this.f10206j0) {
            A0();
            B0();
            z0();
            C0();
            y0();
            F0();
            this.f10206j0 = false;
        }
    }

    private void y() {
        if (this.f10221r) {
            this.f10221r = false;
            ValueAnimator valueAnimatorN = n(false);
            this.f10225t = valueAnimatorN;
            this.f10223s = null;
            valueAnimatorN.addListener(new b());
            this.f10225t.start();
        }
    }

    private void y0() {
        float minSeparation = getMinSeparation();
        if (minSeparation < 0.0f) {
            throw new IllegalStateException(String.format("minSeparation(%s) must be greater or equal to 0", Float.valueOf(minSeparation)));
        }
        float f10 = this.f10193b0;
        if (f10 <= 0.0f || minSeparation <= 0.0f) {
            return;
        }
        if (this.f10232w0 != 1) {
            throw new IllegalStateException(String.format("minSeparation(%s) cannot be set as a dimension when using stepSize(%s)", Float.valueOf(minSeparation), Float.valueOf(this.f10193b0)));
        }
        if (minSeparation < f10 || !O(minSeparation)) {
            throw new IllegalStateException(String.format("minSeparation(%s) must be greater or equal and a multiple of stepSize(%s) when using stepSize(%s)", Float.valueOf(minSeparation), Float.valueOf(this.f10193b0), Float.valueOf(this.f10193b0)));
        }
    }

    private void z(int i10) {
        if (i10 == 1) {
            Z(Integer.MAX_VALUE);
            return;
        }
        if (i10 == 2) {
            Z(Integer.MIN_VALUE);
        } else if (i10 == 17) {
            a0(Integer.MAX_VALUE);
        } else {
            if (i10 != 66) {
                return;
            }
            a0(Integer.MIN_VALUE);
        }
    }

    private void z0() {
        if (this.f10193b0 > 0.0f && !D0(this.U)) {
            throw new IllegalStateException(String.format("The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range", Float.valueOf(this.f10193b0), Float.valueOf(this.T), Float.valueOf(this.U)));
        }
    }

    public boolean J() {
        return false;
    }

    final boolean Q() {
        return m0.v(this) == 1;
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.f10207k.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.f10190a.setColor(E(this.f10216o0));
        this.f10192b.setColor(E(this.f10214n0));
        this.f10201h.setColor(E(this.f10212m0));
        this.f10203i.setColor(E(this.f10210l0));
        this.f10205j.setColor(E(this.f10214n0));
        for (n4.a aVar : this.f10215o) {
            if (aVar.isStateful()) {
                aVar.setState(getDrawableState());
            }
        }
        if (this.f10224s0.isStateful()) {
            this.f10224s0.setState(getDrawableState());
        }
        this.f10198f.setColor(E(this.f10208k0));
        this.f10198f.setAlpha(63);
    }

    protected boolean f0() {
        if (this.W != -1) {
            return true;
        }
        float fH = H();
        float fE0 = E0(fH);
        this.W = 0;
        float fAbs = Math.abs(((Float) this.V.get(0)).floatValue() - fH);
        for (int i10 = 1; i10 < this.V.size(); i10++) {
            float fAbs2 = Math.abs(((Float) this.V.get(i10)).floatValue() - fH);
            float fE02 = E0(((Float) this.V.get(i10)).floatValue());
            if (Float.compare(fAbs2, fAbs) > 0) {
                break;
            }
            boolean z10 = !Q() ? fE02 - fE0 >= 0.0f : fE02 - fE0 <= 0.0f;
            if (Float.compare(fAbs2, fAbs) < 0) {
                this.W = i10;
            } else {
                if (Float.compare(fAbs2, fAbs) != 0) {
                    continue;
                } else {
                    if (Math.abs(fE02 - fE0) < this.f10227u) {
                        this.W = -1;
                        return false;
                    }
                    if (z10) {
                        this.W = i10;
                    }
                }
            }
            fAbs = fAbs2;
        }
        return this.W != -1;
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    final int getAccessibilityFocusedVirtualViewId() {
        return this.f10207k.getAccessibilityFocusedVirtualViewId();
    }

    public int getActiveThumbIndex() {
        return this.W;
    }

    public int getFocusedThumbIndex() {
        return this.f10191a0;
    }

    public int getHaloRadius() {
        return this.J;
    }

    public ColorStateList getHaloTintList() {
        return this.f10208k0;
    }

    public int getLabelBehavior() {
        return this.E;
    }

    protected float getMinSeparation() {
        return 0.0f;
    }

    public float getStepSize() {
        return this.f10193b0;
    }

    public float getThumbElevation() {
        return this.f10224s0.getElevation();
    }

    public int getThumbHeight() {
        return this.I;
    }

    public int getThumbRadius() {
        return this.H / 2;
    }

    public ColorStateList getThumbStrokeColor() {
        return this.f10224s0.getStrokeColor();
    }

    public float getThumbStrokeWidth() {
        return this.f10224s0.getStrokeWidth();
    }

    public ColorStateList getThumbTintList() {
        return this.f10224s0.getFillColor();
    }

    public int getThumbTrackGapSize() {
        return this.K;
    }

    public int getThumbWidth() {
        return this.H;
    }

    public int getTickActiveRadius() {
        return this.f10197e0;
    }

    public ColorStateList getTickActiveTintList() {
        return this.f10210l0;
    }

    public int getTickInactiveRadius() {
        return this.f10199f0;
    }

    public ColorStateList getTickInactiveTintList() {
        return this.f10212m0;
    }

    public ColorStateList getTickTintList() {
        if (this.f10212m0.equals(this.f10210l0)) {
            return this.f10210l0;
        }
        throw new IllegalStateException("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
    }

    public ColorStateList getTrackActiveTintList() {
        return this.f10214n0;
    }

    public int getTrackHeight() {
        return this.F;
    }

    public ColorStateList getTrackInactiveTintList() {
        return this.f10216o0;
    }

    public int getTrackInsideCornerSize() {
        return this.O;
    }

    public int getTrackSidePadding() {
        return this.G;
    }

    public int getTrackStopIndicatorSize() {
        return this.N;
    }

    public ColorStateList getTrackTintList() {
        if (this.f10216o0.equals(this.f10214n0)) {
            return this.f10214n0;
        }
        throw new IllegalStateException("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
    }

    public int getTrackWidth() {
        return this.f10200g0;
    }

    public float getValueFrom() {
        return this.T;
    }

    public float getValueTo() {
        return this.U;
    }

    List<Float> getValues() {
        return new ArrayList(this.V);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnScrollChangedListener(this.f10234x0);
        Iterator it = this.f10215o.iterator();
        while (it.hasNext()) {
            i((n4.a) it.next());
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        d dVar = this.f10211m;
        if (dVar != null) {
            removeCallbacks(dVar);
        }
        this.f10221r = false;
        Iterator it = this.f10215o.iterator();
        while (it.hasNext()) {
            p((n4.a) it.next());
        }
        getViewTreeObserver().removeOnScrollChangedListener(this.f10234x0);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f10206j0) {
            x0();
            T();
        }
        super.onDraw(canvas);
        int iM = m();
        float fFloatValue = ((Float) this.V.get(0)).floatValue();
        ArrayList arrayList = this.V;
        float fFloatValue2 = ((Float) arrayList.get(arrayList.size() - 1)).floatValue();
        if (fFloatValue2 < this.U || (this.V.size() > 1 && fFloatValue > this.T)) {
            u(canvas, this.f10200g0, iM);
        }
        if (fFloatValue2 > this.T) {
            t(canvas, this.f10200g0, iM);
        }
        W(canvas);
        V(canvas, iM);
        if ((this.S || isFocused()) && isEnabled()) {
            U(canvas, this.f10200g0, iM);
        }
        t0();
        w(canvas, this.f10200g0, iM);
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z10, int i10, Rect rect) {
        super.onFocusChanged(z10, i10, rect);
        if (z10) {
            z(i10);
            this.f10207k.requestKeyboardFocusForVirtualView(this.f10191a0);
        } else {
            this.W = -1;
            this.f10207k.clearKeyboardFocusForVirtualView(this.f10191a0);
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (!isEnabled()) {
            return super.onKeyDown(i10, keyEvent);
        }
        if (this.V.size() == 1) {
            this.W = 0;
        }
        if (this.W == -1) {
            Boolean boolC0 = c0(i10, keyEvent);
            return boolC0 != null ? boolC0.booleanValue() : super.onKeyDown(i10, keyEvent);
        }
        this.f10204i0 |= keyEvent.isLongPress();
        Float fJ = j(i10);
        if (fJ != null) {
            if (n0(((Float) this.V.get(this.W)).floatValue() + fJ.floatValue())) {
                s0();
                postInvalidate();
            }
            return true;
        }
        if (i10 != 23) {
            if (i10 == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return Z(1);
                }
                if (keyEvent.isShiftPressed()) {
                    return Z(-1);
                }
                return false;
            }
            if (i10 != 66) {
                return super.onKeyDown(i10, keyEvent);
            }
        }
        this.W = -1;
        postInvalidate();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        this.f10204i0 = false;
        return super.onKeyUp(i10, keyEvent);
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(this.D + ((this.E == 1 || l0()) ? ((n4.a) this.f10215o.get(0)).getIntrinsicHeight() : 0), 1073741824));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SliderState sliderState = (SliderState) parcelable;
        super.onRestoreInstanceState(sliderState.getSuperState());
        this.T = sliderState.f10237a;
        this.U = sliderState.f10238b;
        k0(sliderState.f10239c);
        this.f10193b0 = sliderState.f10240f;
        if (sliderState.f10241h) {
            requestFocus();
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SliderState sliderState = new SliderState(super.onSaveInstanceState());
        sliderState.f10237a = this.T;
        sliderState.f10238b = this.U;
        sliderState.f10239c = new ArrayList(this.V);
        sliderState.f10240f = this.f10193b0;
        sliderState.f10241h = hasFocus();
        return sliderState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        v0(i10);
        s0();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x006f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            Method dump skipped, instruction units count: 305
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.slider.BaseSlider.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i10) {
        ViewOverlayImpl contentViewOverlay;
        super.onVisibilityChanged(view, i10);
        if (i10 == 0 || (contentViewOverlay = ViewUtils.getContentViewOverlay(this)) == null) {
            return;
        }
        Iterator it = this.f10215o.iterator();
        while (it.hasNext()) {
            contentViewOverlay.remove((n4.a) it.next());
        }
    }

    void r0(int i10, Rect rect) {
        int iB0 = this.G + ((int) (b0(getValues().get(i10).floatValue()) * this.f10200g0));
        int iM = m();
        int iMax = Math.max(this.H / 2, this.B / 2);
        int iMax2 = Math.max(this.I / 2, this.B / 2);
        rect.set(iB0 - iMax, iM - iMax2, iB0 + iMax, iM + iMax2);
    }

    protected void setActiveThumbIndex(int i10) {
        this.W = i10;
    }

    void setCustomThumbDrawable(int i10) {
        setCustomThumbDrawable(getResources().getDrawable(i10));
    }

    void setCustomThumbDrawablesForValues(int... iArr) {
        Drawable[] drawableArr = new Drawable[iArr.length];
        for (int i10 = 0; i10 < iArr.length; i10++) {
            drawableArr[i10] = getResources().getDrawable(iArr[i10]);
        }
        setCustomThumbDrawablesForValues(drawableArr);
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        setLayerType(z10 ? 0 : 2, null);
    }

    public void setFocusedThumbIndex(int i10) {
        if (i10 < 0 || i10 >= this.V.size()) {
            throw new IllegalArgumentException("index out of range");
        }
        this.f10191a0 = i10;
        this.f10207k.requestKeyboardFocusForVirtualView(i10);
        postInvalidate();
    }

    public void setHaloRadius(int i10) {
        if (i10 == this.J) {
            return;
        }
        this.J = i10;
        Drawable background = getBackground();
        if (m0() || !(background instanceof RippleDrawable)) {
            postInvalidate();
        } else {
            com.google.android.material.drawable.a.m((RippleDrawable) background, this.J);
        }
    }

    public void setHaloRadiusResource(int i10) {
        setHaloRadius(getResources().getDimensionPixelSize(i10));
    }

    public void setHaloTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f10208k0)) {
            return;
        }
        this.f10208k0 = colorStateList;
        Drawable background = getBackground();
        if (!m0() && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setColor(colorStateList);
            return;
        }
        this.f10198f.setColor(E(colorStateList));
        this.f10198f.setAlpha(63);
        invalidate();
    }

    public void setLabelBehavior(int i10) {
        if (this.E != i10) {
            this.E = i10;
            requestLayout();
        }
    }

    public void setLabelFormatter(com.google.android.material.slider.b bVar) {
    }

    protected void setSeparationUnit(int i10) {
        this.f10232w0 = i10;
        this.f10206j0 = true;
        postInvalidate();
    }

    public void setStepSize(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException(String.format("The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range", Float.valueOf(f10), Float.valueOf(this.T), Float.valueOf(this.U)));
        }
        if (this.f10193b0 != f10) {
            this.f10193b0 = f10;
            this.f10206j0 = true;
            postInvalidate();
        }
    }

    public void setThumbElevation(float f10) {
        this.f10224s0.setElevation(f10);
    }

    public void setThumbElevationResource(int i10) {
        setThumbElevation(getResources().getDimension(i10));
    }

    public void setThumbHeight(int i10) {
        if (i10 == this.I) {
            return;
        }
        this.I = i10;
        this.f10224s0.setBounds(0, 0, this.H, i10);
        Drawable drawable = this.f10226t0;
        if (drawable != null) {
            h(drawable);
        }
        Iterator it = this.f10228u0.iterator();
        while (it.hasNext()) {
            h((Drawable) it.next());
        }
        w0();
    }

    public void setThumbHeightResource(int i10) {
        setThumbHeight(getResources().getDimensionPixelSize(i10));
    }

    public void setThumbRadius(int i10) {
        int i11 = i10 * 2;
        setThumbWidth(i11);
        setThumbHeight(i11);
    }

    public void setThumbRadiusResource(int i10) {
        setThumbRadius(getResources().getDimensionPixelSize(i10));
    }

    public void setThumbStrokeColor(ColorStateList colorStateList) {
        this.f10224s0.setStrokeColor(colorStateList);
        postInvalidate();
    }

    public void setThumbStrokeColorResource(int i10) {
        if (i10 != 0) {
            setThumbStrokeColor(e.a.a(getContext(), i10));
        }
    }

    public void setThumbStrokeWidth(float f10) {
        this.f10224s0.setStrokeWidth(f10);
        postInvalidate();
    }

    public void setThumbStrokeWidthResource(int i10) {
        if (i10 != 0) {
            setThumbStrokeWidth(getResources().getDimension(i10));
        }
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f10224s0.getFillColor())) {
            return;
        }
        this.f10224s0.setFillColor(colorStateList);
        invalidate();
    }

    public void setThumbTrackGapSize(int i10) {
        if (this.K == i10) {
            return;
        }
        this.K = i10;
        invalidate();
    }

    public void setThumbWidth(int i10) {
        if (i10 == this.H) {
            return;
        }
        this.H = i10;
        this.f10224s0.setShapeAppearanceModel(n.a().q(0, this.H / 2.0f).m());
        this.f10224s0.setBounds(0, 0, this.H, this.I);
        Drawable drawable = this.f10226t0;
        if (drawable != null) {
            h(drawable);
        }
        Iterator it = this.f10228u0.iterator();
        while (it.hasNext()) {
            h((Drawable) it.next());
        }
        w0();
    }

    public void setThumbWidthResource(int i10) {
        setThumbWidth(getResources().getDimensionPixelSize(i10));
    }

    public void setTickActiveRadius(int i10) {
        if (this.f10197e0 != i10) {
            this.f10197e0 = i10;
            this.f10203i.setStrokeWidth(i10 * 2);
            w0();
        }
    }

    public void setTickActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f10210l0)) {
            return;
        }
        this.f10210l0 = colorStateList;
        this.f10203i.setColor(E(colorStateList));
        invalidate();
    }

    public void setTickInactiveRadius(int i10) {
        if (this.f10199f0 != i10) {
            this.f10199f0 = i10;
            this.f10201h.setStrokeWidth(i10 * 2);
            w0();
        }
    }

    public void setTickInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f10212m0)) {
            return;
        }
        this.f10212m0 = colorStateList;
        this.f10201h.setColor(E(colorStateList));
        invalidate();
    }

    public void setTickTintList(ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    public void setTickVisible(boolean z10) {
        if (this.f10196d0 != z10) {
            this.f10196d0 = z10;
            postInvalidate();
        }
    }

    public void setTrackActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f10214n0)) {
            return;
        }
        this.f10214n0 = colorStateList;
        this.f10192b.setColor(E(colorStateList));
        this.f10205j.setColor(E(this.f10214n0));
        invalidate();
    }

    public void setTrackHeight(int i10) {
        if (this.F != i10) {
            this.F = i10;
            L();
            w0();
        }
    }

    public void setTrackInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f10216o0)) {
            return;
        }
        this.f10216o0 = colorStateList;
        this.f10190a.setColor(E(colorStateList));
        invalidate();
    }

    public void setTrackInsideCornerSize(int i10) {
        if (this.O == i10) {
            return;
        }
        this.O = i10;
        invalidate();
    }

    public void setTrackStopIndicatorSize(int i10) {
        if (this.N == i10) {
            return;
        }
        this.N = i10;
        this.f10205j.setStrokeWidth(i10);
        invalidate();
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public void setValueFrom(float f10) {
        this.T = f10;
        this.f10206j0 = true;
        postInvalidate();
    }

    public void setValueTo(float f10) {
        this.U = f10;
        this.f10206j0 = true;
        postInvalidate();
    }

    void setValues(Float... fArr) {
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, fArr);
        k0(arrayList);
    }

    private class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f10245a;

        private d() {
            this.f10245a = -1;
        }

        void a(int i10) {
            this.f10245a = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseSlider.this.f10207k.sendEventForVirtualView(this.f10245a, 4);
        }

        /* synthetic */ d(BaseSlider baseSlider, a aVar) {
            this();
        }
    }

    public BaseSlider(Context context, AttributeSet attributeSet, int i10) {
        super(m4.a.c(context, attributeSet, i10, f10189z0), attributeSet, i10);
        this.f10215o = new ArrayList();
        this.f10217p = new ArrayList();
        this.f10219q = new ArrayList();
        this.f10221r = false;
        this.L = -1;
        this.M = -1;
        this.S = false;
        this.V = new ArrayList();
        this.W = -1;
        this.f10191a0 = -1;
        this.f10193b0 = 0.0f;
        this.f10196d0 = true;
        this.f10204i0 = false;
        this.f10218p0 = new Path();
        this.f10220q0 = new RectF();
        this.f10222r0 = new RectF();
        i iVar = new i();
        this.f10224s0 = iVar;
        this.f10228u0 = Collections.emptyList();
        this.f10232w0 = 0;
        this.f10234x0 = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.google.android.material.slider.a
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                this.f10251a.t0();
            }
        };
        Context context2 = getContext();
        this.f10190a = new Paint();
        this.f10192b = new Paint();
        Paint paint = new Paint(1);
        this.f10194c = paint;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint2 = new Paint(1);
        this.f10198f = paint2;
        paint2.setStyle(style);
        Paint paint3 = new Paint();
        this.f10201h = paint3;
        Paint.Style style2 = Paint.Style.STROKE;
        paint3.setStyle(style2);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint3.setStrokeCap(cap);
        Paint paint4 = new Paint();
        this.f10203i = paint4;
        paint4.setStyle(style2);
        paint4.setStrokeCap(cap);
        Paint paint5 = new Paint();
        this.f10205j = paint5;
        paint5.setStyle(style);
        paint5.setStrokeCap(cap);
        S(context2.getResources());
        h0(context2, attributeSet, i10);
        setFocusable(true);
        setClickable(true);
        iVar.setShadowCompatibilityMode(2);
        this.f10227u = ViewConfiguration.get(context2).getScaledTouchSlop();
        e eVar = new e(this);
        this.f10207k = eVar;
        m0.j0(this, eVar);
        this.f10209l = (AccessibilityManager) getContext().getSystemService("accessibility");
    }

    void setCustomThumbDrawable(Drawable drawable) {
        this.f10226t0 = K(drawable);
        this.f10228u0.clear();
        postInvalidate();
    }

    void setValues(List<Float> list) {
        k0(new ArrayList(list));
    }

    void setCustomThumbDrawablesForValues(Drawable... drawableArr) {
        this.f10226t0 = null;
        this.f10228u0 = new ArrayList();
        for (Drawable drawable : drawableArr) {
            this.f10228u0.add(K(drawable));
        }
        postInvalidate();
    }
}
