package com.oplus.aiunit.download.core;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.oplus.aiunit.core.utils.AILog;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.r;

/* JADX INFO: loaded from: classes2.dex */
public final class AIDownloadImpl$clientHandler$2 extends s implements w8.a {
    final /* synthetic */ AIDownloadImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AIDownloadImpl$clientHandler$2(AIDownloadImpl aIDownloadImpl) {
        super(0);
        this.this$0 = aIDownloadImpl;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.oplus.aiunit.download.core.AIDownloadImpl$clientHandler$2$1] */
    @Override // w8.a
    /* JADX INFO: renamed from: invoke */
    public final AnonymousClass1 mo8invoke() {
        Looper looper = this.this$0.getLooper();
        final AIDownloadImpl aIDownloadImpl = this.this$0;
        return new Handler(looper) { // from class: com.oplus.aiunit.download.core.AIDownloadImpl$clientHandler$2.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                Object objM59constructorimpl;
                r.e(msg, "msg");
                AIDownloadImpl aIDownloadImpl2 = aIDownloadImpl;
                try {
                    r.a aVar = n8.r.Companion;
                    Bundle data = msg.getData();
                    kotlin.jvm.internal.r.d(data, "getData(...)");
                    aIDownloadImpl2.handleData(data);
                    objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
                } catch (Throwable th) {
                    r.a aVar2 = n8.r.Companion;
                    objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
                }
                Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
                if (thM62exceptionOrNullimpl != null) {
                    AILog.e("AIDownloadImpl", "handleData: " + thM62exceptionOrNullimpl);
                }
            }
        };
    }
}
