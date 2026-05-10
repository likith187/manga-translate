package com.oplus.aiunit.translation.data;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class AsrAudioAck {
    private Integer endOffset;
    private Map<String, ? extends Object> extend;
    private String lid;
    private String msgId;
    private String recordId;
    private String requestId;
    private Integer startOffset;
    private String text;
    private String type;

    public final Integer getEndOffset() {
        return this.endOffset;
    }

    public final Map<String, Object> getExtend() {
        return this.extend;
    }

    public final String getLid() {
        return this.lid;
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

    public final Integer getStartOffset() {
        return this.startOffset;
    }

    public final String getText() {
        return this.text;
    }

    public final String getType() {
        return this.type;
    }

    public final void setEndOffset(Integer num) {
        this.endOffset = num;
    }

    public final void setExtend(Map<String, ? extends Object> map) {
        this.extend = map;
    }

    public final void setLid(String str) {
        this.lid = str;
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

    public final void setStartOffset(Integer num) {
        this.startOffset = num;
    }

    public final void setText(String str) {
        this.text = str;
    }

    public final void setType(String str) {
        this.type = str;
    }
}
