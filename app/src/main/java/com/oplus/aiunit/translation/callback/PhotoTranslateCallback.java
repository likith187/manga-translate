package com.oplus.aiunit.translation.callback;

import com.oplus.aiunit.translation.model.PhotoTranslateResult;

/* JADX INFO: loaded from: classes2.dex */
public interface PhotoTranslateCallback {
    void onError(int i10, String str);

    void onTranslated(PhotoTranslateResult photoTranslateResult);
}
