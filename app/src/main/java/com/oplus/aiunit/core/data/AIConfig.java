package com.oplus.aiunit.core.data;

import android.os.Bundle;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class AIConfig {
    public static final Companion Companion = new Companion(null);
    private String detectName;
    private int minApi;
    private int minSdk;
    private boolean support;
    private int unitId;
    private long unitVersion;

    public static final class Companion {
        private Companion() {
        }

        public final AIConfig get(Bundle info) {
            r.e(info, "info");
            String string = info.getString(ParamsKt.PARAM_KEY_DETECT_NAME_NEW, "");
            r.d(string, "getString(...)");
            AIConfig aIConfig = new AIConfig(string, info.getInt(ParamsKt.PARAM_KEY_UNIT_ID, 0), info.getLong(ParamsKt.PARAM_KEY_UNIT_VERSION, 0L));
            aIConfig.setSupport(info.getBoolean(ParamsKt.PARAM_KEY_UNIT_CHECK_SUPPORTED_RESULT, true));
            aIConfig.setMinSdk(info.getInt(ParamsKt.PARAM_KEY_SDK_VERSION, -1));
            if (aIConfig.getMinSdk() < 0) {
                aIConfig.setMinSdk(info.getInt(ParamsKt.PARAM_KEY_CLIENT_PROTOCOL, 0));
            }
            aIConfig.setMinApi(info.getInt(ParamsKt.PARAM_KEY_API_LEVEL, 0));
            return aIConfig;
        }

        public final AIConfig parse(JSONObject json) {
            r.e(json, "json");
            String strOptString = json.optString("detectName", "");
            r.d(strOptString, "optString(...)");
            AIConfig aIConfig = new AIConfig(strOptString, json.optInt(ConfigKt.COLUMN_UNIT_ID, 0), json.optLong("unitVersion", 0L));
            aIConfig.setSupport(json.optBoolean("support", true));
            aIConfig.setMinSdk(json.optInt("minSdk", 0));
            aIConfig.setMinApi(json.optInt("minApi", 0));
            return aIConfig;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public AIConfig(String detectName, int i10, long j10) {
        r.e(detectName, "detectName");
        this.detectName = detectName;
        this.unitId = i10;
        this.unitVersion = j10;
        this.support = true;
    }

    public static /* synthetic */ AIConfig copy$default(AIConfig aIConfig, String str, int i10, long j10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = aIConfig.detectName;
        }
        if ((i11 & 2) != 0) {
            i10 = aIConfig.unitId;
        }
        if ((i11 & 4) != 0) {
            j10 = aIConfig.unitVersion;
        }
        return aIConfig.copy(str, i10, j10);
    }

    public static final AIConfig get(Bundle bundle) {
        return Companion.get(bundle);
    }

    public static final AIConfig parse(JSONObject jSONObject) {
        return Companion.parse(jSONObject);
    }

    public final String component1() {
        return this.detectName;
    }

    public final int component2() {
        return this.unitId;
    }

    public final long component3() {
        return this.unitVersion;
    }

    public final AIConfig copy(String detectName, int i10, long j10) {
        r.e(detectName, "detectName");
        return new AIConfig(detectName, i10, j10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AIConfig)) {
            return false;
        }
        AIConfig aIConfig = (AIConfig) obj;
        return r.a(this.detectName, aIConfig.detectName) && this.unitId == aIConfig.unitId && this.unitVersion == aIConfig.unitVersion;
    }

    public final String getDetectName() {
        return this.detectName;
    }

    public final int getMinApi() {
        return this.minApi;
    }

    public final int getMinSdk() {
        return this.minSdk;
    }

    public final boolean getSupport() {
        return this.support;
    }

    public final int getUnitId() {
        return this.unitId;
    }

    public final long getUnitVersion() {
        return this.unitVersion;
    }

    public int hashCode() {
        return Long.hashCode(this.unitVersion) + ((Integer.hashCode(this.unitId) + (this.detectName.hashCode() * 31)) * 31);
    }

    public final void setDetectName(String str) {
        r.e(str, "<set-?>");
        this.detectName = str;
    }

    public final void setMinApi(int i10) {
        this.minApi = i10;
    }

    public final void setMinSdk(int i10) {
        this.minSdk = i10;
    }

    public final void setSupport(boolean z10) {
        this.support = z10;
    }

    public final void setUnitId(int i10) {
        this.unitId = i10;
    }

    public final void setUnitVersion(long j10) {
        this.unitVersion = j10;
    }

    public String toString() {
        return "AI(detectName=" + this.detectName + ", unitId=" + this.unitId + ", unitVersion=" + this.unitVersion + ", support=" + this.support + ", minSdk=" + this.minSdk + ", minApi=" + this.minApi + ')';
    }
}
