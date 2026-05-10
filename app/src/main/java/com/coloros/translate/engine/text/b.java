package com.coloros.translate.engine.text;

import com.coloros.translate.utils.m;
import com.coloros.translate.utils.u0;
import com.oplus.aiunit.translation.TextRecognizeHelper;
import com.oplus.aiunit.translation.callback.TranslateConfigCallback;
import com.oplus.aiunit.translation.request.TranslateConfigRequest;
import java.util.UUID;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.c0;
import kotlinx.coroutines.d0;
import kotlinx.coroutines.g;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.k1;
import kotlinx.coroutines.o0;
import n8.h0;
import n8.r;
import n8.s;
import w8.p;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static final b INSTANCE = new b();

    public static final class a implements TranslateConfigCallback {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ c0 f5145a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ a2.b f5146b;

        a(c0 c0Var, a2.b bVar) {
            this.f5145a = c0Var;
            this.f5146b = bVar;
        }

        @Override // com.oplus.aiunit.translation.callback.TranslateConfigCallback
        public void onError(int i10, String str) {
            b.INSTANCE.c(this.f5145a);
            com.coloros.translate.utils.c0.f7098a.e("SupportLanguageClient", "onError:code" + i10 + " errMsg:" + str);
        }

        @Override // com.oplus.aiunit.translation.callback.TranslateConfigCallback
        public void onSuccess(String asr, String mt, String tts) {
            r.e(asr, "asr");
            r.e(mt, "mt");
            r.e(tts, "tts");
            com.coloros.translate.utils.c0.f7098a.d("SupportLanguageClient", "getSupportOnlineLanguage onSuccess asr:" + asr + " mt:" + mt + " tts:" + tts);
            b.INSTANCE.c(this.f5145a);
            this.f5146b.a(asr, mt, tts);
        }
    }

    /* JADX INFO: renamed from: com.coloros.translate.engine.text.b$b */
    static final class C0065b extends l implements p {
        int label;

        C0065b(kotlin.coroutines.d dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return new C0065b(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object objF = kotlin.coroutines.intrinsics.b.f();
            int i10 = this.label;
            if (i10 == 0) {
                s.b(obj);
                this.label = 1;
                if (k0.a(5000L, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                s.b(obj);
            }
            com.coloros.translate.utils.c0.f7098a.q("SupportLanguageClient", "online callback time out");
            return h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(c0 c0Var, kotlin.coroutines.d dVar) {
            return ((C0065b) create(c0Var, dVar)).invokeSuspend(h0.INSTANCE);
        }
    }

    private b() {
    }

    public final void c(c0 c0Var) {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            if (c0Var != null && d0.e(c0Var)) {
                d0.c(c0Var, null, 1, null);
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
            com.coloros.translate.utils.c0.f7098a.e("SupportLanguageClient", "cancelTimeoutCoroutineSafely onFailure");
        }
    }

    public static final void e(TranslateConfigRequest request, c0 coroutineScope, a2.b callback) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(request, "$request");
        kotlin.jvm.internal.r.e(coroutineScope, "$coroutineScope");
        kotlin.jvm.internal.r.e(callback, "$callback");
        try {
            r.a aVar = n8.r.Companion;
            TextRecognizeHelper.INSTANCE.getTranslationConfig(m.INSTANCE.a(), request, new a(coroutineScope, callback));
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("SupportLanguageClient", "getTranslationConfig onError:code" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    private final c0 f() {
        c0 c0VarA = d0.a(o0.b().plus(k1.b(null, 1, null)));
        g.b(c0VarA, null, null, new C0065b(null), 3, null);
        return c0VarA;
    }

    public final void d(final a2.b callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        final TranslateConfigRequest translateConfigRequest = new TranslateConfigRequest();
        String string = UUID.randomUUID().toString();
        kotlin.jvm.internal.r.d(string, "toString(...)");
        translateConfigRequest.setRequestId(string);
        com.coloros.translate.utils.c0.f7098a.d("SupportLanguageClient", "getSupportOnlineLanguage start requestId :" + translateConfigRequest.getRequestId());
        final c0 c0VarF = f();
        u0.d("request_download_offline_info", new Runnable() { // from class: com.coloros.translate.engine.text.a
            @Override // java.lang.Runnable
            public final void run() {
                b.e(translateConfigRequest, c0VarF, callback);
            }
        });
    }
}
