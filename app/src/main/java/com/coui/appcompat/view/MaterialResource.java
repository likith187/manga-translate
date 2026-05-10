package com.coui.appcompat.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import androidx.appcompat.widget.h0;
import e.a;

/* JADX INFO: loaded from: classes.dex */
public class MaterialResource {
    private static final float FONT_SCALE_1_3 = 1.3f;
    private static final float FONT_SCALE_2_0 = 2.0f;

    private MaterialResource() {
    }

    public static ColorStateList getColorStateList(Context context, TypedArray typedArray, int i10) {
        int resourceId;
        ColorStateList colorStateListA;
        return (!typedArray.hasValue(i10) || (resourceId = typedArray.getResourceId(i10, 0)) == 0 || (colorStateListA = a.a(context, resourceId)) == null) ? typedArray.getColorStateList(i10) : colorStateListA;
    }

    private static int getComplexUnit(TypedValue typedValue) {
        return typedValue.getComplexUnit();
    }

    public static int getDimensionPixelSize(Context context, TypedArray typedArray, int i10, int i11) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(i10, typedValue) || typedValue.type != 2) {
            return typedArray.getDimensionPixelSize(i10, i11);
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, i11);
        typedArrayObtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    public static Drawable getDrawable(Context context, TypedArray typedArray, int i10) {
        int resourceId;
        Drawable drawableB;
        return (!typedArray.hasValue(i10) || (resourceId = typedArray.getResourceId(i10, 0)) == 0 || (drawableB = a.b(context, resourceId)) == null) ? typedArray.getDrawable(i10) : drawableB;
    }

    public static float getFontScale(Context context) {
        return context.getResources().getConfiguration().fontScale;
    }

    static int getIndexWithValue(TypedArray typedArray, int i10, int i11) {
        return typedArray.hasValue(i10) ? i10 : i11;
    }

    public static boolean isFontScaleAtLeast1(Context context) {
        return context.getResources().getConfiguration().fontScale >= FONT_SCALE_1_3;
    }

    public static boolean isFontScaleAtLeast2(Context context) {
        return context.getResources().getConfiguration().fontScale >= 2.0f;
    }

    public static ColorStateList getColorStateList(Context context, h0 h0Var, int i10) {
        int iN;
        ColorStateList colorStateListA;
        return (!h0Var.s(i10) || (iN = h0Var.n(i10, 0)) == 0 || (colorStateListA = a.a(context, iN)) == null) ? h0Var.c(i10) : colorStateListA;
    }
}
