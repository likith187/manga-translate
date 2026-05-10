package com.oplus.aiunit.translation.fuction.asr.dynamic;

import com.oplus.aiunit.translation.callback.AsrRspCallback;
import com.oplus.aiunit.translation.request.StartAsrRequest;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class DynamicRealtimeAsrController {
    private String mBizPkgName;
    private AsrRspCallback mCallback;
    private String mChannel;
    private String mHashCode;
    private DynamicRealtimeAsrClient mRealtimeAsrClient;

    public DynamicRealtimeAsrController(String bizPkgName, String hashCode, String channel, AsrRspCallback callback, DynamicRealtimeAsrClient client) {
        r.e(bizPkgName, "bizPkgName");
        r.e(hashCode, "hashCode");
        r.e(channel, "channel");
        r.e(callback, "callback");
        r.e(client, "client");
        this.mRealtimeAsrClient = client;
        this.mBizPkgName = bizPkgName;
        this.mHashCode = hashCode;
        this.mChannel = channel;
        this.mCallback = callback;
    }

    public static /* synthetic */ void abandonAsrAudio$default(DynamicRealtimeAsrController dynamicRealtimeAsrController, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        dynamicRealtimeAsrController.abandonAsrAudio(str);
    }

    public static /* synthetic */ void endAsrAudio$default(DynamicRealtimeAsrController dynamicRealtimeAsrController, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        dynamicRealtimeAsrController.endAsrAudio(str, str2);
    }

    public static /* synthetic */ void initRealtimeAsr$default(DynamicRealtimeAsrController dynamicRealtimeAsrController, String str, String str2, Boolean bool, String str3, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            bool = null;
        }
        if ((i10 & 8) != 0) {
            str3 = null;
        }
        dynamicRealtimeAsrController.initRealtimeAsr(str, str2, bool, str3);
    }

    public static /* synthetic */ void sendAsrAudio$default(DynamicRealtimeAsrController dynamicRealtimeAsrController, String str, byte[] bArr, String str2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str2 = null;
        }
        dynamicRealtimeAsrController.sendAsrAudio(str, bArr, str2);
    }

    public final void abandonAsrAudio(String str) {
        DynamicRealtimeAsrClient dynamicRealtimeAsrClient = this.mRealtimeAsrClient;
        if (dynamicRealtimeAsrClient != null) {
            dynamicRealtimeAsrClient.endAsrAudio(this.mBizPkgName, this.mHashCode, this.mChannel, str);
        }
    }

    public final void endAsrAudio(String channel, String str) {
        r.e(channel, "channel");
        DynamicRealtimeAsrClient dynamicRealtimeAsrClient = this.mRealtimeAsrClient;
        if (dynamicRealtimeAsrClient != null) {
            dynamicRealtimeAsrClient.endAsrAudio(this.mBizPkgName, this.mHashCode, channel, str);
        }
    }

    public final String getMBizPkgName() {
        return this.mBizPkgName;
    }

    public final AsrRspCallback getMCallback() {
        return this.mCallback;
    }

    public final String getMChannel() {
        return this.mChannel;
    }

    public final String getMHashCode() {
        return this.mHashCode;
    }

    public final void initOmniPlugin() {
        DynamicRealtimeAsrClient dynamicRealtimeAsrClient = this.mRealtimeAsrClient;
        if (dynamicRealtimeAsrClient != null) {
            dynamicRealtimeAsrClient.initOmniPlugin();
        }
    }

    public final void initRealtimeAsr(String language, String targetLanguage, Boolean bool, String str) {
        r.e(language, "language");
        r.e(targetLanguage, "targetLanguage");
        DynamicRealtimeAsrClient dynamicRealtimeAsrClient = this.mRealtimeAsrClient;
        if (dynamicRealtimeAsrClient != null) {
            dynamicRealtimeAsrClient.initRealtimeAsr(language, targetLanguage, this.mHashCode, this.mBizPkgName, this.mChannel, bool, str, this.mCallback);
        }
    }

    public final void releaseAsr(String str) {
        DynamicRealtimeAsrClient dynamicRealtimeAsrClient = this.mRealtimeAsrClient;
        if (dynamicRealtimeAsrClient != null) {
            DynamicRealtimeAsrClient.endAsrAudio$default(dynamicRealtimeAsrClient, this.mBizPkgName, this.mHashCode, this.mChannel, null, 8, null);
        }
    }

    public final void sendAsrAudio(String channel, byte[] audio, String str) {
        r.e(channel, "channel");
        r.e(audio, "audio");
        DynamicRealtimeAsrClient dynamicRealtimeAsrClient = this.mRealtimeAsrClient;
        if (dynamicRealtimeAsrClient != null) {
            dynamicRealtimeAsrClient.sendAsrAudio(this.mBizPkgName, this.mHashCode, channel, audio, str);
        }
    }

    public final void setMBizPkgName(String str) {
        r.e(str, "<set-?>");
        this.mBizPkgName = str;
    }

    public final void setMCallback(AsrRspCallback asrRspCallback) {
        r.e(asrRspCallback, "<set-?>");
        this.mCallback = asrRspCallback;
    }

    public final void setMChannel(String str) {
        r.e(str, "<set-?>");
        this.mChannel = str;
    }

    public final void setMHashCode(String str) {
        r.e(str, "<set-?>");
        this.mHashCode = str;
    }

    public final void setRecognizeFeature(String channel, Boolean bool, Boolean bool2, String str, String str2, String str3) {
        r.e(channel, "channel");
        DynamicRealtimeAsrClient dynamicRealtimeAsrClient = this.mRealtimeAsrClient;
        if (dynamicRealtimeAsrClient != null) {
            dynamicRealtimeAsrClient.setRecognizeFeature(this.mBizPkgName, this.mHashCode, channel, bool, bool2, str, str2, str3);
        }
    }

    public final void startRealtimeAsr(StartAsrRequest request) {
        r.e(request, "request");
        request.setPkgName(this.mBizPkgName);
        request.setHashcode(this.mHashCode);
        DynamicRealtimeAsrClient dynamicRealtimeAsrClient = this.mRealtimeAsrClient;
        if (dynamicRealtimeAsrClient != null) {
            dynamicRealtimeAsrClient.startRealtimeAsr(request);
        }
    }
}
