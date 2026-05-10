package com.oplus.aiunit.download.core;

import kotlin.jvm.internal.s;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public final class AIDownloadImpl$callQueryInfo$2$1 extends s implements l {
    public static final AIDownloadImpl$callQueryInfo$2$1 INSTANCE = new AIDownloadImpl$callQueryInfo$2$1();

    public AIDownloadImpl$callQueryInfo$2$1() {
        super(1);
    }

    @Override // w8.l
    public final Boolean invoke(ListenerInfo listenerInfo) {
        return Boolean.valueOf(listenerInfo.getCommand() == Command.QUERY);
    }
}
