package com.coloros.translate.utils;

import android.os.Handler;
import android.os.HandlerThread;

/* JADX INFO: loaded from: classes.dex */
public final class s0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7144a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f7145b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile HandlerThread f7146c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile Handler f7147d;

    public s0(String threadName, boolean z10) {
        kotlin.jvm.internal.r.e(threadName, "threadName");
        this.f7144a = threadName;
        this.f7145b = z10;
        a();
    }

    private final void a() {
        if (this.f7147d == null) {
            HandlerThread handlerThread = new HandlerThread(this.f7144a);
            handlerThread.start();
            this.f7146c = handlerThread;
            HandlerThread handlerThread2 = this.f7146c;
            kotlin.jvm.internal.r.b(handlerThread2);
            this.f7147d = new Handler(handlerThread2.getLooper());
        }
    }

    public final boolean b() {
        return this.f7145b;
    }

    public final Handler c() {
        return this.f7147d;
    }

    public final HandlerThread d() {
        return this.f7146c;
    }

    public final String e() {
        return this.f7144a;
    }

    public final synchronized void f() {
        try {
            if (this.f7145b) {
                Handler handler = this.f7147d;
                if (handler != null) {
                    handler.removeCallbacksAndMessages(null);
                }
                HandlerThread handlerThread = this.f7146c;
                if (handlerThread != null) {
                    handlerThread.quitSafely();
                }
                this.f7146c = null;
                this.f7147d = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
