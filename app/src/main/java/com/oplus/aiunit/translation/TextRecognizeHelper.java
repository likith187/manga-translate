package com.oplus.aiunit.translation;

import android.annotation.SuppressLint;
import android.content.Context;
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
import com.oplus.aiunit.translation.fuction.translate.TranslationClient;
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
import com.oplus.aiunit.translation.utils.InitStateSingleton;
import kotlin.jvm.internal.r;
import n8.j;
import n8.k;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"StaticFieldLeak"})
public final class TextRecognizeHelper {
    private static Context mContext;
    public static final TextRecognizeHelper INSTANCE = new TextRecognizeHelper();
    private static final j mTranslationClient$delegate = k.b(TextRecognizeHelper$mTranslationClient$2.INSTANCE);

    private TextRecognizeHelper() {
    }

    private final TranslationClient getMTranslationClient() {
        return (TranslationClient) mTranslationClient$delegate.getValue();
    }

    public final void cancelImageTranslate(String requestId) {
        r.e(requestId, "requestId");
        getMTranslationClient().cancelImageTranslate(requestId);
    }

    public final void cancelPhotoTranslate(String requestId) {
        r.e(requestId, "requestId");
        getMTranslationClient().cancelPhotoTranslate(requestId);
    }

    public final void cancelStreamTextTranslate(String requestId) {
        r.e(requestId, "requestId");
        getMTranslationClient().cancelSSETextTranslate(requestId);
    }

    public final void cancelSynthesizeText(String requestId) {
        r.e(requestId, "requestId");
        getMTranslationClient().cancelSynthesizeText(requestId);
    }

    public final void cancelTextTranslate(String requestId) {
        r.e(requestId, "requestId");
        getMTranslationClient().cancelTextTranslate(requestId);
    }

    public final void generateImageTranslate(ImageTranslateRequest request, ImageTranslateCallback callback) {
        r.e(request, "request");
        r.e(callback, "callback");
        getMTranslationClient().generateImageTranslate(request, callback);
    }

    public final void generatePhotoTranslate(PhotoTranslateRequest request, PhotoTranslateCallback callback) {
        r.e(request, "request");
        r.e(callback, "callback");
        getMTranslationClient().generatePhotoTranslate(request, callback);
    }

    public final void generateStreamTextTranslate(StreamTextTranslateRequest request, StreamTextTranslateCallback callback) {
        r.e(request, "request");
        r.e(callback, "callback");
        getMTranslationClient().generateSSETextTranslate(request, callback);
    }

    public final void generateTextTranslate(TextTranslateRequest request, TextTranslateCallback callback) {
        r.e(request, "request");
        r.e(callback, "callback");
        getMTranslationClient().generateTextTranslate(request, callback);
    }

    public final String getDetectorName() {
        return "ai_omni";
    }

    public final void getImgTransConfig(Context context, ImgTransConfigRequest request, ImgTransConfigCallback callback) {
        r.e(context, "context");
        r.e(request, "request");
        r.e(callback, "callback");
        if (mContext == null) {
            mContext = context.getApplicationContext();
        }
        getMTranslationClient().getImgTransConfig(request, callback);
    }

    public final void getOfflinePackageInfo(Context context, OfflinePackageRequest request, OfflinePackageCallback callback) {
        r.e(context, "context");
        r.e(request, "request");
        r.e(callback, "callback");
        if (mContext == null) {
            mContext = context.getApplicationContext();
        }
        getMTranslationClient().getOfflineInfo(request, callback);
    }

    public final String getSceneName() {
        return "ai_omni";
    }

    public final void getToolboxTranslateConfig(Context context, ToolboxTranslateConfigRequest request, ToolboxTranslateConfigCallback callback) {
        r.e(context, "context");
        r.e(request, "request");
        r.e(callback, "callback");
        if (mContext == null) {
            mContext = context.getApplicationContext();
        }
        getMTranslationClient().getToolboxTranslateConfig(request, callback);
    }

    public final void getTranslationConfig(Context context, TranslateConfigRequest request, TranslateConfigCallback callback) {
        r.e(context, "context");
        r.e(request, "request");
        r.e(callback, "callback");
        if (mContext == null) {
            mContext = context.getApplicationContext();
        }
        getMTranslationClient().getOnlineConfig(request, callback);
    }

    public final void getWsTtsInitStatus(WsTtsInitStatusCallback callback) {
        r.e(callback, "callback");
        getMTranslationClient().getWsTtsInitStatus(callback);
    }

    public final void initOmniPlugin() {
        getMTranslationClient().initOmniPlugin();
    }

    public final void initSpeech(Context context, ISpeechConfig iSpeechConfig, Callback callback) {
        r.e(context, "context");
        r.e(callback, "callback");
        if (mContext == null) {
            mContext = context.getApplicationContext();
        }
        if (iSpeechConfig == null) {
            iSpeechConfig = new ISpeechConfig() { // from class: com.oplus.aiunit.translation.TextRecognizeHelper$initSpeech$realConfig$1
                @Override // com.oplus.aiunit.translation.callback.ISpeechConfig
                public String getPackageName() {
                    Context context2 = TextRecognizeHelper.mContext;
                    String packageName = context2 != null ? context2.getPackageName() : null;
                    return packageName == null ? "default" : packageName;
                }

                @Override // com.oplus.aiunit.translation.callback.ISpeechConfig
                public int getSpeechMaxTaskCount() {
                    return ISpeechConfig.DefaultImpls.getSpeechMaxTaskCount(this);
                }

                @Override // com.oplus.aiunit.translation.callback.ISpeechConfig
                public long getTextToSpeechTimeout() {
                    return ISpeechConfig.DefaultImpls.getTextToSpeechTimeout(this);
                }
            };
        }
        InitStateSingleton.INSTANCE.setPackageName(iSpeechConfig.getPackageName());
        getMTranslationClient().initSpeech(iSpeechConfig, callback);
    }

    public final void initTranslate(Context context, ITranslateConfig iTranslateConfig, Callback callback) {
        r.e(context, "context");
        r.e(callback, "callback");
        if (mContext == null) {
            mContext = context.getApplicationContext();
        }
        if (iTranslateConfig == null) {
            iTranslateConfig = new ITranslateConfig() { // from class: com.oplus.aiunit.translation.TextRecognizeHelper$initTranslate$realConfig$1
                @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
                public int getImageTranslateMaxTaskCount() {
                    return ITranslateConfig.DefaultImpls.getImageTranslateMaxTaskCount(this);
                }

                @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
                public long getImageTranslateTimeout() {
                    return ITranslateConfig.DefaultImpls.getImageTranslateTimeout(this);
                }

                @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
                public String getPackageName() {
                    Context context2 = TextRecognizeHelper.mContext;
                    String packageName = context2 != null ? context2.getPackageName() : null;
                    return packageName == null ? "default" : packageName;
                }

                @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
                public int getPhotoTranslateMaxTaskCount() {
                    return ITranslateConfig.DefaultImpls.getPhotoTranslateMaxTaskCount(this);
                }

                @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
                public long getPhotoTranslateTimeout() {
                    return ITranslateConfig.DefaultImpls.getPhotoTranslateTimeout(this);
                }

                @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
                public int getSSETextTranslateMaxTaskCount() {
                    return ITranslateConfig.DefaultImpls.getSSETextTranslateMaxTaskCount(this);
                }

                @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
                public long getSSETextTranslateTimeout() {
                    return ITranslateConfig.DefaultImpls.getSSETextTranslateTimeout(this);
                }

                @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
                public int getTextTranslateMaxTaskCount() {
                    return ITranslateConfig.DefaultImpls.getTextTranslateMaxTaskCount(this);
                }

                @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
                public long getTextTranslateTimeout() {
                    return ITranslateConfig.DefaultImpls.getTextTranslateTimeout(this);
                }
            };
        }
        InitStateSingleton.INSTANCE.setPackageName(iTranslateConfig.getPackageName());
        getMTranslationClient().initTranslate(iTranslateConfig, callback);
    }

    public final void initWsSpeech(Context context, TtsWebsocketCallback callback) {
        r.e(context, "context");
        r.e(callback, "callback");
        if (mContext == null) {
            mContext = context.getApplicationContext();
        }
        getMTranslationClient().initWsSpeech(callback);
    }

    public final void release() {
        getMTranslationClient().release();
    }

    public final void startWsTts(WsTtsRequest request) {
        r.e(request, "request");
        getMTranslationClient().startWsTts(request);
    }

    public final void stopWsTts(String channel, String requestId) {
        r.e(channel, "channel");
        r.e(requestId, "requestId");
        getMTranslationClient().stopWsTts(channel, requestId);
    }

    public final void synthesizeText(SynthesisRequest request, SynthesisCallback callback) {
        r.e(request, "request");
        r.e(callback, "callback");
        getMTranslationClient().synthesizeText(request, callback);
    }
}
