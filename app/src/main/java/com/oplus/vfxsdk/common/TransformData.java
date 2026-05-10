package com.oplus.vfxsdk.common;

import androidx.annotation.Keep;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class TransformData {
    private final Float[] layout;
    private final String[] layout_expr;
    private final Float[] rotate;
    private final Float[] scale;

    public TransformData(Float[] layout, String[] strArr, Float[] scale, Float[] rotate) {
        kotlin.jvm.internal.r.e(layout, "layout");
        kotlin.jvm.internal.r.e(scale, "scale");
        kotlin.jvm.internal.r.e(rotate, "rotate");
        this.layout = layout;
        this.layout_expr = strArr;
        this.scale = scale;
        this.rotate = rotate;
    }

    public static /* synthetic */ TransformData copy$default(TransformData transformData, Float[] fArr, String[] strArr, Float[] fArr2, Float[] fArr3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            fArr = transformData.layout;
        }
        if ((i10 & 2) != 0) {
            strArr = transformData.layout_expr;
        }
        if ((i10 & 4) != 0) {
            fArr2 = transformData.scale;
        }
        if ((i10 & 8) != 0) {
            fArr3 = transformData.rotate;
        }
        return transformData.copy(fArr, strArr, fArr2, fArr3);
    }

    public final Float[] component1() {
        return this.layout;
    }

    public final String[] component2() {
        return this.layout_expr;
    }

    public final Float[] component3() {
        return this.scale;
    }

    public final Float[] component4() {
        return this.rotate;
    }

    public final TransformData copy(Float[] layout, String[] strArr, Float[] scale, Float[] rotate) {
        kotlin.jvm.internal.r.e(layout, "layout");
        kotlin.jvm.internal.r.e(scale, "scale");
        kotlin.jvm.internal.r.e(rotate, "rotate");
        return new TransformData(layout, strArr, scale, rotate);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TransformData)) {
            return false;
        }
        TransformData transformData = (TransformData) obj;
        return kotlin.jvm.internal.r.a(this.layout, transformData.layout) && kotlin.jvm.internal.r.a(this.layout_expr, transformData.layout_expr) && kotlin.jvm.internal.r.a(this.scale, transformData.scale) && kotlin.jvm.internal.r.a(this.rotate, transformData.rotate);
    }

    public final Float[] getLayout() {
        return this.layout;
    }

    public final String[] getLayout_expr() {
        return this.layout_expr;
    }

    public final Float[] getRotate() {
        return this.rotate;
    }

    public final Float[] getScale() {
        return this.scale;
    }

    public int hashCode() {
        int iHashCode = Arrays.hashCode(this.layout) * 31;
        String[] strArr = this.layout_expr;
        return ((((iHashCode + (strArr == null ? 0 : Arrays.hashCode(strArr))) * 31) + Arrays.hashCode(this.scale)) * 31) + Arrays.hashCode(this.rotate);
    }

    public String toString() {
        return "TransformData(layout=" + Arrays.toString(this.layout) + ", layout_expr=" + Arrays.toString(this.layout_expr) + ", scale=" + Arrays.toString(this.scale) + ", rotate=" + Arrays.toString(this.rotate) + ")";
    }
}
