package com.google.android.material.materialswitch;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.h0;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.drawable.a;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import u.d;

/* JADX INFO: loaded from: classes.dex */
public class MaterialSwitch extends SwitchCompat {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f9711q = R$style.Widget_Material3_CompoundButton_MaterialSwitch;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int[] f9712r = {R$attr.state_with_icon};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Drawable f9713a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Drawable f9714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f9715c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Drawable f9716f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Drawable f9717h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ColorStateList f9718i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ColorStateList f9719j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private PorterDuff.Mode f9720k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ColorStateList f9721l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ColorStateList f9722m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private PorterDuff.Mode f9723n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int[] f9724o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int[] f9725p;

    public MaterialSwitch(Context context) {
        this(context, null);
    }

    private void o() {
        this.f9713a = a.c(this.f9713a, this.f9718i, getThumbTintMode());
        this.f9714b = a.c(this.f9714b, this.f9719j, this.f9720k);
        r();
        Drawable drawable = this.f9713a;
        Drawable drawable2 = this.f9714b;
        int i10 = this.f9715c;
        super.setThumbDrawable(a.b(drawable, drawable2, i10, i10));
        refreshDrawableState();
    }

    private void p() {
        this.f9716f = a.c(this.f9716f, this.f9721l, getTrackTintMode());
        this.f9717h = a.c(this.f9717h, this.f9722m, this.f9723n);
        r();
        Drawable layerDrawable = this.f9716f;
        if (layerDrawable != null && this.f9717h != null) {
            layerDrawable = new LayerDrawable(new Drawable[]{this.f9716f, this.f9717h});
        } else if (layerDrawable == null) {
            layerDrawable = this.f9717h;
        }
        if (layerDrawable != null) {
            setSwitchMinWidth(layerDrawable.getIntrinsicWidth());
        }
        super.setTrackDrawable(layerDrawable);
    }

    private static void q(Drawable drawable, ColorStateList colorStateList, int[] iArr, int[] iArr2, float f10) {
        if (drawable == null || colorStateList == null) {
            return;
        }
        v.a.n(drawable, d.i(colorStateList.getColorForState(iArr, 0), colorStateList.getColorForState(iArr2, 0), f10));
    }

    private void r() {
        if (this.f9718i == null && this.f9719j == null && this.f9721l == null && this.f9722m == null) {
            return;
        }
        float thumbPosition = getThumbPosition();
        ColorStateList colorStateList = this.f9718i;
        if (colorStateList != null) {
            q(this.f9713a, colorStateList, this.f9724o, this.f9725p, thumbPosition);
        }
        ColorStateList colorStateList2 = this.f9719j;
        if (colorStateList2 != null) {
            q(this.f9714b, colorStateList2, this.f9724o, this.f9725p, thumbPosition);
        }
        ColorStateList colorStateList3 = this.f9721l;
        if (colorStateList3 != null) {
            q(this.f9716f, colorStateList3, this.f9724o, this.f9725p, thumbPosition);
        }
        ColorStateList colorStateList4 = this.f9722m;
        if (colorStateList4 != null) {
            q(this.f9717h, colorStateList4, this.f9724o, this.f9725p, thumbPosition);
        }
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public Drawable getThumbDrawable() {
        return this.f9713a;
    }

    public Drawable getThumbIconDrawable() {
        return this.f9714b;
    }

    public int getThumbIconSize() {
        return this.f9715c;
    }

    public ColorStateList getThumbIconTintList() {
        return this.f9719j;
    }

    public PorterDuff.Mode getThumbIconTintMode() {
        return this.f9720k;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public ColorStateList getThumbTintList() {
        return this.f9718i;
    }

    public Drawable getTrackDecorationDrawable() {
        return this.f9717h;
    }

    public ColorStateList getTrackDecorationTintList() {
        return this.f9722m;
    }

    public PorterDuff.Mode getTrackDecorationTintMode() {
        return this.f9723n;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public Drawable getTrackDrawable() {
        return this.f9716f;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public ColorStateList getTrackTintList() {
        return this.f9721l;
    }

    @Override // android.view.View
    public void invalidate() {
        r();
        super.invalidate();
    }

    @Override // androidx.appcompat.widget.SwitchCompat, android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        if (this.f9714b != null) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f9712r);
        }
        this.f9724o = a.j(iArrOnCreateDrawableState);
        this.f9725p = a.f(iArrOnCreateDrawableState);
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbDrawable(Drawable drawable) {
        this.f9713a = drawable;
        o();
    }

    public void setThumbIconDrawable(Drawable drawable) {
        this.f9714b = drawable;
        o();
    }

    public void setThumbIconResource(int i10) {
        setThumbIconDrawable(e.a.b(getContext(), i10));
    }

    public void setThumbIconSize(int i10) {
        if (this.f9715c != i10) {
            this.f9715c = i10;
            o();
        }
    }

    public void setThumbIconTintList(ColorStateList colorStateList) {
        this.f9719j = colorStateList;
        o();
    }

    public void setThumbIconTintMode(PorterDuff.Mode mode) {
        this.f9720k = mode;
        o();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbTintList(ColorStateList colorStateList) {
        this.f9718i = colorStateList;
        o();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbTintMode(PorterDuff.Mode mode) {
        super.setThumbTintMode(mode);
        o();
    }

    public void setTrackDecorationDrawable(Drawable drawable) {
        this.f9717h = drawable;
        p();
    }

    public void setTrackDecorationResource(int i10) {
        setTrackDecorationDrawable(e.a.b(getContext(), i10));
    }

    public void setTrackDecorationTintList(ColorStateList colorStateList) {
        this.f9722m = colorStateList;
        p();
    }

    public void setTrackDecorationTintMode(PorterDuff.Mode mode) {
        this.f9723n = mode;
        p();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackDrawable(Drawable drawable) {
        this.f9716f = drawable;
        p();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackTintList(ColorStateList colorStateList) {
        this.f9721l = colorStateList;
        p();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackTintMode(PorterDuff.Mode mode) {
        super.setTrackTintMode(mode);
        p();
    }

    public MaterialSwitch(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialSwitchStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialSwitch(Context context, AttributeSet attributeSet, int i10) {
        int i11 = f9711q;
        super(m4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f9715c = -1;
        Context context2 = getContext();
        this.f9713a = super.getThumbDrawable();
        this.f9718i = super.getThumbTintList();
        super.setThumbTintList(null);
        this.f9716f = super.getTrackDrawable();
        this.f9721l = super.getTrackTintList();
        super.setTrackTintList(null);
        h0 h0VarObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, R$styleable.MaterialSwitch, i10, i11, new int[0]);
        this.f9714b = h0VarObtainTintedStyledAttributes.g(R$styleable.MaterialSwitch_thumbIcon);
        this.f9715c = h0VarObtainTintedStyledAttributes.f(R$styleable.MaterialSwitch_thumbIconSize, -1);
        this.f9719j = h0VarObtainTintedStyledAttributes.c(R$styleable.MaterialSwitch_thumbIconTint);
        int iK = h0VarObtainTintedStyledAttributes.k(R$styleable.MaterialSwitch_thumbIconTintMode, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.f9720k = ViewUtils.parseTintMode(iK, mode);
        this.f9717h = h0VarObtainTintedStyledAttributes.g(R$styleable.MaterialSwitch_trackDecoration);
        this.f9722m = h0VarObtainTintedStyledAttributes.c(R$styleable.MaterialSwitch_trackDecorationTint);
        this.f9723n = ViewUtils.parseTintMode(h0VarObtainTintedStyledAttributes.k(R$styleable.MaterialSwitch_trackDecorationTintMode, -1), mode);
        h0VarObtainTintedStyledAttributes.y();
        setEnforceSwitchWidth(false);
        o();
        p();
    }
}
