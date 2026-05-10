package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
class r {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final RectF f965l = new RectF();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static ConcurrentHashMap f966m = new ConcurrentHashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TextPaint f974h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final TextView f975i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Context f976j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f967a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f968b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f969c = -1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f970d = -1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f971e = -1.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int[] f972f = new int[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f973g = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final d f977k = new c();

    private static final class a {
        static StaticLayout a(CharSequence charSequence, Layout.Alignment alignment, int i10, int i11, TextView textView, TextPaint textPaint, d dVar) {
            StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i10);
            StaticLayout.Builder hyphenationFrequency = builderObtain.setAlignment(alignment).setLineSpacing(textView.getLineSpacingExtra(), textView.getLineSpacingMultiplier()).setIncludePad(textView.getIncludeFontPadding()).setBreakStrategy(textView.getBreakStrategy()).setHyphenationFrequency(textView.getHyphenationFrequency());
            if (i11 == -1) {
                i11 = Integer.MAX_VALUE;
            }
            hyphenationFrequency.setMaxLines(i11);
            try {
                dVar.a(builderObtain, textView);
            } catch (ClassCastException unused) {
                Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
            }
            return builderObtain.build();
        }
    }

    private static class b extends d {
        b() {
        }
    }

    private static class c extends b {
        c() {
        }

        @Override // androidx.appcompat.widget.r.d
        void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection(textView.getTextDirectionHeuristic());
        }

        @Override // androidx.appcompat.widget.r.d
        boolean b(TextView textView) {
            return textView.isHorizontallyScrollable();
        }
    }

    private static class d {
        d() {
        }

        abstract void a(StaticLayout.Builder builder, TextView textView);

        abstract boolean b(TextView textView);
    }

    r(TextView textView) {
        this.f975i = textView;
        this.f976j = textView.getContext();
    }

    private int[] b(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i10 : iArr) {
            if (i10 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i10)) < 0) {
                arrayList.add(Integer.valueOf(i10));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i11 = 0; i11 < size; i11++) {
            iArr2[i11] = ((Integer) arrayList.get(i11)).intValue();
        }
        return iArr2;
    }

    private void c() {
        this.f967a = 0;
        this.f970d = -1.0f;
        this.f971e = -1.0f;
        this.f969c = -1.0f;
        this.f972f = new int[0];
        this.f968b = false;
    }

    private int e(RectF rectF) {
        int length = this.f972f.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i10 = 1;
        int i11 = length - 1;
        int i12 = 0;
        while (i10 <= i11) {
            int i13 = (i10 + i11) / 2;
            if (x(this.f972f[i13], rectF)) {
                int i14 = i13 + 1;
                i12 = i10;
                i10 = i14;
            } else {
                i12 = i13 - 1;
                i11 = i12;
            }
        }
        return this.f972f[i12];
    }

    private static Method k(String str) {
        try {
            Method declaredMethod = (Method) f966m.get(str);
            if (declaredMethod == null && (declaredMethod = TextView.class.getDeclaredMethod(str, null)) != null) {
                declaredMethod.setAccessible(true);
                f966m.put(str, declaredMethod);
            }
            return declaredMethod;
        } catch (Exception e10) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e10);
            return null;
        }
    }

    static Object m(Object obj, String str, Object obj2) {
        try {
            return k(str).invoke(obj, null);
        } catch (Exception e10) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e10);
            return obj2;
        }
    }

    private void s(float f10) {
        if (f10 != this.f975i.getPaint().getTextSize()) {
            this.f975i.getPaint().setTextSize(f10);
            boolean zIsInLayout = this.f975i.isInLayout();
            if (this.f975i.getLayout() != null) {
                this.f968b = false;
                try {
                    Method methodK = k("nullLayouts");
                    if (methodK != null) {
                        methodK.invoke(this.f975i, null);
                    }
                } catch (Exception e10) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e10);
                }
                if (zIsInLayout) {
                    this.f975i.forceLayout();
                } else {
                    this.f975i.requestLayout();
                }
                this.f975i.invalidate();
            }
        }
    }

    private boolean u() {
        if (y() && this.f967a == 1) {
            if (!this.f973g || this.f972f.length == 0) {
                int iFloor = ((int) Math.floor((this.f971e - this.f970d) / this.f969c)) + 1;
                int[] iArr = new int[iFloor];
                for (int i10 = 0; i10 < iFloor; i10++) {
                    iArr[i10] = Math.round(this.f970d + (i10 * this.f969c));
                }
                this.f972f = b(iArr);
            }
            this.f968b = true;
        } else {
            this.f968b = false;
        }
        return this.f968b;
    }

    private void v(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i10 = 0; i10 < length; i10++) {
                iArr[i10] = typedArray.getDimensionPixelSize(i10, -1);
            }
            this.f972f = b(iArr);
            w();
        }
    }

    private boolean w() {
        boolean z10 = this.f972f.length > 0;
        this.f973g = z10;
        if (z10) {
            this.f967a = 1;
            this.f970d = r0[0];
            this.f971e = r0[r1 - 1];
            this.f969c = -1.0f;
        }
        return z10;
    }

    private boolean x(int i10, RectF rectF) {
        CharSequence transformation;
        CharSequence text = this.f975i.getText();
        TransformationMethod transformationMethod = this.f975i.getTransformationMethod();
        if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.f975i)) != null) {
            text = transformation;
        }
        int maxLines = this.f975i.getMaxLines();
        l(i10);
        StaticLayout staticLayoutD = d(text, (Layout.Alignment) m(this.f975i, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        return (maxLines == -1 || (staticLayoutD.getLineCount() <= maxLines && staticLayoutD.getLineEnd(staticLayoutD.getLineCount() - 1) == text.length())) && ((float) staticLayoutD.getHeight()) <= rectF.bottom;
    }

    private boolean y() {
        return !(this.f975i instanceof AppCompatEditText);
    }

    private void z(float f10, float f11, float f12) {
        if (f10 <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f10 + "px) is less or equal to (0px)");
        }
        if (f11 <= f10) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f11 + "px) is less or equal to minimum auto-size text size (" + f10 + "px)");
        }
        if (f12 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f12 + "px) is less or equal to (0px)");
        }
        this.f967a = 1;
        this.f970d = f10;
        this.f971e = f11;
        this.f969c = f12;
        this.f973g = false;
    }

    void a() {
        if (n()) {
            if (this.f968b) {
                if (this.f975i.getMeasuredHeight() <= 0 || this.f975i.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.f977k.b(this.f975i) ? 1048576 : (this.f975i.getMeasuredWidth() - this.f975i.getTotalPaddingLeft()) - this.f975i.getTotalPaddingRight();
                int height = (this.f975i.getHeight() - this.f975i.getCompoundPaddingBottom()) - this.f975i.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                RectF rectF = f965l;
                synchronized (rectF) {
                    try {
                        rectF.setEmpty();
                        rectF.right = measuredWidth;
                        rectF.bottom = height;
                        float fE = e(rectF);
                        if (fE != this.f975i.getTextSize()) {
                            t(0, fE);
                        }
                    } finally {
                    }
                }
            }
            this.f968b = true;
        }
    }

    StaticLayout d(CharSequence charSequence, Layout.Alignment alignment, int i10, int i11) {
        return a.a(charSequence, alignment, i10, i11, this.f975i, this.f974h, this.f977k);
    }

    int f() {
        return Math.round(this.f971e);
    }

    int g() {
        return Math.round(this.f970d);
    }

    int h() {
        return Math.round(this.f969c);
    }

    int[] i() {
        return this.f972f;
    }

    int j() {
        return this.f967a;
    }

    void l(int i10) {
        TextPaint textPaint = this.f974h;
        if (textPaint == null) {
            this.f974h = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.f974h.set(this.f975i.getPaint());
        this.f974h.setTextSize(i10);
    }

    boolean n() {
        return y() && this.f967a != 0;
    }

    void o(AttributeSet attributeSet, int i10) {
        int resourceId;
        TypedArray typedArrayObtainStyledAttributes = this.f976j.obtainStyledAttributes(attributeSet, R$styleable.AppCompatTextView, i10, 0);
        TextView textView = this.f975i;
        androidx.core.view.m0.h0(textView, textView.getContext(), R$styleable.AppCompatTextView, attributeSet, typedArrayObtainStyledAttributes, i10, 0);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTextView_autoSizeTextType)) {
            this.f967a = typedArrayObtainStyledAttributes.getInt(R$styleable.AppCompatTextView_autoSizeTextType, 0);
        }
        float dimension = typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTextView_autoSizeStepGranularity) ? typedArrayObtainStyledAttributes.getDimension(R$styleable.AppCompatTextView_autoSizeStepGranularity, -1.0f) : -1.0f;
        float dimension2 = typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTextView_autoSizeMinTextSize) ? typedArrayObtainStyledAttributes.getDimension(R$styleable.AppCompatTextView_autoSizeMinTextSize, -1.0f) : -1.0f;
        float dimension3 = typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTextView_autoSizeMaxTextSize) ? typedArrayObtainStyledAttributes.getDimension(R$styleable.AppCompatTextView_autoSizeMaxTextSize, -1.0f) : -1.0f;
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTextView_autoSizePresetSizes) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AppCompatTextView_autoSizePresetSizes, 0)) > 0) {
            TypedArray typedArrayObtainTypedArray = typedArrayObtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            v(typedArrayObtainTypedArray);
            typedArrayObtainTypedArray.recycle();
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!y()) {
            this.f967a = 0;
            return;
        }
        if (this.f967a == 1) {
            if (!this.f973g) {
                DisplayMetrics displayMetrics = this.f976j.getResources().getDisplayMetrics();
                if (dimension2 == -1.0f) {
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                }
                if (dimension3 == -1.0f) {
                    dimension3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                }
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                z(dimension2, dimension3, dimension);
            }
            u();
        }
    }

    void p(int i10, int i11, int i12, int i13) {
        if (y()) {
            DisplayMetrics displayMetrics = this.f976j.getResources().getDisplayMetrics();
            z(TypedValue.applyDimension(i13, i10, displayMetrics), TypedValue.applyDimension(i13, i11, displayMetrics), TypedValue.applyDimension(i13, i12, displayMetrics));
            if (u()) {
                a();
            }
        }
    }

    void q(int[] iArr, int i10) {
        if (y()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArrCopyOf = new int[length];
                if (i10 == 0) {
                    iArrCopyOf = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = this.f976j.getResources().getDisplayMetrics();
                    for (int i11 = 0; i11 < length; i11++) {
                        iArrCopyOf[i11] = Math.round(TypedValue.applyDimension(i10, iArr[i11], displayMetrics));
                    }
                }
                this.f972f = b(iArrCopyOf);
                if (!w()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f973g = false;
            }
            if (u()) {
                a();
            }
        }
    }

    void r(int i10) {
        if (y()) {
            if (i10 == 0) {
                c();
                return;
            }
            if (i10 != 1) {
                throw new IllegalArgumentException("Unknown auto-size text type: " + i10);
            }
            DisplayMetrics displayMetrics = this.f976j.getResources().getDisplayMetrics();
            z(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (u()) {
                a();
            }
        }
    }

    void t(int i10, float f10) {
        Context context = this.f976j;
        s(TypedValue.applyDimension(i10, f10, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }
}
