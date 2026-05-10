package com.oplus.aiunit.translation.request;

import java.util.Map;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class ImgTransConfigRequest {
    private Map<String, ? extends Object> extend;
    private String requestId = "";

    public final Map<String, Object> getExtend() {
        return this.extend;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final void setExtend(Map<String, ? extends Object> map) {
        this.extend = map;
    }

    public final void setRequestId(String requestId) {
        r.e(requestId, "requestId");
        this.requestId = requestId;
    }
}
