package com.google.android.material.internal;

import android.animation.TimeInterpolator;

/* JADX INFO: loaded from: classes.dex */
public class ReversableAnimatedValueInterpolator implements TimeInterpolator {
    private final TimeInterpolator sourceInterpolator;

    public ReversableAnimatedValueInterpolator(TimeInterpolator timeInterpolator) {
        this.sourceInterpolator = timeInterpolator;
    }

    public static TimeInterpolator of(boolean z10, TimeInterpolator timeInterpolator) {
        return z10 ? timeInterpolator : new ReversableAnimatedValueInterpolator(timeInterpolator);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f10) {
        return 1.0f - this.sourceInterpolator.getInterpolation(f10);
    }
}
