package com.oplus.aiunit.translation.callback;

import com.oplus.aiunit.translation.model.ImageTranslateResult;

/* JADX INFO: loaded from: classes2.dex */
public interface ImageTranslateCallback {
    void onError(int i10, String str);

    void onTranslated(ImageTranslateResult imageTranslateResult);
}
