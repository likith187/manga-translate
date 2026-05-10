package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.R$attr;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;

/* JADX INFO: loaded from: classes.dex */
public final class LinearProgressIndicatorSpec extends a {

    /* JADX INFO: renamed from: h */
    public int f9851h;

    /* JADX INFO: renamed from: i */
    public int f9852i;

    /* JADX INFO: renamed from: j */
    boolean f9853j;

    /* JADX INFO: renamed from: k */
    public int f9854k;

    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.linearProgressIndicatorStyle);
    }

    @Override // com.google.android.material.progressindicator.a
    void e() {
        super.e();
        if (this.f9854k < 0) {
            throw new IllegalArgumentException("Stop indicator size must be >= 0.");
        }
        if (this.f9851h == 0) {
            if (this.f9856b > 0 && this.f9861g == 0) {
                throw new IllegalArgumentException("Rounded corners without gap are not supported in contiguous indeterminate animation.");
            }
            if (this.f9857c.length < 3) {
                throw new IllegalArgumentException("Contiguous indeterminate animation must be used with 3 or more indicator colors.");
            }
        }
    }

    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, LinearProgressIndicator.f9850s);
    }

    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R$styleable.LinearProgressIndicator, R$attr.linearProgressIndicatorStyle, LinearProgressIndicator.f9850s, new int[0]);
        this.f9851h = typedArrayObtainStyledAttributes.getInt(R$styleable.LinearProgressIndicator_indeterminateAnimationType, 1);
        this.f9852i = typedArrayObtainStyledAttributes.getInt(R$styleable.LinearProgressIndicator_indicatorDirectionLinear, 0);
        this.f9854k = Math.min(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.LinearProgressIndicator_trackStopIndicatorSize, 0), this.f9855a);
        typedArrayObtainStyledAttributes.recycle();
        e();
        this.f9853j = this.f9852i == 1;
    }
}
