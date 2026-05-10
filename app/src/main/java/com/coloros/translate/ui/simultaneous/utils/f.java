package com.coloros.translate.ui.simultaneous.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.coloros.translate.engine.info.OnLineTranslateResult;
import com.coloros.translate.repository.remote.TranslationEngineHandler;
import com.coloros.translate.utils.c0;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;
import w8.p;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f6768f = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HandlerThread f6769a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler f6770b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f6771c = new LinkedHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6772d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private p f6773e;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b extends TranslationEngineHandler.TranslateListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ o2.a f6775b;

        b(o2.a aVar) {
            this.f6775b = aVar;
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onError(String requesId, String str, int i10) {
            Object objM59constructorimpl;
            r.e(requesId, "requesId");
            if (!f.this.f6771c.containsKey(Integer.valueOf((int) this.f6775b.d()))) {
                c0.f7098a.d("TranslateQueueManager", "translate onError reject");
                return;
            }
            c0.f7098a.d("TranslateQueueManager", "translate fail id:" + this.f6775b.d());
            this.f6775b.B(true);
            p pVar = f.this.f6773e;
            if (pVar != null) {
                pVar.invoke(Boolean.TRUE, this.f6775b);
            }
            f fVar = f.this;
            o2.a aVar = this.f6775b;
            try {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl((o2.a) fVar.f6771c.remove(Integer.valueOf((int) aVar.d())));
            } catch (Throwable th) {
                r.a aVar3 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
            }
            if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
                c0.f7098a.e("TranslateQueueManager", "translate error remove fail");
            }
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onResult(OnLineTranslateResult onLineTranslateResult) {
            String str;
            Object objM59constructorimpl;
            List listD;
            if (!f.this.f6771c.containsKey(Integer.valueOf((int) this.f6775b.d()))) {
                c0.f7098a.d("TranslateQueueManager", "translate onResult reject");
                return;
            }
            c0.f7098a.d("TranslateQueueManager", "translate success id:" + this.f6775b.d());
            if (onLineTranslateResult == null || (listD = onLineTranslateResult.d()) == null || (str = (String) listD.get(0)) == null) {
                str = "";
            }
            String strB = kotlin.text.r.B(kotlin.text.r.B(str, "\\\\", "\\", false, 4, null), "\\n", "\n", false, 4, null);
            this.f6775b.A(true);
            this.f6775b.n(true);
            this.f6775b.z(strB);
            this.f6775b.B(false);
            p pVar = f.this.f6773e;
            if (pVar != null) {
                pVar.invoke(Boolean.TRUE, this.f6775b);
            }
            f fVar = f.this;
            o2.a aVar = this.f6775b;
            try {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl((o2.a) fVar.f6771c.remove(Integer.valueOf((int) aVar.d())));
            } catch (Throwable th) {
                r.a aVar3 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
            }
            if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
                c0.f7098a.e("TranslateQueueManager", "translate error remove fail");
            }
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onResultList(List list) {
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onTranslateStart(String str) {
            c0.f7098a.d("TranslateQueueManager", "translate onTranslateStart");
        }
    }

    private final synchronized void d() {
        if (this.f6769a != null) {
            return;
        }
        HandlerThread handlerThread = new HandlerThread("translateThread", 10);
        handlerThread.start();
        this.f6769a = handlerThread;
        this.f6770b = new Handler(handlerThread.getLooper(), new Handler.Callback() { // from class: com.coloros.translate.ui.simultaneous.utils.e
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return f.e(this.f6767a, message);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean e(f this$0, Message msg) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(msg, "msg");
        o2.a aVar = (o2.a) this$0.f6771c.get(Integer.valueOf(msg.what));
        if (aVar != null) {
            c0.f7098a.d("TranslateQueueManager", "currentTranslate id:" + msg.what);
            this$0.k(aVar);
            return false;
        }
        c0.f7098a.q("TranslateQueueManager", "currentTranslate id:" + msg.what + " reject");
        return false;
    }

    private final void k(o2.a aVar) {
        if (this.f6773e == null) {
            return;
        }
        com.coloros.translate.repository.d.f5439a.e().w().f(aVar.a(), aVar.g(), aVar.b(), new b(aVar));
    }

    public final void f() {
        Object objM59constructorimpl;
        Object objM59constructorimpl2;
        h0 h0Var;
        this.f6772d = true;
        this.f6771c.clear();
        this.f6773e = null;
        c0.f7098a.d("TranslateQueueManager", "destroyOnViewModel");
        try {
            r.a aVar = n8.r.Companion;
            Handler handler = this.f6770b;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("TranslateQueueManager", "destroyOnViewModel " + thM62exceptionOrNullimpl.getMessage());
        }
        try {
            HandlerThread handlerThread = this.f6769a;
            objM59constructorimpl2 = n8.r.m59constructorimpl(handlerThread != null ? Boolean.valueOf(handlerThread.quit()) : null);
        } catch (Throwable th2) {
            r.a aVar3 = n8.r.Companion;
            objM59constructorimpl2 = n8.r.m59constructorimpl(s.a(th2));
        }
        Throwable thM62exceptionOrNullimpl2 = n8.r.m62exceptionOrNullimpl(objM59constructorimpl2);
        if (thM62exceptionOrNullimpl2 != null) {
            c0.f7098a.e("TranslateQueueManager", "destroyOnViewModel " + thM62exceptionOrNullimpl2.getMessage());
        }
        this.f6770b = null;
        this.f6769a = null;
    }

    public final void g(o2.a translateResult) {
        kotlin.jvm.internal.r.e(translateResult, "translateResult");
        if (this.f6772d) {
            c0.f7098a.d("TranslateQueueManager", "dispose onDestroy reject ");
            return;
        }
        if (this.f6773e == null) {
            c0.f7098a.d("TranslateQueueManager", "dispose resultCallBack=null reject ");
            return;
        }
        c0.f7098a.d("TranslateQueueManager", "dispose id:" + translateResult.d());
        this.f6771c.remove(Integer.valueOf((int) translateResult.d()));
        Handler handler = this.f6770b;
        if (handler != null) {
            handler.removeMessages((int) translateResult.d());
        }
    }

    public final void h() {
        Object objM59constructorimpl;
        c0.f7098a.d("TranslateQueueManager", "disposeAll");
        this.f6771c.clear();
        try {
            r.a aVar = n8.r.Companion;
            Handler handler = this.f6770b;
            h0 h0Var = null;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
                h0Var = h0.INSTANCE;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("TranslateQueueManager", "disposeAll " + thM62exceptionOrNullimpl.getMessage());
        }
    }

    public final void i(o2.a translateResult) {
        Message messageObtainMessage;
        Handler handler;
        kotlin.jvm.internal.r.e(translateResult, "translateResult");
        if (this.f6772d) {
            c0.f7098a.d("TranslateQueueManager", "executeTranslate onDestroy reject ");
            return;
        }
        if (this.f6773e == null) {
            c0.f7098a.d("TranslateQueueManager", "executeTranslate resultCallBack=null reject ");
            return;
        }
        if (this.f6769a == null) {
            d();
        }
        if (this.f6771c.containsKey(Integer.valueOf((int) translateResult.d()))) {
            c0.f7098a.d("TranslateQueueManager", "executeTranslate id exist reject id:" + translateResult.d());
            return;
        }
        c0.f7098a.d("TranslateQueueManager", "executeTranslate id:" + translateResult.d());
        this.f6771c.put(Integer.valueOf((int) translateResult.d()), translateResult);
        Handler handler2 = this.f6770b;
        if (handler2 == null || (messageObtainMessage = handler2.obtainMessage((int) translateResult.d())) == null || (handler = this.f6770b) == null) {
            return;
        }
        handler.sendMessageDelayed(messageObtainMessage, 8000L);
    }

    public final void j(p callBack) {
        kotlin.jvm.internal.r.e(callBack, "callBack");
        this.f6773e = callBack;
    }
}
