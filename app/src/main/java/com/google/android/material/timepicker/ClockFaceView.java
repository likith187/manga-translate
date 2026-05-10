package com.google.android.material.timepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.core.view.m0;
import com.google.android.material.R$attr;
import com.google.android.material.R$color;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.timepicker.ClockHandView;
import d0.h;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
class ClockFaceView extends RadialViewGroup implements ClockHandView.b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ClockHandView f10553f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Rect f10554h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final RectF f10555i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Rect f10556j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final SparseArray f10557k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final androidx.core.view.a f10558l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int[] f10559m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final float[] f10560n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f10561o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f10562p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f10563q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f10564r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String[] f10565s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f10566t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final ColorStateList f10567u;

    class a implements ViewTreeObserver.OnPreDrawListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (!ClockFaceView.this.isShown()) {
                return true;
            }
            ClockFaceView.this.getViewTreeObserver().removeOnPreDrawListener(this);
            ClockFaceView.this.l(((ClockFaceView.this.getHeight() / 2) - ClockFaceView.this.f10553f.i()) - ClockFaceView.this.f10561o);
            return true;
        }
    }

    class b extends androidx.core.view.a {
        b() {
        }

        @Override // androidx.core.view.a
        public void onInitializeAccessibilityNodeInfo(View view, h hVar) {
            super.onInitializeAccessibilityNodeInfo(view, hVar);
            int iIntValue = ((Integer) view.getTag(R$id.material_value_index)).intValue();
            if (iIntValue > 0) {
                hVar.J0((View) ClockFaceView.this.f10557k.get(iIntValue - 1));
            }
            hVar.k0(h.f.a(0, 1, iIntValue, 1, false, view.isSelected()));
            hVar.i0(true);
            hVar.b(h.a.f11466i);
        }

        @Override // androidx.core.view.a
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            if (i10 != 16) {
                return super.performAccessibilityAction(view, i10, bundle);
            }
            long jUptimeMillis = SystemClock.uptimeMillis();
            view.getHitRect(ClockFaceView.this.f10554h);
            float fCenterX = ClockFaceView.this.f10554h.centerX();
            float fCenterY = ClockFaceView.this.f10554h.centerY();
            ClockFaceView.this.f10553f.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, fCenterX, fCenterY, 0));
            ClockFaceView.this.f10553f.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 1, fCenterX, fCenterY, 0));
            return true;
        }
    }

    public ClockFaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialClockStyle);
    }

    private void t() {
        RectF rectFE = this.f10553f.e();
        TextView textViewV = v(rectFE);
        for (int i10 = 0; i10 < this.f10557k.size(); i10++) {
            TextView textView = (TextView) this.f10557k.get(i10);
            if (textView != null) {
                textView.setSelected(textView == textViewV);
                textView.getPaint().setShader(u(rectFE, textView));
                textView.invalidate();
            }
        }
    }

    private RadialGradient u(RectF rectF, TextView textView) {
        textView.getHitRect(this.f10554h);
        this.f10555i.set(this.f10554h);
        textView.getLineBounds(0, this.f10556j);
        RectF rectF2 = this.f10555i;
        Rect rect = this.f10556j;
        rectF2.inset(rect.left, rect.top);
        if (RectF.intersects(rectF, this.f10555i)) {
            return new RadialGradient(rectF.centerX() - this.f10555i.left, rectF.centerY() - this.f10555i.top, rectF.width() * 0.5f, this.f10559m, this.f10560n, Shader.TileMode.CLAMP);
        }
        return null;
    }

    private TextView v(RectF rectF) {
        float f10 = Float.MAX_VALUE;
        TextView textView = null;
        for (int i10 = 0; i10 < this.f10557k.size(); i10++) {
            TextView textView2 = (TextView) this.f10557k.get(i10);
            if (textView2 != null) {
                textView2.getHitRect(this.f10554h);
                this.f10555i.set(this.f10554h);
                this.f10555i.union(rectF);
                float fWidth = this.f10555i.width() * this.f10555i.height();
                if (fWidth < f10) {
                    textView = textView2;
                    f10 = fWidth;
                }
            }
        }
        return textView;
    }

    private static float w(float f10, float f11, float f12) {
        return Math.max(Math.max(f10, f11), f12);
    }

    private void y(int i10) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int size = this.f10557k.size();
        boolean z10 = false;
        for (int i11 = 0; i11 < Math.max(this.f10565s.length, size); i11++) {
            TextView textView = (TextView) this.f10557k.get(i11);
            if (i11 >= this.f10565s.length) {
                removeView(textView);
                this.f10557k.remove(i11);
            } else {
                if (textView == null) {
                    textView = (TextView) layoutInflaterFrom.inflate(R$layout.material_clockface_textview, (ViewGroup) this, false);
                    this.f10557k.put(i11, textView);
                    addView(textView);
                }
                textView.setText(this.f10565s[i11]);
                textView.setTag(R$id.material_value_index, Integer.valueOf(i11));
                int i12 = (i11 / 12) + 1;
                textView.setTag(R$id.material_clock_level, Integer.valueOf(i12));
                if (i12 > 1) {
                    z10 = true;
                }
                m0.j0(textView, this.f10558l);
                textView.setTextColor(this.f10567u);
                if (i10 != 0) {
                    textView.setContentDescription(getResources().getString(i10, this.f10565s[i11]));
                }
            }
        }
        this.f10553f.q(z10);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.b
    public void a(float f10, boolean z10) {
        if (Math.abs(this.f10566t - f10) > 0.001f) {
            this.f10566t = f10;
            t();
        }
    }

    @Override // com.google.android.material.timepicker.RadialViewGroup
    public void l(int i10) {
        if (i10 != k()) {
            super.l(i10);
            this.f10553f.m(k());
        }
    }

    @Override // com.google.android.material.timepicker.RadialViewGroup
    protected void n() {
        super.n();
        for (int i10 = 0; i10 < this.f10557k.size(); i10++) {
            ((TextView) this.f10557k.get(i10)).setVisibility(0);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        h.M0(accessibilityNodeInfo).j0(h.e.b(1, this.f10565s.length, false, 1));
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        t();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iW = (int) (this.f10564r / w(this.f10562p / displayMetrics.heightPixels, this.f10563q / displayMetrics.widthPixels, 1.0f));
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iW, 1073741824);
        setMeasuredDimension(iW, iW);
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec);
    }

    public void x(String[] strArr, int i10) {
        this.f10565s = strArr;
        y(i10);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public ClockFaceView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f10554h = new Rect();
        this.f10555i = new RectF();
        this.f10556j = new Rect();
        this.f10557k = new SparseArray();
        this.f10560n = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ClockFaceView, i10, R$style.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList colorStateListA = i4.c.a(context, typedArrayObtainStyledAttributes, R$styleable.ClockFaceView_clockNumberTextColor);
        this.f10567u = colorStateListA;
        LayoutInflater.from(context).inflate(R$layout.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(R$id.material_clock_hand);
        this.f10553f = clockHandView;
        this.f10561o = resources.getDimensionPixelSize(R$dimen.material_clock_hand_padding);
        int colorForState = colorStateListA.getColorForState(new int[]{16842913}, colorStateListA.getDefaultColor());
        this.f10559m = new int[]{colorForState, colorForState, colorStateListA.getDefaultColor()};
        clockHandView.b(this);
        int defaultColor = e.a.a(context, R$color.material_timepicker_clockface).getDefaultColor();
        ColorStateList colorStateListA2 = i4.c.a(context, typedArrayObtainStyledAttributes, R$styleable.ClockFaceView_clockFaceBackgroundColor);
        setBackgroundColor(colorStateListA2 != null ? colorStateListA2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new a());
        setFocusable(true);
        typedArrayObtainStyledAttributes.recycle();
        this.f10558l = new b();
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        x(strArr, 0);
        this.f10562p = resources.getDimensionPixelSize(R$dimen.material_time_picker_minimum_screen_height);
        this.f10563q = resources.getDimensionPixelSize(R$dimen.material_time_picker_minimum_screen_width);
        this.f10564r = resources.getDimensionPixelSize(R$dimen.material_clock_size);
    }
}
