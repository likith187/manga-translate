package com.oplus.backup.sdk.common.bean;

import java.util.ArrayList;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class FileWrapperList {
    private final int endIndex;
    private final int fromIndex;
    private final ArrayList<FileWrapper> list;
    private final int totalCount;

    public FileWrapperList(ArrayList<FileWrapper> arrayList, int i10, int i11, int i12) {
        this.list = arrayList;
        this.fromIndex = i10;
        this.endIndex = i11;
        this.totalCount = i12;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FileWrapperList copy$default(FileWrapperList fileWrapperList, ArrayList arrayList, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            arrayList = fileWrapperList.list;
        }
        if ((i13 & 2) != 0) {
            i10 = fileWrapperList.fromIndex;
        }
        if ((i13 & 4) != 0) {
            i11 = fileWrapperList.endIndex;
        }
        if ((i13 & 8) != 0) {
            i12 = fileWrapperList.totalCount;
        }
        return fileWrapperList.copy(arrayList, i10, i11, i12);
    }

    public final ArrayList<FileWrapper> component1() {
        return this.list;
    }

    public final int component2() {
        return this.fromIndex;
    }

    public final int component3() {
        return this.endIndex;
    }

    public final int component4() {
        return this.totalCount;
    }

    public final FileWrapperList copy(ArrayList<FileWrapper> arrayList, int i10, int i11, int i12) {
        return new FileWrapperList(arrayList, i10, i11, i12);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FileWrapperList)) {
            return false;
        }
        FileWrapperList fileWrapperList = (FileWrapperList) obj;
        return r.a(this.list, fileWrapperList.list) && this.fromIndex == fileWrapperList.fromIndex && this.endIndex == fileWrapperList.endIndex && this.totalCount == fileWrapperList.totalCount;
    }

    public final int getEndIndex() {
        return this.endIndex;
    }

    public final int getFromIndex() {
        return this.fromIndex;
    }

    public final ArrayList<FileWrapper> getList() {
        return this.list;
    }

    public final int getTotalCount() {
        return this.totalCount;
    }

    public int hashCode() {
        ArrayList<FileWrapper> arrayList = this.list;
        return ((((((arrayList == null ? 0 : arrayList.hashCode()) * 31) + Integer.hashCode(this.fromIndex)) * 31) + Integer.hashCode(this.endIndex)) * 31) + Integer.hashCode(this.totalCount);
    }

    public String toString() {
        return "FileWrapperList(list=" + this.list + ", fromIndex=" + this.fromIndex + ", endIndex=" + this.endIndex + ", totalCount=" + this.totalCount + ')';
    }
}
