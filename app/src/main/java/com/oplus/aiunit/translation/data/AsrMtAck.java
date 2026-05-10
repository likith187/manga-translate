package com.oplus.aiunit.translation.data;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class AsrMtAck {
    private Map<String, ? extends Object> extend;
    private String msgId;
    private String recordId;
    private String requestId;
    private String srcLanguage;
    private String srcText;
    private String targetLanguge;
    private String targetText;
    private String type;

    public final Map<String, Object> getExtend() {
        return this.extend;
    }

    public final String getMsgId() {
        return this.msgId;
    }

    public final String getRecordId() {
        return this.recordId;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final String getSrcLanguage() {
        return this.srcLanguage;
    }

    public final String getSrcText() {
        return this.srcText;
    }

    public final String getTargetLanguge() {
        return this.targetLanguge;
    }

    public final String getTargetText() {
        return this.targetText;
    }

    public final String getType() {
        return this.type;
    }

    public final void setExtend(Map<String, ? extends Object> map) {
        this.extend = map;
    }

    public final void setMsgId(String str) {
        this.msgId = str;
    }

    public final void setRecordId(String str) {
        this.recordId = str;
    }

    public final void setRequestId(String str) {
        this.requestId = str;
    }

    public final void setSrcLanguage(String str) {
        this.srcLanguage = str;
    }

    public final void setSrcText(String str) {
        this.srcText = str;
    }

    public final void setTargetLanguge(String str) {
        this.targetLanguge = str;
    }

    public final void setTargetText(String str) {
        this.targetText = str;
    }

    public final void setType(String str) {
        this.type = str;
    }
}
