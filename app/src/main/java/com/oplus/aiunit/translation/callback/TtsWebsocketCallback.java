package com.oplus.aiunit.translation.callback;

import com.oplus.aiunit.translation.model.OdinWebsocketBaseRsp;

/* JADX INFO: loaded from: classes2.dex */
public interface TtsWebsocketCallback {
    void onAudio(String str, long j10, String str2, int i10, long j11, String str3);

    void onResponse(OdinWebsocketBaseRsp odinWebsocketBaseRsp);

    void onTtsEnd(String str, long j10, String str2, String str3, int i10, long j11);

    void onTtsStart(String str, long j10, String str2, String str3, int i10, long j11);
}
