package com.oplus.vfxsdk.common;

import androidx.annotation.Keep;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class UniformValue {
    private final float[] bezier;
    private final int delay;
    private final long duration;
    private final String ipol;
    private final String name;
    private final float[] spring;
    private final u type;
    private Object[] values;

    public UniformValue(String name, u type, Object[] values, int i10, long j10, String ipol, float[] bezier, float[] spring) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(type, "type");
        kotlin.jvm.internal.r.e(values, "values");
        kotlin.jvm.internal.r.e(ipol, "ipol");
        kotlin.jvm.internal.r.e(bezier, "bezier");
        kotlin.jvm.internal.r.e(spring, "spring");
        this.name = name;
        this.type = type;
        this.values = values;
        this.delay = i10;
        this.duration = j10;
        this.ipol = ipol;
        this.bezier = bezier;
        this.spring = spring;
    }

    public final String component1() {
        return this.name;
    }

    public final u component2() {
        return this.type;
    }

    public final Object[] component3() {
        return this.values;
    }

    public final int component4() {
        return this.delay;
    }

    public final long component5() {
        return this.duration;
    }

    public final String component6() {
        return this.ipol;
    }

    public final float[] component7() {
        return this.bezier;
    }

    public final float[] component8() {
        return this.spring;
    }

    public final UniformValue copy(String name, u type, Object[] values, int i10, long j10, String ipol, float[] bezier, float[] spring) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(type, "type");
        kotlin.jvm.internal.r.e(values, "values");
        kotlin.jvm.internal.r.e(ipol, "ipol");
        kotlin.jvm.internal.r.e(bezier, "bezier");
        kotlin.jvm.internal.r.e(spring, "spring");
        return new UniformValue(name, type, values, i10, j10, ipol, bezier, spring);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UniformValue)) {
            return false;
        }
        UniformValue uniformValue = (UniformValue) obj;
        return kotlin.jvm.internal.r.a(this.name, uniformValue.name) && this.type == uniformValue.type && kotlin.jvm.internal.r.a(this.values, uniformValue.values) && this.delay == uniformValue.delay && this.duration == uniformValue.duration && kotlin.jvm.internal.r.a(this.ipol, uniformValue.ipol) && kotlin.jvm.internal.r.a(this.bezier, uniformValue.bezier) && kotlin.jvm.internal.r.a(this.spring, uniformValue.spring);
    }

    public final float[] getBezier() {
        return this.bezier;
    }

    public final int getDelay() {
        return this.delay;
    }

    public final long getDuration() {
        return this.duration;
    }

    public final String getIpol() {
        return this.ipol;
    }

    public final String getName() {
        return this.name;
    }

    public final float[] getSpring() {
        return this.spring;
    }

    public final u getType() {
        return this.type;
    }

    public final Object[] getValues() {
        return this.values;
    }

    public int hashCode() {
        return (((((((((((((this.name.hashCode() * 31) + this.type.hashCode()) * 31) + Arrays.hashCode(this.values)) * 31) + Integer.hashCode(this.delay)) * 31) + Long.hashCode(this.duration)) * 31) + this.ipol.hashCode()) * 31) + Arrays.hashCode(this.bezier)) * 31) + Arrays.hashCode(this.spring);
    }

    public final void setValues(Object[] objArr) {
        kotlin.jvm.internal.r.e(objArr, "<set-?>");
        this.values = objArr;
    }

    public String toString() {
        return "UniformValue(name=" + this.name + ", type=" + this.type + ", values=" + Arrays.toString(this.values) + ", delay=" + this.delay + ", duration=" + this.duration + ", ipol=" + this.ipol + ", bezier=" + Arrays.toString(this.bezier) + ", spring=" + Arrays.toString(this.spring) + ")";
    }

    public /* synthetic */ UniformValue(String str, u uVar, Object[] objArr, int i10, long j10, String str2, float[] fArr, float[] fArr2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, uVar, objArr, (i11 & 8) != 0 ? 0 : i10, (i11 & 16) != 0 ? 400L : j10, str2, (i11 & 64) != 0 ? m.b() : fArr, (i11 & 128) != 0 ? m.c() : fArr2);
    }
}
