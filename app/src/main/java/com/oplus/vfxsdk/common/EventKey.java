package com.oplus.vfxsdk.common;

import androidx.annotation.Keep;
import com.coui.appcompat.tooltips.COUIToolTips;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class EventKey implements r {
    private final String action;
    private float cacheValue;
    private final String custom;
    private final String eventType;
    private final Integer[] linkIds;
    private final String name;
    private final float time;
    private final String type;
    private float value;

    public EventKey(float f10, String type, float f11, float f12, String eventType, String str, String str2, Integer[] numArr, String str3) {
        kotlin.jvm.internal.r.e(type, "type");
        kotlin.jvm.internal.r.e(eventType, "eventType");
        this.time = f10;
        this.type = type;
        this.value = f11;
        this.cacheValue = f12;
        this.eventType = eventType;
        this.action = str;
        this.name = str2;
        this.linkIds = numArr;
        this.custom = str3;
    }

    public final float component1() {
        return this.time;
    }

    public final String component2() {
        return this.type;
    }

    public final float component3() {
        return this.value;
    }

    public final float component4() {
        return this.cacheValue;
    }

    public final String component5() {
        return this.eventType;
    }

    public final String component6() {
        return this.action;
    }

    public final String component7() {
        return this.name;
    }

    public final Integer[] component8() {
        return this.linkIds;
    }

    public final String component9() {
        return this.custom;
    }

    public final EventKey copy(float f10, String type, float f11, float f12, String eventType, String str, String str2, Integer[] numArr, String str3) {
        kotlin.jvm.internal.r.e(type, "type");
        kotlin.jvm.internal.r.e(eventType, "eventType");
        return new EventKey(f10, type, f11, f12, eventType, str, str2, numArr, str3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EventKey)) {
            return false;
        }
        EventKey eventKey = (EventKey) obj;
        return Float.compare(this.time, eventKey.time) == 0 && kotlin.jvm.internal.r.a(this.type, eventKey.type) && Float.compare(this.value, eventKey.value) == 0 && Float.compare(this.cacheValue, eventKey.cacheValue) == 0 && kotlin.jvm.internal.r.a(this.eventType, eventKey.eventType) && kotlin.jvm.internal.r.a(this.action, eventKey.action) && kotlin.jvm.internal.r.a(this.name, eventKey.name) && kotlin.jvm.internal.r.a(this.linkIds, eventKey.linkIds) && kotlin.jvm.internal.r.a(this.custom, eventKey.custom);
    }

    public final String getAction() {
        return this.action;
    }

    @Override // com.oplus.vfxsdk.common.r
    public float getCacheValue() {
        return this.cacheValue;
    }

    public final String getCustom() {
        return this.custom;
    }

    public final String getEventType() {
        return this.eventType;
    }

    public final Integer[] getLinkIds() {
        return this.linkIds;
    }

    public final String getName() {
        return this.name;
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
        int iHashCode = ((((((((Float.hashCode(this.time) * 31) + this.type.hashCode()) * 31) + Float.hashCode(this.value)) * 31) + Float.hashCode(this.cacheValue)) * 31) + this.eventType.hashCode()) * 31;
        String str = this.action;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.name;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer[] numArr = this.linkIds;
        int iHashCode4 = (iHashCode3 + (numArr == null ? 0 : Arrays.hashCode(numArr))) * 31;
        String str3 = this.custom;
        return iHashCode4 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // com.oplus.vfxsdk.common.r
    public void setCacheValue(float f10) {
        this.cacheValue = f10;
    }

    @Override // com.oplus.vfxsdk.common.r
    public void setValue(float f10) {
        this.value = f10;
    }

    public String toString() {
        return "EventKey(time=" + this.time + ", type=" + this.type + ", value=" + this.value + ", cacheValue=" + this.cacheValue + ", eventType=" + this.eventType + ", action=" + this.action + ", name=" + this.name + ", linkIds=" + Arrays.toString(this.linkIds) + ", custom=" + this.custom + ")";
    }

    public /* synthetic */ EventKey(float f10, String str, float f11, float f12, String str2, String str3, String str4, Integer[] numArr, String str5, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, str, f11, f12, str2, (i10 & 32) != 0 ? null : str3, (i10 & 64) != 0 ? null : str4, (i10 & 128) != 0 ? null : numArr, (i10 & COUIToolTips.ALIGN_TOP) != 0 ? null : str5);
    }
}
