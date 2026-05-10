package com.google.android.material.shape;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class a implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f10040a;

    public a(float f10) {
        this.f10040a = f10;
    }

    @Override // com.google.android.material.shape.d
    public float a(RectF rectF) {
        return this.f10040a;
    }

    public float b() {
        return this.f10040a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && this.f10040a == ((a) obj).f10040a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f10040a)});
    }
}
