package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.method.SingleLineTransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.core.widget.j;
import androidx.viewpager.widget.ViewPager;
import com.coui.appcompat.uiutil.UIUtil;
import java.lang.ref.WeakReference;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
@ViewPager.e
public class PagerTitleStrip extends ViewGroup {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int[] f3862r = {R.attr.textAppearance, R.attr.textSize, R.attr.textColor, R.attr.gravity};

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int[] f3863s = {R.attr.textAllCaps};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ViewPager f3864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    TextView f3865b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f3866c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    TextView f3867f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f3868h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    float f3869i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f3870j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f3871k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f3872l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f3873m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final a f3874n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private WeakReference f3875o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f3876p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f3877q;

    private class a extends DataSetObserver implements ViewPager.j, ViewPager.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f3878a;

        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.i
        public void onAdapterChanged(ViewPager viewPager, androidx.viewpager.widget.a aVar, androidx.viewpager.widget.a aVar2) {
            PagerTitleStrip.this.b(aVar, aVar2);
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
            pagerTitleStrip.c(pagerTitleStrip.f3864a.getCurrentItem(), PagerTitleStrip.this.f3864a.getAdapter());
            PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
            float f10 = pagerTitleStrip2.f3869i;
            if (f10 < 0.0f) {
                f10 = 0.0f;
            }
            pagerTitleStrip2.d(pagerTitleStrip2.f3864a.getCurrentItem(), f10, true);
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void onPageScrollStateChanged(int i10) {
            this.f3878a = i10;
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void onPageScrolled(int i10, float f10, int i11) {
            if (f10 > 0.5f) {
                i10++;
            }
            PagerTitleStrip.this.d(i10, f10, false);
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void onPageSelected(int i10) {
            if (this.f3878a == 0) {
                PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
                pagerTitleStrip.c(pagerTitleStrip.f3864a.getCurrentItem(), PagerTitleStrip.this.f3864a.getAdapter());
                PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
                float f10 = pagerTitleStrip2.f3869i;
                if (f10 < 0.0f) {
                    f10 = 0.0f;
                }
                pagerTitleStrip2.d(pagerTitleStrip2.f3864a.getCurrentItem(), f10, true);
            }
        }
    }

    private static class b extends SingleLineTransformationMethod {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Locale f3880a;

        b(Context context) {
            this.f3880a = context.getResources().getConfiguration().locale;
        }

        @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
        public CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            if (transformation != null) {
                return transformation.toString().toUpperCase(this.f3880a);
            }
            return null;
        }
    }

    public PagerTitleStrip(Context context) {
        this(context, null);
    }

    private static void setSingleLineAllCaps(TextView textView) {
        textView.setTransformationMethod(new b(textView.getContext()));
    }

    public void a(int i10, float f10) {
        this.f3865b.setTextSize(i10, f10);
        this.f3866c.setTextSize(i10, f10);
        this.f3867f.setTextSize(i10, f10);
    }

    void b(androidx.viewpager.widget.a aVar, androidx.viewpager.widget.a aVar2) {
        if (aVar != null) {
            aVar.unregisterDataSetObserver(this.f3874n);
            this.f3875o = null;
        }
        if (aVar2 != null) {
            aVar2.registerDataSetObserver(this.f3874n);
            this.f3875o = new WeakReference(aVar2);
        }
        ViewPager viewPager = this.f3864a;
        if (viewPager != null) {
            this.f3868h = -1;
            this.f3869i = -1.0f;
            c(viewPager.getCurrentItem(), aVar2);
            requestLayout();
        }
    }

    void c(int i10, androidx.viewpager.widget.a aVar) {
        int count = aVar != null ? aVar.getCount() : 0;
        this.f3872l = true;
        CharSequence pageTitle = null;
        this.f3865b.setText((i10 < 1 || aVar == null) ? null : aVar.getPageTitle(i10 - 1));
        this.f3866c.setText((aVar == null || i10 >= count) ? null : aVar.getPageTitle(i10));
        int i11 = i10 + 1;
        if (i11 < count && aVar != null) {
            pageTitle = aVar.getPageTitle(i11);
        }
        this.f3867f.setText(pageTitle);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), Integer.MIN_VALUE);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), Integer.MIN_VALUE);
        this.f3865b.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.f3866c.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.f3867f.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.f3868h = i10;
        if (!this.f3873m) {
            d(i10, this.f3869i, false);
        }
        this.f3872l = false;
    }

    void d(int i10, float f10, boolean z10) {
        int i11;
        int i12;
        int i13;
        int i14;
        if (i10 != this.f3868h) {
            c(i10, this.f3864a.getAdapter());
        } else if (!z10 && f10 == this.f3869i) {
            return;
        }
        this.f3873m = true;
        int measuredWidth = this.f3865b.getMeasuredWidth();
        int measuredWidth2 = this.f3866c.getMeasuredWidth();
        int measuredWidth3 = this.f3867f.getMeasuredWidth();
        int i15 = measuredWidth2 / 2;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i16 = paddingRight + i15;
        int i17 = (width - (paddingLeft + i15)) - i16;
        float f11 = 0.5f + f10;
        if (f11 > 1.0f) {
            f11 -= 1.0f;
        }
        int i18 = ((width - i16) - ((int) (i17 * f11))) - i15;
        int i19 = measuredWidth2 + i18;
        int baseline = this.f3865b.getBaseline();
        int baseline2 = this.f3866c.getBaseline();
        int baseline3 = this.f3867f.getBaseline();
        int iMax = Math.max(Math.max(baseline, baseline2), baseline3);
        int i20 = iMax - baseline;
        int i21 = iMax - baseline2;
        int i22 = iMax - baseline3;
        int iMax2 = Math.max(Math.max(this.f3865b.getMeasuredHeight() + i20, this.f3866c.getMeasuredHeight() + i21), this.f3867f.getMeasuredHeight() + i22);
        int i23 = this.f3871k & 112;
        if (i23 == 16) {
            i11 = (((height - paddingTop) - paddingBottom) - iMax2) / 2;
        } else {
            if (i23 != 80) {
                i12 = i20 + paddingTop;
                i13 = i21 + paddingTop;
                i14 = paddingTop + i22;
                TextView textView = this.f3866c;
                textView.layout(i18, i13, i19, textView.getMeasuredHeight() + i13);
                int iMin = Math.min(paddingLeft, (i18 - this.f3870j) - measuredWidth);
                TextView textView2 = this.f3865b;
                textView2.layout(iMin, i12, measuredWidth + iMin, textView2.getMeasuredHeight() + i12);
                int iMax3 = Math.max((width - paddingRight) - measuredWidth3, i19 + this.f3870j);
                TextView textView3 = this.f3867f;
                textView3.layout(iMax3, i14, iMax3 + measuredWidth3, textView3.getMeasuredHeight() + i14);
                this.f3869i = f10;
                this.f3873m = false;
            }
            i11 = (height - paddingBottom) - iMax2;
        }
        i12 = i20 + i11;
        i13 = i21 + i11;
        i14 = i11 + i22;
        TextView textView4 = this.f3866c;
        textView4.layout(i18, i13, i19, textView4.getMeasuredHeight() + i13);
        int iMin2 = Math.min(paddingLeft, (i18 - this.f3870j) - measuredWidth);
        TextView textView22 = this.f3865b;
        textView22.layout(iMin2, i12, measuredWidth + iMin2, textView22.getMeasuredHeight() + i12);
        int iMax32 = Math.max((width - paddingRight) - measuredWidth3, i19 + this.f3870j);
        TextView textView32 = this.f3867f;
        textView32.layout(iMax32, i14, iMax32 + measuredWidth3, textView32.getMeasuredHeight() + i14);
        this.f3869i = f10;
        this.f3873m = false;
    }

    int getMinHeight() {
        Drawable background = getBackground();
        if (background != null) {
            return background.getIntrinsicHeight();
        }
        return 0;
    }

    public int getTextSpacing() {
        return this.f3870j;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (!(parent instanceof ViewPager)) {
            throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
        }
        ViewPager viewPager = (ViewPager) parent;
        androidx.viewpager.widget.a adapter = viewPager.getAdapter();
        viewPager.P(this.f3874n);
        viewPager.b(this.f3874n);
        this.f3864a = viewPager;
        WeakReference weakReference = this.f3875o;
        b(weakReference != null ? (androidx.viewpager.widget.a) weakReference.get() : null, adapter);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPager viewPager = this.f3864a;
        if (viewPager != null) {
            b(viewPager.getAdapter(), null);
            this.f3864a.P(null);
            this.f3864a.H(this.f3874n);
            this.f3864a = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        if (this.f3864a != null) {
            float f10 = this.f3869i;
            if (f10 < 0.0f) {
                f10 = 0.0f;
            }
            d(this.f3868h, f10, true);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int iMax;
        if (View.MeasureSpec.getMode(i10) != 1073741824) {
            throw new IllegalStateException("Must measure with an exact width");
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i11, paddingTop, -2);
        int size = View.MeasureSpec.getSize(i10);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i10, (int) (size * 0.2f), -2);
        this.f3865b.measure(childMeasureSpec2, childMeasureSpec);
        this.f3866c.measure(childMeasureSpec2, childMeasureSpec);
        this.f3867f.measure(childMeasureSpec2, childMeasureSpec);
        if (View.MeasureSpec.getMode(i11) == 1073741824) {
            iMax = View.MeasureSpec.getSize(i11);
        } else {
            iMax = Math.max(getMinHeight(), this.f3866c.getMeasuredHeight() + paddingTop);
        }
        setMeasuredDimension(size, View.resolveSizeAndState(iMax, i11, this.f3866c.getMeasuredState() << 16));
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f3872l) {
            return;
        }
        super.requestLayout();
    }

    public void setGravity(int i10) {
        this.f3871k = i10;
        requestLayout();
    }

    public void setNonPrimaryAlpha(float f10) {
        int i10 = ((int) (f10 * 255.0f)) & 255;
        this.f3876p = i10;
        int i11 = (i10 << 24) | (this.f3877q & UIUtil.CONSTANT_COLOR_MASK);
        this.f3865b.setTextColor(i11);
        this.f3867f.setTextColor(i11);
    }

    public void setTextColor(int i10) {
        this.f3877q = i10;
        this.f3866c.setTextColor(i10);
        int i11 = (this.f3876p << 24) | (this.f3877q & UIUtil.CONSTANT_COLOR_MASK);
        this.f3865b.setTextColor(i11);
        this.f3867f.setTextColor(i11);
    }

    public void setTextSpacing(int i10) {
        this.f3870j = i10;
        requestLayout();
    }

    public PagerTitleStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3868h = -1;
        this.f3869i = -1.0f;
        this.f3874n = new a();
        TextView textView = new TextView(context);
        this.f3865b = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.f3866c = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.f3867f = textView3;
        addView(textView3);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f3862r);
        boolean z10 = false;
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            j.o(this.f3865b, resourceId);
            j.o(this.f3866c, resourceId);
            j.o(this.f3867f, resourceId);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            a(0, dimensionPixelSize);
        }
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            int color = typedArrayObtainStyledAttributes.getColor(2, 0);
            this.f3865b.setTextColor(color);
            this.f3866c.setTextColor(color);
            this.f3867f.setTextColor(color);
        }
        this.f3871k = typedArrayObtainStyledAttributes.getInteger(3, 80);
        typedArrayObtainStyledAttributes.recycle();
        this.f3877q = this.f3866c.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(0.6f);
        TextView textView4 = this.f3865b;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView4.setEllipsize(truncateAt);
        this.f3866c.setEllipsize(truncateAt);
        this.f3867f.setEllipsize(truncateAt);
        if (resourceId != 0) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, f3863s);
            z10 = typedArrayObtainStyledAttributes2.getBoolean(0, false);
            typedArrayObtainStyledAttributes2.recycle();
        }
        if (z10) {
            setSingleLineAllCaps(this.f3865b);
            setSingleLineAllCaps(this.f3866c);
            setSingleLineAllCaps(this.f3867f);
        } else {
            this.f3865b.setSingleLine();
            this.f3866c.setSingleLine();
            this.f3867f.setSingleLine();
        }
        this.f3870j = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }
}
