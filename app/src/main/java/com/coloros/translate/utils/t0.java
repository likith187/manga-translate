package com.coloros.translate.utils;

import android.os.Handler;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class t0 {
    public static final t0 INSTANCE = new t0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f7149a = new LinkedHashMap();

    private t0() {
    }

    public static final s0 a(String threadName, boolean z10) {
        kotlin.jvm.internal.r.e(threadName, "threadName");
        s0 s0Var = new s0(threadName, z10);
        f7149a.put(s0Var.e(), s0Var);
        return s0Var;
    }

    public static /* synthetic */ s0 b(String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return a(str, z10);
    }

    public static final void c(String threadName, Runnable runnable) {
        kotlin.jvm.internal.r.e(threadName, "threadName");
        kotlin.jvm.internal.r.e(runnable, "runnable");
        d(threadName, false, runnable, 0L);
    }

    private static final void d(String str, boolean z10, Runnable runnable, long j10) {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            s0 s0Var = (s0) f7149a.get(str);
            Handler handlerC = s0Var != null ? s0Var.c() : null;
            if (handlerC == null) {
                c0.f7098a.q("ThreadPoolUtil", "post but handler is null, " + str);
            } else {
                if (z10) {
                    handlerC.removeCallbacksAndMessages(null);
                }
                handlerC.postDelayed(runnable, j10);
            }
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.q("ThreadPoolUtil", "execute, error: " + thM62exceptionOrNullimpl);
        }
    }

    public static final void e(Runnable runnable) {
        kotlin.jvm.internal.r.e(runnable, "runnable");
        c("asr_callback", runnable);
    }

    public static final void f() {
        b("asr_callback", false, 2, null);
        a("asr_request", false);
    }

    public static final void g() {
        Object objM59constructorimpl;
        Object objM59constructorimpl2;
        try {
            r.a aVar = n8.r.Companion;
            Iterator it = f7149a.values().iterator();
            Object next = null;
            while (it.hasNext()) {
                try {
                    r.a aVar2 = n8.r.Companion;
                    next = it.next();
                    s0 s0Var = (s0) next;
                    if (s0Var != null && s0Var.b()) {
                        s0 s0Var2 = (s0) next;
                        if (s0Var2 != null) {
                            s0Var2.f();
                        }
                        it.remove();
                    }
                    objM59constructorimpl2 = n8.r.m59constructorimpl(n8.h0.INSTANCE);
                } catch (Throwable th) {
                    r.a aVar3 = n8.r.Companion;
                    objM59constructorimpl2 = n8.r.m59constructorimpl(n8.s.a(th));
                }
                Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl2);
                if (thM62exceptionOrNullimpl != null) {
                    s0 s0Var3 = (s0) next;
                    c0.f7098a.q("ThreadPoolUtil", "removeAndStopThreadInfo, thread " + (s0Var3 != null ? s0Var3.e() : null) + " stop error: " + thM62exceptionOrNullimpl);
                }
            }
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th2) {
            r.a aVar4 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th2));
        }
        Throwable thM62exceptionOrNullimpl2 = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl2 != null) {
            c0.f7098a.q("ThreadPoolUtil", "removeAndStopThreadInfo, error: " + thM62exceptionOrNullimpl2);
        }
    }
}
