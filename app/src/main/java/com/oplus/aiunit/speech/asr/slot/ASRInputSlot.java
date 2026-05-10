package com.oplus.aiunit.speech.asr.slot;

import android.os.Bundle;
import com.google.gson.d;
import com.oplus.aiunit.core.FrameUnit;
import com.oplus.aiunit.core.ParamPackage;
import com.oplus.aiunit.core.base.AIContext;
import com.oplus.aiunit.core.base.FrameInputSlot;
import com.oplus.aiunit.core.protocol.common.ErrorCode;
import com.oplus.aiunit.core.utils.AILog;
import java.nio.ByteBuffer;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class ASRInputSlot extends FrameInputSlot {
    public static final Companion Companion = new Companion(null);
    public static final String KEY_CALL_ID = "asr_call_id";
    public static final String KEY_DUID = "dUId";
    public static final String KEY_FILE_DOWN = "filePathDown";
    public static final String KEY_FILE_DOWN_DURATION = "durationDown";
    public static final String KEY_FILE_DOWN_PEER_ID = "peerIdDown";
    public static final String KEY_FILE_IS_SMOOTH = "isSmooth";
    public static final String KEY_FILE_LANGUAGE_TYPE = "languageType";
    public static final String KEY_FILE_RECORDID = "recordId";
    public static final String KEY_FILE_UP = "filePathUp";
    public static final String KEY_FILE_UP_DURATION = "durationUp";
    public static final String KEY_FILE_UP_PEER_ID = "peerIdUp";
    public static final String KEY_FROM_LANGUAGE = "fromLanguage";
    public static final String KEY_HEART_TIME = "heartTime";
    public static final String KEY_LANGUAGE_LIST = "languageList";
    public static final String KEY_LAST_HTTP_TIMEOUT = "asr_last_http_timeout";
    public static final String KEY_MARK_KEYWORDS = "asr_mark_keywords";
    public static final String KEY_METHOD_TYPE = "asr_method_type";
    public static final String KEY_OFFLINE = "asr_offline";
    public static final String KEY_PEER_ID = "asr_peer_id";
    public static final String KEY_PREFIX = "asr_";
    public static final String KEY_PUSH_DATA_TIME = "asr_push_data_time";
    public static final String KEY_QUERY_TEXT_TIME = "asr_query_text_time";
    public static final String KEY_QUERY_TIME = "queryTime";
    public static final String KEY_REQUESTID = "requestId";
    public static final String KEY_SEQ_NUMBER = "asr_seq_number";
    public static final String KEY_TIMESTAMP = "asr_timestamp";
    public static final String KEY_TYPE = "type";
    public static final String METHOD_ABANDON = "asr_ai_abandon";
    public static final String METHOD_AI_END_CALL = "asr_ai_end_call";
    public static final String METHOD_AI_RELEASE = "asr_ai_release";
    public static final String METHOD_CACHE = "asr_current_call_cache";
    public static final String METHOD_CONSUME_ONE_COUNT = "method_consume_count";
    public static final String METHOD_FILE_INIT = "asr_file_init";
    public static final String METHOD_FILE_RETRY = "asr_file_retry";
    public static final String METHOD_FILE_STOP = "asr_file_stop";
    public static final String METHOD_GET_ONLINE_CONFIG = "method_get_online_config";
    public static final String METHOD_INIT = "asr_init";
    public static final String METHOD_PROCESS_DATA = "asr_process_data";
    public static final String METHOD_QUERY_REMAIN_COUNT = "method_query_count";
    public static final String METHOD_RETRY = "asr_ai_retry";
    public static final String METHOD_SET_LANGUAGE = "asr_set_language";
    public static final String METHOD_UPLOAD_FILE = "asr_upload_file";
    public static final int SIZE_BUFFER = 10;
    public static final String TAG = "ASRInputSlot";

    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public ASRInputSlot(AIContext aIContext) {
        super(aIContext);
    }

    public final void a(byte[] bArr) {
        AILog.d(TAG, "dealByteArray");
        int length = bArr.length;
        FrameUnit frameUnit = getFrameUnit(0);
        if (frameUnit == null && (frameUnit = getAIContext().applyFrameUnit(length * 10)) == null) {
            AILog.e(TAG, "frame Unit apply failed");
            setError(ErrorCode.kErrorInvalidParam);
            return;
        }
        frameUnit.setFlag(1);
        frameUnit.setWidth(length);
        frameUnit.setHeight(0);
        frameUnit.setChannel(1);
        if (addFrameUnit(frameUnit) < 0) {
            AILog.e(TAG, "add frame unit failed.");
            setError(ErrorCode.kErrorInvalidParam);
            return;
        }
        int width = frameUnit.getWidth();
        int height = frameUnit.getHeight();
        if (width != length) {
            AILog.d(TAG, "data len " + length);
            setError(ErrorCode.kErrorInvalidParam);
            throw new IllegalArgumentException("data size not match with previous");
        }
        int i10 = width * height;
        if (i10 + length > frameUnit.getBufferSize()) {
            AILog.d(TAG, "data size will overflow, won't set anymore.");
            setError(ErrorCode.kErrorNoBufferSpace);
            return;
        }
        ByteBuffer byteBufferOpenBuffer = frameUnit.openBuffer();
        if (byteBufferOpenBuffer != null) {
            byteBufferOpenBuffer.position(i10);
            byteBufferOpenBuffer.put(bArr, 0, length);
            frameUnit.closeBuffer();
        }
        frameUnit.setHeight(height + 1);
    }

    public final void abandon(String callId) {
        r.e(callId, "callId");
        getCustomParam().setParam(KEY_METHOD_TYPE, METHOD_ABANDON);
        getCustomParam().setParam(KEY_CALL_ID, callId);
    }

    public final void aiEndCall(String callId) {
        r.e(callId, "callId");
        ParamPackage customParam = getCustomParam();
        customParam.setParamStr(KEY_METHOD_TYPE, METHOD_AI_END_CALL);
        customParam.setParam(KEY_CALL_ID, callId);
    }

    public final void aiRelease(String callId) {
        r.e(callId, "callId");
        ParamPackage customParam = getCustomParam();
        customParam.setParamStr(KEY_METHOD_TYPE, METHOD_AI_RELEASE);
        customParam.setParam(KEY_CALL_ID, callId);
    }

    public final void currentHasCache() {
        getCustomParam().setParam(KEY_METHOD_TYPE, METHOD_CACHE);
    }

    public final void doConsumeCount(String duid, Bundle bundle) {
        r.e(duid, "duid");
        ParamPackage customParam = getCustomParam();
        customParam.setParamStr(KEY_METHOD_TYPE, METHOD_CONSUME_ONE_COUNT);
        customParam.setParamStr("asr_dUId", duid);
        if (bundle != null) {
            customParam.setParam("asr_recordId", bundle.getString(KEY_FILE_RECORDID));
        }
    }

    public final void fileInit(String duid) {
        r.e(duid, "duid");
        ParamPackage customParam = getCustomParam();
        customParam.setParamStr(KEY_METHOD_TYPE, METHOD_FILE_INIT);
        customParam.setParamStr("asr_dUId", duid);
    }

    public final void fileRetry(Bundle bundle) {
        ParamPackage customParam = getCustomParam();
        customParam.setParamStr(KEY_METHOD_TYPE, METHOD_FILE_RETRY);
        if (bundle != null) {
            customParam.setParam("asr_recordId", bundle.getString(KEY_FILE_RECORDID));
        }
    }

    public final void getOnlineConfig(Bundle bundle) {
        ParamPackage customParam = getCustomParam();
        customParam.setParamStr(KEY_METHOD_TYPE, "method_get_online_config");
        if (bundle != null) {
            customParam.setParamStr("asr_requestId", bundle.getString("requestId"));
            customParam.setParam("asr_type", bundle.getString("type"));
        }
    }

    public final void getRemainCount(String duid, Bundle bundle) {
        r.e(duid, "duid");
        ParamPackage customParam = getCustomParam();
        customParam.setParamStr(KEY_METHOD_TYPE, METHOD_QUERY_REMAIN_COUNT);
        customParam.setParamStr("asr_dUId", duid);
        if (bundle != null) {
            customParam.setParam("asr_recordId", bundle.getString(KEY_FILE_RECORDID));
        }
    }

    public final void initASR(boolean z10, String callId, long j10, long j11, boolean z11, long j12) {
        r.e(callId, "callId");
        ParamPackage customParam = getCustomParam();
        customParam.setParamStr(KEY_METHOD_TYPE, METHOD_INIT);
        customParam.setParam(KEY_MARK_KEYWORDS, Boolean.valueOf(z10));
        customParam.setParam(KEY_CALL_ID, callId);
        customParam.setParam(KEY_PUSH_DATA_TIME, Long.valueOf(j10));
        customParam.setParam(KEY_QUERY_TEXT_TIME, Long.valueOf(j11));
        customParam.setParam(KEY_OFFLINE, Boolean.valueOf(z11));
        customParam.setParam(KEY_LAST_HTTP_TIMEOUT, Long.valueOf(j12));
    }

    public final void retry(String callId) {
        r.e(callId, "callId");
        getCustomParam().setParam(KEY_METHOD_TYPE, METHOD_RETRY);
        getCustomParam().setParam(KEY_CALL_ID, callId);
    }

    public final void setFileData(Bundle bundle) {
        r.e(bundle, "bundle");
        ParamPackage customParam = getCustomParam();
        customParam.setParamStr(KEY_METHOD_TYPE, METHOD_UPLOAD_FILE);
        customParam.setParam("asr_filePathUp", bundle.getString(KEY_FILE_UP));
        customParam.setParam("asr_filePathDown", bundle.getString(KEY_FILE_DOWN));
        customParam.setParam("asr_durationUp", Long.valueOf(bundle.getLong(KEY_FILE_UP_DURATION)));
        customParam.setParam("asr_durationDown", Long.valueOf(bundle.getLong(KEY_FILE_DOWN_DURATION)));
        customParam.setParam("asr_peerIdUp", bundle.getString(KEY_FILE_UP_PEER_ID));
        customParam.setParam("asr_peerIdDown", bundle.getString(KEY_FILE_DOWN_PEER_ID));
        customParam.setParam("asr_isSmooth", Boolean.valueOf(bundle.getBoolean(KEY_FILE_IS_SMOOTH)));
        customParam.setParam("asr_dUId", bundle.getString(KEY_DUID));
        customParam.setParam("asr_queryTime", Long.valueOf(bundle.getLong(KEY_QUERY_TIME)));
        customParam.setParam("asr_heartTime", Long.valueOf(bundle.getLong(KEY_HEART_TIME)));
        customParam.setParam("asr_languageType", bundle.getString(KEY_FILE_LANGUAGE_TYPE));
        customParam.setParam("asr_recordId", bundle.getString(KEY_FILE_RECORDID));
    }

    public final void setLanguage(String str, List<String> list) {
        ParamPackage customParam = getCustomParam();
        customParam.setParamStr(KEY_METHOD_TYPE, METHOD_SET_LANGUAGE);
        customParam.setParamStr("asr_fromLanguage", str);
        if (list == null || list.size() <= 0) {
            return;
        }
        customParam.setParamStr("asr_languageList", new d().v(list));
    }

    public final void setPCMData(byte[] byteArray, String peerId, long j10, long j11) {
        r.e(byteArray, "byteArray");
        r.e(peerId, "peerId");
        a(byteArray);
        ParamPackage customParam = getCustomParam();
        customParam.setParamStr(KEY_METHOD_TYPE, METHOD_PROCESS_DATA);
        customParam.setParamStr(KEY_PEER_ID, peerId);
        customParam.setParam(KEY_SEQ_NUMBER, Long.valueOf(j10));
        customParam.setParam(KEY_TIMESTAMP, Long.valueOf(j11));
    }

    public final void stopFileData(Bundle bundle) {
        ParamPackage customParam = getCustomParam();
        customParam.setParamStr(KEY_METHOD_TYPE, METHOD_FILE_STOP);
        if (bundle != null) {
            customParam.setParam("asr_recordId", bundle.getString(KEY_FILE_RECORDID));
        }
    }
}
