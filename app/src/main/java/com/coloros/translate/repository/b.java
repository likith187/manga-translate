package com.coloros.translate.repository;

import kotlin.jvm.internal.r;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class b {
    private static final /* synthetic */ r8.a $ENTRIES;
    private static final /* synthetic */ b[] $VALUES;
    private int code;
    private String message;
    public static final b TRANSLATION_SERVICE_DIED = new b("TRANSLATION_SERVICE_DIED", 0, -9000, "TRANSLATION SERVICE DIED");
    public static final b SUCCESS = new b("SUCCESS", 1, 0, "SUCCESS");
    public static final b FAILED = new b("FAILED", 2, -1, "FAILED");
    public static final b NO_NETWORK = new b("NO_NETWORK", 3, -1000, "no network");
    public static final b SILENCE_TIMEOUT = new b("SILENCE_TIMEOUT", 4, 100, "SILENCE TIMEOUT");
    public static final b WS_CONNECT_ERROR = new b("WS_CONNECT_ERROR", 5, -101, "CONNECT ERROR");
    public static final b SERVER_ERROR = new b("SERVER_ERROR", 6, -102, "SERVER ERROR");
    public static final b FAIL_START_RECONGNIZE = new b("FAIL_START_RECONGNIZE", 7, -103, "FAIL START RECONGNIZE");
    public static final b WS_ONMESSAGE_ERROR = new b("WS_ONMESSAGE_ERROR", 8, -104, "ONMESSAGE ERROR");
    public static final b NOT_SUPPORT_LANGUAGE = new b("NOT_SUPPORT_LANGUAGE", 9, -105, "NOT SUPPORT SDK_LANGUAGE");
    public static final b WS_CONNECT_CLOSED = new b("WS_CONNECT_CLOSED", 10, 106, "CONNECT CLOSED");
    public static final b WS_RECONNECT = new b("WS_RECONNECT", 11, 107, "RECONNECT");
    public static final b GET_SUPPORT_LANGUAGE_ERROR = new b("GET_SUPPORT_LANGUAGE_ERROR", 12, -108, "GET SUPPORT LANGUAGE ERROR");
    public static final b ASR_NOT_SUPPORT = new b("ASR_NOT_SUPPORT", 13, -200, "ASR NOT SUPPORT ERROR");
    public static final b ASR_INIT_ERROR = new b("ASR_INIT_ERROR", 14, -201, "ASR INIT ERROR");
    public static final b ASR_CONNECT_ERROR = new b("ASR_CONNECT_ERROR", 15, -202, "ASR CONNECT ERROR");
    public static final b ASR_CONNECT_PUSH_COMPLETE = new b("ASR_CONNECT_PUSH_COMPLETE", 16, -203, "ASR PUSH COMPLETE");
    public static final b ASR_CONNECT_TASK_COMPLETE = new b("ASR_CONNECT_TASK_COMPLETE", 17, -204, "ASR TASK COMPLETE");
    public static final b ASR_ENCODE_IO_NO_SPACE = new b("ASR_ENCODE_IO_NO_SPACE", 18, -205, "AUDIO SAVED NO SPACE");
    public static final b ASR_ENCODE_EXCEPTION = new b("ASR_ENCODE_EXCEPTION", 19, -206, "AUDIO ENCODE EXCEPTION");
    public static final b ASR_ERROR_OTHER = new b("ASR_ERROR_OTHER", 20, -207, "ASR ERROR");
    public static final b ASR_ABANDON_CACHE_DATA = new b("ASR_ABANDON_CACHE_DATA", 21, -208, "ASR ABANDON CACHE DATA");
    public static final b ASR_TASK_NET_ERROR = new b("ASR_TASK_NET_ERROR", 22, -209, "ASR NET ERROR");
    public static final b ASR_TASK_NET_TIMEOUT = new b("ASR_TASK_NET_TIMEOUT", 23, -210, "ASR NET TIMEOUT");
    public static final b ASR_INIT_SUCCESS = new b("ASR_INIT_SUCCESS", 24, -211, "ASR INIT SUCCESS");
    public static final b ASR_CREATE_RECORDER_ERROR = new b("ASR_CREATE_RECORDER_ERROR", 25, -212, "ASR CREATE RECORDER ERROR");
    public static final b ASR_PARAM_INVALID = new b("ASR_PARAM_INVALID", 26, b5.a.CODE_SCANNER_CANCELLED, "ASR PARAM ERROR");
    public static final b ASR_DATA_ERROR = new b("ASR_DATA_ERROR", 27, b5.a.CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED, "ASR RECOGNIZE DATA ERROR");
    public static final b ASR_EMPTY_VOICE = new b("ASR_EMPTY_VOICE", 28, 203, "ASR NO VOICE ERROR");
    public static final b ASR_VOICE_SESSION_IS_NULL = new b("ASR_VOICE_SESSION_IS_NULL", 29, b5.a.CODE_SCANNER_TASK_IN_PROGRESS, "ASR VOICE SESSION ERROR");
    public static final b ASR_SESSION_IS_NULL = new b("ASR_SESSION_IS_NULL", 30, b5.a.CODE_SCANNER_PIPELINE_INITIALIZATION_ERROR, "ASR SESSION NULL ERROR");
    public static final b ASR_CHANNEL_ALREADY_CLOSED = new b("ASR_CHANNEL_ALREADY_CLOSED", 31, b5.a.CODE_SCANNER_PIPELINE_INFERENCE_ERROR, "ASR CHANNEL CLOSE ERROR");
    public static final b ASR_RECORD_SESSION_IS_NULL = new b("ASR_RECORD_SESSION_IS_NULL", 32, b5.a.CODE_SCANNER_GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD, "ASR RECORD SESSION NULL");
    public static final b ASR_AUTH_FAIL = new b("ASR_AUTH_FAIL", 33, 208, "ASR AUTH ERROR");
    public static final b ASR_NETTY_SERVER_EXCEPTION = new b("ASR_NETTY_SERVER_EXCEPTION", 34, 209, "ASR NETTY SERVER EXCEPTION ERROR");
    public static final b AIUNIT_DISCONNECT = new b("AIUNIT_DISCONNECT", 35, 210, "AIUNIT DISCONNECT");
    public static final b ASR_OFFLINE_HEART_BEAT = new b("ASR_OFFLINE_HEART_BEAT", 36, 211, "ASR READ FILE HEART BEAT");
    public static final b ASR_READ_FILE_UPLOAD_FAIL = new b("ASR_READ_FILE_UPLOAD_FAIL", 37, 212, "file upload fail");
    public static final b ASR_READ_FILE_UPLOAD_LOADING = new b("ASR_READ_FILE_UPLOAD_LOADING", 38, 213, "file uploading");
    public static final b ASR_READ_FILE_UPLOAD_SUCCESS = new b("ASR_READ_FILE_UPLOAD_SUCCESS", 39, 214, "file upload success");
    public static final b ASR_READ_SUMMARY_CONSUME_COMPLETE = new b("ASR_READ_SUMMARY_CONSUME_COMPLETE", 40, 215, "summary consume complete");
    public static final b ASR_READ_SUMMARY_CONSUME_QUERY = new b("ASR_READ_SUMMARY_CONSUME_QUERY", 41, 216, "summary consume query");
    public static final b ASR_READ_SUMMARY_STOP = new b("ASR_READ_SUMMARY_STOP", 42, 217, "summary stop");
    public static final b ASR_READ_FILE_QUERY_LOADING = new b("ASR_READ_FILE_QUERY_LOADING", 43, 218, "file asr query loading");
    public static final b ASR_READ_FILE_QUERY_FAIL = new b("ASR_READ_FILE_QUERY_FAIL", 44, 219, "file asr query fail");
    public static final b ASR_READ_FILE_QUERY_COMPLETE = new b("ASR_READ_FILE_QUERY_COMPLETE", 45, 220, "file asr query complete");
    public static final b ASR_READ_FILE_FORMAT_UNSUPPORT = new b("ASR_READ_FILE_FORMAT_UNSUPPORT", 46, 221, "file asr format unsupport");
    public static final b ASR_READ_FILE_NET_STATUS_NO_NET = new b("ASR_READ_FILE_NET_STATUS_NO_NET", 47, 222, "file asr not net");
    public static final b ASR_READ_FILE_NET_STATUS_HAS_NET = new b("ASR_READ_FILE_NET_STATUS_HAS_NET", 48, 223, "file asr has net");
    public static final b ASR_READ_FILE_NO_NET_UPLOAD = new b("ASR_READ_FILE_NO_NET_UPLOAD", 49, 224, "file asr not net upload");
    public static final b ASR_READ_FILE_NO_NET_RETRY = new b("ASR_READ_FILE_NO_NET_RETRY", 50, 225, "file asr not net retry");
    public static final b ASR_READ_FILE_NO_NET_SUMMARY_CONSUME_COUNT = new b("ASR_READ_FILE_NO_NET_SUMMARY_CONSUME_COUNT", 51, 226, "file asr not net summary consume count");
    public static final b ASR_READ_FILE_NO_NET_SUMMARY_QUERY = new b("ASR_READ_FILE_NO_NET_SUMMARY_QUERY", 52, 227, "file asr not net summary query");
    public static final b ASR_READ_FILE_NO_NET_QUERY_ASR = new b("ASR_READ_FILE_NO_NET_QUERY_ASR", 53, 228, "file asr not net query asr");
    public static final b ASR_NO_RECOGNIZE_LANGUAGE = new b("ASR_NO_RECOGNIZE_LANGUAGE", 54, 229, "file no recognize language");
    public static final b ASR_NOT_SUPPORT_LANGUAGE = new b("ASR_NOT_SUPPORT_LANGUAGE", 55, 230, "file not support language");
    public static final b ASR_LANGUAGE_EMPTY_TEXT = new b("ASR_LANGUAGE_EMPTY_TEXT", 56, 231, "language empty text");
    public static final b ASR_ERROR_SERVER_UNKNOWN = new b("ASR_ERROR_SERVER_UNKNOWN", 57, 232, "asr server unknown");
    public static final b ASR_ALGO_NOT_READY = new b("ASR_ALGO_NOT_READY", 58, 233, "asr algo not ready");
    public static final b ASR_REQ_TIMEOUT = new b("ASR_REQ_TIMEOUT", 59, 234, "asr request timeout");
    public static final b ASR_INVALID_ALGO = new b("ASR_INVALID_ALGO", 60, 235, "asr invalid algo");
    public static final b ASR_ERROR_REQ_POST = new b("ASR_ERROR_REQ_POST", 61, 236, "asr error request post");
    public static final b ASR_ERROR_ALGO_INTERNAL = new b("ASR_ERROR_ALGO_INTERNAL", 62, 237, "asr error algo internal");
    public static final b ASR_ERROR_INVALID_TASK = new b("ASR_ERROR_INVALID_TASK", 63, 238, "asr error invalid task");
    public static final b ASR_ERROR_PROCESS_RESP = new b("ASR_ERROR_PROCESS_RESP", 64, 239, "asr error process resp");
    public static final b ASR_ERROR_DECRYPT_REQ = new b("ASR_ERROR_DECRYPT_REQ", 65, 240, "asr error decrypt req");
    public static final b ASR_ERROR_ENCRYPT_ACK = new b("ASR_ERROR_ENCRYPT_ACK", 66, 241, "asr error encrypt ack");
    public static final b ASR_ERROR_CONTENT_CHECK = new b("ASR_ERROR_CONTENT_CHECK", 67, 242, "asr error content check");
    public static final b ASR_ERROR_CONTENT_SAFE_CHECK = new b("ASR_ERROR_CONTENT_SAFE_CHECK", 68, 243, "asr error content safe check");
    public static final b ASR_ERROR_DATA_UPLOAD = new b("ASR_ERROR_DATA_UPLOAD", 69, 244, "asr error data upload");
    public static final b ASR_ERROR_DECRYPT_ACK = new b("ASR_ERROR_DECRYPT_ACK", 70, 245, "asr error decrypt ack");
    public static final b ASR_ERROR_PROCESS_UP = new b("ASR_ERROR_PROCESS_UP", 71, 246, "asr error process up");
    public static final b ASR_ERROR_PROCESS_DOWN = new b("ASR_ERROR_PROCESS_DOWN", 72, 247, "asr error process down");
    public static final b ASR_ERROR_START_ASR = new b("ASR_ERROR_START_ASR", 73, 248, "asr error start asr");
    public static final b ASR_ERROR_END_ASR = new b("ASR_ERROR_END_ASR", 74, 249, "asr error end asr");
    public static final b ASR_NET_CONNECT = new b("ASR_NET_CONNECT", 75, 250, "asr net connect ");
    public static final b ASR_VOIP_FOCUS_LOST = new b("ASR_VOIP_FOCUS_LOST", 76, 251, "ASR VOIP FOCUS LOST");

    private static final /* synthetic */ b[] $values() {
        return new b[]{TRANSLATION_SERVICE_DIED, SUCCESS, FAILED, NO_NETWORK, SILENCE_TIMEOUT, WS_CONNECT_ERROR, SERVER_ERROR, FAIL_START_RECONGNIZE, WS_ONMESSAGE_ERROR, NOT_SUPPORT_LANGUAGE, WS_CONNECT_CLOSED, WS_RECONNECT, GET_SUPPORT_LANGUAGE_ERROR, ASR_NOT_SUPPORT, ASR_INIT_ERROR, ASR_CONNECT_ERROR, ASR_CONNECT_PUSH_COMPLETE, ASR_CONNECT_TASK_COMPLETE, ASR_ENCODE_IO_NO_SPACE, ASR_ENCODE_EXCEPTION, ASR_ERROR_OTHER, ASR_ABANDON_CACHE_DATA, ASR_TASK_NET_ERROR, ASR_TASK_NET_TIMEOUT, ASR_INIT_SUCCESS, ASR_CREATE_RECORDER_ERROR, ASR_PARAM_INVALID, ASR_DATA_ERROR, ASR_EMPTY_VOICE, ASR_VOICE_SESSION_IS_NULL, ASR_SESSION_IS_NULL, ASR_CHANNEL_ALREADY_CLOSED, ASR_RECORD_SESSION_IS_NULL, ASR_AUTH_FAIL, ASR_NETTY_SERVER_EXCEPTION, AIUNIT_DISCONNECT, ASR_OFFLINE_HEART_BEAT, ASR_READ_FILE_UPLOAD_FAIL, ASR_READ_FILE_UPLOAD_LOADING, ASR_READ_FILE_UPLOAD_SUCCESS, ASR_READ_SUMMARY_CONSUME_COMPLETE, ASR_READ_SUMMARY_CONSUME_QUERY, ASR_READ_SUMMARY_STOP, ASR_READ_FILE_QUERY_LOADING, ASR_READ_FILE_QUERY_FAIL, ASR_READ_FILE_QUERY_COMPLETE, ASR_READ_FILE_FORMAT_UNSUPPORT, ASR_READ_FILE_NET_STATUS_NO_NET, ASR_READ_FILE_NET_STATUS_HAS_NET, ASR_READ_FILE_NO_NET_UPLOAD, ASR_READ_FILE_NO_NET_RETRY, ASR_READ_FILE_NO_NET_SUMMARY_CONSUME_COUNT, ASR_READ_FILE_NO_NET_SUMMARY_QUERY, ASR_READ_FILE_NO_NET_QUERY_ASR, ASR_NO_RECOGNIZE_LANGUAGE, ASR_NOT_SUPPORT_LANGUAGE, ASR_LANGUAGE_EMPTY_TEXT, ASR_ERROR_SERVER_UNKNOWN, ASR_ALGO_NOT_READY, ASR_REQ_TIMEOUT, ASR_INVALID_ALGO, ASR_ERROR_REQ_POST, ASR_ERROR_ALGO_INTERNAL, ASR_ERROR_INVALID_TASK, ASR_ERROR_PROCESS_RESP, ASR_ERROR_DECRYPT_REQ, ASR_ERROR_ENCRYPT_ACK, ASR_ERROR_CONTENT_CHECK, ASR_ERROR_CONTENT_SAFE_CHECK, ASR_ERROR_DATA_UPLOAD, ASR_ERROR_DECRYPT_ACK, ASR_ERROR_PROCESS_UP, ASR_ERROR_PROCESS_DOWN, ASR_ERROR_START_ASR, ASR_ERROR_END_ASR, ASR_NET_CONNECT, ASR_VOIP_FOCUS_LOST};
    }

    static {
        b[] bVarArr$values = $values();
        $VALUES = bVarArr$values;
        $ENTRIES = r8.b.a(bVarArr$values);
    }

    private b(String str, int i10, int i11, String str2) {
        this.code = i11;
        this.message = str2;
    }

    public static r8.a getEntries() {
        return $ENTRIES;
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) $VALUES.clone();
    }

    public final int getCode() {
        return this.code;
    }

    public final String getMessage() {
        return this.message;
    }

    public final void setCode(int i10) {
        this.code = i10;
    }

    public final void setMessage(String str) {
        r.e(str, "<set-?>");
        this.message = str;
    }
}
