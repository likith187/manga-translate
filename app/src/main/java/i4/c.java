package i4;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import androidx.appcompat.widget.h0;
import com.google.android.material.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {
    public static ColorStateList a(Context context, TypedArray typedArray, int i10) {
        int resourceId;
        ColorStateList colorStateListA;
        return (!typedArray.hasValue(i10) || (resourceId = typedArray.getResourceId(i10, 0)) == 0 || (colorStateListA = e.a.a(context, resourceId)) == null) ? typedArray.getColorStateList(i10) : colorStateListA;
    }

    public static ColorStateList b(Context context, h0 h0Var, int i10) {
        int iN;
        ColorStateList colorStateListA;
        return (!h0Var.s(i10) || (iN = h0Var.n(i10, 0)) == 0 || (colorStateListA = e.a.a(context, iN)) == null) ? h0Var.c(i10) : colorStateListA;
    }

    private static int c(TypedValue typedValue) {
        return typedValue.getComplexUnit();
    }

    public static int d(Context context, TypedArray typedArray, int i10, int i11) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(i10, typedValue) || typedValue.type != 2) {
            return typedArray.getDimensionPixelSize(i10, i11);
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, i11);
        typedArrayObtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    public static Drawable e(Context context, TypedArray typedArray, int i10) {
        int resourceId;
        Drawable drawableB;
        return (!typedArray.hasValue(i10) || (resourceId = typedArray.getResourceId(i10, 0)) == 0 || (drawableB = e.a.b(context, resourceId)) == null) ? typedArray.getDrawable(i10) : drawableB;
    }

    public static float f(Context context) {
        return context.getResources().getConfiguration().fontScale;
    }

    static int g(TypedArray typedArray, int i10, int i11) {
        return typedArray.hasValue(i10) ? i10 : i11;
    }

    public static d h(Context context, TypedArray typedArray, int i10) {
        int resourceId;
        if (!typedArray.hasValue(i10) || (resourceId = typedArray.getResourceId(i10, 0)) == 0) {
            return null;
        }
        return new d(context, resourceId);
    }

    public static int i(Context context, int i10, int i11) {
        if (i10 == 0) {
            return i11;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i10, R$styleable.TextAppearance);
        TypedValue typedValue = new TypedValue();
        boolean value = typedArrayObtainStyledAttributes.getValue(R$styleable.TextAppearance_android_textSize, typedValue);
        typedArrayObtainStyledAttributes.recycle();
        return !value ? i11 : c(typedValue) == 2 ? Math.round(TypedValue.complexToFloat(typedValue.data) * context.getResources().getDisplayMetrics().density) : TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics());
    }

    public static boolean j(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }

    public static boolean k(Context context) {
        return context.getResources().getConfiguration().fontScale >= 2.0f;
    }
}
