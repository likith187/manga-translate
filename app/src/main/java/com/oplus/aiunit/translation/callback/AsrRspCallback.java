package com.oplus.aiunit.translation.callback;

import com.oplus.aiunit.translation.data.AsrAudioAck;
import com.oplus.aiunit.translation.data.AsrBaseResponse;
import com.oplus.aiunit.translation.data.AsrMtAck;
import com.oplus.aiunit.translation.data.AsrTtsAck;

/* JADX INFO: loaded from: classes2.dex */
public interface AsrRspCallback {
    void onAsr(AsrAudioAck asrAudioAck);

    void onMt(AsrMtAck asrMtAck);

    void onResult(AsrBaseResponse asrBaseResponse);

    void onTts(AsrTtsAck asrTtsAck);

    void taskComplete(int i10);
}
