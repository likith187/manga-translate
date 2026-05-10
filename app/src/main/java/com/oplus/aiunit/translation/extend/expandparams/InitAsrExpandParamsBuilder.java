package com.oplus.aiunit.translation.extend.expandparams;

import android.util.Log;
import com.google.gson.d;
import com.google.gson.e;
import com.oplus.aiunit.translation.data.AsrStartRequest;
import com.oplus.aiunit.translation.request.StartAsrRequest;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class InitAsrExpandParamsBuilder {
    public static final Companion Companion = new Companion(null);
    public static final String EXPAND_APPID = "appid";
    public static final String EXPAND_INIT_ASR_WITH_START = "init_asr_with_start";
    public static final String EXPAND_INIT_ASR_WITH_START_PARAMS = "init_asr_with_start_params";
    public static final String EXPAND_MULTY_TRANLATION_LANGUAGE = "mtTargetLanguage";
    public static final String REALTIME_ASR_APPID_CALL = "call";
    public static final String REALTIME_ASR_APPID_VOICEBOX = "voicebox";
    private String appId;
    private final Map<String, Object> params;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final InitAsrExpandParamsBuilder fromMap(Map<String, ? extends Object> map) {
            r.e(map, "map");
            Object obj = map.get("appid");
            r.c(obj, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj;
            if (str.length() <= 0) {
                return null;
            }
            InitAsrExpandParamsBuilder initAsrExpandParamsBuilder = new InitAsrExpandParamsBuilder(str);
            for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
                initAsrExpandParamsBuilder.addCustomParam(entry.getKey(), entry.getValue());
            }
            return initAsrExpandParamsBuilder;
        }

        private Companion() {
        }
    }

    public InitAsrExpandParamsBuilder(String appId) {
        r.e(appId, "appId");
        this.appId = appId;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.params = linkedHashMap;
        linkedHashMap.put("appid", this.appId);
    }

    public final InitAsrExpandParamsBuilder addCustomParam(String key, Object value) {
        r.e(key, "key");
        r.e(value, "value");
        if (key.length() > 0) {
            this.params.put(key, value);
        }
        return this;
    }

    public final InitAsrExpandParamsBuilder addCustomParams(Map<String, ? extends Object> paramMap) {
        r.e(paramMap, "paramMap");
        if (!paramMap.isEmpty()) {
            this.params.putAll(paramMap);
        }
        return this;
    }

    public final String build() {
        if (this.params.isEmpty()) {
            return "";
        }
        d dVarB = new e().e().b();
        r.d(dVarB, "create(...)");
        Log.d("InitAsrExpandParamsBuilder", dVarB.v(this.params));
        String strV = dVarB.v(this.params);
        r.b(strV);
        return strV;
    }

    public final InitAsrExpandParamsBuilder setAppid(String appid) {
        r.e(appid, "appid");
        if (appid.length() > 0) {
            this.appId = appid;
            this.params.put("appid", appid);
        }
        return this;
    }

    public final InitAsrExpandParamsBuilder setEnableStart(boolean z10) {
        this.params.put("init_asr_with_start", Boolean.valueOf(z10));
        return this;
    }

    public final InitAsrExpandParamsBuilder setStartParams(StartAsrRequest startParams) {
        r.e(startParams, "startParams");
        AsrStartRequest asrStartRequest = new AsrStartRequest();
        asrStartRequest.setWsChannel(startParams.getWsChannel());
        asrStartRequest.setRecordId(startParams.getRecordId());
        asrStartRequest.setEnableLLM(startParams.getEnableLLM());
        asrStartRequest.setSceneId(startParams.getSceneId());
        asrStartRequest.setModel(startParams.getModel());
        asrStartRequest.setAccent(startParams.getAccent());
        asrStartRequest.setFormat(startParams.getFormat());
        Integer asrAudioTrack = startParams.getAsrAudioTrack();
        if (asrAudioTrack != null) {
            asrStartRequest.setAsrChannel(asrAudioTrack.intValue());
        }
        asrStartRequest.setSampleBytes(2);
        asrStartRequest.setSampleRate(16000);
        asrStartRequest.setFrameSize(640);
        asrStartRequest.setEnableLid(startParams.getenableLid());
        asrStartRequest.setSourceLanguages(startParams.getSourceLanguages());
        asrStartRequest.setEnableMt(startParams.getEnableMt());
        asrStartRequest.setSrcLanguage(startParams.getSrcLanguage());
        asrStartRequest.setTargetLanguage(startParams.getTargetLanguage());
        asrStartRequest.setEnableTts(startParams.getEnableTts());
        asrStartRequest.setVoiceName(startParams.getVoiceName());
        asrStartRequest.setSpeedGrade(startParams.getSpeedGrade());
        String strV = new e().e().b().v(asrStartRequest);
        Map<String, Object> map = this.params;
        r.b(strV);
        map.put("init_asr_with_start_params", strV);
        return this;
    }
}
