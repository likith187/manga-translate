package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.widget.TextView;
import androidx.core.view.m0;
import com.google.android.material.R$styleable;

/* JADX INFO: loaded from: classes.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Rect f9423a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ColorStateList f9424b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ColorStateList f9425c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ColorStateList f9426d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f9427e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.google.android.material.shape.n f9428f;

    private a(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i10, com.google.android.material.shape.n nVar, Rect rect) {
        c0.h.c(rect.left);
        c0.h.c(rect.top);
        c0.h.c(rect.right);
        c0.h.c(rect.bottom);
        this.f9423a = rect;
        this.f9424b = colorStateList2;
        this.f9425c = colorStateList;
        this.f9426d = colorStateList3;
        this.f9427e = i10;
        this.f9428f = nVar;
    }

    static a a(Context context, int i10) {
        c0.h.b(i10 != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i10, R$styleable.MaterialCalendarItem);
        Rect rect = new Rect(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.MaterialCalendarItem_android_insetLeft, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.MaterialCalendarItem_android_insetTop, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.MaterialCalendarItem_android_insetRight, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.MaterialCalendarItem_android_insetBottom, 0));
        ColorStateList colorStateListA = i4.c.a(context, typedArrayObtainStyledAttributes, R$styleable.MaterialCalendarItem_itemFillColor);
        ColorStateList colorStateListA2 = i4.c.a(context, typedArrayObtainStyledAttributes, R$styleable.MaterialCalendarItem_itemTextColor);
        ColorStateList colorStateListA3 = i4.c.a(context, typedArrayObtainStyledAttributes, R$styleable.MaterialCalendarItem_itemStrokeColor);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.MaterialCalendarItem_itemStrokeWidth, 0);
        com.google.android.material.shape.n nVarM = com.google.android.material.shape.n.b(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendarItem_itemShapeAppearance, 0), typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendarItem_itemShapeAppearanceOverlay, 0)).m();
        typedArrayObtainStyledAttributes.recycle();
        return new a(colorStateListA, colorStateListA2, colorStateListA3, dimensionPixelSize, nVarM, rect);
    }

    int b() {
        return this.f9423a.bottom;
    }

    int c() {
        return this.f9423a.top;
    }

    void d(TextView textView) {
        e(textView, null, null);
    }

    void e(TextView textView, ColorStateList colorStateList, ColorStateList colorStateList2) {
        com.google.android.material.shape.i iVar = new com.google.android.material.shape.i();
        com.google.android.material.shape.i iVar2 = new com.google.android.material.shape.i();
        iVar.setShapeAppearanceModel(this.f9428f);
        iVar2.setShapeAppearanceModel(this.f9428f);
        if (colorStateList == null) {
            colorStateList = this.f9425c;
        }
        iVar.setFillColor(colorStateList);
        iVar.setStroke(this.f9427e, this.f9426d);
        if (colorStateList2 == null) {
            colorStateList2 = this.f9424b;
        }
        textView.setTextColor(colorStateList2);
        RippleDrawable rippleDrawable = new RippleDrawable(this.f9424b.withAlpha(30), iVar, iVar2);
        Rect rect = this.f9423a;
        m0.n0(textView, new InsetDrawable((Drawable) rippleDrawable, rect.left, rect.top, rect.right, rect.bottom));
    }
}
