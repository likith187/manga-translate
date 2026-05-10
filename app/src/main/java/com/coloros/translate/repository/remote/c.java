package com.coloros.translate.repository.remote;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.coloros.translate.LanguageManager;
import com.coloros.translate.engine.IRegisterListener;
import com.coloros.translate.engine.IRtasrEngine;
import com.coloros.translate.engine.ITranslateEngine;
import com.coloros.translate.engine.ITranslateServiceInterProxyBinder;
import com.coloros.translate.engine.ITtsEngine;
import com.coloros.translate.repository.remote.c;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.z0;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: q */
    public static final a f5463q = new a(null);

    /* JADX INFO: renamed from: a */
    private ITranslateServiceInterProxyBinder f5464a;

    /* JADX INFO: renamed from: b */
    private boolean f5465b;

    /* JADX INFO: renamed from: c */
    private boolean f5466c;

    /* JADX INFO: renamed from: d */
    private boolean f5467d;

    /* JADX INFO: renamed from: e */
    private boolean f5468e;

    /* JADX INFO: renamed from: f */
    private boolean f5469f;

    /* JADX INFO: renamed from: g */
    private com.coloros.translate.engine.service.b f5470g;

    /* JADX INFO: renamed from: h */
    private final n8.j f5471h = n8.k.b(new e());

    /* JADX INFO: renamed from: i */
    private final n8.j f5472i = n8.k.b(new f());

    /* JADX INFO: renamed from: j */
    private final n8.j f5473j = n8.k.b(new i());

    /* JADX INFO: renamed from: k */
    private final n8.j f5474k = n8.k.b(new g());

    /* JADX INFO: renamed from: l */
    private final n8.j f5475l = n8.k.b(new j());

    /* JADX INFO: renamed from: m */
    private BinderC0076c f5476m = new BinderC0076c();

    /* JADX INFO: renamed from: n */
    private final CopyOnWriteArrayList f5477n = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: o */
    private h f5478o = new h();

    /* JADX INFO: renamed from: p */
    private d f5479p = new d();

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public interface b {

        public static final class a {
            public static void a(b bVar) {
            }
        }

        void a();

        void b();
    }

    /* JADX INFO: renamed from: com.coloros.translate.repository.remote.c$c */
    public static final class BinderC0076c extends IRegisterListener.Stub {
        BinderC0076c() {
        }

        @Override // com.coloros.translate.engine.IRegisterListener
        public void callback(int i10, String str) {
            c0.f7098a.d("TranslationManager", "callback language is :" + str);
            if (str == null || str.length() == 0) {
                return;
            }
            LanguageManager.f4727w.b().Z(str);
        }
    }

    public static final class d extends IRegisterListener.Stub {
        d() {
        }

        @Override // com.coloros.translate.engine.IRegisterListener
        public void callback(int i10, String str) {
            c0.f7098a.d("TranslationManager", "callback language is :" + str);
            if (i10 == 0) {
                com.coloros.translate.repository.local.a.INSTANCE.b(str);
            }
        }
    }

    static final class e extends s implements w8.a {
        e() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final RtasrEngineHandler mo8invoke() {
            IRtasrEngine iRtasrEngineY;
            RtasrEngineHandler rtasrEngineHandler = new RtasrEngineHandler();
            c cVar = c.this;
            if (cVar.f5464a == null) {
                cVar.f5465b = true;
                iRtasrEngineY = null;
            } else {
                cVar.f5465b = true;
                iRtasrEngineY = cVar.y("long_rtasr_recorder_with_unit");
            }
            rtasrEngineHandler.p(iRtasrEngineY);
            return rtasrEngineHandler;
        }
    }

    static final class f extends s implements w8.a {
        f() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final RtasrEngineHandler mo8invoke() {
            IRtasrEngine iRtasrEngineY;
            RtasrEngineHandler rtasrEngineHandler = new RtasrEngineHandler();
            c cVar = c.this;
            if (cVar.f5464a == null) {
                cVar.f5466c = true;
                iRtasrEngineY = null;
            } else {
                cVar.f5466c = true;
                iRtasrEngineY = cVar.y("short_rtasr_recorder_with_unit");
            }
            rtasrEngineHandler.p(iRtasrEngineY);
            return rtasrEngineHandler;
        }
    }

    static final class g extends s implements w8.a {
        g() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final TranslationEngineHandler mo8invoke() {
            ITranslateEngine iTranslateEngineA;
            TranslationEngineHandler translationEngineHandler = new TranslationEngineHandler();
            c cVar = c.this;
            if (cVar.f5464a == null) {
                cVar.f5467d = true;
                iTranslateEngineA = null;
            } else {
                cVar.f5467d = true;
                iTranslateEngineA = cVar.A("aiunit_translate");
            }
            translationEngineHandler.d(iTranslateEngineA);
            return translationEngineHandler;
        }
    }

    public static final class h implements ServiceConnection {

        static final class a extends s implements w8.a {
            final /* synthetic */ c this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(c cVar) {
                super(0);
                this.this$0 = cVar;
            }

            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public /* bridge */ /* synthetic */ Object mo8invoke() throws RemoteException {
                invoke();
                return h0.INSTANCE;
            }

            public final void invoke() throws RemoteException {
                ITranslateServiceInterProxyBinder iTranslateServiceInterProxyBinder = this.this$0.f5464a;
                if (iTranslateServiceInterProxyBinder != null) {
                    iTranslateServiceInterProxyBinder.registerClient(this.this$0.f5476m);
                }
                this.this$0.I();
                ITranslateServiceInterProxyBinder iTranslateServiceInterProxyBinder2 = this.this$0.f5464a;
                if (iTranslateServiceInterProxyBinder2 != null) {
                    iTranslateServiceInterProxyBinder2.setEngineAutoDestroyWhenBinderDied(this.this$0.f5476m, false);
                }
            }
        }

        static final class b extends s implements w8.a {
            final /* synthetic */ c this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(c cVar) {
                super(0);
                this.this$0 = cVar;
            }

            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public /* bridge */ /* synthetic */ Object mo8invoke() {
                invoke();
                return h0.INSTANCE;
            }

            public final void invoke() {
                this.this$0.x().f(this.this$0.B());
            }
        }

        h() {
        }

        public static final void b(b bVar) {
            bVar.a();
        }

        @Override // android.content.ServiceConnection
        public void onBindingDied(ComponentName componentName) {
            super.onBindingDied(componentName);
            c0.f7098a.i("TranslationManager", "ServiceConnection onBindingDied");
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Object objM59constructorimpl;
            c cVar = c.this;
            try {
                r.a aVar = r.Companion;
                c0.f7098a.i("TranslationManager", "onServiceConnected");
                cVar.f5464a = ITranslateServiceInterProxyBinder.Stub.asInterface(iBinder);
                z0.d(0L, new a(cVar), 1, null);
                objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = r.Companion;
                objM59constructorimpl = r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("TranslationManager", "onServiceConnected " + thM62exceptionOrNullimpl.getMessage());
            }
            if (c.this.f5465b) {
                c.this.u().p(c.this.y("long_rtasr_recorder_with_unit"));
            }
            if (c.this.f5466c) {
                c.this.v().p(c.this.y("short_rtasr_recorder_with_unit"));
            }
            if (c.this.f5468e) {
                z0.d(0L, new b(c.this), 1, null);
            }
            if (c.this.f5467d) {
                c.this.w().d(c.this.A("aiunit_translate"));
            }
            if (c.this.f5469f) {
                c.this.z().e(c.this.A("aiunit_stream_translate"), "model");
            }
            Iterator it = c.this.f5477n.iterator();
            while (it.hasNext()) {
                ((b) it.next()).b();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Object objM59constructorimpl;
            c0.f7098a.i("TranslationManager", "onServiceDisconnected");
            c cVar = c.this;
            try {
                r.a aVar = r.Companion;
                for (final b bVar : cVar.f5477n) {
                    z0.h(0L, new Runnable() { // from class: com.coloros.translate.repository.remote.d
                        @Override // java.lang.Runnable
                        public final void run() {
                            c.h.b(bVar);
                        }
                    }, 1, null);
                }
                objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = r.Companion;
                objM59constructorimpl = r.m59constructorimpl(n8.s.a(th));
            }
            if (r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
                c0.f7098a.e("TranslationManager", "onServiceDisconnected");
            }
        }
    }

    static final class i extends s implements w8.a {
        i() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final TtsEngineHandler mo8invoke() {
            ITtsEngine iTtsEngineB;
            TtsEngineHandler ttsEngineHandler = new TtsEngineHandler();
            c cVar = c.this;
            if (cVar.f5464a == null) {
                cVar.f5468e = true;
                iTtsEngineB = null;
            } else {
                cVar.f5468e = true;
                iTtsEngineB = cVar.B();
            }
            ttsEngineHandler.f(iTtsEngineB);
            return ttsEngineHandler;
        }
    }

    static final class j extends s implements w8.a {
        j() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final TranslationEngineHandler mo8invoke() {
            ITranslateEngine iTranslateEngineA;
            TranslationEngineHandler translationEngineHandler = new TranslationEngineHandler();
            c cVar = c.this;
            if (cVar.f5464a == null) {
                cVar.f5469f = true;
                iTranslateEngineA = null;
            } else {
                cVar.f5469f = true;
                iTranslateEngineA = cVar.A("aiunit_stream_translate");
            }
            translationEngineHandler.e(iTranslateEngineA, "model");
            return translationEngineHandler;
        }
    }

    static final class k extends s implements w8.a {
        k() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            Object objM59constructorimpl;
            h0 h0Var;
            c0.f7098a.d("TranslationManager", "updateLanguageConfig");
            c cVar = c.this;
            try {
                r.a aVar = r.Companion;
                ITranslateServiceInterProxyBinder iTranslateServiceInterProxyBinder = cVar.f5464a;
                if (iTranslateServiceInterProxyBinder != null) {
                    iTranslateServiceInterProxyBinder.registerLLMClient(cVar.f5479p);
                    h0Var = h0.INSTANCE;
                } else {
                    h0Var = null;
                }
                objM59constructorimpl = r.m59constructorimpl(h0Var);
            } catch (Throwable th) {
                r.a aVar2 = r.Companion;
                objM59constructorimpl = r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("TranslationManager", "updateLanguageConfig: " + thM62exceptionOrNullimpl.getMessage());
            }
        }
    }

    static final class l extends s implements w8.a {
        l() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            Object objM59constructorimpl;
            h0 h0Var;
            c0.f7098a.d("TranslationManager", "updateLanguageConfig");
            c cVar = c.this;
            try {
                r.a aVar = r.Companion;
                ITranslateServiceInterProxyBinder iTranslateServiceInterProxyBinder = cVar.f5464a;
                if (iTranslateServiceInterProxyBinder != null) {
                    iTranslateServiceInterProxyBinder.registerClient(cVar.f5476m);
                    h0Var = h0.INSTANCE;
                } else {
                    h0Var = null;
                }
                objM59constructorimpl = r.m59constructorimpl(h0Var);
            } catch (Throwable th) {
                r.a aVar2 = r.Companion;
                objM59constructorimpl = r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("TranslationManager", "updateLanguageConfig: " + thM62exceptionOrNullimpl.getMessage());
            }
            c.this.I();
        }
    }

    public final ITranslateEngine A(String str) {
        c0.f7098a.i("TranslationManager", "getTranslateEngine type : " + str);
        try {
            r.a aVar = r.Companion;
            ITranslateServiceInterProxyBinder iTranslateServiceInterProxyBinder = this.f5464a;
            if (iTranslateServiceInterProxyBinder != null) {
                return iTranslateServiceInterProxyBinder.generateTranslateEngine(str);
            }
            return null;
        } catch (Throwable th) {
            r.a aVar2 = r.Companion;
            Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(r.m59constructorimpl(n8.s.a(th)));
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("TranslationManager", "generateTranslateEngine : " + thM62exceptionOrNullimpl.getMessage());
            }
            return null;
        }
    }

    public final ITtsEngine B() {
        try {
            r.a aVar = r.Companion;
            ITranslateServiceInterProxyBinder iTranslateServiceInterProxyBinder = this.f5464a;
            if (iTranslateServiceInterProxyBinder != null) {
                return iTranslateServiceInterProxyBinder.generateTtsEngine("aiunit_stream_tts");
            }
            return null;
        } catch (Throwable th) {
            r.a aVar2 = r.Companion;
            Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(r.m59constructorimpl(n8.s.a(th)));
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("TranslationManager", "generateTtsEngine : " + thM62exceptionOrNullimpl.getMessage());
            }
            return null;
        }
    }

    private final void E() {
        c0.f7098a.i("TranslationManager", "resetEngineHandler");
        if (this.f5465b) {
            u().p(null);
        }
        if (this.f5466c) {
            v().p(null);
        }
        if (this.f5468e) {
            x().f(null);
        }
        if (this.f5467d) {
            w().d(null);
        }
        if (this.f5469f) {
            z().d(null);
        }
    }

    public final void I() {
        z0.d(0L, new k(), 1, null);
    }

    public final boolean C() {
        return this.f5470g != null;
    }

    public final void D(b callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        c0.f7098a.i("TranslationManager", "registerConnectCallBack");
        if (this.f5477n.contains(callback)) {
            return;
        }
        this.f5477n.add(callback);
    }

    public final void F() {
        if (this.f5470g != null) {
            c0.f7098a.d("TranslationManager", "service has exist");
            return;
        }
        c0.f7098a.d("TranslationManager", "startTranslationService");
        com.coloros.translate.engine.service.b bVar = new com.coloros.translate.engine.service.b();
        this.f5470g = bVar;
        bVar.d();
        com.coloros.translate.engine.service.b bVar2 = this.f5470g;
        this.f5478o.onServiceConnected(null, bVar2 != null ? bVar2.c() : null);
    }

    public final void G() {
        Object objM59constructorimpl;
        Object objM59constructorimpl2;
        h0 h0Var;
        c0.f7098a.i("TranslationManager", "stopTranslationService");
        try {
            r.a aVar = r.Companion;
            ITranslateServiceInterProxyBinder iTranslateServiceInterProxyBinder = this.f5464a;
            if (iTranslateServiceInterProxyBinder != null) {
                iTranslateServiceInterProxyBinder.setEngineAutoDestroyWhenBinderDied(this.f5476m, false);
            }
            ITranslateServiceInterProxyBinder iTranslateServiceInterProxyBinder2 = this.f5464a;
            if (iTranslateServiceInterProxyBinder2 != null) {
                iTranslateServiceInterProxyBinder2.unRegisterClient(this.f5476m);
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            objM59constructorimpl = r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("TranslationManager", "stopTranslationService(),unRegisterClient:" + thM62exceptionOrNullimpl.getMessage());
        }
        try {
            com.coloros.translate.engine.service.b bVar = this.f5470g;
            if (bVar != null) {
                bVar.f();
            }
            com.coloros.translate.engine.service.b bVar2 = this.f5470g;
            if (bVar2 != null) {
                bVar2.e();
            }
            this.f5470g = null;
            this.f5464a = null;
            E();
            objM59constructorimpl2 = r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th2) {
            r.a aVar3 = r.Companion;
            objM59constructorimpl2 = r.m59constructorimpl(n8.s.a(th2));
        }
        Throwable thM62exceptionOrNullimpl2 = r.m62exceptionOrNullimpl(objM59constructorimpl2);
        if (thM62exceptionOrNullimpl2 != null) {
            c0.f7098a.e("TranslationManager", "stopTranslationService() " + thM62exceptionOrNullimpl2.getMessage());
        }
    }

    public final void H(b callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        c0.f7098a.i("TranslationManager", "registerConnectCallBack");
        if (this.f5477n.contains(callback)) {
            this.f5477n.remove(callback);
        }
    }

    public final void J() {
        z0.d(0L, new l(), 1, null);
    }

    public final void s() {
        c0.a aVar = c0.f7098a;
        aVar.d("TranslationManager", "checkAiUnitLongAsrEngine()");
        if (u().j()) {
            return;
        }
        aVar.i("TranslationManager", "checkAiUnitLongAsrEngine() get");
        u().p(y("long_rtasr_recorder_with_unit"));
    }

    public final void t() {
        c0.f7098a.i("TranslationManager", "checkTtsEngine()");
        if (x().e()) {
            return;
        }
        x().f(B());
    }

    public final RtasrEngineHandler u() {
        return (RtasrEngineHandler) this.f5471h.getValue();
    }

    public final RtasrEngineHandler v() {
        return (RtasrEngineHandler) this.f5472i.getValue();
    }

    public final TranslationEngineHandler w() {
        return (TranslationEngineHandler) this.f5474k.getValue();
    }

    public final TtsEngineHandler x() {
        return (TtsEngineHandler) this.f5473j.getValue();
    }

    public final IRtasrEngine y(String type) {
        kotlin.jvm.internal.r.e(type, "type");
        try {
            r.a aVar = r.Companion;
            c0.f7098a.d("TranslationManager", "getRtasrEngine type = " + type + " mITranslateServiceBinder = " + this.f5464a);
            ITranslateServiceInterProxyBinder iTranslateServiceInterProxyBinder = this.f5464a;
            if (iTranslateServiceInterProxyBinder != null) {
                return iTranslateServiceInterProxyBinder.generateRtasrEngine(type);
            }
            return null;
        } catch (Throwable th) {
            r.a aVar2 = r.Companion;
            Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(r.m59constructorimpl(n8.s.a(th)));
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("TranslationManager", "generateRtasrEngine : " + thM62exceptionOrNullimpl.getMessage());
            }
            return null;
        }
    }

    public final TranslationEngineHandler z() {
        return (TranslationEngineHandler) this.f5475l.getValue();
    }
}
