package com.oplus.backup.sdk.common.bean;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class FileWrapper {
    private long length;
    private String path;
    private int type;

    public FileWrapper() {
        this(0, null, 0L, 7, null);
    }

    public static /* synthetic */ FileWrapper copy$default(FileWrapper fileWrapper, int i10, String str, long j10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = fileWrapper.type;
        }
        if ((i11 & 2) != 0) {
            str = fileWrapper.path;
        }
        if ((i11 & 4) != 0) {
            j10 = fileWrapper.length;
        }
        return fileWrapper.copy(i10, str, j10);
    }

    public final int component1() {
        return this.type;
    }

    public final String component2() {
        return this.path;
    }

    public final long component3() {
        return this.length;
    }

    public final FileWrapper copy(int i10, String str, long j10) {
        return new FileWrapper(i10, str, j10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FileWrapper)) {
            return false;
        }
        FileWrapper fileWrapper = (FileWrapper) obj;
        return this.type == fileWrapper.type && r.a(this.path, fileWrapper.path) && this.length == fileWrapper.length;
    }

    public final long getLength() {
        return this.length;
    }

    public final String getPath() {
        return this.path;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.type) * 31;
        String str = this.path;
        return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + Long.hashCode(this.length);
    }

    public final boolean isFile() {
        return this.type == 8;
    }

    public final boolean isFolder() {
        return this.type == 4;
    }

    public final void setLength(long j10) {
        this.length = j10;
    }

    public final void setPath(String str) {
        this.path = str;
    }

    public final void setType(int i10) {
        this.type = i10;
    }

    public String toString() {
        return "FileWrapper(type=" + this.type + ", path=" + ((Object) this.path) + ", length=" + this.length + ')';
    }

    public FileWrapper(int i10, String str, long j10) {
        this.type = i10;
        this.path = str;
        this.length = j10;
    }

    public /* synthetic */ FileWrapper(int i10, String str, long j10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10, (i11 & 2) != 0 ? null : str, (i11 & 4) != 0 ? 0L : j10);
    }
}
