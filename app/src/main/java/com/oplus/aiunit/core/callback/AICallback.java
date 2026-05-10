package com.oplus.aiunit.core.callback;

import com.oplus.aiunit.core.callback.DetectStateCallback;

/* JADX INFO: loaded from: classes.dex */
public interface AICallback extends ConnectionCallback, DetectStateCallback {

    public static final class DefaultImpls {
        public static void onDestroy(AICallback aICallback) {
            DetectStateCallback.DefaultImpls.onDestroy(aICallback);
        }

        public static void onFail(AICallback aICallback, int i10, String str) {
            DetectStateCallback.DefaultImpls.onFail(aICallback, i10, str);
        }

        public static void onServiceConnect(AICallback aICallback) {
        }

        public static void onServiceConnectFailed(AICallback aICallback, int i10) {
        }

        public static void onStart(AICallback aICallback) {
            DetectStateCallback.DefaultImpls.onStart(aICallback);
        }
    }

    @Override // com.oplus.aiunit.core.callback.ConnectionCallback
    void onServiceConnect();

    @Override // com.oplus.aiunit.core.callback.ConnectionCallback
    void onServiceConnectFailed(int i10);
}
