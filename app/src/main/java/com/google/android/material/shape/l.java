package com.google.android.material.shape;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class l implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f10073a;

    public l(float f10) {
        this.f10073a = f10;
    }

    private static float b(RectF rectF) {
        return Math.min(rectF.width(), rectF.height());
    }

    @Override // com.google.android.material.shape.d
    public float a(RectF rectF) {
        return this.f10073a * b(rectF);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof l) && this.f10073a == ((l) obj).f10073a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f10073a)});
    }
}
