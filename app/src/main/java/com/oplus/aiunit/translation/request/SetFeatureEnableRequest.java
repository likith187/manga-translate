package com.oplus.aiunit.translation.request;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class SetFeatureEnableRequest {
    private Boolean enableMt;
    private Boolean enableTts;
    private String expandParams;
    private String speed;
    private String voiceName;
    private String pkgName = "";
    private String hashcode = "";
    private String channel = "";

    public final String getChannel() {
        return this.channel;
    }

    public final Boolean getEnableMt() {
        return this.enableMt;
    }

    public final Boolean getEnableTts() {
        return this.enableTts;
    }

    public final String getExpandParams() {
        return this.expandParams;
    }

    public final String getHashcode() {
        return this.hashcode;
    }

    public final String getPkgName() {
        return this.pkgName;
    }

    public final String getSpeed() {
        return this.speed;
    }

    public final String getVoiceName() {
        return this.voiceName;
    }

    public final void setChannel(String str) {
        r.e(str, "<set-?>");
        this.channel = str;
    }

    public final void setEnableMt(Boolean bool) {
        this.enableMt = bool;
    }

    public final void setEnableTts(Boolean bool) {
        this.enableTts = bool;
    }

    public final void setExpandParams(String str) {
        this.expandParams = str;
    }

    public final void setHashcode(String str) {
        r.e(str, "<set-?>");
        this.hashcode = str;
    }

    public final void setPkgName(String str) {
        r.e(str, "<set-?>");
        this.pkgName = str;
    }

    public final void setSpeed(String str) {
        this.speed = str;
    }

    public final void setVoiceName(String str) {
        this.voiceName = str;
    }
}
