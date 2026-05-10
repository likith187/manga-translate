package com.oplus.aiunit.translation.callback;

import com.oplus.aiunit.translation.model.TextTranslateData;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface TextTranslateCallback {
    void onError(int i10, String str);

    void onSuccess(String str, List<TextTranslateData> list, int i10);
}
