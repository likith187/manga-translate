package com.coloros.translate.repository.local;

import androidx.annotation.Keep;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class SimultaneousHistory {
    public static final a Companion = new a(null);
    public static final String TABLE_NAME = "simultaneousHistory";
    private long audioTime;
    private long id;
    private long noteId;
    private long timestamp = System.currentTimeMillis();
    private String noteTitle = "";
    private String audioFile = "";
    private String simpleText = "";

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final String getAudioFile() {
        return this.audioFile;
    }

    public final long getAudioTime() {
        return this.audioTime;
    }

    public final long getId() {
        return this.id;
    }

    public final long getNoteId() {
        return this.noteId;
    }

    public final String getNoteTitle() {
        return this.noteTitle;
    }

    public final String getSimpleText() {
        return this.simpleText;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public final void setAudioFile(String str) {
        r.e(str, "<set-?>");
        this.audioFile = str;
    }

    public final void setAudioTime(long j10) {
        this.audioTime = j10;
    }

    public final void setId(long j10) {
        this.id = j10;
    }

    public final void setNoteId(long j10) {
        this.noteId = j10;
    }

    public final void setNoteTitle(String str) {
        r.e(str, "<set-?>");
        this.noteTitle = str;
    }

    public final void setSimpleText(String str) {
        r.e(str, "<set-?>");
        this.simpleText = str;
    }

    public final void setTimestamp(long j10) {
        this.timestamp = j10;
    }
}
