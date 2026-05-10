package com.coloros.translate.engine.text.engine;

import com.coloros.translate.utils.c0;
import com.oplus.aiunit.translation.callback.StreamTextTranslateCallback;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class c implements StreamTextTranslateCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f5163a = new a(null);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // com.oplus.aiunit.translation.callback.StreamTextTranslateCallback
    public void onDataAvailable(String requestId, String translate_text) {
        r.e(requestId, "requestId");
        r.e(translate_text, "translate_text");
        c0.a aVar = c0.f7098a;
        if (aVar.l()) {
            aVar.d("SimpleStreamTextTranslateCallback", "requestId:" + requestId + " text:" + aVar.g(translate_text));
        }
    }

    @Override // com.oplus.aiunit.translation.callback.StreamTextTranslateCallback
    public void onError(String requestId, int i10, String str) {
        r.e(requestId, "requestId");
        c0.a aVar = c0.f7098a;
        if (aVar.l()) {
            aVar.d("SimpleStreamTextTranslateCallback", "onError requestId:" + requestId + " errorCode:" + i10 + " errorMsg:" + str);
        }
    }

    @Override // com.oplus.aiunit.translation.callback.StreamTextTranslateCallback
    public void onFinished(String requestId, String str) {
        r.e(requestId, "requestId");
        c0.a aVar = c0.f7098a;
        if (aVar.l()) {
            aVar.d("SimpleStreamTextTranslateCallback", "onFinished requestId:" + requestId + " text:" + aVar.g(str));
        }
    }

    @Override // com.oplus.aiunit.translation.callback.StreamTextTranslateCallback
    public void onStart(String requestId) {
        r.e(requestId, "requestId");
        c0.a aVar = c0.f7098a;
        if (aVar.l()) {
            aVar.d("SimpleStreamTextTranslateCallback", "onStart requestId:" + requestId);
        }
    }

    @Override // com.oplus.aiunit.translation.callback.StreamTextTranslateCallback
    public void onStop(String requestId) {
        r.e(requestId, "requestId");
        c0.a aVar = c0.f7098a;
        if (aVar.l()) {
            aVar.d("SimpleStreamTextTranslateCallback", "onStop requestId:" + requestId);
        }
    }
}
