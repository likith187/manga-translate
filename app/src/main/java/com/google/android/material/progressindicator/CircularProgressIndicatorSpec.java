package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;

/* JADX INFO: loaded from: classes.dex */
public final class CircularProgressIndicatorSpec extends a {

    /* JADX INFO: renamed from: h */
    public int f9847h;

    /* JADX INFO: renamed from: i */
    public int f9848i;

    /* JADX INFO: renamed from: j */
    public int f9849j;

    public CircularProgressIndicatorSpec(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.circularProgressIndicatorStyle);
    }

    public CircularProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, CircularProgressIndicator.f9846s);
    }

    public CircularProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R$dimen.mtrl_progress_circular_size_medium);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R$dimen.mtrl_progress_circular_inset_medium);
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R$styleable.CircularProgressIndicator, i10, i11, new int[0]);
        this.f9847h = Math.max(i4.c.d(context, typedArrayObtainStyledAttributes, R$styleable.CircularProgressIndicator_indicatorSize, dimensionPixelSize), this.f9855a * 2);
        this.f9848i = i4.c.d(context, typedArrayObtainStyledAttributes, R$styleable.CircularProgressIndicator_indicatorInset, dimensionPixelSize2);
        this.f9849j = typedArrayObtainStyledAttributes.getInt(R$styleable.CircularProgressIndicator_indicatorDirectionCircular, 0);
        typedArrayObtainStyledAttributes.recycle();
        e();
    }
}
