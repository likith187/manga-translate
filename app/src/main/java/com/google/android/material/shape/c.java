package com.google.android.material.shape;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class c implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f10043a;

    public c(float f10) {
        this.f10043a = f10;
    }

    public static c b(a aVar) {
        return new c(aVar.b());
    }

    private static float c(RectF rectF) {
        return Math.min(rectF.width() / 2.0f, rectF.height() / 2.0f);
    }

    @Override // com.google.android.material.shape.d
    public float a(RectF rectF) {
        return Math.min(this.f10043a, c(rectF));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && this.f10043a == ((c) obj).f10043a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f10043a)});
    }
}
