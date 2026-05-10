package com.oplus.aiunit.translation.dcsTrackingPoint;

import android.content.Context;
import android.content.ContextWrapper;
import android.util.Log;
import com.oplus.backup.sdk.common.utils.Constants;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import m7.k;

/* JADX INFO: loaded from: classes2.dex */
public class DcsTrackingPoint {
    public static final String APP_ID = "146200";
    private static final String TAG = "DcsTrackingPoint";
    public static final String TRANSLATION = "translation";
    private static volatile DcsTrackingPoint instance;
    private Context appContext;
    private boolean isInitialized = false;

    public static final class EventId {
        public static final String AI_VOICE_RECOGNITION_INTERFACE = "AI_VOICE_RECOGNITION_INTERFACE";
        public static final String CALL_VOICE_RECOGNITION_INTERFACE = "CALL_VOICE_RECOGNITION_INTERFACE";
        public static final String TEXT_TRANSLATION_AND_TO_SPEECH_INTERFACE = "TEXT_TRANSLATION_AND_TO_SPEECH_INTERFACE";
    }

    public static final class Method {
        public static final String TextTranslate = "TextTranslate";
        public static final String cancelMultiTranslation = "cancelMultiTranslation";
        public static final String cancelSynthesizeText = "cancelSynthesizeText";
        public static final String generateImageTranslate = "generateImageTranslate";
        public static final String generateImageTranslate_sdk = "generateImageTranslate_sdk";
        public static final String generatePdfTranslate = "generatePdfTranslate";
        public static final String generatePhotoTranslate = "generatePhotoTranslate";
        public static final String generatePhotoTranslate_sdk = "generatePhotoTranslate_sdk";
        public static final String generateStreamTextTranslate = "generateStreamTextTranslate";
        public static final String generateTextTranslate = "generateTextTranslate";
        public static final String getImgTransConfig = "getImgTransConfig";
        public static final String getOfflinePackageInfo = "getOfflinePackageInfo";
        public static final String getPdfTransConfig = "getPdfTransConfig";
        public static final String getToolboxTranslateConfig = "getToolboxTranslateConfig";
        public static final String getTranslationConfig = "getTranslationConfig";
        public static final String getWsTtsInitStatus = "getWsTtsInitStatus";
        public static final String initSpeech = "initSpeech";
        public static final String initTranslate = "initTranslate";
        public static final String initWsSpeech = "initWsSpeech";
        public static final String synthesizeText = "synthesizeText";
    }

    private DcsTrackingPoint() {
    }

    private boolean checkInitialized() {
        if (!this.isInitialized) {
            Log.e(TAG, "opus track sdk is not initialized, call init() first");
        }
        return this.isInitialized;
    }

    public static DcsTrackingPoint getInstance() {
        if (instance == null) {
            synchronized (DcsTrackingPoint.class) {
                try {
                    if (instance == null) {
                        instance = new DcsTrackingPoint();
                    }
                } finally {
                }
            }
        }
        return instance;
    }

    public void init(Context context) {
        if (this.isInitialized || context == null) {
            return;
        }
        try {
            Context applicationContext = context.getApplicationContext();
            this.appContext = applicationContext;
            if (applicationContext == null) {
                this.appContext = new ContextWrapper(context).getApplicationContext();
            }
            k.f(this.appContext, APP_ID, null);
            this.isInitialized = true;
            Log.d(TAG, "init oplus track success");
        } catch (Exception e10) {
            Log.e(TAG, "init oplus track failed: " + e10.getMessage());
            this.isInitialized = false;
        }
    }

    public void trackBatchEvent(String str, String str2, List<Map<String, String>> list) {
        if (checkInitialized()) {
            try {
                k.o(this.appContext, APP_ID, str, str2, list, 1);
                Log.d(TAG, "batch trackEvent success: category=" + str + ", event=" + str2 + ", size=" + list.size());
            } catch (Exception e10) {
                Log.e(TAG, "batch trackEvent failed: " + e10.getMessage());
            }
        }
    }

    public void trackEvent(String str, String str2, Map<String, String> map) {
        if (checkInitialized()) {
            try {
                k.l(this.appContext, APP_ID, str, str2, map);
                Log.d(TAG, "trackEvent success: category=" + str + ", event=" + str2);
            } catch (Exception e10) {
                Log.e(TAG, "trackEvent failed: " + e10.getMessage());
            }
        }
    }

    public void trackEventCommon(String str, String str2, String str3, String str4, String str5) {
        Log.i(TAG, "trackEventCommon sdk：-------sessionId=" + str2 + ", method=" + str3 + ", code=" + str4 + ", desc=" + str5);
        HashMap map = new HashMap();
        map.put("request_id", str2);
        map.put("tracking_type", String.valueOf(1));
        map.put(Constants.MessagerConstants.METHOD_KEY, str3);
        map.put("code", str4);
        map.put("code_description", str5);
        getInstance().trackEvent(TRANSLATION, str, map);
    }
}
