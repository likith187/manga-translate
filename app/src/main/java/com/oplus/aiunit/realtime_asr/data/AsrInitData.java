package com.oplus.aiunit.realtime_asr.data;

import com.oplus.aiunit.realtime_asr.client.RealTimeASRClient;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class AsrInitData {
    private final String callId;
    private final boolean isRemoveModalWord;
    private final String language;
    private final RealTimeASRClient.Speaker speaker;
    private final String targetLanguage;

    public AsrInitData(String callId, String language, String targetLanguage, RealTimeASRClient.Speaker speaker, boolean z10) {
        r.e(callId, "callId");
        r.e(language, "language");
        r.e(targetLanguage, "targetLanguage");
        this.callId = callId;
        this.language = language;
        this.targetLanguage = targetLanguage;
        this.speaker = speaker;
        this.isRemoveModalWord = z10;
    }

    public static /* synthetic */ AsrInitData copy$default(AsrInitData asrInitData, String str, String str2, String str3, RealTimeASRClient.Speaker speaker, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = asrInitData.callId;
        }
        if ((i10 & 2) != 0) {
            str2 = asrInitData.language;
        }
        String str4 = str2;
        if ((i10 & 4) != 0) {
            str3 = asrInitData.targetLanguage;
        }
        String str5 = str3;
        if ((i10 & 8) != 0) {
            speaker = asrInitData.speaker;
        }
        RealTimeASRClient.Speaker speaker2 = speaker;
        if ((i10 & 16) != 0) {
            z10 = asrInitData.isRemoveModalWord;
        }
        return asrInitData.copy(str, str4, str5, speaker2, z10);
    }

    public final String component1() {
        return this.callId;
    }

    public final String component2() {
        return this.language;
    }

    public final String component3() {
        return this.targetLanguage;
    }

    public final RealTimeASRClient.Speaker component4() {
        return this.speaker;
    }

    public final boolean component5() {
        return this.isRemoveModalWord;
    }

    public final AsrInitData copy(String callId, String language, String targetLanguage, RealTimeASRClient.Speaker speaker, boolean z10) {
        r.e(callId, "callId");
        r.e(language, "language");
        r.e(targetLanguage, "targetLanguage");
        return new AsrInitData(callId, language, targetLanguage, speaker, z10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AsrInitData)) {
            return false;
        }
        AsrInitData asrInitData = (AsrInitData) obj;
        return r.a(this.callId, asrInitData.callId) && r.a(this.language, asrInitData.language) && r.a(this.targetLanguage, asrInitData.targetLanguage) && this.speaker == asrInitData.speaker && this.isRemoveModalWord == asrInitData.isRemoveModalWord;
    }

    public final String getCallId() {
        return this.callId;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final RealTimeASRClient.Speaker getSpeaker() {
        return this.speaker;
    }

    public final String getTargetLanguage() {
        return this.targetLanguage;
    }

    public int hashCode() {
        int iHashCode = ((((this.callId.hashCode() * 31) + this.language.hashCode()) * 31) + this.targetLanguage.hashCode()) * 31;
        RealTimeASRClient.Speaker speaker = this.speaker;
        return ((iHashCode + (speaker == null ? 0 : speaker.hashCode())) * 31) + Boolean.hashCode(this.isRemoveModalWord);
    }

    public final boolean isRemoveModalWord() {
        return this.isRemoveModalWord;
    }

    public String toString() {
        return "AsrInitData(callId=" + this.callId + ", language=" + this.language + ", targetLanguage=" + this.targetLanguage + ", speaker=" + this.speaker + ", isRemoveModalWord=" + this.isRemoveModalWord + ")";
    }

    public /* synthetic */ AsrInitData(String str, String str2, String str3, RealTimeASRClient.Speaker speaker, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i10 & 8) != 0 ? null : speaker, (i10 & 16) != 0 ? false : z10);
    }
}
