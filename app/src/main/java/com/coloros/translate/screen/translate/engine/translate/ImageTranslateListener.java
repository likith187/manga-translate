package com.coloros.translate.screen.translate.engine.translate;

import com.oplus.aiunit.translation.model.ImageTranslateResult;

/* JADX INFO: loaded from: classes.dex */
public interface ImageTranslateListener {
    void onError(String str, String str2, int i10);

    void onImageResult(String str, ImageTranslateResult imageTranslateResult);

    void onTextResult(String str, String str2, int i10, boolean z10);
}
