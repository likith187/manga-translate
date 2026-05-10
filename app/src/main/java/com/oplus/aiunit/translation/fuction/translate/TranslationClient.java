package com.oplus.aiunit.translation.fuction.translate;

import android.content.Context;
import com.google.gson.d;
import com.google.gson.e;
import com.google.gson.f;
import com.google.gson.i;
import com.google.gson.l;
import com.google.gson.reflect.TypeToken;
import com.oplus.aiunit.core.FramePackage;
import com.oplus.aiunit.core.base.FrameInputSlot;
import com.oplus.aiunit.core.base.FrameOutputSlot;
import com.oplus.aiunit.core.callback.IAIMessenger;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.core.utils.AuthUtil;
import com.oplus.aiunit.toolkits.AISettings;
import com.oplus.aiunit.translation.callback.Callback;
import com.oplus.aiunit.translation.callback.ISpeechConfig;
import com.oplus.aiunit.translation.callback.ITranslateConfig;
import com.oplus.aiunit.translation.callback.ImageTranslateCallback;
import com.oplus.aiunit.translation.callback.ImgTransConfigCallback;
import com.oplus.aiunit.translation.callback.OfflinePackageCallback;
import com.oplus.aiunit.translation.callback.PhotoTranslateCallback;
import com.oplus.aiunit.translation.callback.StreamTextTranslateCallback;
import com.oplus.aiunit.translation.callback.SynthesisCallback;
import com.oplus.aiunit.translation.callback.TextTranslateCallback;
import com.oplus.aiunit.translation.callback.ToolboxTranslateConfigCallback;
import com.oplus.aiunit.translation.callback.TranslateConfigCallback;
import com.oplus.aiunit.translation.callback.TtsWebsocketCallback;
import com.oplus.aiunit.translation.callback.WsTtsInitStatusCallback;
import com.oplus.aiunit.translation.common.BaseClient;
import com.oplus.aiunit.translation.common.BaseOutputSlot;
import com.oplus.aiunit.translation.common.RequestParamConstant;
import com.oplus.aiunit.translation.constant.ErrorCodeConstant;
import com.oplus.aiunit.translation.model.ImageTranslateItem;
import com.oplus.aiunit.translation.model.ImageTranslateResult;
import com.oplus.aiunit.translation.model.OdinWebsocketBaseRsp;
import com.oplus.aiunit.translation.model.PhotoTranslateItem;
import com.oplus.aiunit.translation.model.PhotoTranslateResult;
import com.oplus.aiunit.translation.model.TextTranslateData;
import com.oplus.aiunit.translation.model.TextTranslateDataDeserializer;
import com.oplus.aiunit.translation.model.TtsAudioForm;
import com.oplus.aiunit.translation.request.EndTtsRequest;
import com.oplus.aiunit.translation.request.ImageTranslateRequest;
import com.oplus.aiunit.translation.request.ImgTransConfigRequest;
import com.oplus.aiunit.translation.request.OfflinePackageRequest;
import com.oplus.aiunit.translation.request.PhotoTranslateRequest;
import com.oplus.aiunit.translation.request.StreamTextTranslateRequest;
import com.oplus.aiunit.translation.request.SynthesisRequest;
import com.oplus.aiunit.translation.request.TextTranslateRequest;
import com.oplus.aiunit.translation.request.ToolboxTranslateConfigRequest;
import com.oplus.aiunit.translation.request.TranslateConfigRequest;
import com.oplus.aiunit.translation.request.WsTtsRequest;
import com.oplus.aiunit.translation.utils.AILogHelper;
import com.oplus.aiunit.translation.utils.InitStateSingleton;
import com.oplus.aiunit.translation.youdao.YoudaoTranslate;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.text.n;
import n8.h0;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class TranslationClient extends BaseClient<TranslationInputSlot, BaseOutputSlot, TranslationDetector> {
    public static final Companion Companion = new Companion(null);
    public static final String METHOD_GET_IMG_TRANS_CONFIG = "method_get_img_trans_config";
    public static final String METHOD_GET_OFFLINE_INFO = "method_get_offline_info";
    public static final String METHOD_GET_ONLINE_CONFIG = "method_get_online_config";
    public static final String METHOD_GET_TRANSLATE_CONFIG = "method_get_translate_config";
    public static final String METHOD_GET_WS_TTS_INIT_STATUS = "method_get_ws_tts_init_status";
    public static final String METHOD_IMAGE_TRANSLATE_CANCEL = "method_image_translate_cancel";
    public static final String METHOD_IMAGE_TRANSLATE_GENERATE = "method_image_translate_generate";
    public static final String METHOD_INIT_AI_SPEECH = "method_init_speech";
    public static final String METHOD_INIT_AI_TRANSLATION = "method_init_translation";
    public static final String METHOD_INIT_OMNI_PLUGIN = "method_init_omni_plugin";
    public static final String METHOD_INIT_TRANSLATION_LOG = "METHOD_INIT_TRANSLATION_LOG";
    public static final String METHOD_INIT_WS_SPEECH = "method_init_ws_speech";
    public static final String METHOD_PHOTO_TRANSLATE_CANCEL = "method_photo_translate_cancel";
    public static final String METHOD_PHOTO_TRANSLATE_GENERATE = "method_photo_translate_generate";
    public static final String METHOD_RELEASE = "method_release";
    public static final String METHOD_SPEECH_GET = "method_speech_get";
    public static final String METHOD_SPEECH_STOP = "method_speech_stop";
    public static final String METHOD_SSE_TEXT_TRANSLATE_CANCEL = "method_sse_text_translate_cancel";
    public static final String METHOD_SSE_TEXT_TRANSLATE_GENERATE = "method_sse_text_translate_generate";
    public static final String METHOD_START_WS_TTS = "method_start_ws_tts";
    public static final String METHOD_STOP_WS_TTS = "method_stop_ws_tts";
    public static final String METHOD_TEXT_TRANSLATE_CANCEL = "method_text_translate_cancel";
    public static final String METHOD_TEXT_TRANSLATE_GENERATE = "method_text_translate_generate";
    public static final String PARAM_ASR_STRING = "param_asr_string";
    public static final String PARAM_CLIENT_LABEL = "TranslationClient";
    public static final String PARAM_EVENT_CODE = "param_event_code";
    public static final String PARAM_IMG_TRANS_CONFIG = "param_img_trans_config";
    public static final String PARAM_KEY_ALGO_MODEL = "model";
    public static final String PARAM_KEY_APPID = "appid";
    public static final String PARAM_KEY_AUDIO_BUFFER_LENGTH = "audio_buffer_length";
    public static final String PARAM_KEY_AUDIO_FILE = "audioFile";
    public static final String PARAM_KEY_CHANNEL = "channel";
    public static final String PARAM_KEY_CONFIG_IMAGE_TRANSLATE_MAX_TASK = "image_translate_max_task_count";
    public static final String PARAM_KEY_CONFIG_IMAGE_TRANSLATE_TIMEOUT = "image_translate_timeout";
    public static final String PARAM_KEY_CONFIG_PHOTO_TRANSLATE_MAX_TASK = "photo_translate_max_task_count";
    public static final String PARAM_KEY_CONFIG_PHOTO_TRANSLATE_TIMEOUT = "photo_translate_timeout";
    public static final String PARAM_KEY_CONFIG_SPEECH_MAX_TASK = "speech_max_task_count";
    public static final String PARAM_KEY_CONFIG_SPEECH_TIMEOUT = "speech_timeout";
    public static final String PARAM_KEY_CONFIG_SSE_TEXT_TRANSLATE_MAX_TASK = "sse_text_translate_max_task_count";
    public static final String PARAM_KEY_CONFIG_SSE_TEXT_TRANSLATE_TIMEOUT = "sse_text_translate_timeout";
    public static final String PARAM_KEY_CONFIG_TEXT_TRANSLATE_MAX_TASK = "text_translate_max_task_count";
    public static final String PARAM_KEY_CONFIG_TEXT_TRANSLATE_TIMEOUT = "text_translate_timeout";
    public static final String PARAM_KEY_CONTENT = "content";
    public static final String PARAM_KEY_ERROR_CODE = "errorCode";
    public static final String PARAM_KEY_ERROR_REASON = "errorReason";
    public static final String PARAM_KEY_FINISH_FULL_TEXT = "full_text";
    public static final String PARAM_KEY_FINISH_REASON = "finish_reason";
    public static final String PARAM_KEY_LANGUAGES = "languages";
    public static final String PARAM_KEY_PITCH = "pitch";
    public static final String PARAM_KEY_REQUEST_ID = "requestId";
    public static final String PARAM_KEY_SPEECH_AUDIO_BIT = "speech_audio_bit";
    public static final String PARAM_KEY_SPEECH_AUDIO_FORM = "speech_format";
    public static final String PARAM_KEY_SPEECH_INIT_CONFIG = "speech_init_config";
    public static final String PARAM_KEY_SPEECH_INIT_STATE = "speech_init_state";
    public static final String PARAM_KEY_SPEECH_SAMPLE_RATE = "speech_sample_rate";
    public static final String PARAM_KEY_SPEED = "speed";
    public static final String PARAM_KEY_TEXT_TYPE = "type";
    public static final String PARAM_KEY_TRANSLATE_INIT_CONFIG = "translate_init_config";
    public static final String PARAM_KEY_TRANSLATE_INIT_STATE = "translate_init_state";
    public static final String PARAM_KEY_VOICE_GENDER = "speaker";
    public static final String PARAM_KEY_WS_TTS_INIT_STATUS = "ws_tts_init_status";
    public static final String PARAM_KEY_YOUDAO_DATA = "PARAM_KEY_YOUDAO_DATA";
    public static final String PARAM_MT_STRING = "param_mt_string";
    public static final String PARAM_TRANSLATE_CONFIG = "param_translate_config";
    public static final String PARAM_TTS_STRING = "param_tts_string";
    public static final String PARAM_WS_TTS_OBJECT = "param_ws_tts_object";
    public static final String TAG = "TranslationClient";

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TranslationClient(Context context, TranslationDetector detector) {
        super(context, detector, "TranslationClient");
        r.e(context, "context");
        r.e(detector, "detector");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void generateImageTranslate$lambda$0(ImageTranslateRequest request, HashMap params, ImageTranslateCallback callback) {
        r.e(request, "$request");
        r.e(params, "$params");
        r.e(callback, "$callback");
        YoudaoTranslate.translate(request.getImageModel(), request.getYoudaoInfo(), params, null, request.getRequestId(), callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void generatePhotoTranslate$lambda$1(PhotoTranslateRequest request, HashMap params, PhotoTranslateCallback callback) {
        r.e(request, "$request");
        r.e(params, "$params");
        r.e(callback, "$callback");
        YoudaoTranslate.translate(0, request.getYoudaoInfo(), params, null, request.getRequestId(), callback);
    }

    private final String generateSourceLan(String str) {
        if (str == null || str.length() == 0) {
            str = "auto";
        }
        if (r.a(str, "zh") || r.a(str, "zh-CN")) {
            str = "zh-CHS";
        }
        if (r.a(str, "zh-TW")) {
            str = "zh-CHT";
        }
        return (kotlin.text.r.F(str, "es", false, 2, null) || kotlin.text.r.F(str, "pt", false, 2, null)) ? new n("-").split(str, 0).get(0) : str;
    }

    private final String generateTargetLan(String str) {
        if (r.a(str, "zh") || r.a(str, "zh-CN")) {
            str = "zh-CHS";
        }
        if (r.a(str, "zh-TW")) {
            str = "zh-CHT";
        }
        return (kotlin.text.r.F(str, "es", false, 2, null) || kotlin.text.r.F(str, "pt", false, 2, null)) ? new n("-").split(str, 0).get(0) : str;
    }

    private final void handleGetImgTransConfigResult(FramePackage framePackage, ImgTransConfigCallback imgTransConfigCallback) {
        if (framePackage != null) {
            if (framePackage.getParamStr("custom::translation_callback_type").equals("callback_method_onsuccess")) {
                String paramStr = framePackage.getParamStr(PARAM_IMG_TRANS_CONFIG);
                if (imgTransConfigCallback != null) {
                    r.b(paramStr);
                    imgTransConfigCallback.onSuccess(paramStr);
                    return;
                }
                return;
            }
            String paramStr2 = framePackage.getParamStr("errorReason");
            String paramStr3 = framePackage.getParamStr("errorCode");
            r.d(paramStr3, "getParamStr(...)");
            int i10 = Integer.parseInt(paramStr3);
            AILogHelper.Companion.i(getTAG(), "handleGetImgTransConfigResult onError errorCode:" + i10 + ",errorString:" + paramStr2);
            if (imgTransConfigCallback != null) {
                imgTransConfigCallback.onError(i10, paramStr2);
            }
        }
    }

    private final void handleGetOfflineResult(FramePackage framePackage, OfflinePackageCallback offlinePackageCallback) {
        if (framePackage != null) {
            if (framePackage.getParamStr("custom::translation_callback_type").equals("callback_method_onsuccess")) {
                String paramStr = framePackage.getParamStr("package::json_result");
                if (offlinePackageCallback != null) {
                    try {
                        r.b(paramStr);
                        offlinePackageCallback.onSuccess(paramStr);
                        h0 h0Var = h0.INSTANCE;
                        return;
                    } catch (Exception e10) {
                        AILogHelper.Companion.i(this.getTAG(), "handleGetOfflineResult catch:" + e10);
                        h0 h0Var2 = h0.INSTANCE;
                        return;
                    }
                }
                return;
            }
            String paramStr2 = framePackage.getParamStr("errorReason");
            String paramStr3 = framePackage.getParamStr("errorCode");
            r.d(paramStr3, "getParamStr(...)");
            int i10 = Integer.parseInt(paramStr3);
            AILogHelper.Companion.i(getTAG(), "handleGetOfflineResult onError errorCode:" + i10 + ",errorString:" + paramStr2);
            if (offlinePackageCallback != null) {
                offlinePackageCallback.onError(i10, paramStr2);
            }
        }
    }

    private final void handleGetOnlineResult(FramePackage framePackage, TranslateConfigCallback translateConfigCallback) {
        if (framePackage != null) {
            if (framePackage.getParamStr("custom::translation_callback_type").equals("callback_method_onsuccess")) {
                String paramStr = framePackage.getParamStr("param_asr_string");
                String paramStr2 = framePackage.getParamStr("param_mt_string");
                String paramStr3 = framePackage.getParamStr("param_tts_string");
                if (translateConfigCallback != null) {
                    r.b(paramStr);
                    r.b(paramStr2);
                    r.b(paramStr3);
                    translateConfigCallback.onSuccess(paramStr, paramStr2, paramStr3);
                    return;
                }
                return;
            }
            String paramStr4 = framePackage.getParamStr("errorReason");
            String paramStr5 = framePackage.getParamStr("errorCode");
            r.d(paramStr5, "getParamStr(...)");
            int i10 = Integer.parseInt(paramStr5);
            AILogHelper.Companion.i(getTAG(), "handleGetOnlineResult onError errorCode:" + i10 + ",errorString:" + paramStr4);
            if (translateConfigCallback != null) {
                translateConfigCallback.onError(i10, paramStr4);
            }
        }
    }

    private final void handleGetTranslateConfigResult(FramePackage framePackage, ToolboxTranslateConfigCallback toolboxTranslateConfigCallback) {
        if (framePackage != null) {
            if (framePackage.getParamStr("custom::translation_callback_type").equals("callback_method_onsuccess")) {
                String paramStr = framePackage.getParamStr(PARAM_TRANSLATE_CONFIG);
                if (toolboxTranslateConfigCallback != null) {
                    r.b(paramStr);
                    toolboxTranslateConfigCallback.onSuccess(paramStr);
                    return;
                }
                return;
            }
            String paramStr2 = framePackage.getParamStr("errorReason");
            String paramStr3 = framePackage.getParamStr("errorCode");
            r.d(paramStr3, "getParamStr(...)");
            int i10 = Integer.parseInt(paramStr3);
            AILogHelper.Companion.i(getTAG(), "handleGetTranslateConfigResult onError errorCode:" + i10 + ",errorString:" + paramStr2);
            if (toolboxTranslateConfigCallback != null) {
                toolboxTranslateConfigCallback.onError(i10, paramStr2);
            }
        }
    }

    private final void handleGetWsTtsInitStatusResult(FramePackage framePackage, WsTtsInitStatusCallback wsTtsInitStatusCallback) {
        AILogHelper.Companion companion = AILogHelper.Companion;
        companion.i(getTAG(), "handleGetWsTtsInitStatusResult");
        if (framePackage != null) {
            String paramStr = framePackage.getParamStr("custom::translation_callback_type");
            companion.i(getTAG(), "handleGetWsTtsInitStatusResult: callbackMethod = " + paramStr);
            if (paramStr == null || paramStr.length() == 0) {
                return;
            }
            String paramStr2 = framePackage.getParamStr(PARAM_KEY_WS_TTS_INIT_STATUS);
            companion.i(getTAG(), "handleGetWsTtsInitStatusResult: status = " + paramStr2);
            if (wsTtsInitStatusCallback != null) {
                r.b(paramStr2);
                wsTtsInitStatusCallback.onStatus(paramStr2);
            }
        }
    }

    private final void handleImageTranslateResult(FramePackage framePackage, ImageTranslateCallback imageTranslateCallback) {
        String str;
        if (framePackage != null) {
            if (!framePackage.getParamStr("custom::translation_callback_type").equals("callback_method_onsuccess")) {
                String paramStr = framePackage.getParamStr("errorReason");
                String paramStr2 = framePackage.getParamStr("errorCode");
                r.d(paramStr2, "getParamStr(...)");
                int i10 = Integer.parseInt(paramStr2);
                AILogHelper.Companion.i(getTAG(), "handleImageTranslateResult onError errorCode:" + i10 + ",errorString:" + paramStr);
                if (imageTranslateCallback != null) {
                    imageTranslateCallback.onError(i10, paramStr);
                    return;
                }
                return;
            }
            byte[] bArrRemoveShareMemory = framePackage.removeShareMemory(PARAM_KEY_YOUDAO_DATA);
            if (bArrRemoveShareMemory == null) {
                str = framePackage.getParamStr("package::json_result");
            } else {
                Charset UTF_8 = StandardCharsets.UTF_8;
                r.d(UTF_8, "UTF_8");
                str = new String(bArrRemoveShareMemory, UTF_8);
            }
            try {
                d dVar = new d();
                l lVarE = com.google.gson.n.d(str).e();
                double dB = lVarE.p("angle").b();
                i iVarP = lVarE.p("from");
                String strH = iVarP != null ? iVarP.h() : null;
                i iVarP2 = lVarE.p("to");
                String strH2 = iVarP2 != null ? iVarP2.h() : null;
                i iVarP3 = lVarE.p("algorithmModel");
                Integer numValueOf = iVarP3 != null ? Integer.valueOf(iVarP3.c()) : null;
                i iVarP4 = lVarE.p("renderImage");
                String strH3 = iVarP4 != null ? iVarP4.h() : null;
                f fVarQ = lVarE.q("translate");
                r.d(fVarQ, "getAsJsonArray(...)");
                Type type = new TypeToken<List<? extends ImageTranslateItem>>() { // from class: com.oplus.aiunit.translation.fuction.translate.TranslationClient$handleImageTranslateResult$1$translateType$1
                }.getType();
                r.d(type, "getType(...)");
                Object objI = dVar.i(fVarQ, type);
                r.d(objI, "fromJson(...)");
                ImageTranslateResult imageTranslateResult = new ImageTranslateResult(dB);
                imageTranslateResult.setTranslate((List) objI);
                imageTranslateResult.setFrom(strH);
                imageTranslateResult.setTo(strH2);
                imageTranslateResult.setAlgorithmModel(numValueOf);
                imageTranslateResult.setRenderImage(strH3);
                if (imageTranslateCallback != null) {
                    imageTranslateCallback.onTranslated(imageTranslateResult);
                    h0 h0Var = h0.INSTANCE;
                }
            } catch (Exception e10) {
                AILogHelper.Companion.i(this.getTAG(), "handleImageTranslateResult catch:" + e10);
                h0 h0Var2 = h0.INSTANCE;
            }
        }
    }

    private final void handleInitSpeechResult(FramePackage framePackage, Callback callback) {
        if (framePackage != null) {
            if (framePackage.getParamStr("custom::translation_callback_type").equals("callback_method_onsuccess")) {
                AILogHelper.Companion.i(getTAG(), "handleInitSpeechResult onSuccess()");
                if (callback != null) {
                    callback.onSuccess();
                }
                InitStateSingleton.INSTANCE.setSpeechInitState(1);
                return;
            }
            String paramStr = framePackage.getParamStr("errorReason");
            AILogHelper.Companion.i(getTAG(), "handleInitSpeechResult onError errorString:" + paramStr);
            InitStateSingleton.INSTANCE.setSpeechInitState(0);
            if (callback != null) {
                callback.onError(paramStr);
            }
        }
    }

    private final void handleInitTranslateResult(FramePackage framePackage, Callback callback) {
        if (framePackage != null) {
            if (framePackage.getParamStr("custom::translation_callback_type").equals("callback_method_onsuccess")) {
                AILogHelper.Companion.i(getTAG(), "handleInitTranslateResult onSuccess()");
                if (callback != null) {
                    callback.onSuccess();
                }
                InitStateSingleton.INSTANCE.setTranslateInitState(1);
                return;
            }
            String paramStr = framePackage.getParamStr("errorReason");
            AILogHelper.Companion.i(getTAG(), "handleInitTranslateResult onError errorString:" + paramStr);
            InitStateSingleton.INSTANCE.setTranslateInitState(0);
            if (callback != null) {
                callback.onError(paramStr);
            }
        }
    }

    private final void handleInitWsSpeechResult(FramePackage framePackage, TtsWebsocketCallback ttsWebsocketCallback) {
        if (framePackage != null) {
            try {
                String paramStr = framePackage.getParamStr("custom::translation_callback_type");
                String paramStr2 = framePackage.getParamStr(PARAM_WS_TTS_OBJECT);
                d dVar = new d();
                if (paramStr.equals(RequestParamConstant.CALLBACK_METHOD_ON_RESPONSE)) {
                    AILogHelper.Companion.i(getTAG(), "handleInitWsSpeechResult CALLBACK_METHOD_ON_RESPONSE()");
                    Type type = new TypeToken<OdinWebsocketBaseRsp>() { // from class: com.oplus.aiunit.translation.fuction.translate.TranslationClient$handleInitWsSpeechResult$1$respType$1
                    }.getType();
                    r.d(type, "getType(...)");
                    Object objN = dVar.n(paramStr2, type);
                    r.d(objN, "fromJson(...)");
                    OdinWebsocketBaseRsp odinWebsocketBaseRsp = (OdinWebsocketBaseRsp) objN;
                    if (ttsWebsocketCallback != null) {
                        ttsWebsocketCallback.onResponse(odinWebsocketBaseRsp);
                        h0 h0Var = h0.INSTANCE;
                        return;
                    }
                    return;
                }
                if (paramStr.equals(RequestParamConstant.CALLBACK_METHOD_ON_TTS_START)) {
                    AILogHelper.Companion.i(getTAG(), "handleInitWsSpeechResult CALLBACK_METHOD_ON_TTS_START");
                    l lVarE = com.google.gson.n.d(paramStr2).e();
                    String strH = lVarE.p("requestId").h();
                    long jG = lVarE.p("frameNo").g();
                    String strH2 = lVarE.p("dataType").h();
                    String strH3 = lVarE.p("format").h();
                    int iC = lVarE.p("sampleRate").c();
                    long jG2 = lVarE.p("duration").g();
                    if (ttsWebsocketCallback != null) {
                        r.b(strH);
                        r.b(strH2);
                        r.b(strH3);
                        ttsWebsocketCallback.onTtsStart(strH, jG, strH2, strH3, iC, jG2);
                        h0 h0Var2 = h0.INSTANCE;
                        return;
                    }
                    return;
                }
                if (paramStr.equals(RequestParamConstant.CALLBACK_METHOD_ON_TTS_END)) {
                    AILogHelper.Companion.i(getTAG(), "handleInitWsSpeechResult CALLBACK_METHOD_ON_TTS_END");
                    l lVarE2 = com.google.gson.n.d(paramStr2).e();
                    String strH4 = lVarE2.p("requestId").h();
                    long jG3 = lVarE2.p("frameNo").g();
                    String strH5 = lVarE2.p("dataType").h();
                    String strH6 = lVarE2.p("format").h();
                    int iC2 = lVarE2.p("sampleRate").c();
                    long jG4 = lVarE2.p("duration").g();
                    if (ttsWebsocketCallback != null) {
                        r.b(strH4);
                        r.b(strH5);
                        r.b(strH6);
                        ttsWebsocketCallback.onTtsEnd(strH4, jG3, strH5, strH6, iC2, jG4);
                        h0 h0Var3 = h0.INSTANCE;
                        return;
                    }
                    return;
                }
                if (paramStr.equals(RequestParamConstant.CALLBACK_METHOD_ON_AUDIO)) {
                    AILogHelper.Companion.i(getTAG(), "handleInitWsSpeechResult CALLBACK_METHOD_ON_AUDIO");
                    l lVarE3 = com.google.gson.n.d(paramStr2).e();
                    String strH7 = lVarE3.p("requestId").h();
                    long jG5 = lVarE3.p("frameNo").g();
                    String strH8 = lVarE3.p("dataType").h();
                    String strH9 = lVarE3.p("audio").h();
                    int iC3 = lVarE3.p("sampleRate").c();
                    long jG6 = lVarE3.p("duration").g();
                    if (ttsWebsocketCallback == null) {
                        return;
                    }
                    r.b(strH7);
                    r.b(strH8);
                    r.b(strH9);
                    ttsWebsocketCallback.onAudio(strH7, jG5, strH8, iC3, jG6, strH9);
                }
                h0 h0Var4 = h0.INSTANCE;
            } catch (Exception e10) {
                AILogHelper.Companion.e(getTAG(), "handleInitWsSpeechResult catch:" + e10);
                h0 h0Var5 = h0.INSTANCE;
            }
        }
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
            AILogHelper.Companion.i(getTAG(), "oSlot code:" + i10 + ",msg:" + str2);
            if (t10 == null || i10 == 0) {
                return;
            }
            if (t10 instanceof Callback) {
                ((Callback) t10).onError(str2);
                return;
            }
            if (t10 instanceof SynthesisCallback) {
                ((SynthesisCallback) t10).onError(i10, str2);
                return;
            }
            if (t10 instanceof TextTranslateCallback) {
                ((TextTranslateCallback) t10).onError(i10, str2);
                return;
            }
            if (t10 instanceof ImageTranslateCallback) {
                ((ImageTranslateCallback) t10).onError(i10, str2);
                return;
            }
            if (t10 instanceof PhotoTranslateCallback) {
                ((PhotoTranslateCallback) t10).onError(i10, str2);
            } else if (t10 instanceof OfflinePackageCallback) {
                ((OfflinePackageCallback) t10).onError(i10, str2);
            } else if (t10 instanceof TranslateConfigCallback) {
                ((TranslateConfigCallback) t10).onError(i10, str2);
            }
        } catch (Exception e10) {
            AILogHelper.Companion.i(getTAG(), "oSlot catch:" + e10);
        }
    }

    private final void handlePhotoTranslateResult(FramePackage framePackage, PhotoTranslateCallback photoTranslateCallback) {
        String str;
        if (framePackage != null) {
            if (!framePackage.getParamStr("custom::translation_callback_type").equals("callback_method_onsuccess")) {
                String paramStr = framePackage.getParamStr("errorReason");
                String paramStr2 = framePackage.getParamStr("errorCode");
                r.d(paramStr2, "getParamStr(...)");
                int i10 = Integer.parseInt(paramStr2);
                AILogHelper.Companion.i(getTAG(), "handlePhotoTranslateResult onError errorCode:" + i10 + ",errorString:" + paramStr);
                if (photoTranslateCallback != null) {
                    photoTranslateCallback.onError(i10, paramStr);
                    return;
                }
                return;
            }
            byte[] bArrRemoveShareMemory = framePackage.removeShareMemory(PARAM_KEY_YOUDAO_DATA);
            if (bArrRemoveShareMemory == null) {
                str = framePackage.getParamStr("package::json_result");
            } else {
                Charset UTF_8 = StandardCharsets.UTF_8;
                r.d(UTF_8, "UTF_8");
                str = new String(bArrRemoveShareMemory, UTF_8);
            }
            try {
                d dVar = new d();
                l lVarE = com.google.gson.n.d(str).e();
                double dB = lVarE.p("angle").b();
                i iVarP = lVarE.p("from");
                String strH = iVarP != null ? iVarP.h() : null;
                i iVarP2 = lVarE.p("to");
                String strH2 = iVarP2 != null ? iVarP2.h() : null;
                i iVarP3 = lVarE.p("algorithmModel");
                Integer numValueOf = iVarP3 != null ? Integer.valueOf(iVarP3.c()) : null;
                i iVarP4 = lVarE.p("renderImage");
                String strH3 = iVarP4 != null ? iVarP4.h() : null;
                f fVarQ = lVarE.q("translate");
                r.d(fVarQ, "getAsJsonArray(...)");
                Type type = new TypeToken<List<? extends PhotoTranslateItem>>() { // from class: com.oplus.aiunit.translation.fuction.translate.TranslationClient$handlePhotoTranslateResult$1$translateType$1
                }.getType();
                r.d(type, "getType(...)");
                Object objI = dVar.i(fVarQ, type);
                r.d(objI, "fromJson(...)");
                PhotoTranslateResult photoTranslateResult = new PhotoTranslateResult(dB);
                photoTranslateResult.setTranslate((List) objI);
                photoTranslateResult.setFrom(strH);
                photoTranslateResult.setTo(strH2);
                photoTranslateResult.setAlgorithmModel(numValueOf);
                photoTranslateResult.setRenderImage(strH3);
                if (photoTranslateCallback != null) {
                    photoTranslateCallback.onTranslated(photoTranslateResult);
                    h0 h0Var = h0.INSTANCE;
                }
            } catch (Exception e10) {
                AILogHelper.Companion.i(this.getTAG(), "handlePhotoTranslateResult catch:" + e10);
                h0 h0Var2 = h0.INSTANCE;
            }
        }
    }

    private final void handleSSETextTranslateResult(FramePackage framePackage, StreamTextTranslateCallback streamTextTranslateCallback) {
        if (framePackage != null) {
            String paramStr = framePackage.getParamStr("custom::translation_callback_type");
            String paramStr2 = framePackage.getParamStr("requestId");
            if (paramStr.equals(RequestParamConstant.CALLBACK_METHOD_ONDATA)) {
                String paramStr3 = framePackage.getParamStr("package::json_result");
                if (streamTextTranslateCallback != null) {
                    r.b(paramStr2);
                    r.b(paramStr3);
                    streamTextTranslateCallback.onDataAvailable(paramStr2, paramStr3);
                    return;
                }
                return;
            }
            if (paramStr.equals("callback_method_onerror")) {
                String paramStr4 = framePackage.getParamStr("errorReason");
                String paramStr5 = framePackage.getParamStr("errorCode");
                r.d(paramStr5, "getParamStr(...)");
                int i10 = Integer.parseInt(paramStr5);
                AILogHelper.Companion.i(getTAG(), "handleSSETextTranslateResult onError errorCode:" + i10 + ",errorString:" + paramStr4);
                if (streamTextTranslateCallback != null) {
                    r.b(paramStr2);
                    streamTextTranslateCallback.onError(paramStr2, i10, paramStr4);
                    return;
                }
                return;
            }
            if (paramStr.equals(RequestParamConstant.CALLBACK_METHOD_ONSTOP)) {
                if (streamTextTranslateCallback != null) {
                    r.b(paramStr2);
                    streamTextTranslateCallback.onStop(paramStr2);
                    return;
                }
                return;
            }
            if (paramStr.equals(RequestParamConstant.CALLBACK_METHOD_ONSTART)) {
                if (streamTextTranslateCallback != null) {
                    r.b(paramStr2);
                    streamTextTranslateCallback.onStart(paramStr2);
                    return;
                }
                return;
            }
            if (!paramStr.equals(RequestParamConstant.CALLBACK_METHOD_ONFINISH)) {
                AILogHelper.Companion.i(getTAG(), "handleSSETextTranslateResult error");
                return;
            }
            String paramStr6 = framePackage.getParamStr("package::json_result");
            if (streamTextTranslateCallback != null) {
                r.b(paramStr2);
                streamTextTranslateCallback.onFinished(paramStr2, paramStr6);
            }
        }
    }

    private final void handleSynthesizeTextResult(FramePackage framePackage, SynthesisCallback synthesisCallback) {
        byte[] bArrO;
        byte[] bArrRemoveShareMemory;
        int i10;
        AILogHelper.Companion companion;
        int i11;
        int i12;
        if (framePackage != null) {
            String paramStr = framePackage.getParamStr("custom::translation_callback_type");
            if (!paramStr.equals(RequestParamConstant.CALLBACK_METHOD_ONDATA)) {
                if (paramStr.equals(RequestParamConstant.CALLBACK_METHOD_ONSTART)) {
                    AILogHelper.Companion.i(getTAG(), "handleSynthesizeTextResult onStart");
                    String paramStr2 = framePackage.getParamStr("requestId");
                    if (synthesisCallback != null) {
                        r.b(paramStr2);
                        synthesisCallback.onStart(paramStr2);
                        return;
                    }
                    return;
                }
                if (paramStr.equals(RequestParamConstant.CALLBACK_METHOD_ONSTOP)) {
                    AILogHelper.Companion.i(getTAG(), "handleSynthesizeTextResult onStop");
                    if (synthesisCallback != null) {
                        synthesisCallback.onStop();
                        return;
                    }
                    return;
                }
                if (paramStr.equals(RequestParamConstant.CALLBACK_METHOD_ONFINISH)) {
                    AILogHelper.Companion.i(getTAG(), "handleSynthesizeTextResult onFinished");
                    if (synthesisCallback != null) {
                        synthesisCallback.onFinished();
                        return;
                    }
                    return;
                }
                if (!paramStr.equals("callback_method_onerror")) {
                    AILogHelper.Companion.i(getTAG(), "else default");
                    return;
                }
                String paramStr3 = framePackage.getParamStr("errorReason");
                String paramStr4 = framePackage.getParamStr("errorCode");
                r.d(paramStr4, "getParamStr(...)");
                int i13 = Integer.parseInt(paramStr4);
                AILogHelper.Companion.i(getTAG(), "handleSynthesizeTextResult onError errorCode:" + i13 + ",errorString:" + paramStr3);
                if (synthesisCallback != null) {
                    synthesisCallback.onError(i13, paramStr3);
                    return;
                }
                return;
            }
            TtsAudioForm ttsAudioForm = new TtsAudioForm();
            try {
                bArrRemoveShareMemory = framePackage.removeShareMemory(PARAM_KEY_AUDIO_FILE);
                String paramStr5 = framePackage.getParamStr(PARAM_KEY_AUDIO_BUFFER_LENGTH);
                if (paramStr5 != null) {
                    r.b(paramStr5);
                    i10 = Integer.parseInt(paramStr5);
                } else {
                    i10 = 0;
                }
                companion = AILogHelper.Companion;
                companion.i(getTAG(), "handleSynthesizeTextResult :decodedBytes:" + bArrRemoveShareMemory.length + ",receiveLength:" + i10);
                String paramStr6 = framePackage.getParamStr(PARAM_KEY_SPEECH_AUDIO_FORM);
                String paramStr7 = framePackage.getParamStr(PARAM_KEY_SPEECH_SAMPLE_RATE);
                if (paramStr7 != null) {
                    r.b(paramStr7);
                    i11 = Integer.parseInt(paramStr7);
                } else {
                    i11 = 0;
                }
                String paramStr8 = framePackage.getParamStr(PARAM_KEY_SPEECH_AUDIO_BIT);
                if (paramStr8 != null) {
                    r.b(paramStr8);
                    i12 = Integer.parseInt(paramStr8);
                } else {
                    i12 = 0;
                }
                String paramStr9 = framePackage.getParamStr("requestId");
                ttsAudioForm.setFormat(paramStr6);
                ttsAudioForm.setSample(i11);
                ttsAudioForm.setBitDepth(i12);
                ttsAudioForm.setRequestId(paramStr9);
            } catch (Exception e10) {
                AILogHelper.Companion.e(getTAG(), "handleSynthesizeTextResult catch:" + e10);
                bArrO = null;
            }
            if (bArrRemoveShareMemory.length < i10) {
                if (synthesisCallback != null) {
                    synthesisCallback.onError(ErrorCodeConstant.INTERNAL_ERROR_ACTIVE_CANCEL, "AIUnit share memory size not match");
                }
                companion.i(getTAG(), "handleSynthesizeTextResult onError size");
            } else {
                bArrO = kotlin.collections.i.o(bArrRemoveShareMemory, 0, i10);
                if (synthesisCallback != null) {
                    synthesisCallback.onAudioAvailable(bArrO, ttsAudioForm);
                }
                AILogHelper.Companion.i(getTAG(), "handleSynthesizeTextResult onAudioAvailable");
            }
        }
    }

    private final void handleTextTranslateResult(FramePackage framePackage, TextTranslateCallback textTranslateCallback) {
        int i10;
        if (framePackage != null) {
            if (!framePackage.getParamStr("custom::translation_callback_type").equals("callback_method_onsuccess")) {
                String paramStr = framePackage.getParamStr("errorReason");
                String paramStr2 = framePackage.getParamStr("errorCode");
                r.d(paramStr2, "getParamStr(...)");
                int i11 = Integer.parseInt(paramStr2);
                AILogHelper.Companion.i(getTAG(), "handleTextTranslateResult onError errorCode:" + i11 + ",errorString:" + paramStr);
                if (textTranslateCallback != null) {
                    textTranslateCallback.onError(i11, paramStr);
                    return;
                }
                return;
            }
            try {
                String paramStr3 = framePackage.getParamStr("requestId");
                String paramStr4 = framePackage.getParamStr("package::json_result");
                String paramStr5 = framePackage.getParamStr(PARAM_EVENT_CODE);
                if (paramStr5 == null || paramStr5.length() == 0) {
                    i10 = 0;
                } else {
                    r.b(paramStr5);
                    i10 = Integer.parseInt(paramStr5);
                }
                d dVarB = new e().c(TextTranslateData.class, new TextTranslateDataDeserializer()).b();
                Type type = new TypeToken<List<? extends TextTranslateData>>() { // from class: com.oplus.aiunit.translation.fuction.translate.TranslationClient$handleTextTranslateResult$1$listType$1
                }.getType();
                r.d(type, "getType(...)");
                Object objN = dVarB.n(paramStr4, type);
                r.d(objN, "fromJson(...)");
                List<TextTranslateData> list = (List) objN;
                if (textTranslateCallback != null) {
                    r.b(paramStr3);
                    textTranslateCallback.onSuccess(paramStr3, list, i10);
                    h0 h0Var = h0.INSTANCE;
                }
            } catch (Exception e10) {
                AILogHelper.Companion.i(this.getTAG(), "handleTextTranslateResult catch:" + e10);
                h0 h0Var2 = h0.INSTANCE;
            }
        }
    }

    public final void cancelImageTranslate(String requestId) {
        r.e(requestId, "requestId");
        AILogHelper.Companion.i(getTAG(), "TranslationClient cancelImageTranslate()");
        BaseClient.process$default(this, requestId, null, METHOD_IMAGE_TRANSLATE_CANCEL, null, 8, null);
    }

    public final void cancelPhotoTranslate(String requestId) {
        r.e(requestId, "requestId");
        AILogHelper.Companion.i(getTAG(), "TranslationClient cancelPhotoTranslate()");
        BaseClient.process$default(this, requestId, null, METHOD_PHOTO_TRANSLATE_CANCEL, null, 8, null);
    }

    public final void cancelSSETextTranslate(String requestId) {
        r.e(requestId, "requestId");
        AILogHelper.Companion.i(getTAG(), "TranslationClient cancelSSETextTranslate()");
        BaseClient.process$default(this, requestId, null, METHOD_SSE_TEXT_TRANSLATE_CANCEL, null, 8, null);
    }

    public final void cancelSynthesizeText(String requestId) {
        r.e(requestId, "requestId");
        AILogHelper.Companion.i(getTAG(), "TranslationClient cancelSynthesizeText()");
        BaseClient.process$default(this, requestId, null, METHOD_SPEECH_STOP, null, 8, null);
    }

    public final void cancelTextTranslate(String requestId) {
        r.e(requestId, "requestId");
        AILogHelper.Companion.i(getTAG(), "TranslationClient cancelTextTranslate()");
        BaseClient.process$default(this, requestId, null, METHOD_TEXT_TRANSLATE_CANCEL, null, 8, null);
    }

    public final void generateImageTranslate(final ImageTranslateRequest request, final ImageTranslateCallback callback) {
        r.e(request, "request");
        r.e(callback, "callback");
        AILogHelper.Companion.i(getTAG(), "TranslationClient generateImageTranslate()");
        if (request.getPictureTransModel() != 2) {
            request.setAlgorithmModel(request.getPictureTransModel() == 0 ? 0 : 3);
            BaseClient.process$default(this, request, callback, METHOD_IMAGE_TRANSLATE_GENERATE, null, 8, null);
            return;
        }
        try {
            final String strGenerateSourceLan = generateSourceLan(request.getSourceLanguage());
            final String strGenerateTargetLan = generateTargetLan(request.getTargetLanguage());
            final HashMap<String, String[]> map = new HashMap<String, String[]>(request, strGenerateSourceLan, strGenerateTargetLan) { // from class: com.oplus.aiunit.translation.fuction.translate.TranslationClient$generateImageTranslate$params$1
                {
                    put("q", new String[]{request.getImageBytes()});
                    put("from", new String[]{strGenerateSourceLan});
                    put("to", new String[]{strGenerateTargetLan});
                    if (request.getImageModel() == 0) {
                        put("render", new String[]{"1"});
                    } else {
                        put("render", new String[]{AuthUtil.AUTH_STYLE_INNER});
                    }
                    put("type", new String[]{"1"});
                }

                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public final /* bridge */ boolean containsKey(Object obj) {
                    if (obj == null ? true : obj instanceof String) {
                        return containsKey((String) obj);
                    }
                    return false;
                }

                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public final /* bridge */ boolean containsValue(Object obj) {
                    if (obj instanceof String[]) {
                        return containsValue((String[]) obj);
                    }
                    return false;
                }

                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public final /* bridge */ Set<Map.Entry<String, String[]>> entrySet() {
                    return getEntries();
                }

                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public final /* bridge */ /* synthetic */ Object get(Object obj) {
                    if (obj == null ? true : obj instanceof String) {
                        return get((String) obj);
                    }
                    return null;
                }

                public /* bridge */ Set<Map.Entry<String, String[]>> getEntries() {
                    return super.entrySet();
                }

                public /* bridge */ Set<String> getKeys() {
                    return super.keySet();
                }

                @Override // java.util.HashMap, java.util.Map
                public final /* bridge */ /* synthetic */ Object getOrDefault(Object obj, Object obj2) {
                    return !(obj == null ? true : obj instanceof String) ? obj2 : getOrDefault((String) obj, (String[]) obj2);
                }

                public /* bridge */ int getSize() {
                    return super.size();
                }

                public /* bridge */ Collection<String[]> getValues() {
                    return super.values();
                }

                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public final /* bridge */ Set<String> keySet() {
                    return getKeys();
                }

                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public final /* bridge */ /* synthetic */ Object remove(Object obj) {
                    if (obj == null ? true : obj instanceof String) {
                        return remove((String) obj);
                    }
                    return null;
                }

                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public final /* bridge */ int size() {
                    return getSize();
                }

                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public final /* bridge */ Collection<String[]> values() {
                    return getValues();
                }

                public /* bridge */ boolean containsKey(String str) {
                    return super.containsKey((Object) str);
                }

                public /* bridge */ boolean containsValue(String[] strArr) {
                    return super.containsValue((Object) strArr);
                }

                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public final /* bridge */ String[] get(Object obj) {
                    if (obj == null ? true : obj instanceof String) {
                        return get((String) obj);
                    }
                    return null;
                }

                public final /* bridge */ String[] getOrDefault(Object obj, String[] strArr) {
                    return !(obj == null ? true : obj instanceof String) ? strArr : getOrDefault((String) obj, strArr);
                }

                @Override // java.util.HashMap, java.util.Map
                public final /* bridge */ boolean remove(Object obj, Object obj2) {
                    if ((obj == null ? true : obj instanceof String) && (obj2 instanceof String[])) {
                        return remove((String) obj, (String[]) obj2);
                    }
                    return false;
                }

                public /* bridge */ String[] get(String str) {
                    return (String[]) super.get((Object) str);
                }

                public /* bridge */ String[] getOrDefault(String str, String[] strArr) {
                    return (String[]) super.getOrDefault((Object) str, strArr);
                }

                public /* bridge */ boolean remove(String str, String[] strArr) {
                    return super.remove((Object) str, (Object) strArr);
                }

                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public final /* bridge */ String[] remove(Object obj) {
                    if (obj == null ? true : obj instanceof String) {
                        return remove((String) obj);
                    }
                    return null;
                }

                public /* bridge */ String[] remove(String str) {
                    return (String[]) super.remove((Object) str);
                }
            };
            new Thread(new Runnable() { // from class: com.oplus.aiunit.translation.fuction.translate.b
                @Override // java.lang.Runnable
                public final void run() {
                    TranslationClient.generateImageTranslate$lambda$0(request, map, callback);
                }
            }).start();
        } catch (Exception e10) {
            AILogHelper.Companion.e(getTAG(), n8.e.b(e10));
            callback.onError(ErrorCodeConstant.INTERNAL_ERROR_CODE_PARSE_JSON, e10.toString());
        }
    }

    public final void generatePhotoTranslate(final PhotoTranslateRequest request, final PhotoTranslateCallback callback) {
        r.e(request, "request");
        r.e(callback, "callback");
        AILogHelper.Companion.i(getTAG(), "TranslationClient generatePhotoTranslate()");
        if (request.getPictureTransModel() != 2) {
            request.setAlgorithmModel(request.getPictureTransModel() == 0 ? 0 : 3);
            BaseClient.process$default(this, request, callback, METHOD_PHOTO_TRANSLATE_GENERATE, null, 8, null);
            return;
        }
        try {
            final String strGenerateSourceLan = generateSourceLan(request.getSourceLanguage());
            final String strGenerateTargetLan = generateTargetLan(request.getTargetLanguage());
            final HashMap<String, String[]> map = new HashMap<String, String[]>(request, strGenerateSourceLan, strGenerateTargetLan) { // from class: com.oplus.aiunit.translation.fuction.translate.TranslationClient$generatePhotoTranslate$params$1
                {
                    put("q", new String[]{request.getImageBytes()});
                    put("from", new String[]{strGenerateSourceLan});
                    put("to", new String[]{strGenerateTargetLan});
                    put("render", new String[]{"1"});
                    put("type", new String[]{"1"});
                }

                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public final /* bridge */ boolean containsKey(Object obj) {
                    if (obj == null ? true : obj instanceof String) {
                        return containsKey((String) obj);
                    }
                    return false;
                }

                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public final /* bridge */ boolean containsValue(Object obj) {
                    if (obj instanceof String[]) {
                        return containsValue((String[]) obj);
                    }
                    return false;
                }

                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public final /* bridge */ Set<Map.Entry<String, String[]>> entrySet() {
                    return getEntries();
                }

                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public final /* bridge */ /* synthetic */ Object get(Object obj) {
                    if (obj == null ? true : obj instanceof String) {
                        return get((String) obj);
                    }
                    return null;
                }

                public /* bridge */ Set<Map.Entry<String, String[]>> getEntries() {
                    return super.entrySet();
                }

                public /* bridge */ Set<String> getKeys() {
                    return super.keySet();
                }

                @Override // java.util.HashMap, java.util.Map
                public final /* bridge */ /* synthetic */ Object getOrDefault(Object obj, Object obj2) {
                    return !(obj == null ? true : obj instanceof String) ? obj2 : getOrDefault((String) obj, (String[]) obj2);
                }

                public /* bridge */ int getSize() {
                    return super.size();
                }

                public /* bridge */ Collection<String[]> getValues() {
                    return super.values();
                }

                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public final /* bridge */ Set<String> keySet() {
                    return getKeys();
                }

                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public final /* bridge */ /* synthetic */ Object remove(Object obj) {
                    if (obj == null ? true : obj instanceof String) {
                        return remove((String) obj);
                    }
                    return null;
                }

                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public final /* bridge */ int size() {
                    return getSize();
                }

                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public final /* bridge */ Collection<String[]> values() {
                    return getValues();
                }

                public /* bridge */ boolean containsKey(String str) {
                    return super.containsKey((Object) str);
                }

                public /* bridge */ boolean containsValue(String[] strArr) {
                    return super.containsValue((Object) strArr);
                }

                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public final /* bridge */ String[] get(Object obj) {
                    if (obj == null ? true : obj instanceof String) {
                        return get((String) obj);
                    }
                    return null;
                }

                public final /* bridge */ String[] getOrDefault(Object obj, String[] strArr) {
                    return !(obj == null ? true : obj instanceof String) ? strArr : getOrDefault((String) obj, strArr);
                }

                @Override // java.util.HashMap, java.util.Map
                public final /* bridge */ boolean remove(Object obj, Object obj2) {
                    if ((obj == null ? true : obj instanceof String) && (obj2 instanceof String[])) {
                        return remove((String) obj, (String[]) obj2);
                    }
                    return false;
                }

                public /* bridge */ String[] get(String str) {
                    return (String[]) super.get((Object) str);
                }

                public /* bridge */ String[] getOrDefault(String str, String[] strArr) {
                    return (String[]) super.getOrDefault((Object) str, strArr);
                }

                public /* bridge */ boolean remove(String str, String[] strArr) {
                    return super.remove((Object) str, (Object) strArr);
                }

                @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
                public final /* bridge */ String[] remove(Object obj) {
                    if (obj == null ? true : obj instanceof String) {
                        return remove((String) obj);
                    }
                    return null;
                }

                public /* bridge */ String[] remove(String str) {
                    return (String[]) super.remove((Object) str);
                }
            };
            new Thread(new Runnable() { // from class: com.oplus.aiunit.translation.fuction.translate.a
                @Override // java.lang.Runnable
                public final void run() {
                    TranslationClient.generatePhotoTranslate$lambda$1(request, map, callback);
                }
            }).start();
        } catch (Exception e10) {
            AILogHelper.Companion.e(getTAG(), n8.e.b(e10));
            callback.onError(ErrorCodeConstant.INTERNAL_ERROR_CODE_PARSE_JSON, e10.toString());
        }
    }

    public final void generateSSETextTranslate(StreamTextTranslateRequest request, StreamTextTranslateCallback callback) {
        r.e(request, "request");
        r.e(callback, "callback");
        AILogHelper.Companion.i(getTAG(), "TranslationClient generateSSETextTranslate()");
        BaseClient.process$default(this, request, callback, METHOD_SSE_TEXT_TRANSLATE_GENERATE, null, 8, null);
    }

    public final void generateTextTranslate(TextTranslateRequest request, TextTranslateCallback callback) {
        r.e(request, "request");
        r.e(callback, "callback");
        AILogHelper.Companion.i(getTAG(), "TranslationClient generateTextTranslate()");
        BaseClient.process$default(this, request, callback, METHOD_TEXT_TRANSLATE_GENERATE, null, 8, null);
    }

    public final void getImgTransConfig(ImgTransConfigRequest request, ImgTransConfigCallback callback) {
        r.e(request, "request");
        r.e(callback, "callback");
        AILogHelper.Companion.i(getTAG(), "TranslationClient getImgTransConfig()");
        BaseClient.process$default(this, request, callback, METHOD_GET_IMG_TRANS_CONFIG, null, 8, null);
    }

    public final void getOfflineInfo(OfflinePackageRequest request, OfflinePackageCallback callback) {
        r.e(request, "request");
        r.e(callback, "callback");
        AILogHelper.Companion.i(getTAG(), "TranslationClient getOfflineInfo()");
        BaseClient.process$default(this, request, callback, METHOD_GET_OFFLINE_INFO, null, 8, null);
    }

    public final void getOnlineConfig(TranslateConfigRequest request, TranslateConfigCallback callback) {
        r.e(request, "request");
        r.e(callback, "callback");
        AILogHelper.Companion.i(getTAG(), "TranslationClient getOnlineConfig()");
        BaseClient.process$default(this, request, callback, "method_get_online_config", null, 8, null);
    }

    public final void getToolboxTranslateConfig(ToolboxTranslateConfigRequest request, ToolboxTranslateConfigCallback callback) {
        r.e(request, "request");
        r.e(callback, "callback");
        AILogHelper.Companion.i(getTAG(), "TranslationClient getToolboxTranslateConfig()");
        BaseClient.process$default(this, request, callback, METHOD_GET_TRANSLATE_CONFIG, null, 8, null);
    }

    public final void getWsTtsInitStatus(WsTtsInitStatusCallback callback) {
        r.e(callback, "callback");
        AILogHelper.Companion.i(getTAG(), "TranslationClient getWsTtsInitStatus()");
        BaseClient.process$default(this, null, callback, METHOD_GET_WS_TTS_INIT_STATUS, null, 8, null);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.oplus.aiunit.translation.common.BaseClient, com.oplus.aiunit.translation.common.ITransmit
    public <T> String handleInput(T t10, T t11, String methods, IAIMessenger messenger) {
        r.e(methods, "methods");
        r.e(messenger, "messenger");
        AILogHelper.Companion companion = AILogHelper.Companion;
        companion.i(getTAG(), "process:" + methods);
        FrameInputSlot frameInputSlotCreateInputSlot = getDetector().createInputSlot();
        r.d(frameInputSlotCreateInputSlot, "createInputSlot(...)");
        TranslationInputSlot translationInputSlot = (TranslationInputSlot) frameInputSlotCreateInputSlot;
        translationInputSlot.setCustomParam(RequestParamConstant.PARAM_CLIENT_LABEL, "TranslationClient");
        InitStateSingleton initStateSingleton = InitStateSingleton.INSTANCE;
        translationInputSlot.setCustomParam(RequestParamConstant.KEY_SDK_VERSION, initStateSingleton.getSdkVersion());
        translationInputSlot.setCustomParam(RequestParamConstant.KEY_PACKAGE_NAME, initStateSingleton.getPackageName());
        switch (methods.hashCode()) {
            case -1994410861:
                if (methods.equals(METHOD_INIT_AI_SPEECH)) {
                    r.c(t10, "null cannot be cast to non-null type com.oplus.aiunit.translation.callback.ISpeechConfig");
                    translationInputSlot.setSpeechInitInput((ISpeechConfig) t10);
                }
                break;
            case -1689724191:
                if (methods.equals(METHOD_SPEECH_STOP)) {
                    r.c(t10, "null cannot be cast to non-null type kotlin.String");
                    translationInputSlot.setMethodInput(METHOD_SPEECH_STOP, (String) t10);
                }
                break;
            case -1578539881:
                if (methods.equals(METHOD_SPEECH_GET)) {
                    r.c(t10, "null cannot be cast to non-null type com.oplus.aiunit.translation.request.SynthesisRequest");
                    translationInputSlot.setSynthesisInput((SynthesisRequest) t10);
                }
                break;
            case -1552028256:
                if (methods.equals(METHOD_INIT_AI_TRANSLATION)) {
                    r.c(t10, "null cannot be cast to non-null type com.oplus.aiunit.translation.callback.ITranslateConfig");
                    translationInputSlot.setTranslationInitInput((ITranslateConfig) t10);
                }
                break;
            case -1535004076:
                if (methods.equals(METHOD_INIT_WS_SPEECH)) {
                    translationInputSlot.setInitWsSpeech();
                }
                break;
            case -1261624635:
                if (methods.equals(METHOD_SSE_TEXT_TRANSLATE_CANCEL)) {
                    r.c(t10, "null cannot be cast to non-null type kotlin.String");
                    translationInputSlot.setMethodInput(METHOD_SSE_TEXT_TRANSLATE_CANCEL, (String) t10);
                }
                break;
            case -1261139207:
                if (methods.equals(METHOD_GET_WS_TTS_INIT_STATUS)) {
                    translationInputSlot.setMethodInput(METHOD_GET_WS_TTS_INIT_STATUS, "");
                }
                break;
            case -1064626758:
                if (methods.equals(METHOD_GET_TRANSLATE_CONFIG)) {
                    translationInputSlot.setGetTranslateConfig(t10 instanceof ToolboxTranslateConfigRequest ? (ToolboxTranslateConfigRequest) t10 : null);
                }
                break;
            case -1041522163:
                if (methods.equals(METHOD_IMAGE_TRANSLATE_CANCEL)) {
                    r.c(t10, "null cannot be cast to non-null type kotlin.String");
                    translationInputSlot.setMethodInput(METHOD_IMAGE_TRANSLATE_CANCEL, (String) t10);
                }
                break;
            case -492032343:
                if (methods.equals(METHOD_RELEASE)) {
                    translationInputSlot.setMethodInput(METHOD_RELEASE, "");
                }
                break;
            case -448469487:
                if (methods.equals(METHOD_PHOTO_TRANSLATE_GENERATE)) {
                    r.c(t10, "null cannot be cast to non-null type com.oplus.aiunit.translation.request.PhotoTranslateRequest");
                    translationInputSlot.setPhotoTranslateInput((PhotoTranslateRequest) t10);
                }
                break;
            case -187144561:
                if (methods.equals(METHOD_STOP_WS_TTS)) {
                    r.c(t10, "null cannot be cast to non-null type com.oplus.aiunit.translation.request.EndTtsRequest");
                    translationInputSlot.setMethodEndTts((EndTtsRequest) t10);
                }
                break;
            case -135264641:
                if (methods.equals(METHOD_TEXT_TRANSLATE_CANCEL)) {
                    r.c(t10, "null cannot be cast to non-null type kotlin.String");
                    translationInputSlot.setMethodInput(METHOD_TEXT_TRANSLATE_CANCEL, (String) t10);
                }
                break;
            case -87394794:
                if (methods.equals(METHOD_PHOTO_TRANSLATE_CANCEL)) {
                    r.c(t10, "null cannot be cast to non-null type kotlin.String");
                    translationInputSlot.setMethodInput(METHOD_PHOTO_TRANSLATE_CANCEL, (String) t10);
                }
                break;
            case 25922417:
                if (methods.equals(METHOD_GET_OFFLINE_INFO)) {
                    r.c(t10, "null cannot be cast to non-null type com.oplus.aiunit.translation.request.OfflinePackageRequest");
                    translationInputSlot.setGetOfflineInput((OfflinePackageRequest) t10);
                }
                break;
            case 176154411:
                if (methods.equals(METHOD_START_WS_TTS)) {
                    r.c(t10, "null cannot be cast to non-null type com.oplus.aiunit.translation.request.WsTtsRequest");
                    translationInputSlot.setStartWsTtsInput((WsTtsRequest) t10);
                }
                break;
            case 371264935:
                if (methods.equals("method_get_online_config")) {
                    translationInputSlot.setGetOnlineInput(t10 instanceof TranslateConfigRequest ? (TranslateConfigRequest) t10 : null);
                }
                break;
            case 693052160:
                if (methods.equals(METHOD_SSE_TEXT_TRANSLATE_GENERATE)) {
                    r.c(t10, "null cannot be cast to non-null type com.oplus.aiunit.translation.request.StreamTextTranslateRequest");
                    translationInputSlot.setSSETextTranslateInput((StreamTextTranslateRequest) t10);
                }
                break;
            case 793247802:
                if (methods.equals(METHOD_TEXT_TRANSLATE_GENERATE)) {
                    r.c(t10, "null cannot be cast to non-null type com.oplus.aiunit.translation.request.TextTranslateRequest");
                    translationInputSlot.setTextTranslateInput((TextTranslateRequest) t10);
                }
                break;
            case 1497793052:
                if (methods.equals(METHOD_GET_IMG_TRANS_CONFIG)) {
                    translationInputSlot.setGetImgTransInput(t10 instanceof ImgTransConfigRequest ? (ImgTransConfigRequest) t10 : null);
                }
                break;
            case 1528638728:
                if (methods.equals("method_init_omni_plugin")) {
                    translationInputSlot.setMethodInput("method_init_omni_plugin", "");
                }
                break;
            case 1758130248:
                if (methods.equals(METHOD_IMAGE_TRANSLATE_GENERATE)) {
                    r.c(t10, "null cannot be cast to non-null type com.oplus.aiunit.translation.request.ImageTranslateRequest");
                    translationInputSlot.setImageTranslateInput((ImageTranslateRequest) t10);
                }
                break;
        }
        translationInputSlot.setMessenger(messenger);
        FrameOutputSlot frameOutputSlotCreateOutputSlot = getDetector().createOutputSlot();
        r.d(frameOutputSlotCreateOutputSlot, "createOutputSlot(...)");
        BaseOutputSlot baseOutputSlot = (BaseOutputSlot) frameOutputSlotCreateOutputSlot;
        getDetector().process(translationInputSlot, baseOutputSlot);
        String jsonResult = baseOutputSlot.getJsonResult();
        companion.i(getTAG(), "oSlot jsonString:" + jsonResult);
        r.b(jsonResult);
        handleOSlotResult(jsonResult, t11);
        return baseOutputSlot.getJsonResult();
    }

    @Override // com.oplus.aiunit.translation.common.BaseClient, com.oplus.aiunit.translation.common.ITransmit
    public <T> void handleResult(FramePackage framePackage, T t10, String originMethods) {
        String str;
        r.e(originMethods, "originMethods");
        AILogHelper.Companion companion = AILogHelper.Companion;
        companion.i(getTAG(), "TranslationClient handling result for method: " + originMethods);
        String paramStr = framePackage != null ? framePackage.getParamStr("custom::translation_method") : null;
        companion.i(getTAG(), "handleResult, methods: " + paramStr);
        if (paramStr != null) {
            switch (paramStr.hashCode()) {
                case -1994410861:
                    if (paramStr.equals(METHOD_INIT_AI_SPEECH)) {
                        r.c(t10, "null cannot be cast to non-null type com.oplus.aiunit.translation.callback.Callback");
                        handleInitSpeechResult(framePackage, (Callback) t10);
                        return;
                    }
                    return;
                case -1578539881:
                    if (paramStr.equals(METHOD_SPEECH_GET)) {
                        handleSynthesizeTextResult(framePackage, t10 instanceof SynthesisCallback ? (SynthesisCallback) t10 : null);
                        return;
                    }
                    return;
                case -1552028256:
                    if (paramStr.equals(METHOD_INIT_AI_TRANSLATION)) {
                        r.c(t10, "null cannot be cast to non-null type com.oplus.aiunit.translation.callback.Callback");
                        handleInitTranslateResult(framePackage, (Callback) t10);
                        return;
                    }
                    return;
                case -1535004076:
                    if (paramStr.equals(METHOD_INIT_WS_SPEECH)) {
                        r.c(t10, "null cannot be cast to non-null type com.oplus.aiunit.translation.callback.TtsWebsocketCallback");
                        handleInitWsSpeechResult(framePackage, (TtsWebsocketCallback) t10);
                        return;
                    }
                    return;
                case -1261139207:
                    if (paramStr.equals(METHOD_GET_WS_TTS_INIT_STATUS)) {
                        companion.i(getTAG(), "TranslationClient METHOD_GET_WS_TTS_INIT_STATUS handleResult");
                        handleGetWsTtsInitStatusResult(framePackage, t10 instanceof WsTtsInitStatusCallback ? (WsTtsInitStatusCallback) t10 : null);
                        return;
                    }
                    return;
                case -1064626758:
                    if (paramStr.equals(METHOD_GET_TRANSLATE_CONFIG)) {
                        handleGetTranslateConfigResult(framePackage, t10 instanceof ToolboxTranslateConfigCallback ? (ToolboxTranslateConfigCallback) t10 : null);
                        return;
                    }
                    return;
                case -492032343:
                    str = METHOD_RELEASE;
                    break;
                case -448469487:
                    if (paramStr.equals(METHOD_PHOTO_TRANSLATE_GENERATE)) {
                        handlePhotoTranslateResult(framePackage, t10 instanceof PhotoTranslateCallback ? (PhotoTranslateCallback) t10 : null);
                        return;
                    }
                    return;
                case 25922417:
                    if (paramStr.equals(METHOD_GET_OFFLINE_INFO)) {
                        handleGetOfflineResult(framePackage, t10 instanceof OfflinePackageCallback ? (OfflinePackageCallback) t10 : null);
                        return;
                    }
                    return;
                case 371264935:
                    if (paramStr.equals("method_get_online_config")) {
                        handleGetOnlineResult(framePackage, t10 instanceof TranslateConfigCallback ? (TranslateConfigCallback) t10 : null);
                        return;
                    }
                    return;
                case 693052160:
                    if (paramStr.equals(METHOD_SSE_TEXT_TRANSLATE_GENERATE)) {
                        handleSSETextTranslateResult(framePackage, t10 instanceof StreamTextTranslateCallback ? (StreamTextTranslateCallback) t10 : null);
                        return;
                    }
                    return;
                case 793247802:
                    if (paramStr.equals(METHOD_TEXT_TRANSLATE_GENERATE)) {
                        handleTextTranslateResult(framePackage, t10 instanceof TextTranslateCallback ? (TextTranslateCallback) t10 : null);
                        return;
                    }
                    return;
                case 1497793052:
                    if (paramStr.equals(METHOD_GET_IMG_TRANS_CONFIG)) {
                        handleGetImgTransConfigResult(framePackage, t10 instanceof ImgTransConfigCallback ? (ImgTransConfigCallback) t10 : null);
                        return;
                    }
                    return;
                case 1528638728:
                    str = "method_init_omni_plugin";
                    break;
                case 1758130248:
                    if (paramStr.equals(METHOD_IMAGE_TRANSLATE_GENERATE)) {
                        handleImageTranslateResult(framePackage, t10 instanceof ImageTranslateCallback ? (ImageTranslateCallback) t10 : null);
                        return;
                    }
                    return;
                default:
                    return;
            }
            paramStr.equals(str);
        }
    }

    public final void initOmniPlugin() {
        AILogHelper.Companion.i(getTAG(), "TranslationClient release()");
        BaseClient.process$default(this, null, null, "method_init_omni_plugin", null, 8, null);
    }

    public final void initSpeech(ISpeechConfig iSpeechConfig, Callback callback) {
        r.e(callback, "callback");
        AILog.init(getContext(), false);
        AILogHelper.Companion companion = AILogHelper.Companion;
        companion.i(getTAG(), "TranslationClient init SpeechSDK()");
        if (!AISettings.isDetectAvailable(getContext(), getDetectName(), null)) {
            companion.i(getTAG(), "TranslationClient isDetectAvailable not");
        }
        BaseClient.process$default(this, iSpeechConfig, callback, METHOD_INIT_AI_SPEECH, null, 8, null);
    }

    public final void initTranslate(ITranslateConfig iTranslateConfig, Callback callback) {
        r.e(callback, "callback");
        AILog.init(getContext(), false);
        AILogHelper.Companion companion = AILogHelper.Companion;
        companion.i(getTAG(), "TranslationClient init TranslateSDK()");
        if (!AISettings.isDetectAvailable(getContext(), getDetectName(), null)) {
            companion.i(getTAG(), "TranslationClient isDetectAvailable not");
        }
        BaseClient.process$default(this, iTranslateConfig, callback, METHOD_INIT_AI_TRANSLATION, null, 8, null);
    }

    public final void initWsSpeech(TtsWebsocketCallback callback) {
        r.e(callback, "callback");
        AILog.init(getContext(), false);
        AILogHelper.Companion companion = AILogHelper.Companion;
        companion.i(getTAG(), "TranslationClient initWsSpeech()");
        if (!AISettings.isDetectAvailable(getContext(), getDetectName(), null)) {
            companion.i(getTAG(), "TranslationClient isDetectAvailable not");
        }
        BaseClient.process$default(this, null, callback, METHOD_INIT_WS_SPEECH, null, 8, null);
    }

    public final void release() {
        AILogHelper.Companion.i(getTAG(), "TranslationClient release()");
        BaseClient.process$default(this, null, null, METHOD_RELEASE, null, 8, null);
    }

    public final void startWsTts(WsTtsRequest request) {
        r.e(request, "request");
        AILogHelper.Companion.i(getTAG(), "TranslationClient startWsTts()");
        BaseClient.process$default(this, request, null, METHOD_START_WS_TTS, null, 8, null);
    }

    public final void stopWsTts(String channel, String requestId) {
        r.e(channel, "channel");
        r.e(requestId, "requestId");
        AILogHelper.Companion.i(getTAG(), "TranslationClient stopWsTts()");
        EndTtsRequest endTtsRequest = new EndTtsRequest();
        endTtsRequest.setRequestId(requestId);
        endTtsRequest.setChannel(channel);
        BaseClient.process$default(this, endTtsRequest, null, METHOD_STOP_WS_TTS, null, 8, null);
    }

    public final void synthesizeText(SynthesisRequest request, SynthesisCallback callback) {
        r.e(request, "request");
        r.e(callback, "callback");
        AILogHelper.Companion.i(getTAG(), "TranslationClient synthesizeText()");
        BaseClient.process$default(this, request, callback, METHOD_SPEECH_GET, null, 8, null);
    }
}
