package com.oplus.aiunit.translation.fuction.asr.dynamic;

import android.content.Context;
import android.os.Looper;
import com.google.gson.d;
import com.oplus.aisubsystem.core.client.AiSettings;
import com.oplus.aisubsystem.core.client.DynamicAiClient;
import com.oplus.aiunit.core.FramePackage;
import com.oplus.aiunit.core.base.AIContext;
import com.oplus.aiunit.core.base.FrameInputSlot;
import com.oplus.aiunit.core.base.FrameOutputSlot;
import com.oplus.aiunit.core.callback.IAIMessenger;
import com.oplus.aiunit.core.protocol.common.ErrorCode;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.sdk.translation.BuildConfig;
import com.oplus.aiunit.toolkits.AISettings;
import com.oplus.aiunit.translation.callback.AsrRspCallback;
import com.oplus.aiunit.translation.callback.Callback;
import com.oplus.aiunit.translation.common.BaseClient;
import com.oplus.aiunit.translation.common.RequestParamConstant;
import com.oplus.aiunit.translation.data.AsrAudioAck;
import com.oplus.aiunit.translation.data.AsrBaseResponse;
import com.oplus.aiunit.translation.data.AsrMtAck;
import com.oplus.aiunit.translation.data.AsrRspExtendCodec;
import com.oplus.aiunit.translation.data.AsrTtsAck;
import com.oplus.aiunit.translation.fuction.asr.core.RealtimeAsrInpuSlot;
import com.oplus.aiunit.translation.request.SetFeatureEnableRequest;
import com.oplus.aiunit.translation.request.StartAsrRequest;
import com.oplus.aiunit.translation.utils.AILogHelper;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class DynamicRealtimeAsrClient extends DynamicAiClient {
    public static final String ABANDON_ASK = "ABANDON_ASK";
    public static final String ASR_ASK = "ASR_ASK";
    public static final Companion Companion = new Companion(null);
    public static final String END_ASK = "END_ASK";
    public static final int ERROR_PLUGIN_INNER_FAILURE = 100110;
    public static final String INIT_ASR_ASK = "INIT_ASR_ASK";
    public static final String METHOD_ABANDON_REALTIME_ASR = "method_realtime_asr_abandon";
    public static final String METHOD_END_REALTIME_ASR = "method_realtime_asr_end";
    public static final String METHOD_INIT_OMNI_PLUGIN = "method_init_omni_plugin";
    public static final String METHOD_INIT_REALTIME_ASR = "method_realtime_asr_init";
    public static final String METHOD_REALTIME_ASR_AUDIO = "method_realtime_asr_audio";
    public static final String METHOD_REALTIME_ASR_CALLBACK = "method_realtime_asr_callback";
    public static final String METHOD_RELEASE_REALTIME_ASR = "method_realtime_asr_release";
    public static final String METHOD_SET_FEATURE_ENABLE = "method_set_feature_enable";
    public static final String METHOD_START_REALTIME_ASR = "method_realtime_asr_start";
    public static final String PARAM_CLIENT_LABEL = "RealtimeAsrClient";
    public static final String PARAM_KEY_REALTIME_ASR_ACK_TYPE = "realtime_asr_ack_type";
    public static final String PARAM_KEY_REALTIME_ASR_AUDIO_CONTENT = "realtime_asr_audio_content";
    public static final String PARAM_KEY_REALTIME_ASR_AUDIO_FILE = "realtime_asr_tts_audioFile";
    public static final String PARAM_KEY_REALTIME_ASR_AUDIO_MSGID = "realtime_asr_audio_msgid";
    public static final String PARAM_KEY_REALTIME_ASR_BIZTYPE = "realtime_asr_biz_type";
    public static final String PARAM_KEY_REALTIME_ASR_END_OFFSET = "realtime_asr_end_offset";
    public static final String PARAM_KEY_REALTIME_ASR_ERROR_CODE = "realtime_asr_error_code";
    public static final String PARAM_KEY_REALTIME_ASR_ERROR_MSG = "realtime_asr_error_msg";
    public static final String PARAM_KEY_REALTIME_ASR_EXPAND_PARAMS = "realtime_asr_expand_params";
    public static final String PARAM_KEY_REALTIME_ASR_FEATURE_EXPAND = "realtime_asr_feature_enable_expand";
    public static final String PARAM_KEY_REALTIME_ASR_HASHCODE = "realtime_asr_hashcode";
    public static final String PARAM_KEY_REALTIME_ASR_INIT_DEST_LANG = "realtime_asr_init_target_language";
    public static final String PARAM_KEY_REALTIME_ASR_INIT_PKGNAME = "realtime_asr_init_pkg_name";
    public static final String PARAM_KEY_REALTIME_ASR_INIT_SRC_LANG = "realtime_asr_init_src_language";
    public static final String PARAM_KEY_REALTIME_ASR_IS_ENABLE_MT = "realtime_asr_is_enable_mt";
    public static final String PARAM_KEY_REALTIME_ASR_IS_ENABLE_TTS = "realtime_asr_is_enable_tts";
    public static final String PARAM_KEY_REALTIME_ASR_IS_STORE_AUDIO = "realtime_asr_is_store_audio";
    public static final String PARAM_KEY_REALTIME_ASR_MT_SRC_TEXT = "realtime_asr_mt_src_text";
    public static final String PARAM_KEY_REALTIME_ASR_MT_TARGET_TEXT = "realtime_asr_mt_target_text";
    public static final String PARAM_KEY_REALTIME_ASR_MT_TYPE = "realtime_asr_mt_type";
    public static final String PARAM_KEY_REALTIME_ASR_RECORD_ID = "realtime_asr_record_id";
    public static final String PARAM_KEY_REALTIME_ASR_REQUEST_ID = "realtime_asr_request_id";
    public static final String PARAM_KEY_REALTIME_ASR_START_OFFSET = "realtime_asr_start_offset";
    public static final String PARAM_KEY_REALTIME_ASR_START_REQUEST = "realtime_asr_startasr_jsonstring";
    public static final String PARAM_KEY_REALTIME_ASR_TEXT = "realtime_asr_text";
    public static final String PARAM_KEY_REALTIME_ASR_TTS_BIT = "realtime_asr_tts_bit";
    public static final String PARAM_KEY_REALTIME_ASR_TTS_FORMAT = "realtime_asr_tts_format";
    public static final String PARAM_KEY_REALTIME_ASR_TTS_SAMPLE = "realtime_asr_tts_sample";
    public static final String PARAM_KEY_REALTIME_ASR_TTS_SPEED = "realtime_asr_tts_speed";
    public static final String PARAM_KEY_REALTIME_ASR_TTS_TEXT = "realtime_asr_tts_text";
    public static final String PARAM_KEY_REALTIME_ASR_VOICE_NAME = "realtime_asr_tts_voice_name";
    public static final String PARAM_KEY_REALTIME_ASR_WS_CHANNEL = "realtime_asr_audio_ws_channel";
    public static final String PARAM_KEY_RSP_EXTEND_PARAMS = "realtime_asr_response_extend";
    public static final String PARAM_KEY_RSP_EXTEND_RISKCODE = "realtime_asr_rsp_risk_code";
    public static final String PARAM_KEY_RSP_EXTEND_RISK_WORDS = "realtime_asr_rsp_risk_words";
    public static final String PARAM_VALUE_REALTIME_ASR_CALLBACK_TYPE = "realtime_asr_callback_type";
    public static final String PARAM_VALUE_REALTIME_ASR_CB_ONASR = "realtime_asr_callback_onasr";
    public static final String PARAM_VALUE_REALTIME_ASR_CB_ONMT = "realtime_asr_callback_onmt";
    public static final String PARAM_VALUE_REALTIME_ASR_CB_ONRESULT = "realtime_asr_callback_onresult";
    public static final String PARAM_VALUE_REALTIME_ASR_CB_ONTTS = "realtime_asr_callback_ontts";
    public static final String PARAM_VALUE_REALTIME_ASR_START_REQUEST = "realtime_asr_start_request_info";
    public static final String PARAM_VALUE_REALTIME_ASR_TASK_COMPLETE = "realtime_asr_task_complete";
    public static final String RELEASE_ASR_ASK = "RELEASE_ASR_ASK";
    public static final String START_ASK = "START_ASK";
    public static final String TAG = "RealtimeAsrClient";
    private final String detectName;
    private ConcurrentHashMap<String, AsrRspCallback> mCommonCallback;
    private AsrRspCallback mSpecialCallback;

    public static final class AudioAsrReqParam {
        private byte[] audio;
        private String channel;
        private String hashcode;
        private String msgId;
        private String pkgName;

        public final byte[] getAudio() {
            return this.audio;
        }

        public final String getChannel() {
            return this.channel;
        }

        public final String getHashcode() {
            return this.hashcode;
        }

        public final String getMsgId() {
            return this.msgId;
        }

        public final String getPkgName() {
            return this.pkgName;
        }

        public final void setAudio(byte[] bArr) {
            this.audio = bArr;
        }

        public final void setChannel(String str) {
            this.channel = str;
        }

        public final void setHashcode(String str) {
            this.hashcode = str;
        }

        public final void setMsgId(String str) {
            this.msgId = str;
        }

        public final void setPkgName(String str) {
            this.pkgName = str;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public static final class EndAsrReqParam {
        private String channel;
        private String hashcode;
        private String pkgName;
        private String recordId;

        public final String getChannel() {
            return this.channel;
        }

        public final String getHashcode() {
            return this.hashcode;
        }

        public final String getPkgName() {
            return this.pkgName;
        }

        public final String getRecordId() {
            return this.recordId;
        }

        public final void setChannel(String str) {
            this.channel = str;
        }

        public final void setHashcode(String str) {
            this.hashcode = str;
        }

        public final void setPkgName(String str) {
            this.pkgName = str;
        }

        public final void setRecordId(String str) {
            this.recordId = str;
        }
    }

    public static final class InitAsrReqParam {
        private String channel;
        private String expandParams;
        private String hashcode = "";
        private Boolean isStoreAudio;
        private String language;
        private String pkgName;
        private String targetLanguage;

        public final String getChannel() {
            return this.channel;
        }

        public final String getExpandParams() {
            return this.expandParams;
        }

        public final String getHashcode() {
            return this.hashcode;
        }

        public final String getLanguage() {
            return this.language;
        }

        public final String getPkgName() {
            return this.pkgName;
        }

        public final String getTargetLanguage() {
            return this.targetLanguage;
        }

        public final Boolean isStoreAudio() {
            return this.isStoreAudio;
        }

        public final void setChannel(String str) {
            this.channel = str;
        }

        public final void setExpandParams(String str) {
            this.expandParams = str;
        }

        public final void setHashcode(String str) {
            r.e(str, "<set-?>");
            this.hashcode = str;
        }

        public final void setLanguage(String str) {
            this.language = str;
        }

        public final void setPkgName(String str) {
            this.pkgName = str;
        }

        public final void setStoreAudio(Boolean bool) {
            this.isStoreAudio = bool;
        }

        public final void setTargetLanguage(String str) {
            this.targetLanguage = str;
        }
    }

    public static final class ReleaseAsrReqParam {
        private String channel;
        private String hashcode;
        private String pkgName;

        public final String getChannel() {
            return this.channel;
        }

        public final String getHashcode() {
            return this.hashcode;
        }

        public final String getPkgName() {
            return this.pkgName;
        }

        public final void setChannel(String str) {
            this.channel = str;
        }

        public final void setHashcode(String str) {
            this.hashcode = str;
        }

        public final void setPkgName(String str) {
            this.pkgName = str;
        }
    }

    /* JADX INFO: renamed from: com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient$abandonAsrAudio$1 */
    public static final class AnonymousClass1 implements BaseClient.RunActionErrorListener {
        final /* synthetic */ String $channel;
        final /* synthetic */ String $hashcode;
        final /* synthetic */ String $pkgName;

        AnonymousClass1(String str, String str2, String str3) {
            str = str;
            str = str2;
            str = str3;
        }

        @Override // com.oplus.aiunit.translation.common.BaseClient.RunActionErrorListener
        public void onError(ErrorCode code, String msg) {
            r.e(code, "code");
            r.e(msg, "msg");
            AsrBaseResponse asrBaseResponse = new AsrBaseResponse();
            asrBaseResponse.setCode(code.value());
            asrBaseResponse.setMessage(msg);
            asrBaseResponse.setBizType("ABANDON_ASK");
            AsrRspCallback realtimeAsrCallback = DynamicRealtimeAsrClient.this.getRealtimeAsrCallback(str, str, str);
            if (realtimeAsrCallback != null) {
                realtimeAsrCallback.onResult(asrBaseResponse);
            }
        }
    }

    /* JADX INFO: renamed from: com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient$endAsrAudio$1 */
    public static final class C02891 implements BaseClient.RunActionErrorListener {
        final /* synthetic */ String $channel;
        final /* synthetic */ String $hashcode;
        final /* synthetic */ String $pkgName;

        C02891(String str, String str2, String str3) {
            str = str;
            str = str2;
            str = str3;
        }

        @Override // com.oplus.aiunit.translation.common.BaseClient.RunActionErrorListener
        public void onError(ErrorCode code, String msg) {
            r.e(code, "code");
            r.e(msg, "msg");
            AsrBaseResponse asrBaseResponse = new AsrBaseResponse();
            asrBaseResponse.setCode(code.value());
            asrBaseResponse.setMessage(msg);
            asrBaseResponse.setBizType("END_ASK");
            AsrRspCallback realtimeAsrCallback = DynamicRealtimeAsrClient.this.getRealtimeAsrCallback(str, str, str);
            if (realtimeAsrCallback != null) {
                realtimeAsrCallback.onResult(asrBaseResponse);
            }
        }
    }

    /* JADX INFO: renamed from: com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient$initOmniPlugin$1 */
    public static final class C02901 implements BaseClient.RunActionErrorListener {
        C02901() {
        }

        @Override // com.oplus.aiunit.translation.common.BaseClient.RunActionErrorListener
        public void onError(ErrorCode code, String msg) {
            r.e(code, "code");
            r.e(msg, "msg");
            AILogHelper.Companion.e("RealtimeAsrClient", "initOmniPlugin error: ErrorCode = " + code + ", msg = " + msg);
        }
    }

    /* JADX INFO: renamed from: com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient$initRealtimeAsr$1 */
    public static final class C02911 implements BaseClient.RunActionErrorListener {
        C02911() {
        }

        @Override // com.oplus.aiunit.translation.common.BaseClient.RunActionErrorListener
        public void onError(ErrorCode code, String msg) {
            r.e(code, "code");
            r.e(msg, "msg");
            AsrBaseResponse asrBaseResponse = new AsrBaseResponse();
            asrBaseResponse.setCode(code.value());
            asrBaseResponse.setMessage(msg);
            asrBaseResponse.setBizType("INIT_ASR_ASK");
            asrRspCallback.onResult(asrBaseResponse);
        }
    }

    /* JADX INFO: renamed from: com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient$processEvent$1 */
    public static final class C02921 implements DynamicAiClient.Action<String> {
        final /* synthetic */ T $callback;
        final /* synthetic */ BaseClient.RunActionErrorListener $listener;
        final /* synthetic */ String $methods;
        final /* synthetic */ T $request;

        C02921(T t10, T t11, String str, BaseClient.RunActionErrorListener runActionErrorListener) {
            t = t10;
            t = t11;
            str = str;
            runActionErrorListener = runActionErrorListener;
        }

        public String failure(ErrorCode code, String msg) {
            r.e(code, "code");
            r.e(msg, "msg");
            BaseClient.RunActionErrorListener runActionErrorListener = runActionErrorListener;
            if (runActionErrorListener == null) {
                return null;
            }
            runActionErrorListener.onError(code, msg);
            return null;
        }

        public String run() {
            final DynamicRealtimeAsrClient dynamicRealtimeAsrClient = DynamicRealtimeAsrClient.this;
            final T t10 = t;
            final String str = str;
            return DynamicRealtimeAsrClient.this.handleInput(t, t, str, new IAIMessenger.Stub() { // from class: com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient$processEvent$1$run$messenger$1
                @Override // com.oplus.aiunit.core.callback.IAIMessenger
                public int send(FramePackage framePackage) {
                    h0 h0Var;
                    if (framePackage != null) {
                        dynamicRealtimeAsrClient.handleResult(framePackage, t10, str);
                        h0Var = h0.INSTANCE;
                    } else {
                        h0Var = null;
                    }
                    if (h0Var != null) {
                        return ErrorCode.kErrorNone.value();
                    }
                    AILogHelper.Companion.e("RealtimeAsrClient", "IAIMessenger framePackage null");
                    throw new IllegalStateException("IAIMessenger framePackage null");
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient$releaseAsr$1 */
    public static final class C02931 implements BaseClient.RunActionErrorListener {
        final /* synthetic */ String $channel;
        final /* synthetic */ String $hashcode;
        final /* synthetic */ String $pkgName;

        C02931(String str, String str2, String str3) {
            str = str;
            str = str2;
            str = str3;
        }

        @Override // com.oplus.aiunit.translation.common.BaseClient.RunActionErrorListener
        public void onError(ErrorCode code, String msg) {
            r.e(code, "code");
            r.e(msg, "msg");
            AsrBaseResponse asrBaseResponse = new AsrBaseResponse();
            asrBaseResponse.setCode(code.value());
            asrBaseResponse.setMessage(msg);
            asrBaseResponse.setBizType("RELEASE_ASR_ASK");
            AsrRspCallback realtimeAsrCallback = DynamicRealtimeAsrClient.this.getRealtimeAsrCallback(str, str, str);
            if (realtimeAsrCallback != null) {
                realtimeAsrCallback.onResult(asrBaseResponse);
            }
        }
    }

    /* JADX INFO: renamed from: com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient$sendAsrAudio$1 */
    public static final class C02941 implements BaseClient.RunActionErrorListener {
        final /* synthetic */ String $channel;
        final /* synthetic */ String $hashcode;
        final /* synthetic */ String $pkgName;

        C02941(String str, String str2, String str3) {
            str = str;
            str = str2;
            str = str3;
        }

        @Override // com.oplus.aiunit.translation.common.BaseClient.RunActionErrorListener
        public void onError(ErrorCode code, String msg) {
            r.e(code, "code");
            r.e(msg, "msg");
            AsrBaseResponse asrBaseResponse = new AsrBaseResponse();
            asrBaseResponse.setCode(code.value());
            asrBaseResponse.setMessage(msg);
            asrBaseResponse.setBizType("ASR_ASK");
            AsrRspCallback realtimeAsrCallback = DynamicRealtimeAsrClient.this.getRealtimeAsrCallback(str, str, str);
            if (realtimeAsrCallback != null) {
                realtimeAsrCallback.onResult(asrBaseResponse);
            }
        }
    }

    /* JADX INFO: renamed from: com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient$setRecognizeFeature$1 */
    public static final class C02951 implements BaseClient.RunActionErrorListener {
        C02951() {
        }

        @Override // com.oplus.aiunit.translation.common.BaseClient.RunActionErrorListener
        public void onError(ErrorCode code, String msg) {
            r.e(code, "code");
            r.e(msg, "msg");
            AILogHelper.Companion.e("RealtimeAsrClient", "initOmniPlugin error: ErrorCode = " + code + ", msg = " + msg);
        }
    }

    /* JADX INFO: renamed from: com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient$startRealtimeAsr$1 */
    public static final class C02961 implements BaseClient.RunActionErrorListener {
        final /* synthetic */ String $channel;
        final /* synthetic */ String $hashcode;
        final /* synthetic */ String $pkgName;

        C02961(String str, String str2, String str3) {
            str = str;
            str = str2;
            str = str3;
        }

        @Override // com.oplus.aiunit.translation.common.BaseClient.RunActionErrorListener
        public void onError(ErrorCode code, String msg) {
            r.e(code, "code");
            r.e(msg, "msg");
            AsrBaseResponse asrBaseResponse = new AsrBaseResponse();
            asrBaseResponse.setCode(code.value());
            asrBaseResponse.setMessage(msg);
            asrBaseResponse.setBizType("START_ASK");
            AsrRspCallback realtimeAsrCallback = DynamicRealtimeAsrClient.this.getRealtimeAsrCallback(str, str, str);
            if (realtimeAsrCallback != null) {
                realtimeAsrCallback.onResult(asrBaseResponse);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicRealtimeAsrClient(Context context, String detectName) {
        super(context, detectName, new AiTranslationPlugin(context), (AiSettings) null, 8, (DefaultConstructorMarker) null);
        r.e(context, "context");
        r.e(detectName, "detectName");
        this.detectName = detectName;
        this.mCommonCallback = new ConcurrentHashMap<>();
    }

    public static /* synthetic */ void abandonAsrAudio$default(DynamicRealtimeAsrClient dynamicRealtimeAsrClient, String str, String str2, String str3, String str4, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            str4 = null;
        }
        dynamicRealtimeAsrClient.abandonAsrAudio(str, str2, str3, str4);
    }

    public static /* synthetic */ void endAsrAudio$default(DynamicRealtimeAsrClient dynamicRealtimeAsrClient, String str, String str2, String str3, String str4, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            str4 = null;
        }
        dynamicRealtimeAsrClient.endAsrAudio(str, str2, str3, str4);
    }

    public final AsrRspCallback getRealtimeAsrCallback(String str, String str2, String str3) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0 || str3 == null || str3.length() == 0) {
            return this.mSpecialCallback;
        }
        return this.mCommonCallback.get(str + str2 + str3);
    }

    private final <T> void handleOSlotResult(String str, T t10) {
        int i10;
        String str2;
        try {
            if (str.length() == 0) {
                str2 = "AIUnit相关错误";
                i10 = -2;
            } else {
                JSONObject jSONObject = new JSONObject(str);
                int i11 = jSONObject.getInt("code");
                String string = jSONObject.getString("msg");
                r.d(string, "getString(...)");
                i10 = i11;
                str2 = string;
            }
            AILogHelper.Companion.i("RealtimeAsrClient", "oSlot code:" + i10 + ",msg:" + str2);
            if (t10 == null || i10 == 0 || !(t10 instanceof Callback)) {
                return;
            }
            ((Callback) t10).onError(str2);
        } catch (Exception e10) {
            AILogHelper.Companion.i("RealtimeAsrClient", "oSlot catch:" + e10);
        }
    }

    private final <T> void process(final T t10, final T t11, final String str, final BaseClient.RunActionErrorListener runActionErrorListener) {
        if (r.a(Thread.currentThread(), Looper.getMainLooper().getThread())) {
            new Thread(new Runnable() { // from class: com.oplus.aiunit.translation.fuction.asr.dynamic.a
                @Override // java.lang.Runnable
                public final void run() {
                    DynamicRealtimeAsrClient.process$lambda$9(this.f10946a, t10, t11, str, runActionErrorListener);
                }
            }).start();
            AILogHelper.Companion.i("RealtimeAsrClient", "process()....0");
        } else {
            processEvent(t10, t11, str, runActionErrorListener);
            AILogHelper.Companion.i("RealtimeAsrClient", "process()....1");
        }
    }

    static /* synthetic */ void process$default(DynamicRealtimeAsrClient dynamicRealtimeAsrClient, Object obj, Object obj2, String str, BaseClient.RunActionErrorListener runActionErrorListener, int i10, Object obj3) {
        if ((i10 & 8) != 0) {
            runActionErrorListener = null;
        }
        dynamicRealtimeAsrClient.process(obj, obj2, str, runActionErrorListener);
    }

    public static final void process$lambda$9(DynamicRealtimeAsrClient this$0, Object obj, Object obj2, String methods, BaseClient.RunActionErrorListener runActionErrorListener) {
        r.e(this$0, "this$0");
        r.e(methods, "$methods");
        this$0.processEvent(obj, obj2, methods, runActionErrorListener);
    }

    private final <T> void processEvent(T t10, T t11, String str, BaseClient.RunActionErrorListener runActionErrorListener) {
        runAction(new DynamicAiClient.Action<String>() { // from class: com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient.processEvent.1
            final /* synthetic */ T $callback;
            final /* synthetic */ BaseClient.RunActionErrorListener $listener;
            final /* synthetic */ String $methods;
            final /* synthetic */ T $request;

            C02921(T t102, T t112, String str2, BaseClient.RunActionErrorListener runActionErrorListener2) {
                t = t102;
                t = t112;
                str = str2;
                runActionErrorListener = runActionErrorListener2;
            }

            public String failure(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                BaseClient.RunActionErrorListener runActionErrorListener2 = runActionErrorListener;
                if (runActionErrorListener2 == null) {
                    return null;
                }
                runActionErrorListener2.onError(code, msg);
                return null;
            }

            public String run() {
                final DynamicRealtimeAsrClient dynamicRealtimeAsrClient = DynamicRealtimeAsrClient.this;
                final T t102 = t;
                final String str2 = str;
                return DynamicRealtimeAsrClient.this.handleInput(t, t, str, new IAIMessenger.Stub() { // from class: com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient$processEvent$1$run$messenger$1
                    @Override // com.oplus.aiunit.core.callback.IAIMessenger
                    public int send(FramePackage framePackage) {
                        h0 h0Var;
                        if (framePackage != null) {
                            dynamicRealtimeAsrClient.handleResult(framePackage, t102, str2);
                            h0Var = h0.INSTANCE;
                        } else {
                            h0Var = null;
                        }
                        if (h0Var != null) {
                            return ErrorCode.kErrorNone.value();
                        }
                        AILogHelper.Companion.e("RealtimeAsrClient", "IAIMessenger framePackage null");
                        throw new IllegalStateException("IAIMessenger framePackage null");
                    }
                });
            }
        });
    }

    static /* synthetic */ void processEvent$default(DynamicRealtimeAsrClient dynamicRealtimeAsrClient, Object obj, Object obj2, String str, BaseClient.RunActionErrorListener runActionErrorListener, int i10, Object obj3) {
        if ((i10 & 8) != 0) {
            runActionErrorListener = null;
        }
        dynamicRealtimeAsrClient.processEvent(obj, obj2, str, runActionErrorListener);
    }

    private final void registerCallback(String str, String str2, String str3, AsrRspCallback asrRspCallback) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0 || str3 == null || str3.length() == 0) {
            this.mSpecialCallback = asrRspCallback;
            return;
        }
        this.mCommonCallback.put(str + str2 + str3, asrRspCallback);
    }

    public static /* synthetic */ void sendAsrAudio$default(DynamicRealtimeAsrClient dynamicRealtimeAsrClient, String str, String str2, String str3, byte[] bArr, String str4, int i10, Object obj) {
        if ((i10 & 16) != 0) {
            str4 = null;
        }
        dynamicRealtimeAsrClient.sendAsrAudio(str, str2, str3, bArr, str4);
    }

    private final void unregisterCallback(String str, String str2, String str3) {
        if (str == null || str.length() == 0) {
            return;
        }
        if (str2 == null || str2.length() == 0) {
            if (str3 == null || str3.length() == 0) {
                this.mCommonCallback.remove(str + str2 + str3);
            }
        }
    }

    public final void abandonAsrAudio(String pkgName, String hashcode, String channel, String str) {
        r.e(pkgName, "pkgName");
        r.e(hashcode, "hashcode");
        r.e(channel, "channel");
        EndAsrReqParam endAsrReqParam = new EndAsrReqParam();
        endAsrReqParam.setPkgName(pkgName);
        endAsrReqParam.setHashcode(hashcode);
        endAsrReqParam.setChannel(channel);
        endAsrReqParam.setRecordId(str);
        process(endAsrReqParam, getRealtimeAsrCallback(pkgName, hashcode, channel), "method_realtime_asr_abandon", new BaseClient.RunActionErrorListener() { // from class: com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient.abandonAsrAudio.1
            final /* synthetic */ String $channel;
            final /* synthetic */ String $hashcode;
            final /* synthetic */ String $pkgName;

            AnonymousClass1(String pkgName2, String hashcode2, String channel2) {
                str = pkgName2;
                str = hashcode2;
                str = channel2;
            }

            @Override // com.oplus.aiunit.translation.common.BaseClient.RunActionErrorListener
            public void onError(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                AsrBaseResponse asrBaseResponse = new AsrBaseResponse();
                asrBaseResponse.setCode(code.value());
                asrBaseResponse.setMessage(msg);
                asrBaseResponse.setBizType("ABANDON_ASK");
                AsrRspCallback realtimeAsrCallback = DynamicRealtimeAsrClient.this.getRealtimeAsrCallback(str, str, str);
                if (realtimeAsrCallback != null) {
                    realtimeAsrCallback.onResult(asrBaseResponse);
                }
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected <I extends FrameInputSlot> I createInputSlot() {
        return new RealtimeAsrInpuSlot((AIContext) this);
    }

    public final void endAsrAudio(String pkgName, String hashcode, String channel, String str) {
        r.e(pkgName, "pkgName");
        r.e(hashcode, "hashcode");
        r.e(channel, "channel");
        EndAsrReqParam endAsrReqParam = new EndAsrReqParam();
        endAsrReqParam.setPkgName(pkgName);
        endAsrReqParam.setHashcode(hashcode);
        endAsrReqParam.setChannel(channel);
        endAsrReqParam.setRecordId(str);
        process(endAsrReqParam, getRealtimeAsrCallback(pkgName, hashcode, channel), "method_realtime_asr_end", new BaseClient.RunActionErrorListener() { // from class: com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient.endAsrAudio.1
            final /* synthetic */ String $channel;
            final /* synthetic */ String $hashcode;
            final /* synthetic */ String $pkgName;

            C02891(String pkgName2, String hashcode2, String channel2) {
                str = pkgName2;
                str = hashcode2;
                str = channel2;
            }

            @Override // com.oplus.aiunit.translation.common.BaseClient.RunActionErrorListener
            public void onError(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                AsrBaseResponse asrBaseResponse = new AsrBaseResponse();
                asrBaseResponse.setCode(code.value());
                asrBaseResponse.setMessage(msg);
                asrBaseResponse.setBizType("END_ASK");
                AsrRspCallback realtimeAsrCallback = DynamicRealtimeAsrClient.this.getRealtimeAsrCallback(str, str, str);
                if (realtimeAsrCallback != null) {
                    realtimeAsrCallback.onResult(asrBaseResponse);
                }
            }
        });
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    public final <T> String handleInput(T t10, T t11, String methods, IAIMessenger messenger) {
        r.e(methods, "methods");
        r.e(messenger, "messenger");
        AILogHelper.Companion companion = AILogHelper.Companion;
        companion.i("RealtimeAsrClient", "process:" + methods);
        RealtimeAsrInpuSlot realtimeAsrInpuSlot = (RealtimeAsrInpuSlot) createInputSlot();
        realtimeAsrInpuSlot.setCustomParam(RequestParamConstant.PARAM_CLIENT_LABEL, "RealtimeAsrClient");
        realtimeAsrInpuSlot.setCustomParam(RequestParamConstant.KEY_SDK_VERSION, BuildConfig.AI_SDK_VERSION);
        realtimeAsrInpuSlot.setCustomParam(RequestParamConstant.KEY_SDK_VERSION_CODE, BuildConfig.AI_SDK_VERSION_CODE);
        switch (methods.hashCode()) {
            case -1956101147:
                if (methods.equals("method_realtime_asr_init")) {
                    r.c(t10, "null cannot be cast to non-null type com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient.InitAsrReqParam");
                    InitAsrReqParam initAsrReqParam = (InitAsrReqParam) t10;
                    realtimeAsrInpuSlot.setRealtimeAsrInitInput((128 & 1) != 0 ? null : initAsrReqParam.getLanguage(), (128 & 2) != 0 ? null : initAsrReqParam.getTargetLanguage(), initAsrReqParam.getHashcode(), (128 & 8) != 0 ? null : initAsrReqParam.getPkgName(), (128 & 16) != 0 ? null : initAsrReqParam.getChannel(), (128 & 32) != 0 ? null : initAsrReqParam.isStoreAudio(), (128 & 64) != 0 ? null : initAsrReqParam.getExpandParams(), (128 & 128) != 0 ? null : null);
                }
                break;
            case -950641390:
                if (methods.equals("method_realtime_asr_release")) {
                    r.c(t10, "null cannot be cast to non-null type com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient.ReleaseAsrReqParam");
                    ReleaseAsrReqParam releaseAsrReqParam = (ReleaseAsrReqParam) t10;
                    String hashcode = releaseAsrReqParam.getHashcode();
                    r.b(hashcode);
                    String pkgName = releaseAsrReqParam.getPkgName();
                    r.b(pkgName);
                    String channel = releaseAsrReqParam.getChannel();
                    r.b(channel);
                    realtimeAsrInpuSlot.setRealtimeAsrReleaseInput(hashcode, pkgName, channel);
                }
                break;
            case -516778079:
                if (methods.equals("method_realtime_asr_audio")) {
                    r.c(t10, "null cannot be cast to non-null type com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient.AudioAsrReqParam");
                    AudioAsrReqParam audioAsrReqParam = (AudioAsrReqParam) t10;
                    if (audioAsrReqParam.getChannel() == null || audioAsrReqParam.getAudio() == null || audioAsrReqParam.getMsgId() == null) {
                        companion.i("RealtimeAsrClient", "METHOD_REALTIME_ASR_AUDIO: param error" + audioAsrReqParam);
                    } else {
                        String hashcode2 = audioAsrReqParam.getHashcode();
                        r.b(hashcode2);
                        String pkgName2 = audioAsrReqParam.getPkgName();
                        r.b(pkgName2);
                        String channel2 = audioAsrReqParam.getChannel();
                        r.b(channel2);
                        byte[] audio = audioAsrReqParam.getAudio();
                        r.b(audio);
                        String msgId = audioAsrReqParam.getMsgId();
                        r.b(msgId);
                        realtimeAsrInpuSlot.setRealtimeAsrAudioInput(hashcode2, pkgName2, channel2, audio, msgId);
                    }
                }
                break;
            case -500187091:
                if (methods.equals("method_realtime_asr_start")) {
                    r.c(t10, "null cannot be cast to non-null type com.oplus.aiunit.translation.request.StartAsrRequest");
                    realtimeAsrInpuSlot.setRealtimeAsrStartInput((StartAsrRequest) t10);
                }
                break;
            case -340198554:
                if (methods.equals("method_realtime_asr_end")) {
                    r.c(t10, "null cannot be cast to non-null type com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient.EndAsrReqParam");
                    EndAsrReqParam endAsrReqParam = (EndAsrReqParam) t10;
                    if (endAsrReqParam.getChannel() == null || endAsrReqParam.getRecordId() == null) {
                        companion.i("RealtimeAsrClient", "METHOD_END_REALTIME_ASR: param error" + endAsrReqParam);
                    } else {
                        String hashcode3 = endAsrReqParam.getHashcode();
                        r.b(hashcode3);
                        String pkgName3 = endAsrReqParam.getPkgName();
                        r.b(pkgName3);
                        String channel3 = endAsrReqParam.getChannel();
                        r.b(channel3);
                        String recordId = endAsrReqParam.getRecordId();
                        r.b(recordId);
                        realtimeAsrInpuSlot.setRealtimeAsrEndInput(hashcode3, pkgName3, channel3, recordId);
                    }
                }
                break;
            case 1045889920:
                if (methods.equals("method_realtime_asr_abandon")) {
                    r.c(t10, "null cannot be cast to non-null type com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient.EndAsrReqParam");
                    EndAsrReqParam endAsrReqParam2 = (EndAsrReqParam) t10;
                    String hashcode4 = endAsrReqParam2.getHashcode();
                    r.b(hashcode4);
                    String pkgName4 = endAsrReqParam2.getPkgName();
                    r.b(pkgName4);
                    String channel4 = endAsrReqParam2.getChannel();
                    r.b(channel4);
                    String recordId2 = endAsrReqParam2.getRecordId();
                    r.b(recordId2);
                    realtimeAsrInpuSlot.setRealtimeAsrAbandonInput(hashcode4, pkgName4, channel4, recordId2);
                }
                break;
            case 1528638728:
                if (methods.equals("method_init_omni_plugin")) {
                    realtimeAsrInpuSlot.setInitOmniPluginInput();
                }
                break;
            case 1656260743:
                if (methods.equals("method_set_feature_enable")) {
                    r.c(t10, "null cannot be cast to non-null type com.oplus.aiunit.translation.request.SetFeatureEnableRequest");
                    realtimeAsrInpuSlot.setFeatureEnableInput((SetFeatureEnableRequest) t10);
                }
                break;
        }
        realtimeAsrInpuSlot.setMessenger(messenger);
        FrameOutputSlot frameOutputSlotCreateOutputSlot = createOutputSlot();
        process(realtimeAsrInpuSlot, frameOutputSlotCreateOutputSlot);
        String jsonResult = frameOutputSlotCreateOutputSlot.getJsonResult();
        companion.i("RealtimeAsrClient", "oSlot jsonString:" + jsonResult);
        r.b(jsonResult);
        handleOSlotResult(jsonResult, t11);
        String jsonResult2 = frameOutputSlotCreateOutputSlot.getJsonResult();
        r.d(jsonResult2, "getJsonResult(...)");
        return jsonResult2;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final <T> void handleResult(FramePackage framePackage, T t10, String originMethods) {
        String paramStr;
        r.e(originMethods, "originMethods");
        AILogHelper.Companion companion = AILogHelper.Companion;
        companion.i("RealtimeAsrClient", "RealtimeAsrClient handling result for originMethods: " + originMethods);
        Object objM = null;
        String paramStr2 = framePackage != null ? framePackage.getParamStr("custom::translation_method") : null;
        companion.i("RealtimeAsrClient", "handleResult, methods: " + paramStr2);
        String paramStr3 = framePackage != null ? framePackage.getParamStr("realtime_asr_init_pkg_name") : null;
        String paramStr4 = framePackage != null ? framePackage.getParamStr("realtime_asr_hashcode") : null;
        String paramStr5 = framePackage != null ? framePackage.getParamStr("realtime_asr_audio_ws_channel") : null;
        if (!r.a(paramStr2, "method_realtime_asr_callback") || (paramStr = framePackage.getParamStr("realtime_asr_callback_type")) == null) {
            return;
        }
        switch (paramStr.hashCode()) {
            case -1461831123:
                if (paramStr.equals("realtime_asr_callback_onmt")) {
                    String paramStr6 = framePackage.getParamStr("package::json_result");
                    companion.i("RealtimeAsrClient", "PARAM_VALUE_REALTIME_ASR_CB_ONMT");
                    if (paramStr6 != null) {
                        try {
                            objM = new d().m(paramStr6, AsrMtAck.class);
                            if (objM != null) {
                                String paramStr7 = framePackage.getParamStr("realtime_asr_response_extend");
                                r.d(paramStr7, "getParamStr(...)");
                                if (paramStr7.length() > 0) {
                                    AsrRspExtendCodec asrRspExtendCodec = new AsrRspExtendCodec();
                                    String paramStr8 = framePackage.getParamStr("realtime_asr_response_extend");
                                    r.d(paramStr8, "getParamStr(...)");
                                    Map<String, ? extends Object> asrRspExtend = asrRspExtendCodec.parseAsrRspExtend(paramStr8);
                                    if (asrRspExtend != null) {
                                        ((AsrMtAck) objM).setExtend(asrRspExtend);
                                    }
                                }
                            }
                        } catch (Exception e10) {
                            AILogHelper.Companion.e("RealtimeAsrClient", "PARAM_VALUE_REALTIME_ASR_CB_ONRESULT: pasre json error: " + e10);
                        }
                    }
                    if (getRealtimeAsrCallback(paramStr3, paramStr4, paramStr5) != null && objM != null) {
                        AsrRspCallback realtimeAsrCallback = getRealtimeAsrCallback(paramStr3, paramStr4, paramStr5);
                        if (realtimeAsrCallback != null) {
                            realtimeAsrCallback.onMt((AsrMtAck) objM);
                        }
                        AILogHelper.Companion.i("RealtimeAsrClient", "RealtimeAsrClient: PARAM_VALUE_REALTIME_ASR_CB_ONTTS");
                    }
                    if (getRealtimeAsrCallback(paramStr3, paramStr4, paramStr5) != null) {
                        AILogHelper.Companion.i("RealtimeAsrClient", "RealtimeAsrClient: PARAM_VALUE_REALTIME_ASR_CB_ONMT");
                    }
                    break;
                }
                break;
            case 799060320:
                if (paramStr.equals("realtime_asr_task_complete")) {
                    String paramStr9 = framePackage.getParamStr("realtime_asr_error_code");
                    int i10 = paramStr9 != null ? Integer.parseInt(paramStr9) : 0;
                    if (getRealtimeAsrCallback(paramStr3, paramStr4, paramStr5) != null) {
                        AsrRspCallback realtimeAsrCallback2 = getRealtimeAsrCallback(paramStr3, paramStr4, paramStr5);
                        if (realtimeAsrCallback2 != null) {
                            realtimeAsrCallback2.taskComplete(i10);
                        }
                        companion.i("RealtimeAsrClient", "RealtimeAsrClient: PARAM_VALUE_REALTIME_ASR_TASK_COMPLETE");
                    }
                    break;
                }
                break;
            case 1167475107:
                if (paramStr.equals("realtime_asr_callback_onresult")) {
                    String paramStr10 = framePackage.getParamStr("package::json_result");
                    if (paramStr10 != null) {
                        try {
                            objM = new d().m(paramStr10, AsrBaseResponse.class);
                        } catch (Exception e11) {
                            AILogHelper.Companion.e("RealtimeAsrClient", "PARAM_VALUE_REALTIME_ASR_CB_ONRESULT: pasre json error: " + e11);
                        }
                    }
                    AILogHelper.Companion companion2 = AILogHelper.Companion;
                    companion2.i("RealtimeAsrClient", "PARAM_VALUE_REALTIME_ASR_CB_ONRESULT");
                    AsrRspCallback realtimeAsrCallback3 = getRealtimeAsrCallback(paramStr3, paramStr4, paramStr5);
                    AsrBaseResponse asrBaseResponse = (AsrBaseResponse) objM;
                    if (asrBaseResponse != null && realtimeAsrCallback3 != null) {
                        companion2.i("RealtimeAsrClient", "PARAM_VALUE_REALTIME_ASR_CB_ONRESULT: RealtimeAsrCallback = " + realtimeAsrCallback3);
                        realtimeAsrCallback3.onResult(asrBaseResponse);
                        companion2.i("RealtimeAsrClient", "PARAM_VALUE_REALTIME_ASR_CB_ONRESULT");
                        break;
                    }
                }
                break;
            case 1927863994:
                if (paramStr.equals("realtime_asr_callback_onasr")) {
                    String paramStr11 = framePackage.getParamStr("package::json_result");
                    companion.i("RealtimeAsrClient", "PARAM_VALUE_REALTIME_ASR_CB_ONRESULT");
                    if (paramStr11 != null) {
                        try {
                            objM = new d().m(paramStr11, AsrAudioAck.class);
                            if (objM != null) {
                                String paramStr12 = framePackage.getParamStr("realtime_asr_response_extend");
                                r.d(paramStr12, "getParamStr(...)");
                                if (paramStr12.length() > 0) {
                                    AsrRspExtendCodec asrRspExtendCodec2 = new AsrRspExtendCodec();
                                    String paramStr13 = framePackage.getParamStr("realtime_asr_response_extend");
                                    r.d(paramStr13, "getParamStr(...)");
                                    Map<String, ? extends Object> asrRspExtend2 = asrRspExtendCodec2.parseAsrRspExtend(paramStr13);
                                    if (asrRspExtend2 != null) {
                                        ((AsrAudioAck) objM).setExtend(asrRspExtend2);
                                    }
                                }
                            }
                        } catch (Exception e12) {
                            AILogHelper.Companion.e("RealtimeAsrClient", "PARAM_VALUE_REALTIME_ASR_CB_ONRESULT: pasre json error: " + e12);
                        }
                    }
                    if (getRealtimeAsrCallback(paramStr3, paramStr4, paramStr5) != null && objM != null) {
                        AsrRspCallback realtimeAsrCallback4 = getRealtimeAsrCallback(paramStr3, paramStr4, paramStr5);
                        if (realtimeAsrCallback4 != null) {
                            realtimeAsrCallback4.onAsr((AsrAudioAck) objM);
                        }
                        AILogHelper.Companion.i("RealtimeAsrClient", "RealtimeAsrClient: PARAM_VALUE_REALTIME_ASR_CB_ONASR");
                        break;
                    }
                    break;
                }
                break;
            case 1927882285:
                if (paramStr.equals("realtime_asr_callback_ontts")) {
                    String paramStr14 = framePackage.getParamStr("package::json_result");
                    if (paramStr14 != null) {
                        try {
                            objM = new d().m(paramStr14, AsrTtsAck.class);
                        } catch (Exception e13) {
                            AILogHelper.Companion.e("RealtimeAsrClient", "PARAM_VALUE_REALTIME_ASR_CB_ONRESULT: pasre json error: " + e13);
                        }
                    }
                    if (getRealtimeAsrCallback(paramStr3, paramStr4, paramStr5) != null && objM != null) {
                        AsrRspCallback realtimeAsrCallback5 = getRealtimeAsrCallback(paramStr3, paramStr4, paramStr5);
                        if (realtimeAsrCallback5 != null) {
                            realtimeAsrCallback5.onTts((AsrTtsAck) objM);
                        }
                        AILogHelper.Companion.i("RealtimeAsrClient", "RealtimeAsrClient: PARAM_VALUE_REALTIME_ASR_CB_ONTTS");
                        break;
                    }
                    break;
                }
                break;
        }
    }

    public final void initOmniPlugin() {
        process(null, null, "method_init_omni_plugin", new BaseClient.RunActionErrorListener() { // from class: com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient.initOmniPlugin.1
            C02901() {
            }

            @Override // com.oplus.aiunit.translation.common.BaseClient.RunActionErrorListener
            public void onError(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                AILogHelper.Companion.e("RealtimeAsrClient", "initOmniPlugin error: ErrorCode = " + code + ", msg = " + msg);
            }
        });
    }

    public final void initRealtimeAsr(String language, String targetLanguage, String hashcode, String str, String str2, Boolean bool, String str3, AsrRspCallback listener) {
        r.e(language, "language");
        r.e(targetLanguage, "targetLanguage");
        r.e(hashcode, "hashcode");
        r.e(listener, "listener");
        AILog.init(getContext(), false);
        AILogHelper.Companion companion = AILogHelper.Companion;
        companion.i("RealtimeAsrClient", "initRealtimeAsr");
        if (!AISettings.isDetectAvailable(getContext(), this.detectName, null)) {
            companion.i("RealtimeAsrClient", "TranslationClient isDetectAvailable not");
        }
        registerCallback(str, hashcode, str2, listener);
        InitAsrReqParam initAsrReqParam = new InitAsrReqParam();
        initAsrReqParam.setHashcode(hashcode);
        initAsrReqParam.setLanguage(language);
        initAsrReqParam.setTargetLanguage(targetLanguage);
        initAsrReqParam.setPkgName(str);
        initAsrReqParam.setChannel(str2);
        initAsrReqParam.setStoreAudio(bool);
        initAsrReqParam.setExpandParams(str3);
        process(initAsrReqParam, listener, "method_realtime_asr_init", new BaseClient.RunActionErrorListener() { // from class: com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient.initRealtimeAsr.1
            C02911() {
            }

            @Override // com.oplus.aiunit.translation.common.BaseClient.RunActionErrorListener
            public void onError(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                AsrBaseResponse asrBaseResponse = new AsrBaseResponse();
                asrBaseResponse.setCode(code.value());
                asrBaseResponse.setMessage(msg);
                asrBaseResponse.setBizType("INIT_ASR_ASK");
                asrRspCallback.onResult(asrBaseResponse);
            }
        });
    }

    public final void releaseAsr(String pkgName, String hashcode, String channel) {
        r.e(pkgName, "pkgName");
        r.e(hashcode, "hashcode");
        r.e(channel, "channel");
        ReleaseAsrReqParam releaseAsrReqParam = new ReleaseAsrReqParam();
        releaseAsrReqParam.setPkgName(pkgName);
        releaseAsrReqParam.setHashcode(hashcode);
        releaseAsrReqParam.setChannel(channel);
        process(releaseAsrReqParam, getRealtimeAsrCallback(pkgName, hashcode, channel), "method_realtime_asr_release", new BaseClient.RunActionErrorListener() { // from class: com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient.releaseAsr.1
            final /* synthetic */ String $channel;
            final /* synthetic */ String $hashcode;
            final /* synthetic */ String $pkgName;

            C02931(String pkgName2, String hashcode2, String channel2) {
                str = pkgName2;
                str = hashcode2;
                str = channel2;
            }

            @Override // com.oplus.aiunit.translation.common.BaseClient.RunActionErrorListener
            public void onError(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                AsrBaseResponse asrBaseResponse = new AsrBaseResponse();
                asrBaseResponse.setCode(code.value());
                asrBaseResponse.setMessage(msg);
                asrBaseResponse.setBizType("RELEASE_ASR_ASK");
                AsrRspCallback realtimeAsrCallback = DynamicRealtimeAsrClient.this.getRealtimeAsrCallback(str, str, str);
                if (realtimeAsrCallback != null) {
                    realtimeAsrCallback.onResult(asrBaseResponse);
                }
            }
        });
        unregisterCallback(pkgName2, hashcode2, channel2);
    }

    public final void sendAsrAudio(String pkgName, String hashcode, String channel, byte[] audio, String str) {
        r.e(pkgName, "pkgName");
        r.e(hashcode, "hashcode");
        r.e(channel, "channel");
        r.e(audio, "audio");
        AudioAsrReqParam audioAsrReqParam = new AudioAsrReqParam();
        audioAsrReqParam.setPkgName(pkgName);
        audioAsrReqParam.setHashcode(hashcode);
        audioAsrReqParam.setChannel(channel);
        audioAsrReqParam.setMsgId(str);
        audioAsrReqParam.setAudio(audio);
        process(audioAsrReqParam, getRealtimeAsrCallback(pkgName, hashcode, channel), "method_realtime_asr_audio", new BaseClient.RunActionErrorListener() { // from class: com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient.sendAsrAudio.1
            final /* synthetic */ String $channel;
            final /* synthetic */ String $hashcode;
            final /* synthetic */ String $pkgName;

            C02941(String pkgName2, String hashcode2, String channel2) {
                str = pkgName2;
                str = hashcode2;
                str = channel2;
            }

            @Override // com.oplus.aiunit.translation.common.BaseClient.RunActionErrorListener
            public void onError(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                AsrBaseResponse asrBaseResponse = new AsrBaseResponse();
                asrBaseResponse.setCode(code.value());
                asrBaseResponse.setMessage(msg);
                asrBaseResponse.setBizType("ASR_ASK");
                AsrRspCallback realtimeAsrCallback = DynamicRealtimeAsrClient.this.getRealtimeAsrCallback(str, str, str);
                if (realtimeAsrCallback != null) {
                    realtimeAsrCallback.onResult(asrBaseResponse);
                }
            }
        });
    }

    public final void setRecognizeFeature(String pkgName, String hashcode, String channel, Boolean bool, Boolean bool2, String str, String str2, String str3) {
        r.e(pkgName, "pkgName");
        r.e(hashcode, "hashcode");
        r.e(channel, "channel");
        SetFeatureEnableRequest setFeatureEnableRequest = new SetFeatureEnableRequest();
        setFeatureEnableRequest.setPkgName(pkgName);
        setFeatureEnableRequest.setHashcode(hashcode);
        setFeatureEnableRequest.setChannel(channel);
        setFeatureEnableRequest.setEnableMt(bool);
        setFeatureEnableRequest.setEnableTts(bool2);
        setFeatureEnableRequest.setVoiceName(str);
        setFeatureEnableRequest.setSpeed(str2);
        setFeatureEnableRequest.setExpandParams(str3);
        process(setFeatureEnableRequest, null, "method_set_feature_enable", new BaseClient.RunActionErrorListener() { // from class: com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient.setRecognizeFeature.1
            C02951() {
            }

            @Override // com.oplus.aiunit.translation.common.BaseClient.RunActionErrorListener
            public void onError(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                AILogHelper.Companion.e("RealtimeAsrClient", "initOmniPlugin error: ErrorCode = " + code + ", msg = " + msg);
            }
        });
    }

    public final void startRealtimeAsr(StartAsrRequest request) {
        r.e(request, "request");
        String pkgName = request.getPkgName();
        String hashcode = request.getHashcode();
        String wsChannel = request.getWsChannel();
        process(request, getRealtimeAsrCallback(pkgName, hashcode, wsChannel), "method_realtime_asr_start", new BaseClient.RunActionErrorListener() { // from class: com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrClient.startRealtimeAsr.1
            final /* synthetic */ String $channel;
            final /* synthetic */ String $hashcode;
            final /* synthetic */ String $pkgName;

            C02961(String pkgName2, String hashcode2, String wsChannel2) {
                str = pkgName2;
                str = hashcode2;
                str = wsChannel2;
            }

            @Override // com.oplus.aiunit.translation.common.BaseClient.RunActionErrorListener
            public void onError(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                AsrBaseResponse asrBaseResponse = new AsrBaseResponse();
                asrBaseResponse.setCode(code.value());
                asrBaseResponse.setMessage(msg);
                asrBaseResponse.setBizType("START_ASK");
                AsrRspCallback realtimeAsrCallback = DynamicRealtimeAsrClient.this.getRealtimeAsrCallback(str, str, str);
                if (realtimeAsrCallback != null) {
                    realtimeAsrCallback.onResult(asrBaseResponse);
                }
            }
        });
    }
}
