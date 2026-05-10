package com.oplus.aiunit.download.core;

/* JADX INFO: loaded from: classes2.dex */
public final class ErrorCode {
    public static final int CODE_AFTER_DOWNLOAD_CHECK_FAIL = 106;
    public static final int CODE_BEFORE_DOWNLOAD_CHECK_FAIL = 103;
    public static final int CODE_CHUNK_DOWNLOAD_FAIL = 105;
    public static final int CODE_CONNECTION_FAILED = 118;
    public static final int CODE_DENY_PRIVACY_PERMISSION = 121;
    public static final int CODE_DEVICE_STORAGE_UNAVAILABLE = 107;
    public static final int CODE_DOWNLOADING_CANCEL = 111;
    public static final int CODE_DOWNLOADING_FAIL = 110;
    public static final int CODE_DOWNLOAD_CELLULAR_USER_CANCEL = 120;
    public static final int CODE_DOWNLOAD_CONFIRM_USER_CANCEL = 119;
    public static final int CODE_DOWNLOAD_INTERNET_UNAVAILABLE = 100;
    public static final int CODE_INSTALL_FAIL = 123;
    public static final int CODE_INTERNET_NOT_MATCH = 117;
    public static final int CODE_INTERNET_UNAVAILABLE = 122;
    public static final int CODE_INVALID_REQUEST = 125;
    public static final int CODE_LOCAL_CONFIG_NULL = 114;
    public static final int CODE_NONE = 0;
    public static final int CODE_NO_NEED_DOWNLOAD = 116;
    public static final int CODE_PREPARE_FAIL = 112;
    public static final int CODE_PROTOCOL_CONTENT_LENGTH_INVALID = 108;
    public static final int CODE_REQUEST_FAIL = 101;
    public static final int CODE_REQUEST_REDIRECT_FAIL = 102;
    public static final int CODE_SERVER_CONFIG_NULL = 113;
    public static final int CODE_SERVICE_DIED = 127;
    public static final int CODE_SERVICE_NOT_SUPPORT = 124;
    public static final int CODE_SERVICE_TIMEOUT = 126;
    public static final int CODE_UNIT_NOT_SUPPORT = 115;
    public static final int CODE_WRITE_FAIL = 104;
    public static final int CODE_WRITE_LENGTH_NOT_MATCH = 109;
    public static final ErrorCode INSTANCE = new ErrorCode();

    private ErrorCode() {
    }
}
