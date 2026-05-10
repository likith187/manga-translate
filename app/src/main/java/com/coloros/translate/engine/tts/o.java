package com.coloros.translate.engine.tts;

import com.oplus.aiunit.translation.callback.TtsWebsocketCallback;
import com.oplus.aiunit.translation.model.OdinWebsocketBaseRsp;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class o implements TtsWebsocketCallback {
    public abstract void a(String str, long j10, String str2);

    public abstract void b(OdinWebsocketBaseRsp odinWebsocketBaseRsp);

    public abstract void c(String str, String str2);

    public abstract void d(String str, String str2);

    @Override // com.oplus.aiunit.translation.callback.TtsWebsocketCallback
    public void onAudio(String requestId, long j10, String dataType, int i10, long j11, String audio) {
        r.e(requestId, "requestId");
        r.e(dataType, "dataType");
        r.e(audio, "audio");
        a(requestId, j10, audio);
    }

    @Override // com.oplus.aiunit.translation.callback.TtsWebsocketCallback
    public void onResponse(OdinWebsocketBaseRsp rsp) {
        r.e(rsp, "rsp");
        b(rsp);
    }

    @Override // com.oplus.aiunit.translation.callback.TtsWebsocketCallback
    public void onTtsEnd(String requestId, long j10, String dataType, String format, int i10, long j11) {
        r.e(requestId, "requestId");
        r.e(dataType, "dataType");
        r.e(format, "format");
        c(requestId, dataType);
    }

    @Override // com.oplus.aiunit.translation.callback.TtsWebsocketCallback
    public void onTtsStart(String requestId, long j10, String dataType, String format, int i10, long j11) {
        r.e(requestId, "requestId");
        r.e(dataType, "dataType");
        r.e(format, "format");
        d(requestId, dataType);
    }
}
