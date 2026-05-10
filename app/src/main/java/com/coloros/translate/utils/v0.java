package com.coloros.translate.utils;

import android.os.Handler;
import android.os.HandlerThread;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class v0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f7158d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7159a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HandlerThread f7160b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f7161c;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public v0(String threadName) {
        kotlin.jvm.internal.r.e(threadName, "threadName");
        this.f7159a = threadName;
    }

    private final synchronized void a() {
        if (this.f7160b != null) {
            return;
        }
        HandlerThread handlerThread = new HandlerThread(this.f7159a);
        handlerThread.start();
        this.f7160b = handlerThread;
        this.f7161c = new Handler(handlerThread.getLooper());
        c0.f7098a.d("SingleThread", "checkThread");
    }

    public static /* synthetic */ void e(v0 v0Var, Runnable runnable, long j10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = 0;
        }
        v0Var.d(runnable, j10);
    }

    public final void b() {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            Handler handler = this.f7161c;
            n8.h0 h0Var = null;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
                h0Var = n8.h0.INSTANCE;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("SingleThread", "clearQueue " + thM62exceptionOrNullimpl.getMessage());
        }
    }

    public final void c(Runnable runnable) {
        kotlin.jvm.internal.r.e(runnable, "runnable");
        a();
        Handler handler = this.f7161c;
        if (handler != null) {
            handler.post(runnable);
        }
    }

    public final void d(Runnable runnable, long j10) {
        kotlin.jvm.internal.r.e(runnable, "runnable");
        a();
        Handler handler = this.f7161c;
        if (handler != null) {
            handler.removeCallbacks(runnable);
        }
        Handler handler2 = this.f7161c;
        if (handler2 != null) {
            handler2.postDelayed(runnable, j10);
        }
    }

    public final void f() {
        Object objM59constructorimpl;
        Object objM59constructorimpl2;
        n8.h0 h0Var;
        try {
            r.a aVar = n8.r.Companion;
            Handler handler = this.f7161c;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
                h0Var = n8.h0.INSTANCE;
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
            c0.f7098a.e("SingleThread", "quitThread " + thM62exceptionOrNullimpl.getMessage());
        }
        try {
            HandlerThread handlerThread = this.f7160b;
            objM59constructorimpl2 = n8.r.m59constructorimpl(handlerThread != null ? Boolean.valueOf(handlerThread.quitSafely()) : null);
        } catch (Throwable th2) {
            r.a aVar3 = n8.r.Companion;
            objM59constructorimpl2 = n8.r.m59constructorimpl(n8.s.a(th2));
        }
        Throwable thM62exceptionOrNullimpl2 = n8.r.m62exceptionOrNullimpl(objM59constructorimpl2);
        if (thM62exceptionOrNullimpl2 != null) {
            c0.f7098a.e("SingleThread", "quitThread " + thM62exceptionOrNullimpl2.getMessage());
        }
        this.f7161c = null;
        this.f7160b = null;
        c0.f7098a.e("SingleThread", "quitThread");
    }

    public final void g(Runnable runnable) {
        kotlin.jvm.internal.r.e(runnable, "runnable");
        c0.f7098a.e("SingleThread", "removeCallBack");
        Handler handler = this.f7161c;
        if (handler != null) {
            handler.removeCallbacks(runnable);
        }
    }
}
