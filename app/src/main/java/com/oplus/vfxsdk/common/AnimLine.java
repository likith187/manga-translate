package com.oplus.vfxsdk.common;

import androidx.annotation.Keep;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class AnimLine {
    private final r[] animKeys;
    private o channelData;
    private final int index;
    private final String key;
    private final float lastTime;
    private final String name;
    private final String nodeId;
    private e8.d pop;
    private final u type;
    private e8.e update;

    public AnimLine(String nodeId, String key, String name, u type, int i10, float f10, r[] animKeys, o oVar) {
        kotlin.jvm.internal.r.e(nodeId, "nodeId");
        kotlin.jvm.internal.r.e(key, "key");
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(type, "type");
        kotlin.jvm.internal.r.e(animKeys, "animKeys");
        this.nodeId = nodeId;
        this.key = key;
        this.name = name;
        this.type = type;
        this.index = i10;
        this.lastTime = f10;
        this.animKeys = animKeys;
        this.channelData = oVar;
    }

    public final String component1() {
        return this.nodeId;
    }

    public final String component2() {
        return this.key;
    }

    public final String component3() {
        return this.name;
    }

    public final u component4() {
        return this.type;
    }

    public final int component5() {
        return this.index;
    }

    public final float component6() {
        return this.lastTime;
    }

    public final r[] component7() {
        return this.animKeys;
    }

    public final o component8() {
        return this.channelData;
    }

    public final AnimLine copy(String nodeId, String key, String name, u type, int i10, float f10, r[] animKeys, o oVar) {
        kotlin.jvm.internal.r.e(nodeId, "nodeId");
        kotlin.jvm.internal.r.e(key, "key");
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(type, "type");
        kotlin.jvm.internal.r.e(animKeys, "animKeys");
        return new AnimLine(nodeId, key, name, type, i10, f10, animKeys, oVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnimLine)) {
            return false;
        }
        AnimLine animLine = (AnimLine) obj;
        return kotlin.jvm.internal.r.a(this.nodeId, animLine.nodeId) && kotlin.jvm.internal.r.a(this.key, animLine.key) && kotlin.jvm.internal.r.a(this.name, animLine.name) && this.type == animLine.type && this.index == animLine.index && Float.compare(this.lastTime, animLine.lastTime) == 0 && kotlin.jvm.internal.r.a(this.animKeys, animLine.animKeys) && kotlin.jvm.internal.r.a(this.channelData, animLine.channelData);
    }

    public final r[] getAnimKeys() {
        return this.animKeys;
    }

    public final o getChannelData() {
        return this.channelData;
    }

    public final int getIndex() {
        return this.index;
    }

    public final String getKey() {
        return this.key;
    }

    public final float getLastTime() {
        return this.lastTime;
    }

    public final String getName() {
        return this.name;
    }

    public final String getNodeId() {
        return this.nodeId;
    }

    public final e8.d getPop() {
        return this.pop;
    }

    public final u getType() {
        return this.type;
    }

    public final e8.e getUpdate() {
        return this.update;
    }

    public int hashCode() {
        int iHashCode = ((((((((((((this.nodeId.hashCode() * 31) + this.key.hashCode()) * 31) + this.name.hashCode()) * 31) + this.type.hashCode()) * 31) + Integer.hashCode(this.index)) * 31) + Float.hashCode(this.lastTime)) * 31) + Arrays.hashCode(this.animKeys)) * 31;
        o oVar = this.channelData;
        return iHashCode + (oVar == null ? 0 : oVar.hashCode());
    }

    public final void setChannelData(o oVar) {
        this.channelData = oVar;
    }

    public final void setPop(e8.d dVar) {
        this.pop = dVar;
    }

    public final void setUpdate(e8.e eVar) {
        this.update = eVar;
    }

    public String toString() {
        return "AnimLine(nodeId=" + this.nodeId + ", key=" + this.key + ", name=" + this.name + ", type=" + this.type + ", index=" + this.index + ", lastTime=" + this.lastTime + ", animKeys=" + Arrays.toString(this.animKeys) + ", channelData=" + this.channelData + ")";
    }
}
