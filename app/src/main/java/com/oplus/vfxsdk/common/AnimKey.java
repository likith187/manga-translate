package com.oplus.vfxsdk.common;

import android.animation.TimeInterpolator;
import androidx.annotation.Keep;
import com.coui.appcompat.tooltips.COUIToolTips;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class AnimKey implements r {
    private final float[] bezier;
    private float cacheValue;
    private String expr;
    private TimeInterpolator interpolator;
    private final String ipol;
    private final float[] spring;
    private final float time;
    private final String type;
    private float value;

    public AnimKey(float f10, float f11, String type, float f12, String ipol, float[] bezier, float[] spring, String str, TimeInterpolator timeInterpolator) {
        kotlin.jvm.internal.r.e(type, "type");
        kotlin.jvm.internal.r.e(ipol, "ipol");
        kotlin.jvm.internal.r.e(bezier, "bezier");
        kotlin.jvm.internal.r.e(spring, "spring");
        this.time = f10;
        this.value = f11;
        this.type = type;
        this.cacheValue = f12;
        this.ipol = ipol;
        this.bezier = bezier;
        this.spring = spring;
        this.expr = str;
        this.interpolator = timeInterpolator;
    }

    public final float component1() {
        return this.time;
    }

    public final float component2() {
        return this.value;
    }

    public final String component3() {
        return this.type;
    }

    public final float component4() {
        return this.cacheValue;
    }

    public final String component5() {
        return this.ipol;
    }

    public final float[] component6() {
        return this.bezier;
    }

    public final float[] component7() {
        return this.spring;
    }

    public final String component8() {
        return this.expr;
    }

    public final TimeInterpolator component9() {
        return this.interpolator;
    }

    public final AnimKey copy(float f10, float f11, String type, float f12, String ipol, float[] bezier, float[] spring, String str, TimeInterpolator timeInterpolator) {
        kotlin.jvm.internal.r.e(type, "type");
        kotlin.jvm.internal.r.e(ipol, "ipol");
        kotlin.jvm.internal.r.e(bezier, "bezier");
        kotlin.jvm.internal.r.e(spring, "spring");
        return new AnimKey(f10, f11, type, f12, ipol, bezier, spring, str, timeInterpolator);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnimKey)) {
            return false;
        }
        AnimKey animKey = (AnimKey) obj;
        return Float.compare(this.time, animKey.time) == 0 && Float.compare(this.value, animKey.value) == 0 && kotlin.jvm.internal.r.a(this.type, animKey.type) && Float.compare(this.cacheValue, animKey.cacheValue) == 0 && kotlin.jvm.internal.r.a(this.ipol, animKey.ipol) && kotlin.jvm.internal.r.a(this.bezier, animKey.bezier) && kotlin.jvm.internal.r.a(this.spring, animKey.spring) && kotlin.jvm.internal.r.a(this.expr, animKey.expr) && kotlin.jvm.internal.r.a(this.interpolator, animKey.interpolator);
    }

    public final float[] getBezier() {
        return this.bezier;
    }

    @Override // com.oplus.vfxsdk.common.r
    public float getCacheValue() {
        return this.cacheValue;
    }

    public final String getExpr() {
        return this.expr;
    }

    public final TimeInterpolator getInterpolator() {
        return this.interpolator;
    }

    public final String getIpol() {
        return this.ipol;
    }

    public final float[] getSpring() {
        return this.spring;
    }

    @Override // com.oplus.vfxsdk.common.r
    public float getTime() {
        return this.time;
    }

    public String getType() {
        return this.type;
    }

    @Override // com.oplus.vfxsdk.common.r
    public float getValue() {
        return this.value;
    }

    public int hashCode() {
        int iHashCode = ((((((((((((Float.hashCode(this.time) * 31) + Float.hashCode(this.value)) * 31) + this.type.hashCode()) * 31) + Float.hashCode(this.cacheValue)) * 31) + this.ipol.hashCode()) * 31) + Arrays.hashCode(this.bezier)) * 31) + Arrays.hashCode(this.spring)) * 31;
        String str = this.expr;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        TimeInterpolator timeInterpolator = this.interpolator;
        return iHashCode2 + (timeInterpolator != null ? timeInterpolator.hashCode() : 0);
    }

    @Override // com.oplus.vfxsdk.common.r
    public void setCacheValue(float f10) {
        this.cacheValue = f10;
    }

    public final void setExpr(String str) {
        this.expr = str;
    }

    public final void setInterpolator(TimeInterpolator timeInterpolator) {
        this.interpolator = timeInterpolator;
    }

    @Override // com.oplus.vfxsdk.common.r
    public void setValue(float f10) {
        this.value = f10;
    }

    public String toString() {
        return "AnimKey(time=" + this.time + ", value=" + this.value + ", type=" + this.type + ", cacheValue=" + this.cacheValue + ", ipol=" + this.ipol + ", bezier=" + Arrays.toString(this.bezier) + ", spring=" + Arrays.toString(this.spring) + ", expr=" + this.expr + ", interpolator=" + this.interpolator + ")";
    }

    public /* synthetic */ AnimKey(float f10, float f11, String str, float f12, String str2, float[] fArr, float[] fArr2, String str3, TimeInterpolator timeInterpolator, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, f11, str, f12, str2, fArr, fArr2, (i10 & 128) != 0 ? null : str3, (i10 & COUIToolTips.ALIGN_TOP) != 0 ? null : timeInterpolator);
    }
}
