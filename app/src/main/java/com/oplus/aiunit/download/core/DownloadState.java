package com.oplus.aiunit.download.core;

/* JADX INFO: loaded from: classes2.dex */
public final class DownloadState {
    public static final DownloadState INSTANCE = new DownloadState();
    public static final int STATE_CANCELED = 8;
    public static final int STATE_DEFAULT = -1;
    public static final int STATE_DOWNLOADED = 1;
    public static final int STATE_DOWNLOADING = 4;
    public static final int STATE_DOWNLOAD_SUCCESS = 6;
    public static final int STATE_FAILED = 7;
    public static final int STATE_INSTALL = 5;
    public static final int STATE_NO_DOWNLOAD = 0;
    public static final int STATE_QUERY = 9;
    public static final int STATE_READY_DOWNLOAD = 2;
    public static final int STATE_START_DOWNLOAD = 3;

    private DownloadState() {
    }

    public static final boolean isDownloading(int i10) {
        return i10 == 2 || i10 == 3 || i10 == 4 || i10 == 5;
    }
}
