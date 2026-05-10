package com.oplus.aiunit.download.core;

import android.os.HandlerThread;
import android.os.Looper;
import kotlin.jvm.internal.s;

/* JADX INFO: loaded from: classes2.dex */
public final class AIDownloadImpl$looper$2 extends s implements w8.a {
    public static final AIDownloadImpl$looper$2 INSTANCE = new AIDownloadImpl$looper$2();

    public AIDownloadImpl$looper$2() {
        super(0);
    }

    @Override // w8.a
    /* JADX INFO: renamed from: invoke */
    public final Looper mo8invoke() {
        HandlerThread handlerThread = new HandlerThread("AI_Download_Client");
        handlerThread.start();
        return handlerThread.getLooper();
    }
}
