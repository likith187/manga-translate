package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import androidx.appcompat.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public abstract class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal f852a = new ThreadLocal();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final int[] f853b = {-16842910};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final int[] f854c = {16842908};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final int[] f855d = {R.attr.state_activated};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final int[] f856e = {16842919};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final int[] f857f = {R.attr.state_checked};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final int[] f858g = {16842913};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final int[] f859h = {-16842919, -16842908};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final int[] f860i = new int[0];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int[] f861j = new int[1];

    public static void a(View view, Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(R$styleable.AppCompatTheme);
        try {
            if (!typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowActionBar)) {
                Log.e("ThemeUtils", "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static int b(Context context, int i10) {
        ColorStateList colorStateListE = e(context, i10);
        if (colorStateListE != null && colorStateListE.isStateful()) {
            return colorStateListE.getColorForState(f853b, colorStateListE.getDefaultColor());
        }
        TypedValue typedValueF = f();
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, typedValueF, true);
        return d(context, i10, typedValueF.getFloat());
    }

    public static int c(Context context, int i10) {
        int[] iArr = f861j;
        iArr[0] = i10;
        h0 h0VarV = h0.v(context, null, iArr);
        try {
            return h0VarV.b(0, 0);
        } finally {
            h0VarV.y();
        }
    }

    static int d(Context context, int i10, float f10) {
        return u.d.u(c(context, i10), Math.round(Color.alpha(r0) * f10));
    }

    public static ColorStateList e(Context context, int i10) {
        int[] iArr = f861j;
        iArr[0] = i10;
        h0 h0VarV = h0.v(context, null, iArr);
        try {
            return h0VarV.c(0);
        } finally {
            h0VarV.y();
        }
    }

    private static TypedValue f() {
        ThreadLocal threadLocal = f852a;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }
}
