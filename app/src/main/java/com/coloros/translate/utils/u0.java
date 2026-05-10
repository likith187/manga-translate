package com.coloros.translate.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.LinkedHashMap;
import java.util.Map;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class u0 {
    public static final u0 INSTANCE = new u0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f7152a = new LinkedHashMap();

    private u0() {
    }

    public static final void a(String threadName, boolean z10) {
        kotlin.jvm.internal.r.e(threadName, "threadName");
        Map map = f7152a;
        if (map.get(threadName) == null) {
            map.put(threadName, new s0(threadName, z10));
        }
    }

    public static /* synthetic */ void b(String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        a(str, z10);
    }

    public static final Looper c(String threadName) {
        kotlin.jvm.internal.r.e(threadName, "threadName");
        b(threadName, false, 2, null);
        Object obj = f7152a.get(threadName);
        kotlin.jvm.internal.r.b(obj);
        HandlerThread handlerThreadD = ((s0) obj).d();
        kotlin.jvm.internal.r.b(handlerThreadD);
        Looper looper = handlerThreadD.getLooper();
        kotlin.jvm.internal.r.d(looper, "getLooper(...)");
        return looper;
    }

    public static final void d(String threadName, Runnable runnable) {
        Handler handlerC;
        kotlin.jvm.internal.r.e(threadName, "threadName");
        kotlin.jvm.internal.r.e(runnable, "runnable");
        b(threadName, false, 2, null);
        s0 s0Var = (s0) f7152a.get(threadName);
        if (s0Var == null || (handlerC = s0Var.c()) == null) {
            return;
        }
        handlerC.post(runnable);
    }

    public static final void e(String threadName, Runnable runnable, long j10) {
        Handler handlerC;
        Handler handlerC2;
        Handler handlerC3;
        kotlin.jvm.internal.r.e(threadName, "threadName");
        kotlin.jvm.internal.r.e(runnable, "runnable");
        b(threadName, false, 2, null);
        Map map = f7152a;
        s0 s0Var = (s0) map.get(threadName);
        if (s0Var != null && (handlerC3 = s0Var.c()) != null) {
            handlerC3.post(runnable);
        }
        s0 s0Var2 = (s0) map.get(threadName);
        if (s0Var2 != null && (handlerC2 = s0Var2.c()) != null) {
            handlerC2.removeCallbacks(runnable);
        }
        s0 s0Var3 = (s0) map.get(threadName);
        if (s0Var3 == null || (handlerC = s0Var3.c()) == null) {
            return;
        }
        handlerC.postDelayed(runnable, j10);
    }

    public static final void f(String threadName, Runnable runnable) {
        Object objM59constructorimpl;
        n8.h0 h0Var;
        Handler handlerC;
        kotlin.jvm.internal.r.e(threadName, "threadName");
        kotlin.jvm.internal.r.e(runnable, "runnable");
        try {
            r.a aVar = n8.r.Companion;
            s0 s0Var = (s0) f7152a.get(threadName);
            if (s0Var == null || (handlerC = s0Var.c()) == null) {
                h0Var = null;
            } else {
                handlerC.removeCallbacks(runnable);
                h0Var = n8.h0.INSTANCE;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.q("ThreadPoolUtil", "removeCallbacks, error: " + thM62exceptionOrNullimpl);
        }
    }
}
