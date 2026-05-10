package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class d1 extends g {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final HashMap f7851f = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Context f7852g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile Handler f7853h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final c1 f7854i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final q3.a f7855j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final long f7856k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final long f7857l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private volatile Executor f7858m;

    d1(Context context, Looper looper, Executor executor) {
        c1 c1Var = new c1(this, null);
        this.f7854i = c1Var;
        this.f7852g = context.getApplicationContext();
        this.f7853h = new com.google.android.gms.internal.common.e(looper, c1Var);
        this.f7855j = q3.a.a();
        this.f7856k = 5000L;
        this.f7857l = 300000L;
        this.f7858m = executor;
    }

    @Override // com.google.android.gms.common.internal.g
    protected final void c(z0 z0Var, ServiceConnection serviceConnection, String str) {
        k.h(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f7851f) {
            try {
                a1 a1Var = (a1) this.f7851f.get(z0Var);
                if (a1Var == null) {
                    throw new IllegalStateException("Nonexistent connection status for service config: " + z0Var.toString());
                }
                if (!a1Var.h(serviceConnection)) {
                    throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  config=" + z0Var.toString());
                }
                a1Var.f(serviceConnection, str);
                if (a1Var.i()) {
                    this.f7853h.sendMessageDelayed(this.f7853h.obtainMessage(0, z0Var), this.f7856k);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.g
    protected final boolean e(z0 z0Var, ServiceConnection serviceConnection, String str, Executor executor) {
        boolean zJ;
        k.h(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f7851f) {
            try {
                a1 a1Var = (a1) this.f7851f.get(z0Var);
                if (executor == null) {
                    executor = this.f7858m;
                }
                if (a1Var == null) {
                    a1Var = new a1(this, z0Var);
                    a1Var.d(serviceConnection, serviceConnection, str);
                    a1Var.e(str, executor);
                    this.f7851f.put(z0Var, a1Var);
                } else {
                    this.f7853h.removeMessages(0, z0Var);
                    if (a1Var.h(serviceConnection)) {
                        throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=" + z0Var.toString());
                    }
                    a1Var.d(serviceConnection, serviceConnection, str);
                    int iA = a1Var.a();
                    if (iA == 1) {
                        serviceConnection.onServiceConnected(a1Var.b(), a1Var.c());
                    } else if (iA == 2) {
                        a1Var.e(str, executor);
                    }
                }
                zJ = a1Var.j();
            } catch (Throwable th) {
                throw th;
            }
        }
        return zJ;
    }
}
