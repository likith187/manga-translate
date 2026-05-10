package com.coloros.translate;

import androidx.annotation.Keep;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class SupportLanguageConfig {
    private final Map<String, List<String>> asr;
    private final Map<String, List<String>> offlineText;
    private final Map<String, List<String>> onlineText;
    private final List<String> tts;

    /* JADX WARN: Multi-variable type inference failed */
    public SupportLanguageConfig(Map<String, ? extends List<String>> asr, Map<String, ? extends List<String>> onlineText, Map<String, ? extends List<String>> offlineText, List<String> tts) {
        r.e(asr, "asr");
        r.e(onlineText, "onlineText");
        r.e(offlineText, "offlineText");
        r.e(tts, "tts");
        this.asr = asr;
        this.onlineText = onlineText;
        this.offlineText = offlineText;
        this.tts = tts;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SupportLanguageConfig copy$default(SupportLanguageConfig supportLanguageConfig, Map map, Map map2, Map map3, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            map = supportLanguageConfig.asr;
        }
        if ((i10 & 2) != 0) {
            map2 = supportLanguageConfig.onlineText;
        }
        if ((i10 & 4) != 0) {
            map3 = supportLanguageConfig.offlineText;
        }
        if ((i10 & 8) != 0) {
            list = supportLanguageConfig.tts;
        }
        return supportLanguageConfig.copy(map, map2, map3, list);
    }

    public final Map<String, List<String>> component1() {
        return this.asr;
    }

    public final Map<String, List<String>> component2() {
        return this.onlineText;
    }

    public final Map<String, List<String>> component3() {
        return this.offlineText;
    }

    public final List<String> component4() {
        return this.tts;
    }

    public final SupportLanguageConfig copy(Map<String, ? extends List<String>> asr, Map<String, ? extends List<String>> onlineText, Map<String, ? extends List<String>> offlineText, List<String> tts) {
        r.e(asr, "asr");
        r.e(onlineText, "onlineText");
        r.e(offlineText, "offlineText");
        r.e(tts, "tts");
        return new SupportLanguageConfig(asr, onlineText, offlineText, tts);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SupportLanguageConfig)) {
            return false;
        }
        SupportLanguageConfig supportLanguageConfig = (SupportLanguageConfig) obj;
        return r.a(this.asr, supportLanguageConfig.asr) && r.a(this.onlineText, supportLanguageConfig.onlineText) && r.a(this.offlineText, supportLanguageConfig.offlineText) && r.a(this.tts, supportLanguageConfig.tts);
    }

    public final Map<String, List<String>> getAsr() {
        return this.asr;
    }

    public final Map<String, List<String>> getOfflineText() {
        return this.offlineText;
    }

    public final Map<String, List<String>> getOnlineText() {
        return this.onlineText;
    }

    public final List<String> getTts() {
        return this.tts;
    }

    public int hashCode() {
        return (((((this.asr.hashCode() * 31) + this.onlineText.hashCode()) * 31) + this.offlineText.hashCode()) * 31) + this.tts.hashCode();
    }

    public String toString() {
        return "SupportLanguageConfig(asr=" + this.asr + ", onlineText=" + this.onlineText + ", offlineText=" + this.offlineText + ", tts=" + this.tts + ")";
    }
}
