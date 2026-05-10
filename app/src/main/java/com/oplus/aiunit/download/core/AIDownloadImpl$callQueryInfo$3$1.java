package com.oplus.aiunit.download.core;

import com.oplus.aiunit.download.api.DownloadRequest;
import kotlin.jvm.internal.s;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public final class AIDownloadImpl$callQueryInfo$3$1 extends s implements l {
    public static final AIDownloadImpl$callQueryInfo$3$1 INSTANCE = new AIDownloadImpl$callQueryInfo$3$1();

    public AIDownloadImpl$callQueryInfo$3$1() {
        super(1);
    }

    @Override // w8.l
    public final Boolean invoke(DownloadRequest downloadRequest) {
        return Boolean.valueOf(downloadRequest.getCommand() == Command.QUERY);
    }
}
