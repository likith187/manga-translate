package com.google.android.material.progressindicator;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f9855a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9856b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f9857c = new int[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9858d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9859e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9860f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f9861g;

    protected a(Context context, AttributeSet attributeSet, int i10, int i11) {
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R$dimen.mtrl_progress_track_thickness);
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R$styleable.BaseProgressIndicator, i10, i11, new int[0]);
        this.f9855a = i4.c.d(context, typedArrayObtainStyledAttributes, R$styleable.BaseProgressIndicator_trackThickness, dimensionPixelSize);
        this.f9856b = Math.min(i4.c.d(context, typedArrayObtainStyledAttributes, R$styleable.BaseProgressIndicator_trackCornerRadius, 0), this.f9855a / 2);
        this.f9859e = typedArrayObtainStyledAttributes.getInt(R$styleable.BaseProgressIndicator_showAnimationBehavior, 0);
        this.f9860f = typedArrayObtainStyledAttributes.getInt(R$styleable.BaseProgressIndicator_hideAnimationBehavior, 0);
        this.f9861g = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.BaseProgressIndicator_indicatorTrackGapSize, 0);
        c(context, typedArrayObtainStyledAttributes);
        d(context, typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void c(Context context, TypedArray typedArray) {
        if (!typedArray.hasValue(R$styleable.BaseProgressIndicator_indicatorColor)) {
            this.f9857c = new int[]{b4.a.b(context, R$attr.colorPrimary, -1)};
            return;
        }
        if (typedArray.peekValue(R$styleable.BaseProgressIndicator_indicatorColor).type != 1) {
            this.f9857c = new int[]{typedArray.getColor(R$styleable.BaseProgressIndicator_indicatorColor, -1)};
            return;
        }
        int[] intArray = context.getResources().getIntArray(typedArray.getResourceId(R$styleable.BaseProgressIndicator_indicatorColor, -1));
        this.f9857c = intArray;
        if (intArray.length == 0) {
            throw new IllegalArgumentException("indicatorColors cannot be empty when indicatorColor is not used.");
        }
    }

    private void d(Context context, TypedArray typedArray) {
        if (typedArray.hasValue(R$styleable.BaseProgressIndicator_trackColor)) {
            this.f9858d = typedArray.getColor(R$styleable.BaseProgressIndicator_trackColor, -1);
            return;
        }
        this.f9858d = this.f9857c[0];
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R.attr.disabledAlpha});
        float f10 = typedArrayObtainStyledAttributes.getFloat(0, 0.2f);
        typedArrayObtainStyledAttributes.recycle();
        this.f9858d = b4.a.a(this.f9858d, (int) (f10 * 255.0f));
    }

    public boolean a() {
        return this.f9860f != 0;
    }

    public boolean b() {
        return this.f9859e != 0;
    }

    void e() {
        if (this.f9861g < 0) {
            throw new IllegalArgumentException("indicatorTrackGapSize must be >= 0.");
        }
    }
}
