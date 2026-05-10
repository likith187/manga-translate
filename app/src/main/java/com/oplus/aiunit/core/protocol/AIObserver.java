package com.oplus.aiunit.core.protocol;

import com.oplus.aiunit.core.data.AIConfig;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface AIObserver {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final int ERR_CODE_SERVICE_NOT_SUPPORT = 2;
    public static final int ERR_OBSERVE_EXCEPTION = 3;
    public static final int ERR_SUBSCRIBE_REJECT = 4;
    public static final int ERR_SUBSCRIBE_SUCCESS = 1;
    public static final int ERR_UNSUBSCRIBE = 0;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int ERR_CODE_SERVICE_NOT_SUPPORT = 2;
        public static final int ERR_OBSERVE_EXCEPTION = 3;
        public static final int ERR_SUBSCRIBE_REJECT = 4;
        public static final int ERR_SUBSCRIBE_SUCCESS = 1;
        public static final int ERR_UNSUBSCRIBE = 0;

        private Companion() {
        }
    }

    void onProtocolChange(String str, List<AIConfig> list);

    void onSubscribeResult(int i10);
}
