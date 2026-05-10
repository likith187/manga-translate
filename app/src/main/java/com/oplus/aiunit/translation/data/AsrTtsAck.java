package com.oplus.aiunit.translation.data;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class AsrTtsAck {
    private String dataType;
    private Map<String, ? extends Object> extend;
    private String format;
    private long frameNo;
    private String msgId;
    private String payload;
    private String requestId;
    private Integer sampleRate = 0;
    private Long duration = 0L;

    public final String getDataType() {
        return this.dataType;
    }

    public final Long getDuration() {
        return this.duration;
    }

    public final Map<String, Object> getExtend() {
        return this.extend;
    }

    public final String getFormat() {
        return this.format;
    }

    public final long getFrameNo() {
        return this.frameNo;
    }

    public final String getMsgId() {
        return this.msgId;
    }

    public final String getPayload() {
        return this.payload;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final Integer getSampleRate() {
        return this.sampleRate;
    }

    public final void setDataType(String str) {
        this.dataType = str;
    }

    public final void setDuration(Long l10) {
        this.duration = l10;
    }

    public final void setExtend(Map<String, ? extends Object> map) {
        this.extend = map;
    }

    public final void setFormat(String str) {
        this.format = str;
    }

    public final void setFrameNo(long j10) {
        this.frameNo = j10;
    }

    public final void setMsgId(String str) {
        this.msgId = str;
    }

    public final void setPayload(String str) {
        this.payload = str;
    }

    public final void setRequestId(String str) {
        this.requestId = str;
    }

    public final void setSampleRate(Integer num) {
        this.sampleRate = num;
    }
}
