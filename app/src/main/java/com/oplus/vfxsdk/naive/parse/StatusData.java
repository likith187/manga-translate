package com.oplus.vfxsdk.naive.parse;

import androidx.annotation.Keep;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class StatusData {
    private final Object anim;
    private final Object value;

    public StatusData(Object value, Object anim) {
        r.e(value, "value");
        r.e(anim, "anim");
        this.value = value;
        this.anim = anim;
    }

    public static /* synthetic */ StatusData copy$default(StatusData statusData, Object obj, Object obj2, int i10, Object obj3) {
        if ((i10 & 1) != 0) {
            obj = statusData.value;
        }
        if ((i10 & 2) != 0) {
            obj2 = statusData.anim;
        }
        return statusData.copy(obj, obj2);
    }

    public final Object component1() {
        return this.value;
    }

    public final Object component2() {
        return this.anim;
    }

    public final StatusData copy(Object value, Object anim) {
        r.e(value, "value");
        r.e(anim, "anim");
        return new StatusData(value, anim);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StatusData)) {
            return false;
        }
        StatusData statusData = (StatusData) obj;
        return r.a(this.value, statusData.value) && r.a(this.anim, statusData.anim);
    }

    public final Object getAnim() {
        return this.anim;
    }

    public final Object getValue() {
        return this.value;
    }

    public int hashCode() {
        return (this.value.hashCode() * 31) + this.anim.hashCode();
    }

    public String toString() {
        return "StatusData(value=" + this.value + ", anim=" + this.anim + ")";
    }
}
