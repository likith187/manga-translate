package com.coloros.translate.repository.remote;

import android.os.Bundle;
import com.coloros.translate.engine.info.TtsParams;
import com.coloros.translate.repository.remote.TtsEngineHandler;

/* JADX INFO: loaded from: classes.dex */
public interface a {

    /* JADX INFO: renamed from: com.coloros.translate.repository.remote.a$a */
    public static final class C0075a {
        public static /* synthetic */ void a(a aVar, String str, TtsParams ttsParams, TtsEngineHandler.TtsListener ttsListener, Bundle bundle, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: playTextWithExtra");
            }
            if ((i10 & 8) != 0) {
                bundle = new Bundle();
            }
            aVar.a(str, ttsParams, ttsListener, bundle);
        }
    }

    void a(String str, TtsParams ttsParams, TtsEngineHandler.TtsListener ttsListener, Bundle bundle);
}
