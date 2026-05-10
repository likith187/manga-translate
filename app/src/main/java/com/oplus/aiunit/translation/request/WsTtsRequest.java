package com.oplus.aiunit.translation.request;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class WsTtsRequest {
    private String channel = "";
    private String requestId = "";
    private String content = "";
    private String language = "";
    private String format = "";
    private String voiceName = "";
    private String speedGrade = "";

    public final String getChannel() {
        return this.channel;
    }

    public final String getContent() {
        return this.content;
    }

    public final String getFormat() {
        return this.format;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final String getSpeedGrade() {
        return this.speedGrade;
    }

    public final String getVoiceName() {
        return this.voiceName;
    }

    public final void setChannel(String channel) {
        r.e(channel, "channel");
        this.channel = channel;
    }

    public final void setContent(String content) {
        r.e(content, "content");
        this.content = content;
    }

    public final void setFormat(String format) {
        r.e(format, "format");
        this.format = format;
    }

    public final void setLanguage(String language) {
        r.e(language, "language");
        this.language = language;
    }

    public final void setRequestId(String requestId) {
        r.e(requestId, "requestId");
        this.requestId = requestId;
    }

    public final void setSpeedGrade(String speedGrade) {
        r.e(speedGrade, "speedGrade");
        this.speedGrade = speedGrade;
    }

    public final void setVoiceName(String voiceName) {
        r.e(voiceName, "voiceName");
        this.voiceName = voiceName;
    }
}
