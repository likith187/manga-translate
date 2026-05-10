package com.google.android.material.divider;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.m0;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.shape.i;
import i4.c;
import r.a;

/* JADX INFO: loaded from: classes.dex */
public class MaterialDivider extends View {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f9553i = R$style.Widget_MaterialComponents_MaterialDivider;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f9554a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f9555b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f9556c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9557f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f9558h;

    public MaterialDivider(Context context) {
        this(context, null);
    }

    public int getDividerColor() {
        return this.f9556c;
    }

    public int getDividerInsetEnd() {
        return this.f9558h;
    }

    public int getDividerInsetStart() {
        return this.f9557f;
    }

    public int getDividerThickness() {
        return this.f9555b;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int width;
        int i10;
        super.onDraw(canvas);
        boolean z10 = m0.v(this) == 1;
        int i11 = z10 ? this.f9558h : this.f9557f;
        if (z10) {
            width = getWidth();
            i10 = this.f9557f;
        } else {
            width = getWidth();
            i10 = this.f9558h;
        }
        this.f9554a.setBounds(i11, 0, width - i10, getBottom() - getTop());
        this.f9554a.draw(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i11);
        int measuredHeight = getMeasuredHeight();
        if (mode == Integer.MIN_VALUE || mode == 0) {
            int i12 = this.f9555b;
            if (i12 > 0 && measuredHeight != i12) {
                measuredHeight = i12;
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
    }

    public void setDividerColor(int i10) {
        if (this.f9556c != i10) {
            this.f9556c = i10;
            this.f9554a.setFillColor(ColorStateList.valueOf(i10));
            invalidate();
        }
    }

    public void setDividerColorResource(int i10) {
        setDividerColor(a.c(getContext(), i10));
    }

    public void setDividerInsetEnd(int i10) {
        this.f9558h = i10;
    }

    public void setDividerInsetEndResource(int i10) {
        setDividerInsetEnd(getContext().getResources().getDimensionPixelOffset(i10));
    }

    public void setDividerInsetStart(int i10) {
        this.f9557f = i10;
    }

    public void setDividerInsetStartResource(int i10) {
        setDividerInsetStart(getContext().getResources().getDimensionPixelOffset(i10));
    }

    public void setDividerThickness(int i10) {
        if (this.f9555b != i10) {
            this.f9555b = i10;
            requestLayout();
        }
    }

    public void setDividerThicknessResource(int i10) {
        setDividerThickness(getContext().getResources().getDimensionPixelSize(i10));
    }

    public MaterialDivider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialDividerStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialDivider(Context context, AttributeSet attributeSet, int i10) {
        int i11 = f9553i;
        super(m4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        Context context2 = getContext();
        this.f9554a = new i();
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R$styleable.MaterialDivider, i10, i11, new int[0]);
        this.f9555b = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.MaterialDivider_dividerThickness, getResources().getDimensionPixelSize(R$dimen.material_divider_thickness));
        this.f9557f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.MaterialDivider_dividerInsetStart, 0);
        this.f9558h = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.MaterialDivider_dividerInsetEnd, 0);
        setDividerColor(c.a(context2, typedArrayObtainStyledAttributes, R$styleable.MaterialDivider_dividerColor).getDefaultColor());
        typedArrayObtainStyledAttributes.recycle();
    }
}
