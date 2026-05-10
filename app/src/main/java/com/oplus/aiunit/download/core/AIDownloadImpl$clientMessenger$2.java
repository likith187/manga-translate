package com.oplus.aiunit.download.core;

import android.os.Messenger;
import kotlin.jvm.internal.s;

/* JADX INFO: loaded from: classes2.dex */
public final class AIDownloadImpl$clientMessenger$2 extends s implements w8.a {
    final /* synthetic */ AIDownloadImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AIDownloadImpl$clientMessenger$2(AIDownloadImpl aIDownloadImpl) {
        super(0);
        this.this$0 = aIDownloadImpl;
    }

    @Override // w8.a
    /* JADX INFO: renamed from: invoke */
    public final Messenger mo8invoke() {
        return new Messenger(this.this$0.getClientHandler());
    }
}
