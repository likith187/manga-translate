package com.coloros.translate.screen.translate.engine.translate;

import android.os.RemoteException;
import com.coloros.translate.screen.utils.t;
import com.coloros.translate.utils.c0;
import com.oplus.aiunit.translation.callback.Callback;
import java.util.concurrent.CountDownLatch;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class AiUitOnlineTranslateClient$initTranslateIfNecessary$1$2 implements Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ CountDownLatch f5680a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ AiUitOnlineTranslateClient f5681b;

    AiUitOnlineTranslateClient$initTranslateIfNecessary$1$2(CountDownLatch countDownLatch, AiUitOnlineTranslateClient aiUitOnlineTranslateClient) {
        this.f5680a = countDownLatch;
        this.f5681b = aiUitOnlineTranslateClient;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(AiUitOnlineTranslateClient this$0, String str) {
        r.e(this$0, "this$0");
        ImageTranslateListener imageTranslateListener = this$0.f5675h;
        if (imageTranslateListener != null) {
            if (str == null) {
                str = "";
            }
            imageTranslateListener.onError("", str, -2000);
        }
    }

    @Override // com.oplus.aiunit.translation.callback.Callback
    public void onError(final String str) {
        try {
            this.f5680a.countDown();
            final AiUitOnlineTranslateClient aiUitOnlineTranslateClient = this.f5681b;
            t.g(new Runnable() { // from class: com.coloros.translate.screen.translate.engine.translate.c
                @Override // java.lang.Runnable
                public final void run() {
                    AiUitOnlineTranslateClient$initTranslateIfNecessary$1$2.b(aiUitOnlineTranslateClient, str);
                }
            });
            c0.f7098a.e("AiUitOnlineTranslateClient", "initTranslate, onFailure:" + str);
        } catch (RemoteException unused) {
            c0.f7098a.e("AiUitOnlineTranslateClient", "initTranslate, onFailure error");
        }
    }

    @Override // com.oplus.aiunit.translation.callback.Callback
    public void onSuccess() {
        c0.f7098a.d("AiUitOnlineTranslateClient", "initTranslate, onSuccess");
        this.f5681b.f5671d = true;
        this.f5680a.countDown();
    }
}
