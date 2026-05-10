package com.oplus.aiunit.translation.callback;

import com.oplus.aiunit.translation.model.TtsAudioForm;

/* JADX INFO: loaded from: classes2.dex */
public interface SynthesisCallback {
    void onAudioAvailable(byte[] bArr, TtsAudioForm ttsAudioForm);

    void onError(int i10, String str);

    void onFinished();

    void onStart(String str);

    void onStop();
}
