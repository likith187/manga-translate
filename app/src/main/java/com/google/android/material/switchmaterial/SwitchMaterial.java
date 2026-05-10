package com.google.android.material.switchmaterial;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.SwitchCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import d4.a;

/* JADX INFO: loaded from: classes.dex */
public class SwitchMaterial extends SwitchCompat {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f10280h = R$style.Widget_MaterialComponents_CompoundButton_Switch;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int[][] f10281i = {new int[]{16842910, R.attr.state_checked}, new int[]{16842910, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f10282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ColorStateList f10283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ColorStateList f10284c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f10285f;

    public SwitchMaterial(Context context) {
        this(context, null);
    }

    private ColorStateList getMaterialThemeColorsThumbTintList() {
        if (this.f10283b == null) {
            int iD = b4.a.d(this, R$attr.colorSurface);
            int iD2 = b4.a.d(this, R$attr.colorControlActivated);
            float dimension = getResources().getDimension(R$dimen.mtrl_switch_thumb_elevation);
            if (this.f10282a.e()) {
                dimension += ViewUtils.getParentAbsoluteElevation(this);
            }
            int iC = this.f10282a.c(iD, dimension);
            int[][] iArr = f10281i;
            int[] iArr2 = new int[iArr.length];
            iArr2[0] = b4.a.j(iD, iD2, 1.0f);
            iArr2[1] = iC;
            iArr2[2] = b4.a.j(iD, iD2, 0.38f);
            iArr2[3] = iC;
            this.f10283b = new ColorStateList(iArr, iArr2);
        }
        return this.f10283b;
    }

    private ColorStateList getMaterialThemeColorsTrackTintList() {
        if (this.f10284c == null) {
            int[][] iArr = f10281i;
            int[] iArr2 = new int[iArr.length];
            int iD = b4.a.d(this, R$attr.colorSurface);
            int iD2 = b4.a.d(this, R$attr.colorControlActivated);
            int iD3 = b4.a.d(this, R$attr.colorOnSurface);
            iArr2[0] = b4.a.j(iD, iD2, 0.54f);
            iArr2[1] = b4.a.j(iD, iD3, 0.32f);
            iArr2[2] = b4.a.j(iD, iD2, 0.12f);
            iArr2[3] = b4.a.j(iD, iD3, 0.12f);
            this.f10284c = new ColorStateList(iArr, iArr2);
        }
        return this.f10284c;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f10285f && getThumbTintList() == null) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
        }
        if (this.f10285f && getTrackTintList() == null) {
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        }
    }

    public void setUseMaterialThemeColors(boolean z10) {
        this.f10285f = z10;
        if (z10) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        } else {
            setThumbTintList(null);
            setTrackTintList(null);
        }
    }

    public SwitchMaterial(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.switchStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SwitchMaterial(Context context, AttributeSet attributeSet, int i10) {
        int i11 = f10280h;
        super(m4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        Context context2 = getContext();
        this.f10282a = new a(context2);
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R$styleable.SwitchMaterial, i10, i11, new int[0]);
        this.f10285f = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SwitchMaterial_useMaterialThemeColors, false);
        typedArrayObtainStyledAttributes.recycle();
    }
}
