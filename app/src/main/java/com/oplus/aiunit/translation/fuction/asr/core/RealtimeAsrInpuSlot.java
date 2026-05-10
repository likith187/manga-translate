package com.oplus.aiunit.translation.fuction.asr.core;

import android.util.Log;
import com.google.gson.d;
import com.oplus.aiunit.core.FrameUnit;
import com.oplus.aiunit.core.base.AIContext;
import com.oplus.aiunit.core.protocol.common.ErrorCode;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.sdk.translation.BuildConfig;
import com.oplus.aiunit.translation.common.BaseInputSlot;
import com.oplus.aiunit.translation.common.RequestParamConstant;
import com.oplus.aiunit.translation.data.AsrStartRequest;
import com.oplus.aiunit.translation.request.SetFeatureEnableRequest;
import com.oplus.aiunit.translation.request.StartAsrRequest;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class RealtimeAsrInpuSlot extends BaseInputSlot {
    public static final Companion Companion = new Companion(null);
    public static final int SIZE_BUFFER = 10;
    private static final String TAG = "RealtimeAsrInpuSlot";

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealtimeAsrInpuSlot(AIContext context) {
        super(context);
        r.e(context, "context");
    }

    private final void dealByteArray(byte[] bArr) {
        Log.i(TAG, "dealByteArray, length = " + bArr.length);
        int length = bArr.length;
        FrameUnit frameUnit = getFrameUnit(0);
        if (frameUnit == null) {
            Log.e(TAG, "frameUnit is null");
            frameUnit = getAIContext().applyFrameUnit(length * 10);
            if (frameUnit == null) {
                Log.e(TAG, "frame Unit apply failed");
                setError(ErrorCode.kErrorInvalidParam);
                return;
            }
        }
        frameUnit.setFlag(1);
        frameUnit.setWidth(length);
        frameUnit.setHeight(0);
        frameUnit.setChannel(1);
        if (addFrameUnit(frameUnit) < 0) {
            Log.e(TAG, "add frame unit failed.");
            setError(ErrorCode.kErrorInvalidParam);
            return;
        }
        int width = frameUnit.getWidth();
        int height = frameUnit.getHeight();
        if (width != length) {
            Log.e(TAG, "data len " + length);
            setError(ErrorCode.kErrorInvalidParam);
            throw new IllegalArgumentException("data size not match with previous");
        }
        int i10 = width * height;
        if (i10 + length > frameUnit.getBufferSize()) {
            Log.e(TAG, "data size will overflow, won't set anymore.");
            setError(ErrorCode.kErrorNoBufferSpace);
            return;
        }
        ByteBuffer byteBufferOpenBuffer = frameUnit.openBuffer();
        Log.i(TAG, "byteBuffer: " + byteBufferOpenBuffer);
        if (byteBufferOpenBuffer != null) {
            byteBufferOpenBuffer.position(i10);
            byteBufferOpenBuffer.put(bArr, 0, length);
            frameUnit.closeBuffer();
        }
        frameUnit.setHeight(height + 1);
    }

    private final void setAsrRequiredParams(String str, String str2, String str3) {
        AILog.d(TAG, "setAsrRequiredParams: hashcode=" + str + " pkgName=" + str2 + " channel=" + str3);
        if (str2 != null) {
            setCustomParam("realtime_asr_init_pkg_name", str2);
        }
        setCustomParam("realtime_asr_hashcode", str);
        if (str3 != null) {
            setCustomParam("realtime_asr_audio_ws_channel", str3);
        }
        setCustomParam(RequestParamConstant.KEY_SDK_VERSION, BuildConfig.AI_SDK_VERSION);
        setCustomParam(RequestParamConstant.KEY_SDK_VERSION_CODE, BuildConfig.AI_SDK_VERSION_CODE);
    }

    public final void setFeatureEnableInput(SetFeatureEnableRequest params) {
        r.e(params, "params");
        setCustomParam("custom::translation_method", "method_set_feature_enable");
        setCustomParam("realtime_asr_audio_ws_channel", params.getChannel());
        if (params.getEnableMt() != null) {
            setCustomParam("realtime_asr_is_enable_mt", String.valueOf(params.getEnableMt()));
        }
        if (params.getEnableTts() != null) {
            setCustomParam("realtime_asr_is_enable_tts", String.valueOf(params.getEnableTts()));
        }
        if (params.getSpeed() != null) {
            setCustomParam("realtime_asr_tts_speed", params.getSpeed());
        }
        if (params.getVoiceName() != null) {
            setCustomParam("realtime_asr_tts_voice_name", params.getVoiceName());
        }
        if (params.getExpandParams() != null) {
            setCustomParam("realtime_asr_feature_enable_expand", params.getExpandParams());
        }
        setAsrRequiredParams(params.getHashcode(), params.getPkgName(), params.getChannel());
    }

    public final void setInitOmniPluginInput() {
        setCustomParam("custom::translation_method", "method_init_omni_plugin");
    }

    public final void setRealtimeAsrAbandonInput(String hashcode, String pkgName, String channel, String recordId) {
        r.e(hashcode, "hashcode");
        r.e(pkgName, "pkgName");
        r.e(channel, "channel");
        r.e(recordId, "recordId");
        setCustomParam("custom::translation_method", "method_realtime_asr_abandon");
        setCustomParam("realtime_asr_record_id", recordId);
        setAsrRequiredParams(hashcode, pkgName, channel);
    }

    public final void setRealtimeAsrAudioInput(String hashcode, String pkgName, String channel, byte[] audio, String msgId) {
        r.e(hashcode, "hashcode");
        r.e(pkgName, "pkgName");
        r.e(channel, "channel");
        r.e(audio, "audio");
        r.e(msgId, "msgId");
        dealByteArray(audio);
        setCustomParam("custom::translation_method", "method_realtime_asr_audio");
        setCustomParam("realtime_asr_audio_msgid", msgId);
        setAsrRequiredParams(hashcode, pkgName, channel);
    }

    public final void setRealtimeAsrEndInput(String hashcode, String pkgName, String channel, String recordId) {
        r.e(hashcode, "hashcode");
        r.e(pkgName, "pkgName");
        r.e(channel, "channel");
        r.e(recordId, "recordId");
        setCustomParam("custom::translation_method", "method_realtime_asr_end");
        setCustomParam("realtime_asr_record_id", recordId);
        setAsrRequiredParams(hashcode, pkgName, channel);
    }

    public final void setRealtimeAsrInitInput(String str, String str2, String hashcode, String str3, String str4, Boolean bool, String str5, String str6) {
        r.e(hashcode, "hashcode");
        setCustomParam("custom::translation_method", "method_realtime_asr_init");
        setCustomParam("realtime_asr_init_src_language", str);
        setCustomParam("realtime_asr_init_target_language", str2);
        if (bool != null) {
            setCustomParam("realtime_asr_is_store_audio", bool.toString());
        }
        setCustomParam("realtime_asr_expand_params", str5);
        setCustomParam(RealtimeAsrClient.PARAM_KEY_REALTIME_ASR_EXTEND_HEADER_PARAMS, str6);
        setAsrRequiredParams(hashcode, str3, str4);
    }

    public final void setRealtimeAsrReleaseInput(String hashcode, String pkgName, String channel) {
        r.e(hashcode, "hashcode");
        r.e(pkgName, "pkgName");
        r.e(channel, "channel");
        setCustomParam("custom::translation_method", "method_realtime_asr_release");
        setAsrRequiredParams(hashcode, pkgName, channel);
    }

    public final void setRealtimeAsrStartInput(StartAsrRequest request) {
        r.e(request, "request");
        AsrStartRequest asrStartRequest = new AsrStartRequest();
        asrStartRequest.setWsChannel(request.getWsChannel());
        asrStartRequest.setRecordId(request.getRecordId());
        asrStartRequest.setEnableLLM(request.getEnableLLM());
        asrStartRequest.setSceneId(request.getSceneId());
        asrStartRequest.setModel(request.getModel());
        asrStartRequest.setAccent(request.getAccent());
        asrStartRequest.setFormat(request.getFormat());
        Integer asrAudioTrack = request.getAsrAudioTrack();
        if (asrAudioTrack != null) {
            asrStartRequest.setAsrChannel(asrAudioTrack.intValue());
        }
        asrStartRequest.setSampleBytes(2);
        asrStartRequest.setSampleRate(16000);
        asrStartRequest.setFrameSize(640);
        asrStartRequest.setEnableLid(request.getenableLid());
        if (request.getSourceLanguages() != null) {
            asrStartRequest.setSourceLanguages(request.getSourceLanguages());
        }
        asrStartRequest.setEnableMt(request.getEnableMt());
        asrStartRequest.setSrcLanguage(request.getSrcLanguage());
        asrStartRequest.setTargetLanguage(request.getTargetLanguage());
        asrStartRequest.setEnableTts(request.getEnableTts());
        if (request.getVoiceName() != null) {
            asrStartRequest.setVoiceName(request.getVoiceName());
        }
        if (request.getSpeedGrade() != null) {
            asrStartRequest.setSpeedGrade(request.getSpeedGrade());
        }
        String strV = new d().v(asrStartRequest);
        setCustomParam("custom::translation_method", "method_realtime_asr_start");
        setCustomParam("realtime_asr_startasr_jsonstring", strV);
        setAsrRequiredParams(request.getHashcode(), request.getPkgName(), request.getWsChannel());
    }
}
