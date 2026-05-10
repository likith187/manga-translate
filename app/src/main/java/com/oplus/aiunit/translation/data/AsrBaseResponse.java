package com.oplus.aiunit.translation.data;

import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class AsrBaseResponse {
    private String bizType;
    private String channel;
    private int code;
    private String message;
    private String recordId;

    public AsrBaseResponse(int i10, String str, String str2, String str3, String str4) {
        this.code = i10;
        this.message = str;
        this.bizType = str2;
        this.channel = str3;
        this.recordId = str4;
    }

    public final String getBizType() {
        return this.bizType;
    }

    public final String getChannel() {
        return this.channel;
    }

    public final int getCode() {
        return this.code;
    }

    public final String getMessage() {
        return this.message;
    }

    public final String getRecordId() {
        return this.recordId;
    }

    public final void setBizType(String str) {
        this.bizType = str;
    }

    public final void setChannel(String str) {
        this.channel = str;
    }

    public final void setCode(int i10) {
        this.code = i10;
    }

    public final void setMessage(String str) {
        this.message = str;
    }

    public final void setRecordId(String str) {
        this.recordId = str;
    }

    public String toString() {
        new ArrayList();
        return "AsrBaseRespone(code=" + this.code + ", messsage='" + this.message + "', bizType='" + this.bizType + "', channel='" + this.channel + "')";
    }

    public /* synthetic */ AsrBaseResponse(int i10, String str, String str2, String str3, String str4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10, str, str2, str3, str4);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AsrBaseResponse(int i10, String errorMsg) {
        this();
        r.e(errorMsg, "errorMsg");
        this.code = i10;
        this.message = errorMsg;
    }

    public AsrBaseResponse() {
        this(0, "", "", "", "");
    }
}
