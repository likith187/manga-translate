package com.oplus.aiunit.realtime_asr.data;

import com.oplus.aiunit.realtime_asr.client.RealTimeASRClient;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class AsrStartData {
    private final String callId;
    private final RealTimeASRClient.Speaker speaker;

    public AsrStartData(String callId, RealTimeASRClient.Speaker speaker) {
        r.e(callId, "callId");
        r.e(speaker, "speaker");
        this.callId = callId;
        this.speaker = speaker;
    }

    public static /* synthetic */ AsrStartData copy$default(AsrStartData asrStartData, String str, RealTimeASRClient.Speaker speaker, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = asrStartData.callId;
        }
        if ((i10 & 2) != 0) {
            speaker = asrStartData.speaker;
        }
        return asrStartData.copy(str, speaker);
    }

    public final String component1() {
        return this.callId;
    }

    public final RealTimeASRClient.Speaker component2() {
        return this.speaker;
    }

    public final AsrStartData copy(String callId, RealTimeASRClient.Speaker speaker) {
        r.e(callId, "callId");
        r.e(speaker, "speaker");
        return new AsrStartData(callId, speaker);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AsrStartData)) {
            return false;
        }
        AsrStartData asrStartData = (AsrStartData) obj;
        return r.a(this.callId, asrStartData.callId) && this.speaker == asrStartData.speaker;
    }

    public final String getCallId() {
        return this.callId;
    }

    public final RealTimeASRClient.Speaker getSpeaker() {
        return this.speaker;
    }

    public int hashCode() {
        return (this.callId.hashCode() * 31) + this.speaker.hashCode();
    }

    public String toString() {
        return "AsrStartData(callId=" + this.callId + ", speaker=" + this.speaker + ")";
    }
}
