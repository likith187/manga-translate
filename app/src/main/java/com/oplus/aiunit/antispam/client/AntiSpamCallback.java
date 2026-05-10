package com.oplus.aiunit.antispam.client;

/* JADX INFO: loaded from: classes.dex */
public interface AntiSpamCallback {
    void onFailure(int i10, String str);

    void onProcess(AntiSpamResult antiSpamResult);

    void onSuccess(AntiSpamResult antiSpamResult);
}
