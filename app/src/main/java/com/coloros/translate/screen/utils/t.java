package com.coloros.translate.screen.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public final class t {
    public static final t INSTANCE = new t();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final n8.j f5719a = n8.k.b(d.INSTANCE);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final n8.j f5720b = n8.k.b(c.INSTANCE);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final n8.j f5721c = n8.k.b(a.INSTANCE);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final n8.j f5722d = n8.k.b(b.INSTANCE);

    static final class a extends kotlin.jvm.internal.s implements w8.a {
        public static final a INSTANCE = new a();

        a() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Handler mo8invoke() {
            return new Handler(Looper.getMainLooper());
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.a {
        public static final b INSTANCE = new b();

        b() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Handler mo8invoke() {
            return new Handler(t.INSTANCE.d());
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.a {
        public static final c INSTANCE = new c();

        c() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Looper mo8invoke() {
            return t.INSTANCE.e().getLooper();
        }
    }

    static final class d extends kotlin.jvm.internal.s implements w8.a {
        public static final d INSTANCE = new d();

        d() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final HandlerThread mo8invoke() {
            HandlerThread handlerThread = new HandlerThread("screen_work_thread", 10);
            handlerThread.start();
            return handlerThread;
        }
    }

    private t() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HandlerThread e() {
        return (HandlerThread) f5719a.getValue();
    }

    public static final void f(Runnable runnable) {
        kotlin.jvm.internal.r.e(runnable, "runnable");
        INSTANCE.b().removeCallbacks(runnable);
    }

    public static final void g(Runnable runnable) {
        kotlin.jvm.internal.r.e(runnable, "runnable");
        INSTANCE.b().post(runnable);
    }

    public static final void h(Runnable runnable, long j10) {
        kotlin.jvm.internal.r.e(runnable, "runnable");
        INSTANCE.b().postDelayed(runnable, j10);
    }

    public static final void i(Runnable runnable) {
        kotlin.jvm.internal.r.e(runnable, "runnable");
        INSTANCE.c().post(runnable);
    }

    public final Handler b() {
        return (Handler) f5721c.getValue();
    }

    public final Handler c() {
        return (Handler) f5722d.getValue();
    }

    public final Looper d() {
        Object value = f5720b.getValue();
        kotlin.jvm.internal.r.d(value, "getValue(...)");
        return (Looper) value;
    }
}
