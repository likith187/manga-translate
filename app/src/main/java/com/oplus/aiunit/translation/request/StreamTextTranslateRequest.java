package com.oplus.aiunit.translation.request;

import java.util.Map;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class StreamTextTranslateRequest {
    private Map<String, ? extends Object> extend;
    private String requestId = "";
    private String appId = "";
    private String text = "";
    private String source = "";
    private String target = "";

    public final String getAppId() {
        return this.appId;
    }

    public final Map<String, Object> getExtend() {
        return this.extend;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final String getTarget() {
        return this.target;
    }

    public final String getText() {
        return this.text;
    }

    public final void setAppId(String appId) {
        r.e(appId, "appId");
        this.appId = appId;
    }

    public final void setExtend(Map<String, ? extends Object> map) {
        this.extend = map;
    }

    public final void setRequestId(String requestId) {
        r.e(requestId, "requestId");
        this.requestId = requestId;
    }

    public final void setSource(String source) {
        r.e(source, "source");
        this.source = source;
    }

    public final void setTarget(String target) {
        r.e(target, "target");
        this.target = target;
    }

    public final void setText(String text) {
        r.e(text, "text");
        this.text = text;
    }
}
