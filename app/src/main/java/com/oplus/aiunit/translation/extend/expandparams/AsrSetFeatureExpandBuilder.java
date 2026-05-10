package com.oplus.aiunit.translation.extend.expandparams;

import com.google.gson.d;
import com.google.gson.e;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class AsrSetFeatureExpandBuilder {
    public static final Companion Companion = new Companion(null);
    public static final String EXPAND_APPID = "appid";
    public static final String EXPAND_MULTY_TRANLATION_LANGUAGE = "mtTargetLanguage";
    public static final String REALTIME_ASR_APPID_CALL = "call";
    public static final String REALTIME_ASR_APPID_VOICEBOX = "voicebox";
    private final Map<String, Object> params = new LinkedHashMap();

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final AsrSetFeatureExpandBuilder fromMap(Map<String, ? extends Object> map) {
            r.e(map, "map");
            AsrSetFeatureExpandBuilder asrSetFeatureExpandBuilder = new AsrSetFeatureExpandBuilder();
            for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
                asrSetFeatureExpandBuilder.addCustomParam(entry.getKey(), entry.getValue());
            }
            return asrSetFeatureExpandBuilder;
        }

        private Companion() {
        }
    }

    public final AsrSetFeatureExpandBuilder addCustomParam(String key, Object value) {
        r.e(key, "key");
        r.e(value, "value");
        if (key.length() > 0) {
            this.params.put(key, value);
        }
        return this;
    }

    public final AsrSetFeatureExpandBuilder addCustomParams(Map<String, ? extends Object> paramMap) {
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
        String strV = dVarB.v(this.params);
        r.b(strV);
        return strV;
    }

    public final AsrSetFeatureExpandBuilder setMtTargetLanguage(String mtTargetLanguage) {
        r.e(mtTargetLanguage, "mtTargetLanguage");
        if (mtTargetLanguage.length() > 0) {
            this.params.put("mtTargetLanguage", mtTargetLanguage);
        }
        return this;
    }
}
