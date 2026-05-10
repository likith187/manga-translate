package com.oplus.aiunit.translation;

import android.content.Context;
import com.oplus.aiunit.translation.dcsTrackingPoint.DcsTrackingPoint;
import com.oplus.aiunit.translation.fuction.translate.TranslationClient;
import com.oplus.aiunit.translation.fuction.translate.TranslationDetector;
import com.oplus.aiunit.translation.utils.InitStateSingleton;
import kotlin.jvm.internal.s;
import w8.a;

/* JADX INFO: loaded from: classes2.dex */
final class TextRecognizeHelper$mTranslationClient$2 extends s implements a {
    public static final TextRecognizeHelper$mTranslationClient$2 INSTANCE = new TextRecognizeHelper$mTranslationClient$2();

    TextRecognizeHelper$mTranslationClient$2() {
        super(0);
    }

    @Override // w8.a
    /* JADX INFO: renamed from: invoke */
    public final TranslationClient mo8invoke() {
        Context context = TextRecognizeHelper.mContext;
        if (context == null) {
            throw new IllegalStateException("Context not initialized");
        }
        DcsTrackingPoint.getInstance().init(TextRecognizeHelper.mContext);
        InitStateSingleton initStateSingleton = InitStateSingleton.INSTANCE;
        String packageName = context.getPackageName();
        if (packageName == null) {
            packageName = "default";
        }
        initStateSingleton.setPackageName(packageName);
        return new TranslationClient(context, new TranslationDetector(context, "ai_omni"));
    }
}
