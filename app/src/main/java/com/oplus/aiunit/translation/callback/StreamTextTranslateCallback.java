package com.oplus.aiunit.translation.callback;

/* JADX INFO: loaded from: classes2.dex */
public interface StreamTextTranslateCallback {
    void onDataAvailable(String str, String str2);

    void onError(String str, int i10, String str2);

    void onFinished(String str, String str2);

    void onStart(String str);

    void onStop(String str);
}
