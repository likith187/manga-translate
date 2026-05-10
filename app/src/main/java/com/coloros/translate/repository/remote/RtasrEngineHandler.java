package com.coloros.translate.repository.remote;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.coloros.translate.engine.IRtasrEngine;
import com.coloros.translate.engine.IRtasrListener;
import com.coloros.translate.engine.info.AsrParams;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.v0;
import com.coloros.translate.utils.z0;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.q;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class RtasrEngineHandler {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f5450f = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IRtasrEngine f5452b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private CountDownLatch f5453c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private q f5454d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f5451a = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private v0 f5455e = new v0("thread_blueToothMic");

    public static abstract class RtasrListener extends IRtasrListener.Stub {
        @Override // com.coloros.translate.engine.IRtasrListener
        public void onRecordTime(long j10) {
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onResultStatus(int i10, int i11, String str) {
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onStatus(int i10, String str) {
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onVoiceData(byte[] bArr) {
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void setRunningType(int i10) {
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
        final /* synthetic */ RtasrListener $rtasrListener;
        final /* synthetic */ String $tag;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(RtasrListener rtasrListener, String str) {
            super(0);
            this.$rtasrListener = rtasrListener;
            this.$tag = str;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            try {
                Object obj = RtasrEngineHandler.this.f5451a;
                RtasrEngineHandler rtasrEngineHandler = RtasrEngineHandler.this;
                synchronized (obj) {
                    try {
                        if (rtasrEngineHandler.f5453c == null) {
                            rtasrEngineHandler.f5453c = new CountDownLatch(1);
                        }
                        h0 h0Var = h0.INSTANCE;
                    } finally {
                    }
                }
                CountDownLatch countDownLatch = RtasrEngineHandler.this.f5453c;
                if (countDownLatch != null) {
                    countDownLatch.await(5L, TimeUnit.SECONDS);
                }
                if (RtasrEngineHandler.this.f5452b == null) {
                    c0.f7098a.e("RtasrEngineHandler", "registerRtasrListener mRtasrEngine == null");
                    return;
                }
                if (RtasrEngineHandler.this.f5454d != null) {
                    q qVar = RtasrEngineHandler.this.f5454d;
                    r.b(qVar);
                    if (qVar.getSecond() != this.$rtasrListener) {
                        c0.f7098a.i("RtasrEngineHandler", "registerRtasrListener reject");
                        return;
                    }
                }
                c0.f7098a.i("RtasrEngineHandler", "registerRtasrListener");
                IRtasrEngine iRtasrEngine = RtasrEngineHandler.this.f5452b;
                if (iRtasrEngine != null) {
                    iRtasrEngine.registerRtasrListener(this.$tag, this.$rtasrListener);
                }
                RtasrEngineHandler.this.f5454d = null;
            } catch (Exception e10) {
                c0.f7098a.e("RtasrEngineHandler", "registerRtasrListener e = " + e10);
            }
        }
    }

    static final class c extends s implements w8.a {
        final /* synthetic */ IRtasrEngine $rtasrEngine;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(IRtasrEngine iRtasrEngine) {
            super(0);
            this.$rtasrEngine = iRtasrEngine;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            Object obj = RtasrEngineHandler.this.f5451a;
            IRtasrEngine iRtasrEngine = this.$rtasrEngine;
            RtasrEngineHandler rtasrEngineHandler = RtasrEngineHandler.this;
            synchronized (obj) {
                try {
                    if (iRtasrEngine != null) {
                        if (rtasrEngineHandler.f5453c == null) {
                            rtasrEngineHandler.f5453c = new CountDownLatch(1);
                        }
                        CountDownLatch countDownLatch = rtasrEngineHandler.f5453c;
                        if (countDownLatch != null) {
                            countDownLatch.countDown();
                        }
                        if (rtasrEngineHandler.f5454d != null) {
                            q qVar = rtasrEngineHandler.f5454d;
                            r.b(qVar);
                            String str = (String) qVar.getFirst();
                            q qVar2 = rtasrEngineHandler.f5454d;
                            r.b(qVar2);
                            rtasrEngineHandler.l(str, (RtasrListener) qVar2.getSecond());
                        }
                    } else {
                        rtasrEngineHandler.f5453c = null;
                    }
                    h0 h0Var = h0.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(boolean z10, RtasrEngineHandler this$0) {
        Object objM59constructorimpl;
        h0 h0Var;
        r.e(this$0, "this$0");
        c0.f7098a.d("RtasrEngineHandler", "useBluetoothMic :" + z10);
        try {
            r.a aVar = n8.r.Companion;
            IRtasrEngine iRtasrEngine = this$0.f5452b;
            if (iRtasrEngine != null) {
                iRtasrEngine.useBluetoothMic(z10);
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("RtasrEngineHandler", "useBluetoothMic , error = " + thM62exceptionOrNullimpl);
        }
    }

    public void h() {
        Object objM59constructorimpl;
        h0 h0Var;
        c0.f7098a.i("RtasrEngineHandler", "destroy isAlive:" + j());
        try {
            r.a aVar = n8.r.Companion;
            IRtasrEngine iRtasrEngine = this.f5452b;
            if (iRtasrEngine != null) {
                iRtasrEngine.destroy();
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
            c0.f7098a.e("RtasrEngineHandler", "mRtasrEngine destroy error");
        }
    }

    public Bundle i(String method, String arg, Bundle extras) {
        kotlin.jvm.internal.r.e(method, "method");
        kotlin.jvm.internal.r.e(arg, "arg");
        kotlin.jvm.internal.r.e(extras, "extras");
        c0.f7098a.i("RtasrEngineHandler", "invokeMethod isAlive:" + j());
        IRtasrEngine iRtasrEngine = this.f5452b;
        if (iRtasrEngine != null) {
            return iRtasrEngine.invokeMethod(method, arg, extras);
        }
        return null;
    }

    public final boolean j() {
        IBinder iBinderAsBinder;
        c0.f7098a.i("RtasrEngineHandler", "isAlive " + this.f5452b);
        IRtasrEngine iRtasrEngine = this.f5452b;
        if (iRtasrEngine == null || (iBinderAsBinder = iRtasrEngine.asBinder()) == null) {
            return false;
        }
        return iBinderAsBinder.isBinderAlive();
    }

    public void k() {
        Object objM59constructorimpl;
        h0 h0Var;
        c0.f7098a.i("RtasrEngineHandler", "pauseRecord isAlive:" + j());
        try {
            r.a aVar = n8.r.Companion;
            IRtasrEngine iRtasrEngine = this.f5452b;
            if (iRtasrEngine != null) {
                iRtasrEngine.pauseRecord();
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("RtasrEngineHandler", "pauseRecord  error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    public void l(String tag, RtasrListener rtasrListener) {
        kotlin.jvm.internal.r.e(tag, "tag");
        kotlin.jvm.internal.r.e(rtasrListener, "rtasrListener");
        if (this.f5452b == null) {
            this.f5454d = new q(tag, rtasrListener);
        }
        c0.f7098a.i("RtasrEngineHandler", "registerRtasrListener, RtasrEngine = " + this.f5452b + ", tag = " + tag + " rtasrListener = " + rtasrListener);
        z0.d(0L, new b(rtasrListener, tag), 1, null);
    }

    public void m() throws RemoteException {
        c0.f7098a.i("RtasrEngineHandler", "resumeRecord isAlive:" + j());
        IRtasrEngine iRtasrEngine = this.f5452b;
        if (iRtasrEngine != null) {
            iRtasrEngine.resumeRecord();
        }
    }

    public final void n() throws RemoteException {
        c0.f7098a.i("RtasrEngineHandler", "saveAudioFile isAlive:" + j());
        IRtasrEngine iRtasrEngine = this.f5452b;
        if (iRtasrEngine != null) {
            Bundle bundle = new Bundle();
            bundle.putString("asr_param_share_audio_package_name", "com.coloros.translate");
            iRtasrEngine.saveAudioFile(bundle);
        }
    }

    public void o(AsrParams asrParams) {
        kotlin.jvm.internal.r.e(asrParams, "asrParams");
        c0.f7098a.i("RtasrEngineHandler", "setConfig");
        try {
            IRtasrEngine iRtasrEngine = this.f5452b;
            if (iRtasrEngine != null) {
                iRtasrEngine.setConfig(asrParams);
            }
        } catch (Exception e10) {
            c0.f7098a.e("RtasrEngineHandler", "setConfig e = " + e10);
        }
    }

    public void p(IRtasrEngine iRtasrEngine) {
        c0.f7098a.i("RtasrEngineHandler", "setRtasrEngine " + iRtasrEngine);
        this.f5452b = iRtasrEngine;
        z0.d(0L, new c(iRtasrEngine), 1, null);
    }

    public void q() throws RemoteException {
        c0.f7098a.i("RtasrEngineHandler", "startRecord isAlive:" + j());
        IRtasrEngine iRtasrEngine = this.f5452b;
        if (iRtasrEngine != null) {
            iRtasrEngine.startRecord();
        }
    }

    public void r() {
        Object objM59constructorimpl;
        h0 h0Var;
        c0.f7098a.i("RtasrEngineHandler", "stop isAlive:" + j());
        try {
            r.a aVar = n8.r.Companion;
            IRtasrEngine iRtasrEngine = this.f5452b;
            if (iRtasrEngine != null) {
                iRtasrEngine.stop();
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
            c0.f7098a.e("RtasrEngineHandler", "mRtasrEngine stop error");
        }
    }

    public void s() {
        Object objM59constructorimpl;
        h0 h0Var;
        try {
            r.a aVar = n8.r.Companion;
            IRtasrEngine iRtasrEngine = this.f5452b;
            if (iRtasrEngine != null) {
                iRtasrEngine.stopAudioFile();
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("RtasrEngineHandler", "stopAudioFile error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    public void t(String tag) {
        Object objM59constructorimpl;
        h0 h0Var;
        kotlin.jvm.internal.r.e(tag, "tag");
        c0.f7098a.i("RtasrEngineHandler", "unRegisterRtasrListener isAlive:" + j());
        try {
            r.a aVar = n8.r.Companion;
            IRtasrEngine iRtasrEngine = this.f5452b;
            if (iRtasrEngine != null) {
                iRtasrEngine.unRegisterRtasrListener(tag);
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("RtasrEngineHandler", "unRegisterRtasrListener error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    public void u(final boolean z10) {
        this.f5455e.c(new Runnable() { // from class: com.coloros.translate.repository.remote.b
            @Override // java.lang.Runnable
            public final void run() {
                RtasrEngineHandler.v(z10, this);
            }
        });
    }
}
