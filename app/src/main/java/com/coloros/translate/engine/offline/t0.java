package com.coloros.translate.engine.offline;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.RemoteException;
import com.coloros.translate.engine.IOfflineTranslateEngine;
import com.coloros.translate.engine.IOfflineTranslateListener;
import com.coloros.translate.engine.info.OnLineTranslateResult;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.l0;
import com.slp.library.SlpSdk;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class t0 extends IOfflineTranslateEngine.Stub implements a2.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f5097f = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f5098a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.ai.slp.library.mt.e f5099b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HandlerThread f5100c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Handler f5101d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f5102e;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ IOfflineTranslateListener $resultListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(IOfflineTranslateListener iOfflineTranslateListener) {
            super(0);
            this.$resultListener = iOfflineTranslateListener;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() throws RemoteException {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() throws RemoteException {
            this.$resultListener.onOfflineError("not exist offline package", 102);
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ IOfflineTranslateListener $resultListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(IOfflineTranslateListener iOfflineTranslateListener) {
            super(0);
            this.$resultListener = iOfflineTranslateListener;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() throws RemoteException {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() throws RemoteException {
            this.$resultListener.onOfflineError("params is null", 101);
        }
    }

    static final class d extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ IOfflineTranslateListener $resultListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(IOfflineTranslateListener iOfflineTranslateListener) {
            super(0);
            this.$resultListener = iOfflineTranslateListener;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() throws RemoteException {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() throws RemoteException {
            this.$resultListener.onOfflineError("resultTranslate is null", 103);
        }
    }

    static final class e extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ List<OnLineTranslateResult> $callback;
        final /* synthetic */ IOfflineTranslateListener $resultListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(IOfflineTranslateListener iOfflineTranslateListener, List<OnLineTranslateResult> list) {
            super(0);
            this.$resultListener = iOfflineTranslateListener;
            this.$callback = list;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() throws RemoteException {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() throws RemoteException {
            IOfflineTranslateListener iOfflineTranslateListener = this.$resultListener;
            List<OnLineTranslateResult> list = this.$callback;
            ArrayList arrayList = new ArrayList(kotlin.collections.o.r(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((OnLineTranslateResult) it.next()).s());
            }
            iOfflineTranslateListener.onOfflineResult(arrayList);
        }
    }

    static final class f extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ Exception $e;
        final /* synthetic */ IOfflineTranslateListener $resultListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(IOfflineTranslateListener iOfflineTranslateListener, Exception exc) {
            super(0);
            this.$resultListener = iOfflineTranslateListener;
            this.$e = exc;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() throws RemoteException {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() throws RemoteException {
            this.$resultListener.onOfflineError(this.$e.getMessage(), 105);
        }
    }

    static final class g extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ IOfflineTranslateListener $resultListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(IOfflineTranslateListener iOfflineTranslateListener) {
            super(0);
            this.$resultListener = iOfflineTranslateListener;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() throws RemoteException {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() throws RemoteException {
            this.$resultListener.onOfflineError("translateList not exist offline package", 102);
        }
    }

    static final class h extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ IOfflineTranslateListener $resultListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(IOfflineTranslateListener iOfflineTranslateListener) {
            super(0);
            this.$resultListener = iOfflineTranslateListener;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() throws RemoteException {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() throws RemoteException {
            this.$resultListener.onOfflineError("params is null", 101);
        }
    }

    static final class i extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ IOfflineTranslateListener $resultListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(IOfflineTranslateListener iOfflineTranslateListener) {
            super(0);
            this.$resultListener = iOfflineTranslateListener;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() throws RemoteException {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() throws RemoteException {
            this.$resultListener.onOfflineError("translateResults is null", 104);
        }
    }

    static final class j extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ List<OnLineTranslateResult> $resultCallback;
        final /* synthetic */ IOfflineTranslateListener $resultListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(IOfflineTranslateListener iOfflineTranslateListener, List<OnLineTranslateResult> list) {
            super(0);
            this.$resultListener = iOfflineTranslateListener;
            this.$resultCallback = list;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() throws RemoteException {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() throws RemoteException {
            IOfflineTranslateListener iOfflineTranslateListener = this.$resultListener;
            List<OnLineTranslateResult> list = this.$resultCallback;
            ArrayList arrayList = new ArrayList(kotlin.collections.o.r(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((OnLineTranslateResult) it.next()).s());
            }
            iOfflineTranslateListener.onOfflineResult(arrayList);
        }
    }

    static final class k extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ Exception $e;
        final /* synthetic */ IOfflineTranslateListener $resultListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(IOfflineTranslateListener iOfflineTranslateListener, Exception exc) {
            super(0);
            this.$resultListener = iOfflineTranslateListener;
            this.$e = exc;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() throws RemoteException {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() throws RemoteException {
            this.$resultListener.onOfflineError(this.$e.getMessage(), 105);
        }
    }

    public t0(Context mContext) {
        kotlin.jvm.internal.r.e(mContext, "mContext");
        this.f5098a = mContext;
        HandlerThread handlerThread = new HandlerThread("ZiyanOppoOfflineTranslateEngine_Thread");
        this.f5100c = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        this.f5101d = handler;
        handler.post(new Runnable() { // from class: com.coloros.translate.engine.offline.q0
            @Override // java.lang.Runnable
            public final void run() {
                t0.h(this.f5091a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(t0 this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        try {
            this$0.j();
        } catch (Exception e10) {
            com.coloros.translate.utils.c0.f7098a.e("ZiyanOppoOfflineTranslateEngineNew", "initOfflineMtServer error:" + e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(t0 this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.coloros.translate.utils.c0.f7098a.d("ZiyanOppoOfflineTranslateEngineNew", "mOfflineHandler , mTranslateEngine release");
        com.ai.slp.library.mt.e eVar = this$0.f5099b;
        if (eVar != null) {
            eVar.stop();
        }
        com.ai.slp.library.mt.e eVar2 = this$0.f5099b;
        if (eVar2 != null) {
            eVar2.release();
        }
    }

    private final void j() {
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.q("ZiyanOppoOfflineTranslateEngineNew", "ziyan translate init has been started");
        SlpSdk.install(this.f5098a);
        com.ai.slp.library.mt.e eVar = new com.ai.slp.library.mt.e();
        this.f5099b = eVar;
        b1.d dVar = com.ai.slp.library.mt.b.f4500a;
        Context context = this.f5098a;
        String MODEL_PATH = g0.f5046d;
        kotlin.jvm.internal.r.d(MODEL_PATH, "MODEL_PATH");
        File fileG = com.coloros.translate.utils.y.g(context, MODEL_PATH);
        eVar.d(dVar, fileG != null ? fileG.getAbsolutePath() : null);
        eVar.O(new c1.b() { // from class: com.coloros.translate.engine.offline.r0
            @Override // c1.b
            public final void a(y0.a aVar2) {
                t0.k(aVar2);
            }
        });
        eVar.N(new c1.a() { // from class: com.coloros.translate.engine.offline.s0
            @Override // c1.a
            public final void a(com.ai.slp.library.base.exception.b bVar) {
                t0.l(bVar);
            }
        });
        eVar.start();
        aVar.q("ZiyanOppoOfflineTranslateEngineNew", "ziyan translate init has been end");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(y0.a aVar) {
        com.coloros.translate.utils.c0.f7098a.d("ZiyanOppoOfflineTranslateEngineNew", "onChangeState: " + aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(com.ai.slp.library.base.exception.b bVar) {
        com.coloros.translate.utils.c0.f7098a.d("ZiyanOppoOfflineTranslateEngineNew", bVar.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(t0 this$0, String from, String to, String inputText, IOfflineTranslateListener resultListener) {
        com.ai.slp.library.mt.e eVar;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(from, "$from");
        kotlin.jvm.internal.r.e(to, "$to");
        kotlin.jvm.internal.r.e(inputText, "$inputText");
        kotlin.jvm.internal.r.e(resultListener, "$resultListener");
        if (!((Boolean) l0.a.g(com.coloros.translate.utils.l0.f7130a, "nmt_common_exist", Boolean.FALSE, null, 4, null)).booleanValue() || !this$0.existsOfflinePackage(from, to)) {
            com.coloros.translate.utils.c0.f7098a.q("ZiyanOppoOfflineTranslateEngineNew", "not exist: from:" + from + " to:" + to);
            this$0.o(new b(resultListener));
            return;
        }
        com.ai.slp.library.mt.c cVarA = com.coloros.translate.engine.offline.h.a(from);
        com.ai.slp.library.mt.c cVarA2 = com.coloros.translate.engine.offline.h.a(to);
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        if (aVar.l()) {
            aVar.d("ZiyanOppoOfflineTranslateEngineNew", "offline has start, from ==" + from + " to==" + to + " langFrom==" + cVarA + " langTo==" + cVarA2);
        }
        if (cVarA == null || cVarA2 == null) {
            aVar.e("ZiyanOppoOfflineTranslateEngineNew", "translate parameters null");
            this$0.o(new c(resultListener));
            return;
        }
        com.ai.slp.library.mt.f fVar = new com.ai.slp.library.mt.f(inputText, cVarA, cVarA2);
        aVar.d("ZiyanOppoOfflineTranslateEngineNew", "inputText" + inputText.length());
        com.ai.slp.library.mt.e eVar2 = this$0.f5099b;
        aVar.d("ZiyanOppoOfflineTranslateEngineNew", "state" + (eVar2 != null ? eVar2.c() : null));
        com.ai.slp.library.mt.e eVar3 = this$0.f5099b;
        if ((eVar3 != null ? eVar3.c() : null) != y0.a.STATE_START && (eVar = this$0.f5099b) != null) {
            eVar.start();
        }
        try {
            com.ai.slp.library.mt.e eVar4 = this$0.f5099b;
            com.ai.slp.library.mt.g gVarR = eVar4 != null ? eVar4.R(fVar) : null;
            if (gVarR == null) {
                this$0.o(new d(resultListener));
                aVar.d("ZiyanOppoOfflineTranslateEngineNew", "translate failed");
                return;
            }
            String strA = l0.a(this$0.f5098a, from, gVarR.a());
            OnLineTranslateResult onLineTranslateResult = new OnLineTranslateResult(null, null, null, null, null, false, 0, null, false, 511, null);
            onLineTranslateResult.m(from);
            onLineTranslateResult.j(cVarA.getCode());
            onLineTranslateResult.p(cVarA2.getCode());
            onLineTranslateResult.q(new ArrayList());
            onLineTranslateResult.d().add(strA);
            ArrayList arrayList = new ArrayList();
            arrayList.add(onLineTranslateResult);
            this$0.o(new e(resultListener, arrayList));
            aVar.d("ZiyanOppoOfflineTranslateEngineNew", "translate success");
        } catch (Exception e10) {
            com.coloros.translate.utils.c0.f7098a.e("ZiyanOppoOfflineTranslateEngineNew", "translate error: " + e10.getMessage());
            this$0.o(new f(resultListener, e10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(t0 this$0, String from, String to, List list, IOfflineTranslateListener resultListener) {
        com.ai.slp.library.mt.e eVar;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(from, "$from");
        kotlin.jvm.internal.r.e(to, "$to");
        kotlin.jvm.internal.r.e(resultListener, "$resultListener");
        if (!((Boolean) l0.a.g(com.coloros.translate.utils.l0.f7130a, "nmt_common_exist", Boolean.FALSE, null, 4, null)).booleanValue() || !this$0.existsOfflinePackage(from, to)) {
            com.coloros.translate.utils.c0.f7098a.q("ZiyanOppoOfflineTranslateEngineNew", "not exist: from:" + from + " to:" + to);
            this$0.o(new g(resultListener));
            return;
        }
        com.ai.slp.library.mt.c cVarA = com.coloros.translate.engine.offline.h.a(from);
        com.ai.slp.library.mt.c cVarA2 = com.coloros.translate.engine.offline.h.a(to);
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        if (aVar.l()) {
            aVar.d("ZiyanOppoOfflineTranslateEngineNew", "offline has start, from ==" + from + " to==" + to + " langFrom==" + cVarA + " langTo==" + cVarA2);
        }
        if (cVarA == null || cVarA2 == null) {
            aVar.e("ZiyanOppoOfflineTranslateEngineNew", "translate list parameters null");
            this$0.o(new h(resultListener));
            return;
        }
        if (list == null || list.isEmpty()) {
            return;
        }
        aVar.d("ZiyanOppoOfflineTranslateEngineNew", "translate begin");
        com.ai.slp.library.mt.e eVar2 = this$0.f5099b;
        if (eVar2 == null) {
            aVar.e("ZiyanOppoOfflineTranslateEngineNew", "mTranslateEngine has not init");
            return;
        }
        aVar.d("ZiyanOppoOfflineTranslateEngineNew", "current state==" + (eVar2 != null ? eVar2.c() : null));
        com.ai.slp.library.mt.e eVar3 = this$0.f5099b;
        if ((eVar3 != null ? eVar3.c() : null) != y0.a.STATE_START && (eVar = this$0.f5099b) != null) {
            eVar.start();
        }
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = list.get(i10);
            kotlin.jvm.internal.r.b(obj);
            arrayList.add(new com.ai.slp.library.mt.f((String) obj, cVarA, cVarA2));
        }
        try {
            com.ai.slp.library.mt.e eVar4 = this$0.f5099b;
            List listS = eVar4 != null ? eVar4.S(arrayList) : null;
            if (listS == null) {
                this$0.o(new i(resultListener));
                com.coloros.translate.utils.c0.f7098a.d("ZiyanOppoOfflineTranslateEngineNew", "translateList failed");
                return;
            }
            ArrayList arrayList2 = new ArrayList();
            int size2 = listS.size();
            for (int i11 = 0; i11 < size2; i11++) {
                String strA = ((com.ai.slp.library.mt.g) listS.get(i11)).a();
                OnLineTranslateResult onLineTranslateResult = new OnLineTranslateResult(null, null, null, null, null, false, 0, null, false, 511, null);
                onLineTranslateResult.m(from);
                onLineTranslateResult.j(cVarA.getCode());
                onLineTranslateResult.p(cVarA2.getCode());
                onLineTranslateResult.q(new ArrayList());
                onLineTranslateResult.d().add(l0.a(this$0.f5098a, from, strA));
                arrayList2.add(onLineTranslateResult);
            }
            this$0.o(new j(resultListener, arrayList2));
            com.coloros.translate.utils.c0.f7098a.d("ZiyanOppoOfflineTranslateEngineNew", "translateList success");
        } catch (Exception e10) {
            com.coloros.translate.utils.c0.f7098a.e("ZiyanOppoOfflineTranslateEngineNew", "translateList error: " + e10.getMessage());
            this$0.o(new k(resultListener, e10));
        }
    }

    private final void o(w8.a aVar) {
        Object objM59constructorimpl;
        try {
            r.a aVar2 = n8.r.Companion;
            aVar.mo8invoke();
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar3 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("ZiyanOppoOfflineTranslateEngineNew", "wrapBinderCallBack error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    @Override // a2.a
    public void a() {
        destroy();
    }

    @Override // com.coloros.translate.engine.IOfflineTranslateEngine
    public void destroy() {
        com.coloros.translate.utils.c0.f7098a.d("ZiyanOppoOfflineTranslateEngineNew", "destroy isPendingDestroy : " + this.f5102e);
        if (this.f5102e) {
            return;
        }
        this.f5102e = true;
        this.f5101d.removeCallbacksAndMessages(null);
        this.f5101d.post(new Runnable() { // from class: com.coloros.translate.engine.offline.o0
            @Override // java.lang.Runnable
            public final void run() {
                t0.i(this.f5080a);
            }
        });
        this.f5100c.quitSafely();
    }

    @Override // com.coloros.translate.engine.IOfflineTranslateEngine
    public boolean existsOfflinePackage(String from, String to) {
        kotlin.jvm.internal.r.e(from, "from");
        kotlin.jvm.internal.r.e(to, "to");
        return h0.f(com.coloros.translate.engine.offline.h.a(from), com.coloros.translate.engine.offline.h.a(to));
    }

    @Override // com.coloros.translate.engine.IOfflineTranslateEngine
    public void translate(final String from, final String to, final String inputText, final IOfflineTranslateListener resultListener) {
        kotlin.jvm.internal.r.e(from, "from");
        kotlin.jvm.internal.r.e(to, "to");
        kotlin.jvm.internal.r.e(inputText, "inputText");
        kotlin.jvm.internal.r.e(resultListener, "resultListener");
        this.f5101d.post(new Runnable() { // from class: com.coloros.translate.engine.offline.p0
            @Override // java.lang.Runnable
            public final void run() {
                t0.m(this.f5082a, from, to, inputText, resultListener);
            }
        });
    }

    @Override // com.coloros.translate.engine.IOfflineTranslateEngine
    public void translateList(final String from, final String to, final List list, final IOfflineTranslateListener resultListener) {
        kotlin.jvm.internal.r.e(from, "from");
        kotlin.jvm.internal.r.e(to, "to");
        kotlin.jvm.internal.r.e(resultListener, "resultListener");
        this.f5101d.post(new Runnable() { // from class: com.coloros.translate.engine.offline.n0
            @Override // java.lang.Runnable
            public final void run() {
                t0.n(this.f5074a, from, to, list, resultListener);
            }
        });
    }
}
