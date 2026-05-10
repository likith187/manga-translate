package com.oplus.aiunit.realtime_asr.slot;

import com.google.gson.d;
import com.oplus.aiunit.core.FrameUnit;
import com.oplus.aiunit.core.ParamPackage;
import com.oplus.aiunit.core.base.AIContext;
import com.oplus.aiunit.core.base.FrameInputSlot;
import com.oplus.aiunit.core.protocol.common.ErrorCode;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.realtime_asr.client.RealTimeASRClient;
import com.oplus.aiunit.realtime_asr.request.TranslateConfigRequest;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class RealTimeAsrInputSlot extends FrameInputSlot {
    public static final Companion Companion = new Companion(null);
    public static final String KEY_AUDIO_DATA = "audioStream";
    public static final String KEY_AUDIO_DURATION = "audioDuration";
    public static final String KEY_BIZ_TYPE = "bizType";
    public static final String KEY_CALL_ID = "callId";
    public static final String KEY_IS_REMOVE_MODAL = "isRemoveModal";
    public static final String KEY_IS_REMOVE_SENSITIVE = "isRemoveSensitive";
    public static final String KEY_LANGUAGE = "language";
    public static final String KEY_MESSAGE_ID = "msgId";
    public static final String KEY_METHOD_CALL = "callMethod";
    public static final String KEY_RECONNECT_TYPE = "reconnectType";
    public static final String KEY_SPEAKER = "speaker";
    public static final String KEY_TARGET_LANGUAGE = "targetLanguage";
    public static final String KEY_TIMESTAMP = "timestamp";
    public static final String METHOD_ASR_ABANDON = "asrAbandon";
    public static final String METHOD_ASR_GET_APP_STATE = "getAppState";
    public static final String METHOD_ASR_RECONNECT = "asrReconnect";
    public static final String METHOD_ASR_RELEASE = "asrRelease";
    public static final String METHOD_ASR_RETRY_ON_FAILURE = "asrRetryOnFailure";
    public static final String METHOD_END_ASR = "endAsr";
    public static final String METHOD_GET_ONLINE_CONFIG = "get_online_config";
    public static final String METHOD_INIT_ASR = "initAsr";
    public static final String METHOD_PROCESS_DOWN_ASR = "processDownAsr";
    public static final String METHOD_PROCESS_UP_ASR = "processUpAsr";
    public static final String METHOD_START_ASR = "startAsr";
    public static final String SDK_CHANGE = "sdkChange";
    public static final int SIZE_BUFFER = 10;
    public static final String TAG = "RealTimeAsrInputSlot";

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public RealTimeAsrInputSlot(AIContext aIContext) {
        super(aIContext);
    }

    public static /* synthetic */ void callInitAsrMethod$default(RealTimeAsrInputSlot realTimeAsrInputSlot, String str, String str2, String str3, RealTimeASRClient.Speaker speaker, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 32) != 0) {
            z11 = true;
        }
        realTimeAsrInputSlot.callInitAsrMethod(str, str2, str3, speaker, z10, z11);
    }

    private final void dealByteArray(byte[] bArr) {
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

    public final void callAbandonMethod(String callId) {
        r.e(callId, "callId");
        ParamPackage customParam = getCustomParam();
        customParam.setParam(KEY_METHOD_CALL, METHOD_ASR_ABANDON);
        customParam.setParam(KEY_CALL_ID, callId);
    }

    public final void callAiReleaseMethod(String callId) {
        r.e(callId, "callId");
        ParamPackage customParam = getCustomParam();
        customParam.setParam(KEY_METHOD_CALL, METHOD_ASR_RELEASE);
        customParam.setParam(KEY_CALL_ID, callId);
    }

    public final void callEndAsrMethod(String callId, RealTimeASRClient.Speaker speaker) {
        r.e(callId, "callId");
        r.e(speaker, "speaker");
        ParamPackage customParam = getCustomParam();
        customParam.setParam(KEY_METHOD_CALL, METHOD_END_ASR);
        customParam.setParam(KEY_CALL_ID, callId);
        customParam.setParam(KEY_BIZ_TYPE, "AUDIO");
        customParam.setParam("speaker", speaker.getValue());
    }

    public final void callGetAppStateMethod() {
        getCustomParam().setParam(KEY_METHOD_CALL, METHOD_ASR_GET_APP_STATE);
    }

    public final void callInitAsrMethod(String callId, String language, String targetLanguage, RealTimeASRClient.Speaker speaker, boolean z10, boolean z11) {
        r.e(callId, "callId");
        r.e(language, "language");
        r.e(targetLanguage, "targetLanguage");
        ParamPackage customParam = getCustomParam();
        customParam.setParam(KEY_METHOD_CALL, METHOD_INIT_ASR);
        customParam.setParam(KEY_CALL_ID, callId);
        customParam.setParam(KEY_LANGUAGE, language);
        customParam.setParam(SDK_CHANGE, "1");
        customParam.setParam(KEY_TARGET_LANGUAGE, targetLanguage);
        Object obj = speaker;
        if (speaker == null) {
            obj = "";
        }
        customParam.setParam("speaker", obj);
        customParam.setParam(KEY_IS_REMOVE_MODAL, Boolean.valueOf(z10));
        customParam.setParam(KEY_IS_REMOVE_SENSITIVE, Boolean.valueOf(z11));
    }

    public final void callProcessDownAsr(String callId, long j10, String timeStamp, byte[] audioFrameData, int i10, String speaker) {
        r.e(callId, "callId");
        r.e(timeStamp, "timeStamp");
        r.e(audioFrameData, "audioFrameData");
        r.e(speaker, "speaker");
        dealByteArray(audioFrameData);
        ParamPackage customParam = getCustomParam();
        customParam.setParam(KEY_METHOD_CALL, METHOD_PROCESS_DOWN_ASR);
        customParam.setParam(KEY_CALL_ID, callId);
        customParam.setParam(KEY_MESSAGE_ID, Long.valueOf(j10));
        customParam.setParam(KEY_TIMESTAMP, timeStamp);
        customParam.setParam(KEY_AUDIO_DURATION, Integer.valueOf(i10));
        customParam.setParam("speaker", speaker);
    }

    public final void callProcessUpAsr(String callId, long j10, String timeStamp, byte[] audioFrameData, int i10) {
        r.e(callId, "callId");
        r.e(timeStamp, "timeStamp");
        r.e(audioFrameData, "audioFrameData");
        dealByteArray(audioFrameData);
        ParamPackage customParam = getCustomParam();
        customParam.setParam(KEY_METHOD_CALL, METHOD_PROCESS_UP_ASR);
        customParam.setParam(KEY_CALL_ID, callId);
        customParam.setParam(KEY_MESSAGE_ID, Long.valueOf(j10));
        customParam.setParam(KEY_TIMESTAMP, timeStamp);
        customParam.setParam(KEY_AUDIO_DURATION, Integer.valueOf(i10));
    }

    public final void callReconnectMethod(String callId, boolean z10) {
        r.e(callId, "callId");
        ParamPackage customParam = getCustomParam();
        customParam.setParam(KEY_METHOD_CALL, METHOD_ASR_RECONNECT);
        customParam.setParam(KEY_CALL_ID, callId);
        customParam.setParam(KEY_RECONNECT_TYPE, Boolean.valueOf(z10));
    }

    public final void callRetryOnFailureMethod(Long l10) {
        if (l10 != null) {
            ParamPackage customParam = getCustomParam();
            customParam.setParam(KEY_METHOD_CALL, METHOD_ASR_RETRY_ON_FAILURE);
            customParam.setParam(KEY_MESSAGE_ID, l10);
        }
    }

    public final void callStartAsrMethod(String callId, RealTimeASRClient.Speaker speaker) {
        r.e(callId, "callId");
        r.e(speaker, "speaker");
        ParamPackage customParam = getCustomParam();
        customParam.setParam(KEY_METHOD_CALL, METHOD_START_ASR);
        customParam.setParam(KEY_CALL_ID, callId);
        customParam.setParam("speaker", speaker.getValue());
    }

    public final void getOnlineConfig(TranslateConfigRequest request) {
        r.e(request, "request");
        getCustomParam().setParam(KEY_METHOD_CALL, METHOD_GET_ONLINE_CONFIG);
        setJsonSource(new d().v(request));
    }
}
