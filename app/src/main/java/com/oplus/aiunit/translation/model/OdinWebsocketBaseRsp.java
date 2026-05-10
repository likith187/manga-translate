package com.oplus.aiunit.translation.model;

import com.google.gson.i;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class OdinWebsocketBaseRsp {
    private int code;
    private i data;
    private String recordId;
    private String message = "";
    private String bizType = "";
    private String channel = "";

    public final String getBizType() {
        return this.bizType;
    }

    public final String getChannel() {
        return this.channel;
    }

    public final int getCode() {
        return this.code;
    }

    public final i getData() {
        return this.data;
    }

    public final String getMessage() {
        return this.message;
    }

    public final String getRecordId() {
        return this.recordId;
    }

    public final void setBizType(String str) {
        r.e(str, "<set-?>");
        this.bizType = str;
    }

    public final void setChannel(String str) {
        this.channel = str;
    }

    public final void setCode(int i10) {
        this.code = i10;
    }

    public final void setData(i iVar) {
        this.data = iVar;
    }

    public final void setMessage(String str) {
        r.e(str, "<set-?>");
        this.message = str;
    }

    public final void setRecordId(String str) {
        this.recordId = str;
    }

    public String toString() {
        return "AsrBaseRsp(code=" + this.code + ", messsage='" + this.message + "', bizType='" + this.bizType + "', channel='" + this.channel + "')";
    }
}
