package com.oplus.aiunit.translation.fuction.translate;

import android.os.Bundle;
import com.google.gson.d;
import com.oplus.aiunit.core.base.AIContext;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.translation.callback.ISpeechConfig;
import com.oplus.aiunit.translation.callback.ITranslateConfig;
import com.oplus.aiunit.translation.common.BaseInputSlot;
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
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import v4.c;

/* JADX INFO: loaded from: classes2.dex */
public final class TranslationInputSlot extends BaseInputSlot {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "TranslationInputSlot";

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public static final class InitDataObject {

        @c("imageTranslateMaxTaskCount")
        private final int imageTranslateMaxTaskCount;

        @c("imageTranslateTimeout")
        private final long imageTranslateTimeout;

        @c("photoTranslateMaxTaskCount")
        private final int photoTranslateMaxTaskCount;

        @c("photoTranslateTimeout")
        private final long photoTranslateTimeout;

        @c("sseTextTranslateMaxTaskCount")
        private final int sseTextTranslateMaxTaskCount;

        @c("sseTextTranslateTimeout")
        private final long sseTextTranslateTimeout;

        @c("textTranslateMaxTaskCount")
        private final int textTranslateMaxTaskCount;

        @c("textTranslateTimeout")
        private final long textTranslateTimeout;

        public InitDataObject(long j10, int i10, long j11, int i11, long j12, int i12, long j13, int i13) {
            this.textTranslateTimeout = j10;
            this.textTranslateMaxTaskCount = i10;
            this.sseTextTranslateTimeout = j11;
            this.sseTextTranslateMaxTaskCount = i11;
            this.imageTranslateTimeout = j12;
            this.imageTranslateMaxTaskCount = i12;
            this.photoTranslateTimeout = j13;
            this.photoTranslateMaxTaskCount = i13;
        }

        public final int getImageTranslateMaxTaskCount() {
            return this.imageTranslateMaxTaskCount;
        }

        public final long getImageTranslateTimeout() {
            return this.imageTranslateTimeout;
        }

        public final int getPhotoTranslateMaxTaskCount() {
            return this.photoTranslateMaxTaskCount;
        }

        public final long getPhotoTranslateTimeout() {
            return this.photoTranslateTimeout;
        }

        public final int getSseTextTranslateMaxTaskCount() {
            return this.sseTextTranslateMaxTaskCount;
        }

        public final long getSseTextTranslateTimeout() {
            return this.sseTextTranslateTimeout;
        }

        public final int getTextTranslateMaxTaskCount() {
            return this.textTranslateMaxTaskCount;
        }

        public final long getTextTranslateTimeout() {
            return this.textTranslateTimeout;
        }
    }

    public static final class SpeechInitDataObject {

        @c("speechMaxTaskCount")
        private final int speechMaxTaskCount;

        @c("textToSpeechTimeout")
        private final long textToSpeechTimeout;

        public SpeechInitDataObject(long j10, int i10) {
            this.textToSpeechTimeout = j10;
            this.speechMaxTaskCount = i10;
        }

        public final int getSpeechMaxTaskCount() {
            return this.speechMaxTaskCount;
        }

        public final long getTextToSpeechTimeout() {
            return this.textToSpeechTimeout;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TranslationInputSlot(AIContext context) {
        super(context);
        r.e(context, "context");
    }

    private final void addSpeechInitConfigParam() {
        InitStateSingleton initStateSingleton = InitStateSingleton.INSTANCE;
        String speechInitJson = initStateSingleton.getSpeechInitJson();
        int speechInitState = initStateSingleton.getSpeechInitState();
        setCustomParam(TranslationClient.PARAM_KEY_SPEECH_INIT_CONFIG, speechInitJson);
        setCustomParam(TranslationClient.PARAM_KEY_SPEECH_INIT_STATE, String.valueOf(speechInitState));
    }

    private final void addTranslateInitConfigParam() {
        InitStateSingleton initStateSingleton = InitStateSingleton.INSTANCE;
        String translateInitJson = initStateSingleton.getTranslateInitJson();
        AILogHelper.Companion.i(TAG, "addTranslateInitConfigParam json = " + translateInitJson);
        int translateInitState = initStateSingleton.getTranslateInitState();
        setCustomParam(TranslationClient.PARAM_KEY_TRANSLATE_INIT_CONFIG, translateInitJson);
        setCustomParam(TranslationClient.PARAM_KEY_TRANSLATE_INIT_STATE, String.valueOf(translateInitState));
    }

    public final void setGetImgTransInput(ImgTransConfigRequest imgTransConfigRequest) {
        setCustomParam("custom::translation_method", TranslationClient.METHOD_GET_IMG_TRANS_CONFIG);
        setJsonSource(new d().v(imgTransConfigRequest));
    }

    public final void setGetOfflineInput(OfflinePackageRequest request) {
        r.e(request, "request");
        setCustomParam("custom::translation_method", TranslationClient.METHOD_GET_OFFLINE_INFO);
        setJsonSource(new d().v(request));
    }

    public final void setGetOnlineInput(TranslateConfigRequest translateConfigRequest) {
        Map<String, Object> extend;
        Object obj;
        setCustomParam("custom::translation_method", "method_get_online_config");
        String string = (translateConfigRequest == null || (extend = translateConfigRequest.getExtend()) == null || (obj = extend.get("appid")) == null) ? null : obj.toString();
        if (string != null) {
            setCustomParam("appid", string);
        }
        setJsonSource(new d().v(translateConfigRequest));
    }

    public final void setGetTranslateConfig(ToolboxTranslateConfigRequest toolboxTranslateConfigRequest) {
        setCustomParam("custom::translation_method", TranslationClient.METHOD_GET_TRANSLATE_CONFIG);
        setJsonSource(new d().v(toolboxTranslateConfigRequest));
    }

    public final void setImageTranslateInput(ImageTranslateRequest request) {
        r.e(request, "request");
        addTranslateInitConfigParam();
        setCustomParam("custom::translation_method", TranslationClient.METHOD_IMAGE_TRANSLATE_GENERATE);
        setJsonSource(new d().v(request));
    }

    public final void setInitWsSpeech() {
        setCustomParam("custom::translation_method", TranslationClient.METHOD_INIT_WS_SPEECH);
    }

    public final void setMethodEndTts(EndTtsRequest resultRequest) {
        r.e(resultRequest, "resultRequest");
        setCustomParam("custom::translation_method", TranslationClient.METHOD_STOP_WS_TTS);
        setCustomParam("requestId", resultRequest.getRequestId());
        setCustomParam(TranslationClient.PARAM_KEY_CHANNEL, resultRequest.getChannel());
    }

    public final void setMethodInput(String method, String requestId) {
        r.e(method, "method");
        r.e(requestId, "requestId");
        AILog.i(TAG, "setCustomParam setMethodInput:" + method + ",requestId:" + requestId);
        setCustomParam("custom::translation_method", method);
        setCustomParam("requestId", requestId);
    }

    public final void setPhotoTranslateInput(PhotoTranslateRequest request) {
        r.e(request, "request");
        addTranslateInitConfigParam();
        setCustomParam("custom::translation_method", TranslationClient.METHOD_PHOTO_TRANSLATE_GENERATE);
        setJsonSource(new d().v(request));
    }

    public final void setSSETextTranslateInput(StreamTextTranslateRequest request) {
        r.e(request, "request");
        addTranslateInitConfigParam();
        setCustomParam("custom::translation_method", TranslationClient.METHOD_SSE_TEXT_TRANSLATE_GENERATE);
        setJsonSource(new d().v(request));
    }

    public final void setSpeechInitInput(ISpeechConfig provider) {
        r.e(provider, "provider");
        setCustomParam("custom::translation_method", TranslationClient.METHOD_INIT_AI_SPEECH);
        long textToSpeechTimeout = provider.getTextToSpeechTimeout();
        int speechMaxTaskCount = provider.getSpeechMaxTaskCount();
        provider.getPackageName();
        setCustomParam(TranslationClient.PARAM_KEY_CONFIG_SPEECH_TIMEOUT, String.valueOf(textToSpeechTimeout));
        setCustomParam(TranslationClient.PARAM_KEY_CONFIG_SPEECH_MAX_TASK, String.valueOf(speechMaxTaskCount));
        addSpeechInitConfigParam();
        String strV = new d().v(new SpeechInitDataObject(textToSpeechTimeout, speechMaxTaskCount));
        setCustomParam(TranslationClient.PARAM_KEY_SPEECH_INIT_CONFIG, strV);
        AILogHelper.Companion.i(TAG, "setSpeechInitInput json = " + strV);
        if (strV != null) {
            r.b(strV);
            InitStateSingleton.INSTANCE.setSpeechInitJson(strV);
        }
    }

    public final void setStartWsTtsInput(WsTtsRequest request) {
        r.e(request, "request");
        setCustomParam("custom::translation_method", TranslationClient.METHOD_START_WS_TTS);
        setJsonSource(new d().v(request));
    }

    public final void setSynthesisInput(SynthesisRequest request) {
        Object obj;
        r.e(request, "request");
        addSpeechInitConfigParam();
        setCustomParam("custom::translation_method", TranslationClient.METHOD_SPEECH_GET);
        String string = request.getContent().toString();
        setCustomParam("requestId", request.getRequestId());
        setCustomParam(TranslationClient.PARAM_KEY_CONTENT, string);
        Map<String, Object> extend = request.getExtend();
        String string2 = (extend == null || (obj = extend.get("appid")) == null) ? null : obj.toString();
        if (string2 != null) {
            setCustomParam("appid", string2);
        }
        Bundle params = request.getParams();
        if (params != null) {
            String[] stringArray = params.getStringArray("languages");
            String strValueOf = String.valueOf(params.getFloat("pitch"));
            String strValueOf2 = String.valueOf(params.getFloat("speed"));
            String strValueOf3 = String.valueOf(params.getInt("speaker"));
            String strValueOf4 = String.valueOf(params.getInt("type"));
            String strValueOf5 = String.valueOf(params.getInt("model"));
            setCustomParam("pitch", strValueOf);
            setCustomParam("speed", strValueOf2);
            setCustomParam("speaker", strValueOf3);
            setCustomParam("type", strValueOf4);
            setCustomParam("model", strValueOf5);
            if (stringArray != null) {
                if (stringArray.length == 0) {
                    return;
                }
                String strV = new d().v(stringArray);
                AILogHelper.Companion.i(TAG, "setSynthesisInput languages: " + strV);
                setCustomParam("languages", strV);
            }
        }
    }

    public final void setTextTranslateInput(TextTranslateRequest request) {
        r.e(request, "request");
        addTranslateInitConfigParam();
        setCustomParam("custom::translation_method", TranslationClient.METHOD_TEXT_TRANSLATE_GENERATE);
        setJsonSource(new d().v(request));
    }

    public final void setTranslationInitInput(ITranslateConfig provider) {
        r.e(provider, "provider");
        setCustomParam("custom::translation_method", TranslationClient.METHOD_INIT_AI_TRANSLATION);
        long textTranslateTimeout = provider.getTextTranslateTimeout();
        int textTranslateMaxTaskCount = provider.getTextTranslateMaxTaskCount();
        long sSETextTranslateTimeout = provider.getSSETextTranslateTimeout();
        int sSETextTranslateMaxTaskCount = provider.getSSETextTranslateMaxTaskCount();
        long imageTranslateTimeout = provider.getImageTranslateTimeout();
        int imageTranslateMaxTaskCount = provider.getImageTranslateMaxTaskCount();
        long photoTranslateTimeout = provider.getPhotoTranslateTimeout();
        int photoTranslateMaxTaskCount = provider.getPhotoTranslateMaxTaskCount();
        provider.getPackageName();
        setCustomParam(TranslationClient.PARAM_KEY_CONFIG_TEXT_TRANSLATE_TIMEOUT, String.valueOf(textTranslateTimeout));
        setCustomParam(TranslationClient.PARAM_KEY_CONFIG_TEXT_TRANSLATE_MAX_TASK, String.valueOf(textTranslateMaxTaskCount));
        setCustomParam(TranslationClient.PARAM_KEY_CONFIG_SSE_TEXT_TRANSLATE_TIMEOUT, String.valueOf(sSETextTranslateTimeout));
        setCustomParam(TranslationClient.PARAM_KEY_CONFIG_SSE_TEXT_TRANSLATE_MAX_TASK, String.valueOf(sSETextTranslateMaxTaskCount));
        setCustomParam(TranslationClient.PARAM_KEY_CONFIG_IMAGE_TRANSLATE_TIMEOUT, String.valueOf(imageTranslateTimeout));
        setCustomParam(TranslationClient.PARAM_KEY_CONFIG_IMAGE_TRANSLATE_MAX_TASK, String.valueOf(imageTranslateMaxTaskCount));
        setCustomParam(TranslationClient.PARAM_KEY_CONFIG_PHOTO_TRANSLATE_TIMEOUT, String.valueOf(photoTranslateTimeout));
        setCustomParam(TranslationClient.PARAM_KEY_CONFIG_PHOTO_TRANSLATE_MAX_TASK, String.valueOf(photoTranslateMaxTaskCount));
        addTranslateInitConfigParam();
        String strV = new d().v(new InitDataObject(textTranslateTimeout, textTranslateMaxTaskCount, sSETextTranslateTimeout, sSETextTranslateMaxTaskCount, imageTranslateTimeout, imageTranslateMaxTaskCount, photoTranslateTimeout, photoTranslateMaxTaskCount));
        setCustomParam(TranslationClient.PARAM_KEY_TRANSLATE_INIT_CONFIG, strV);
        AILogHelper.Companion.i(TAG, "setTranslationInitInput json = " + strV);
        if (strV != null) {
            r.b(strV);
            InitStateSingleton.INSTANCE.setTranslateInitJson(strV);
        }
    }
}
