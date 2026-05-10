package com.oplus.vfxsdk.common;

import androidx.annotation.Keep;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class Anim {
    private final Float[] bezier;
    private final long duration;
    private final String type;
    private final String uniformName;
    private final Object value;

    public Anim(String uniformName, String type, Float[] bezier, Object value, long j10) {
        kotlin.jvm.internal.r.e(uniformName, "uniformName");
        kotlin.jvm.internal.r.e(type, "type");
        kotlin.jvm.internal.r.e(bezier, "bezier");
        kotlin.jvm.internal.r.e(value, "value");
        this.uniformName = uniformName;
        this.type = type;
        this.bezier = bezier;
        this.value = value;
        this.duration = j10;
    }

    public static /* synthetic */ Anim copy$default(Anim anim, String str, String str2, Float[] fArr, Object obj, long j10, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            str = anim.uniformName;
        }
        if ((i10 & 2) != 0) {
            str2 = anim.type;
        }
        String str3 = str2;
        if ((i10 & 4) != 0) {
            fArr = anim.bezier;
        }
        Float[] fArr2 = fArr;
        if ((i10 & 8) != 0) {
            obj = anim.value;
        }
        Object obj3 = obj;
        if ((i10 & 16) != 0) {
            j10 = anim.duration;
        }
        return anim.copy(str, str3, fArr2, obj3, j10);
    }

    public final String component1() {
        return this.uniformName;
    }

    public final String component2() {
        return this.type;
    }

    public final Float[] component3() {
        return this.bezier;
    }

    public final Object component4() {
        return this.value;
    }

    public final long component5() {
        return this.duration;
    }

    public final Anim copy(String uniformName, String type, Float[] bezier, Object value, long j10) {
        kotlin.jvm.internal.r.e(uniformName, "uniformName");
        kotlin.jvm.internal.r.e(type, "type");
        kotlin.jvm.internal.r.e(bezier, "bezier");
        kotlin.jvm.internal.r.e(value, "value");
        return new Anim(uniformName, type, bezier, value, j10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Anim)) {
            return false;
        }
        Anim anim = (Anim) obj;
        return kotlin.jvm.internal.r.a(this.uniformName, anim.uniformName) && kotlin.jvm.internal.r.a(this.type, anim.type) && kotlin.jvm.internal.r.a(this.bezier, anim.bezier) && kotlin.jvm.internal.r.a(this.value, anim.value) && this.duration == anim.duration;
    }

    public final Float[] getBezier() {
        return this.bezier;
    }

    public final long getDuration() {
        return this.duration;
    }

    public final String getType() {
        return this.type;
    }

    public final String getUniformName() {
        return this.uniformName;
    }

    public final Object getValue() {
        return this.value;
    }

    public int hashCode() {
        return (((((((this.uniformName.hashCode() * 31) + this.type.hashCode()) * 31) + Arrays.hashCode(this.bezier)) * 31) + this.value.hashCode()) * 31) + Long.hashCode(this.duration);
    }

    public String toString() {
        return "Anim(uniformName=" + this.uniformName + ", type=" + this.type + ", bezier=" + Arrays.toString(this.bezier) + ", value=" + this.value + ", duration=" + this.duration + ")";
    }
}
