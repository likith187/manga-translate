package com.google.android.material.textview;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.R$attr;
import com.google.android.material.R$styleable;
import i4.b;
import i4.c;
import m4.a;

/* JADX INFO: loaded from: classes.dex */
public class MaterialTextView extends AppCompatTextView {
    public MaterialTextView(Context context) {
        this(context, null);
    }

    private void b(Resources.Theme theme, int i10) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(i10, R$styleable.MaterialTextAppearance);
        int iE = e(getContext(), typedArrayObtainStyledAttributes, R$styleable.MaterialTextAppearance_android_lineHeight, R$styleable.MaterialTextAppearance_lineHeight);
        typedArrayObtainStyledAttributes.recycle();
        if (iE >= 0) {
            setLineHeight(iE);
        }
    }

    private static boolean c(Context context) {
        return b.b(context, R$attr.textAppearanceLineHeightEnabled, true);
    }

    private void d(AttributeSet attributeSet, int i10, int i11) {
        int iFindViewAppearanceResourceId;
        Context context = getContext();
        if (c(context)) {
            Resources.Theme theme = context.getTheme();
            if (f(context, theme, attributeSet, i10, i11) || (iFindViewAppearanceResourceId = findViewAppearanceResourceId(theme, attributeSet, i10, i11)) == -1) {
                return;
            }
            b(theme, iFindViewAppearanceResourceId);
        }
    }

    private static int e(Context context, TypedArray typedArray, int... iArr) {
        int iD = -1;
        for (int i10 = 0; i10 < iArr.length && iD < 0; i10++) {
            iD = c.d(context, typedArray, iArr[i10], -1);
        }
        return iD;
    }

    private static boolean f(Context context, Resources.Theme theme, AttributeSet attributeSet, int i10, int i11) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, R$styleable.MaterialTextView, i10, i11);
        int iE = e(context, typedArrayObtainStyledAttributes, R$styleable.MaterialTextView_android_lineHeight, R$styleable.MaterialTextView_lineHeight);
        typedArrayObtainStyledAttributes.recycle();
        return iE != -1;
    }

    private static int findViewAppearanceResourceId(Resources.Theme theme, AttributeSet attributeSet, int i10, int i11) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, R$styleable.MaterialTextView, i10, i11);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialTextView_android_textAppearance, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        if (c(context)) {
            b(context.getTheme(), i10);
        }
    }

    public MaterialTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    public MaterialTextView(Context context, AttributeSet attributeSet, int i10) {
        super(a.c(context, attributeSet, i10, 0), attributeSet, i10);
        d(attributeSet, i10, 0);
    }
}
