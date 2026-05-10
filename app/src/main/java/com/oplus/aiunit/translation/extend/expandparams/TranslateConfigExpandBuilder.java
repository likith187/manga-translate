package com.oplus.aiunit.translation.extend.expandparams;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class TranslateConfigExpandBuilder {
    public static final Companion Companion = new Companion(null);
    public static final String EXPAND_APPID = "appid";
    public static final String REALTIME_ASR_APPID_CALL = "call";
    public static final String REALTIME_ASR_APPID_VOICEBOX = "voicebox";
    private final Map<String, Object> params = new LinkedHashMap();

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SynthesizeTextExpandBuilder fromMap(Map<String, ? extends Object> map) {
            r.e(map, "map");
            SynthesizeTextExpandBuilder synthesizeTextExpandBuilder = new SynthesizeTextExpandBuilder();
            for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
                synthesizeTextExpandBuilder.addCustomParam(entry.getKey(), entry.getValue());
            }
            return synthesizeTextExpandBuilder;
        }

        private Companion() {
        }
    }

    public final TranslateConfigExpandBuilder addCustomParam(String key, Object value) {
        r.e(key, "key");
        r.e(value, "value");
        if (key.length() > 0) {
            this.params.put(key, value);
        }
        return this;
    }

    public final TranslateConfigExpandBuilder addCustomParams(Map<String, ? extends Object> paramMap) {
        r.e(paramMap, "paramMap");
        if (!paramMap.isEmpty()) {
            this.params.putAll(paramMap);
        }
        return this;
    }

    public final Map<String, Object> build() {
        Map<String, Object> map = this.params;
        if (map.isEmpty()) {
            return null;
        }
        return map;
    }

    public final TranslateConfigExpandBuilder setAppid(String appid) {
        r.e(appid, "appid");
        if (appid.length() > 0) {
            this.params.put("appid", appid);
        }
        return this;
    }
}
