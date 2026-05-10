package com.google.android.material.shape;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class b implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f10041a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f10042b;

    public b(float f10, d dVar) {
        while (dVar instanceof b) {
            dVar = ((b) dVar).f10041a;
            f10 += ((b) dVar).f10042b;
        }
        this.f10041a = dVar;
        this.f10042b = f10;
    }

    @Override // com.google.android.material.shape.d
    public float a(RectF rectF) {
        return Math.max(0.0f, this.f10041a.a(rectF) + this.f10042b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f10041a.equals(bVar.f10041a) && this.f10042b == bVar.f10042b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f10041a, Float.valueOf(this.f10042b)});
    }
}
