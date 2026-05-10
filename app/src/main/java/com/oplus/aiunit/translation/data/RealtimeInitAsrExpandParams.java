package com.oplus.aiunit.translation.data;

import com.google.gson.d;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class RealtimeInitAsrExpandParams {
    private String appid;
    private boolean isStartAsr;
    private AsrStartRequest startRequest;

    public final String getAppid() {
        return this.appid;
    }

    public final AsrStartRequest getStartRequest() {
        return this.startRequest;
    }

    public final boolean isStartAsr() {
        return this.isStartAsr;
    }

    public final void setAppid(String str) {
        this.appid = str;
    }

    public final void setStartAsr(boolean z10) {
        this.isStartAsr = z10;
    }

    public final void setStartRequest(AsrStartRequest asrStartRequest) {
        this.startRequest = asrStartRequest;
    }

    public final String toJsonString() {
        String strV = new d().v(this);
        r.d(strV, "toJson(...)");
        return strV;
    }
}
