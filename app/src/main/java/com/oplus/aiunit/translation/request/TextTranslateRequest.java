package com.oplus.aiunit.translation.request;

import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class TextTranslateRequest {
    private boolean enableLLM;
    private Map<String, ? extends Object> extend;
    private List<String> text;
    private String requestId = "";
    private String appId = "";
    private String source = "";
    private String target = "";
    private String region = "";

    public final String getAppId() {
        return this.appId;
    }

    public final Map<String, Object> getExtend() {
        return this.extend;
    }

    public final String getRegion() {
        return this.region;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final String getSource() {
        return this.source;
    }

    public final String getTarget() {
        return this.target;
    }

    public final List<String> getText() {
        return this.text;
    }

    public final void setAppId(String appId) {
        r.e(appId, "appId");
        this.appId = appId;
    }

    public final void setEnableLLM(boolean z10) {
        this.enableLLM = z10;
    }

    public final void setExtend(Map<String, ? extends Object> map) {
        this.extend = map;
    }

    public final void setRegion(String region) {
        r.e(region, "region");
        this.region = region;
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

    public final void setText(List<String> list) {
        this.text = list;
    }
}
