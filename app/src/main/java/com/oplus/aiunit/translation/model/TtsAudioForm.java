package com.oplus.aiunit.translation.model;

/* JADX INFO: loaded from: classes2.dex */
public final class TtsAudioForm {
    private int bitDepth;
    private String format;
    private String requestId;
    private int sample;

    public final int getBitDepth() {
        return this.bitDepth;
    }

    public final String getFormat() {
        return this.format;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final int getSample() {
        return this.sample;
    }

    public final void setBitDepth(int i10) {
        this.bitDepth = i10;
    }

    public final void setFormat(String str) {
        this.format = str;
    }

    public final void setRequestId(String str) {
        this.requestId = str;
    }

    public final void setSample(int i10) {
        this.sample = i10;
    }

    public String toString() {
        return "TtsAudioForm(bitDepth=" + this.bitDepth + ", format=" + this.format + ", sample=" + this.sample + ", requestId=" + this.requestId + ')';
    }
}
