package com.oplus.aiunit.core.callback;

/* JADX INFO: loaded from: classes.dex */
public interface ConnectionCallback {
    void onServiceConnect();

    void onServiceConnectFailed(int i10);

    default void onServiceConnecting() {
    }

    default void onServiceDisconnect() {
    }
}
