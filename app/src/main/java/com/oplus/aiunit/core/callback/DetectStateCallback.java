package com.oplus.aiunit.core.callback;

import com.oplus.aiunit.core.data.AIConfig;

/* JADX INFO: loaded from: classes.dex */
public interface DetectStateCallback {

    public static final class DefaultImpls {
        public static void onDestroy(DetectStateCallback detectStateCallback) {
        }

        public static void onFail(DetectStateCallback detectStateCallback, int i10, String str) {
        }

        public static void onStart(DetectStateCallback detectStateCallback) {
        }
    }

    void onAllDestroy(String str);

    void onAllFail(String str, int i10, String str2);

    void onDestroy();

    void onFail(int i10, String str);

    void onOneDestroy(AIConfig aIConfig);

    void onOneFail(AIConfig aIConfig, int i10, String str);

    void onStart();

    void onStart(AIConfig aIConfig);
}
