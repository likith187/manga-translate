package com.oplus.aiunit.download.core;

/* JADX INFO: loaded from: classes2.dex */
public interface DownloadListener {

    public static final class DefaultImpls {
        public static void onQuery(DownloadListener downloadListener, DownloadInfo downloadInfo) {
        }
    }

    void onCancel();

    void onFail(int i10);

    void onInstall();

    void onPrepare(long j10, long j11);

    void onProgress(long j10, long j11, long j12);

    void onQuery(DownloadInfo downloadInfo);

    void onStart(long j10, long j11);

    void onSuccess(long j10, long j11, boolean z10);
}
