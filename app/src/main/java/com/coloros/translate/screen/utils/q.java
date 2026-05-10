package com.coloros.translate.screen.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class q {
    public static final q INSTANCE = new q();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Handler f5713a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ScheduledExecutorService f5714b = Executors.newScheduledThreadPool(Runtime.getRuntime().availableProcessors() + 1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ExecutorService f5715c = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final n8.j f5716d = n8.k.b(a.INSTANCE);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final n8.j f5717e = n8.k.b(b.INSTANCE);

    static final class a extends kotlin.jvm.internal.s implements w8.a {
        public static final a INSTANCE = new a();

        a() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final HandlerThread mo8invoke() {
            HandlerThread handlerThread = new HandlerThread("Translate_HandlerThread", 10);
            handlerThread.start();
            return handlerThread;
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
            return new Handler(q.INSTANCE.a().getLooper());
        }
    }

    private q() {
    }

    public final HandlerThread a() {
        return (HandlerThread) f5716d.getValue();
    }

    public final ExecutorService b() {
        return f5715c;
    }
}
