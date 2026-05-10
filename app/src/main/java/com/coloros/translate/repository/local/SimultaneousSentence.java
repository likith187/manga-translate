package com.coloros.translate.repository.local;

import androidx.annotation.Keep;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class SimultaneousSentence {
    public static final a Companion = new a(null);
    public static final String TABLE_NAME = "simultaneousSentence";
    private long endTimeOffset;
    private long id;
    private long msgId;
    private long noteId;
    private long startTimeOffset;
    private String recordId = "";
    private String fromText = "";
    private String toText = "";
    private String fromLanguage = "";
    private String toLanguage = "";
    private long timestamp = System.currentTimeMillis();

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final long getEndTimeOffset() {
        return this.endTimeOffset;
    }

    public final String getFromLanguage() {
        return this.fromLanguage;
    }

    public final String getFromText() {
        return this.fromText;
    }

    public final long getId() {
        return this.id;
    }

    public final long getMsgId() {
        return this.msgId;
    }

    public final long getNoteId() {
        return this.noteId;
    }

    public final String getRecordId() {
        return this.recordId;
    }

    public final long getStartTimeOffset() {
        return this.startTimeOffset;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public final String getToLanguage() {
        return this.toLanguage;
    }

    public final String getToText() {
        return this.toText;
    }

    public final void setEndTimeOffset(long j10) {
        this.endTimeOffset = j10;
    }

    public final void setFromLanguage(String str) {
        r.e(str, "<set-?>");
        this.fromLanguage = str;
    }

    public final void setFromText(String str) {
        r.e(str, "<set-?>");
        this.fromText = str;
    }

    public final void setId(long j10) {
        this.id = j10;
    }

    public final void setMsgId(long j10) {
        this.msgId = j10;
    }

    public final void setNoteId(long j10) {
        this.noteId = j10;
    }

    public final void setRecordId(String str) {
        r.e(str, "<set-?>");
        this.recordId = str;
    }

    public final void setStartTimeOffset(long j10) {
        this.startTimeOffset = j10;
    }

    public final void setTimestamp(long j10) {
        this.timestamp = j10;
    }

    public final void setToLanguage(String str) {
        r.e(str, "<set-?>");
        this.toLanguage = str;
    }

    public final void setToText(String str) {
        r.e(str, "<set-?>");
        this.toText = str;
    }
}
