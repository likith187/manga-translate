package com.oplus.aiunit.download.core;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class DownloadInfo {
    private long fullSize;
    private long offsetSize;
    private String groupName = "";
    private int state = -1;

    public final long getFullSize() {
        return this.fullSize;
    }

    public final String getGroupName() {
        return this.groupName;
    }

    public final long getOffsetSize() {
        return this.offsetSize;
    }

    public final int getState() {
        return this.state;
    }

    public final void setFullSize(long j10) {
        this.fullSize = j10;
    }

    public final void setGroupName(String str) {
        r.e(str, "<set-?>");
        this.groupName = str;
    }

    public final void setOffsetSize(long j10) {
        this.offsetSize = j10;
    }

    public final void setState(int i10) {
        this.state = i10;
    }

    public String toString() {
        return "DownloadInfo(" + this.groupName + ", " + this.state + ')';
    }
}
