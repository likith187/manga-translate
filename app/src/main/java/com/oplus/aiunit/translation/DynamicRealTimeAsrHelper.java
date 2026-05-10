package com.oplus.aiunit.translation;

import android.content.Context;
import com.oplus.aiunit.translation.callback.AsrRspCallback;
import com.oplus.aiunit.translation.fuction.asr.dynamic.DynamicRealtimeAsrManager;
import com.oplus.aiunit.translation.request.StartAsrRequest;
import java.util.UUID;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class DynamicRealTimeAsrHelper {
    public static final Companion Companion = new Companion(null);
    public static final String EXPAND_APPID = "appid";
    public static final String EXPAND_INIT_ASR_WITH_START = "init_asr_with_start";
    public static final String EXPAND_INIT_ASR_WITH_START_PARAMS = "init_asr_with_start_params";
    public static final String EXPAND_MULTY_TRANLATION_LANGUAGE = "mtTargetLanguage";
    public static final String REALTIME_ASR_APPID_CALL = "call";
    public static final String REALTIME_ASR_APPID_VOICEBOX = "voicebox";
    public static final String TAG = "RealTimeAsrHelper";
    private Context mContext;
    private final String mHashCode;
    private String mPkgName;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String getDetectorName() {
            return "ai_omni";
        }

        public final String getSceneName() {
            return "ai_omni";
        }

        private Companion() {
        }
    }

    public DynamicRealTimeAsrHelper(Context context) {
        r.e(context, "context");
        String string = UUID.randomUUID().toString();
        r.d(string, "toString(...)");
        this.mHashCode = string;
        this.mPkgName = "";
        this.mContext = context;
        if (context == null) {
            throw new IllegalStateException("Context not initialized");
        }
        if (context != null) {
            DynamicRealtimeAsrManager.INSTANCE.setContext(context);
        }
    }

    public static /* synthetic */ void processAudio$default(DynamicRealTimeAsrHelper dynamicRealTimeAsrHelper, String str, byte[] bArr, String str2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str2 = null;
        }
        dynamicRealTimeAsrHelper.processAudio(str, bArr, str2);
    }

    public final void abandon(String recordId) {
        r.e(recordId, "recordId");
        DynamicRealtimeAsrManager.INSTANCE.abandonAsrAudio(this.mHashCode, null, recordId);
    }

    public final void endAsr(String channel, String recordId) {
        r.e(channel, "channel");
        r.e(recordId, "recordId");
        DynamicRealtimeAsrManager.INSTANCE.endAsrAudio(this.mHashCode, channel, recordId);
    }

    public final void initAsr(String language, String targetLanguage, String str, String str2, Boolean bool, String str3, AsrRspCallback listener) {
        r.e(language, "language");
        r.e(targetLanguage, "targetLanguage");
        r.e(listener, "listener");
        this.mPkgName = str;
        DynamicRealtimeAsrManager.INSTANCE.initRealtimeAsr(language, targetLanguage, this.mHashCode, str, str2, bool, str3, listener);
    }

    public final void initOmniPlugin() {
        DynamicRealtimeAsrManager.INSTANCE.initOmniPlugin(this.mHashCode, null);
    }

    public final void processAudio(String channel, byte[] audio, String str) {
        r.e(channel, "channel");
        r.e(audio, "audio");
        DynamicRealtimeAsrManager.INSTANCE.sendAsrAudio(this.mHashCode, channel, audio, str);
    }

    public final void releaseAsr(String str) {
        DynamicRealtimeAsrManager.INSTANCE.releaseAsr(this.mHashCode, str);
    }

    public final void setRecognizeFeature(String channel, Boolean bool, Boolean bool2, String str, String str2, String str3) {
        r.e(channel, "channel");
        DynamicRealtimeAsrManager.INSTANCE.setRecognizeFeature(this.mHashCode, channel, bool, bool2, str, str2, str3);
    }

    public final void startAsr(StartAsrRequest request) {
        r.e(request, "request");
        request.setHashcode(this.mHashCode);
        request.setPkgName(this.mPkgName);
        DynamicRealtimeAsrManager.INSTANCE.startRealtimeAsr(request);
    }
}
