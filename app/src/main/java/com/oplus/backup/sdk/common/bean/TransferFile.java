package com.oplus.backup.sdk.common.bean;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class TransferFile {
    private String destPath;
    private String srcPath;
    private int type;

    public TransferFile() {
        this(null, null, 0, 7, null);
    }

    public static /* synthetic */ TransferFile copy$default(TransferFile transferFile, String str, String str2, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = transferFile.srcPath;
        }
        if ((i11 & 2) != 0) {
            str2 = transferFile.destPath;
        }
        if ((i11 & 4) != 0) {
            i10 = transferFile.type;
        }
        return transferFile.copy(str, str2, i10);
    }

    public final String component1() {
        return this.srcPath;
    }

    public final String component2() {
        return this.destPath;
    }

    public final int component3() {
        return this.type;
    }

    public final TransferFile copy(String srcPath, String destPath, int i10) {
        r.e(srcPath, "srcPath");
        r.e(destPath, "destPath");
        return new TransferFile(srcPath, destPath, i10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TransferFile)) {
            return false;
        }
        TransferFile transferFile = (TransferFile) obj;
        return r.a(this.srcPath, transferFile.srcPath) && r.a(this.destPath, transferFile.destPath) && this.type == transferFile.type;
    }

    public final String getDestPath() {
        return this.destPath;
    }

    public final String getSrcPath() {
        return this.srcPath;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        return (((this.srcPath.hashCode() * 31) + this.destPath.hashCode()) * 31) + Integer.hashCode(this.type);
    }

    public final void setDestPath(String str) {
        r.e(str, "<set-?>");
        this.destPath = str;
    }

    public final void setSrcPath(String str) {
        r.e(str, "<set-?>");
        this.srcPath = str;
    }

    public final void setType(int i10) {
        this.type = i10;
    }

    public String toString() {
        return "TransferFile(srcPath=" + this.srcPath + ", destPath=" + this.destPath + ", type=" + this.type + ')';
    }

    public TransferFile(String srcPath, String destPath, int i10) {
        r.e(srcPath, "srcPath");
        r.e(destPath, "destPath");
        this.srcPath = srcPath;
        this.destPath = destPath;
        this.type = i10;
    }

    public /* synthetic */ TransferFile(String str, String str2, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? "" : str2, (i11 & 4) != 0 ? 8 : i10);
    }
}
