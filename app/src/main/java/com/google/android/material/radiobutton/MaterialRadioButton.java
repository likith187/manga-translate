package com.google.android.material.radiobutton;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.core.widget.c;
import b4.a;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;

/* JADX INFO: loaded from: classes.dex */
public class MaterialRadioButton extends AppCompatRadioButton {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f9941j = R$style.Widget_MaterialComponents_CompoundButton_RadioButton;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int[][] f9942k = {new int[]{16842910, R.attr.state_checked}, new int[]{16842910, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ColorStateList f9943h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f9944i;

    public MaterialRadioButton(Context context) {
        this(context, null);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f9943h == null) {
            int iD = a.d(this, R$attr.colorControlActivated);
            int iD2 = a.d(this, R$attr.colorOnSurface);
            int iD3 = a.d(this, R$attr.colorSurface);
            int[][] iArr = f9942k;
            int[] iArr2 = new int[iArr.length];
            iArr2[0] = a.j(iD3, iD, 1.0f);
            iArr2[1] = a.j(iD3, iD2, 0.54f);
            iArr2[2] = a.j(iD3, iD2, 0.38f);
            iArr2[3] = a.j(iD3, iD2, 0.38f);
            this.f9943h = new ColorStateList(iArr, iArr2);
        }
        return this.f9943h;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f9944i && c.b(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z10) {
        this.f9944i = z10;
        if (z10) {
            c.d(this, getMaterialThemeColorsTintList());
        } else {
            c.d(this, null);
        }
    }

    public MaterialRadioButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.radioButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialRadioButton(Context context, AttributeSet attributeSet, int i10) {
        int i11 = f9941j;
        super(m4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R$styleable.MaterialRadioButton, i10, i11, new int[0]);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.MaterialRadioButton_buttonTint)) {
            c.d(this, i4.c.a(context2, typedArrayObtainStyledAttributes, R$styleable.MaterialRadioButton_buttonTint));
        }
        this.f9944i = typedArrayObtainStyledAttributes.getBoolean(R$styleable.MaterialRadioButton_useMaterialThemeColors, false);
        typedArrayObtainStyledAttributes.recycle();
    }
}
