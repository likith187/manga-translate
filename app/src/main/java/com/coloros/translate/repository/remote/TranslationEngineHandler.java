package com.coloros.translate.repository.remote;

import android.os.Bundle;
import android.os.RemoteException;
import com.coloros.translate.engine.ITranslateEngine;
import com.coloros.translate.engine.ITranslateListener;
import com.coloros.translate.engine.info.OnLineTranslateResult;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.n;
import com.coloros.translate.utils.z0;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class TranslationEngineHandler {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f5456c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ITranslateEngine f5457a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f5458b = "machine";

    public static abstract class TranslateListener extends ITranslateListener.Stub {
        @Override // com.coloros.translate.engine.ITranslateListener
        public void onStreamError(String str, String str2, int i10) throws RemoteException {
            onError(str, str2, i10);
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onStreamResult(String str, boolean z10, OnLineTranslateResult onLineTranslateResult) {
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onStreamResultList(String str, List<OnLineTranslateResult> list) throws RemoteException {
            onResultList(list);
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onStreamTranslateStart(String str) throws RemoteException {
            onTranslateStart(str);
        }
    }

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b extends s implements w8.a {
        final /* synthetic */ String $from;
        final /* synthetic */ String $inputText;
        final /* synthetic */ TranslateListener $listener;
        final /* synthetic */ String $to;
        final /* synthetic */ TranslationEngineHandler this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, String str2, String str3, TranslationEngineHandler translationEngineHandler, TranslateListener translateListener) {
            super(0);
            this.$from = str;
            this.$to = str2;
            this.$inputText = str3;
            this.this$0 = translationEngineHandler;
            this.$listener = translateListener;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() throws RemoteException {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() throws RemoteException {
            n.INSTANCE.h0(this.$from, this.$to, this.$inputText.length(), this.this$0.f5458b);
            ITranslateEngine iTranslateEngine = this.this$0.f5457a;
            if (iTranslateEngine != null) {
                iTranslateEngine.translate(this.$from, this.$to, this.$inputText, this.$listener);
            }
        }
    }

    public final void c(String str) {
        Object objM59constructorimpl;
        c0.f7098a.d("TranslationEngineHandler", "cancelStreamTextTranslate requestId : " + str);
        Bundle bundle = new Bundle();
        bundle.putString("requestId", str);
        try {
            r.a aVar = r.Companion;
            ITranslateEngine iTranslateEngine = this.f5457a;
            objM59constructorimpl = r.m59constructorimpl(iTranslateEngine != null ? iTranslateEngine.invokeMethod("cancelStreamTextTranslate", bundle) : null);
        } catch (Throwable th) {
            r.a aVar2 = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(n8.s.a(th));
        }
        if (r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
            c0.f7098a.e("TranslationEngineHandler", "cancelStreamTextTranslate error");
        }
    }

    public void d(ITranslateEngine iTranslateEngine) {
        this.f5457a = iTranslateEngine;
        this.f5458b = "machine";
    }

    public final void e(ITranslateEngine iTranslateEngine, String type) {
        kotlin.jvm.internal.r.e(type, "type");
        this.f5457a = iTranslateEngine;
        this.f5458b = type;
    }

    public void f(String from, String to, String inputText, TranslateListener listener) {
        kotlin.jvm.internal.r.e(from, "from");
        kotlin.jvm.internal.r.e(to, "to");
        kotlin.jvm.internal.r.e(inputText, "inputText");
        kotlin.jvm.internal.r.e(listener, "listener");
        c0.f7098a.d("TranslationEngineHandler", "translate textTranslateType : " + this.f5458b);
        z0.d(0L, new b(from, to, inputText, this, listener), 1, null);
    }
}
