package com.oplus.vfxsdk.common;

import androidx.annotation.Keep;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class AnimatorValue {
    private final AnimLine[] animLines;
    private final float currentTime;
    private final AnimLine eventLine;
    private final int id;
    private final String name;

    public AnimatorValue(int i10, String name, float f10, AnimLine[] animLines, AnimLine animLine) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(animLines, "animLines");
        this.id = i10;
        this.name = name;
        this.currentTime = f10;
        this.animLines = animLines;
        this.eventLine = animLine;
    }

    public static /* synthetic */ AnimatorValue copy$default(AnimatorValue animatorValue, int i10, String str, float f10, AnimLine[] animLineArr, AnimLine animLine, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = animatorValue.id;
        }
        if ((i11 & 2) != 0) {
            str = animatorValue.name;
        }
        String str2 = str;
        if ((i11 & 4) != 0) {
            f10 = animatorValue.currentTime;
        }
        float f11 = f10;
        if ((i11 & 8) != 0) {
            animLineArr = animatorValue.animLines;
        }
        AnimLine[] animLineArr2 = animLineArr;
        if ((i11 & 16) != 0) {
            animLine = animatorValue.eventLine;
        }
        return animatorValue.copy(i10, str2, f11, animLineArr2, animLine);
    }

    public final int component1() {
        return this.id;
    }

    public final String component2() {
        return this.name;
    }

    public final float component3() {
        return this.currentTime;
    }

    public final AnimLine[] component4() {
        return this.animLines;
    }

    public final AnimLine component5() {
        return this.eventLine;
    }

    public final AnimatorValue copy(int i10, String name, float f10, AnimLine[] animLines, AnimLine animLine) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(animLines, "animLines");
        return new AnimatorValue(i10, name, f10, animLines, animLine);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnimatorValue)) {
            return false;
        }
        AnimatorValue animatorValue = (AnimatorValue) obj;
        return this.id == animatorValue.id && kotlin.jvm.internal.r.a(this.name, animatorValue.name) && Float.compare(this.currentTime, animatorValue.currentTime) == 0 && kotlin.jvm.internal.r.a(this.animLines, animatorValue.animLines) && kotlin.jvm.internal.r.a(this.eventLine, animatorValue.eventLine);
    }

    public final AnimLine[] getAnimLines() {
        return this.animLines;
    }

    public final float getCurrentTime() {
        return this.currentTime;
    }

    public final AnimLine getEventLine() {
        return this.eventLine;
    }

    public final int getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        int iHashCode = ((((((Integer.hashCode(this.id) * 31) + this.name.hashCode()) * 31) + Float.hashCode(this.currentTime)) * 31) + Arrays.hashCode(this.animLines)) * 31;
        AnimLine animLine = this.eventLine;
        return iHashCode + (animLine == null ? 0 : animLine.hashCode());
    }

    public String toString() {
        return "AnimatorValue(id=" + this.id + ", name=" + this.name + ", currentTime=" + this.currentTime + ", animLines=" + Arrays.toString(this.animLines) + ", eventLine=" + this.eventLine + ")";
    }

    public /* synthetic */ AnimatorValue(int i10, String str, float f10, AnimLine[] animLineArr, AnimLine animLine, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, str, f10, animLineArr, (i11 & 16) != 0 ? null : animLine);
    }
}
