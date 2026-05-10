package com.oplus.aiunit.translation.request;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class EndTtsRequest {
    private String channel = "";
    private String requestId = "";

    public final String getChannel() {
        return this.channel;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final void setChannel(String channel) {
        r.e(channel, "channel");
        this.channel = channel;
    }

    public final void setRequestId(String requestId) {
        r.e(requestId, "requestId");
        this.requestId = requestId;
    }
}
