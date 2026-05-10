package com.coloros.translate.engine.service;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import com.coloros.translate.engine.IOfflineTranslateEngine;
import com.coloros.translate.engine.IRegisterListener;
import com.coloros.translate.engine.IRtasrEngine;
import com.coloros.translate.engine.ITranslateEngine;
import com.coloros.translate.engine.ITranslateServiceInterProxyBinder;
import com.coloros.translate.engine.ITtsEngine;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.m;
import com.coloros.translate.utils.q0;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.coloros.translate.engine.service.a f5131a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f5132b;

    class a extends ITranslateServiceInterProxyBinder.Stub {
        a() {
        }

        @Override // com.coloros.translate.engine.ITranslateServiceInterProxyBinder
        public void clearMap(String str) {
            c0.i("TranslateServiceInterProxy", "clearMap verifyPass, type = " + str);
            b.this.f5131a.f(b.this.f5132b, str);
        }

        @Override // com.coloros.translate.engine.ITranslateServiceInterProxyBinder
        public IOfflineTranslateEngine generateOfflineTranslateEngine(String str) {
            return null;
        }

        @Override // com.coloros.translate.engine.ITranslateServiceInterProxyBinder
        public IRtasrEngine generateRtasrEngine(String str) {
            c0.i("TranslateServiceInterProxy", "generateRtasrEngine verifyPass---FileAsr type: " + str);
            return b.this.f5131a.l(b.this.f5132b, str.trim());
        }

        @Override // com.coloros.translate.engine.ITranslateServiceInterProxyBinder
        public ITranslateEngine generateTranslateEngine(String str) {
            c0.o("TranslateServiceInterProxy", "generateTranslateEngine " + str);
            return b.this.f5131a.m(b.this.f5132b, str);
        }

        @Override // com.coloros.translate.engine.ITranslateServiceInterProxyBinder
        public ITtsEngine generateTtsEngine(String str) {
            return b.this.f5131a.n(b.this.f5132b, str);
        }

        @Override // com.coloros.translate.engine.ITranslateServiceInterProxyBinder
        public Bundle invokeMethod(String str, String str2, Bundle bundle) {
            c0.i("TranslateServiceInterProxy", "invokeMethod:" + str);
            return null;
        }

        @Override // com.coloros.translate.engine.ITranslateServiceInterProxyBinder
        public void registerClient(IRegisterListener iRegisterListener) {
            c0.i("TranslateServiceInterProxy", "registerClient verifyPass");
            b.this.f5131a.q(b.this.f5132b, iRegisterListener);
        }

        @Override // com.coloros.translate.engine.ITranslateServiceInterProxyBinder
        public void registerLLMClient(IRegisterListener iRegisterListener) {
            b.this.f5131a.r(iRegisterListener);
        }

        @Override // com.coloros.translate.engine.ITranslateServiceInterProxyBinder
        public void setEngineAutoDestroyWhenBinderDied(IRegisterListener iRegisterListener, boolean z10) {
            c0.i("TranslateServiceInterProxy", "registerClient verifyPass");
            b.this.f5131a.s(iRegisterListener, z10);
        }

        @Override // com.coloros.translate.engine.ITranslateServiceInterProxyBinder
        public void unRegisterClient(IRegisterListener iRegisterListener) {
            c0.i("TranslateServiceInterProxy", "unRegisterClient verifyPass");
            b.this.f5131a.t(iRegisterListener);
        }
    }

    public IBinder c() {
        c0.o("TranslateServiceInterProxy", "onBind");
        q0.b(this.f5132b, "1");
        return new a();
    }

    public void d() {
        c0.o("TranslateServiceInterProxy", "onCreate");
        this.f5131a = new com.coloros.translate.engine.service.a();
        this.f5132b = m.f7131a;
    }

    public void e() {
        c0.i("TranslateServiceInterProxy", "onDestroy");
        q0.b(this.f5132b, "3");
        this.f5131a.i("com.coloros.translate");
        this.f5131a.g();
    }

    public void f() {
        q0.b(this.f5132b, "2");
    }
}
