package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.StrictMode;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class a1 implements ServiceConnection, e1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f7816a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f7817b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f7818c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private IBinder f7819d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final z0 f7820e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ComponentName f7821f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final /* synthetic */ d1 f7822g;

    public a1(d1 d1Var, z0 z0Var) {
        this.f7822g = d1Var;
        this.f7820e = z0Var;
    }

    public final int a() {
        return this.f7817b;
    }

    public final ComponentName b() {
        return this.f7821f;
    }

    public final IBinder c() {
        return this.f7819d;
    }

    public final void d(ServiceConnection serviceConnection, ServiceConnection serviceConnection2, String str) {
        this.f7816a.put(serviceConnection, serviceConnection2);
    }

    public final void e(String str, Executor executor) {
        this.f7817b = 3;
        StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
        if (r3.j.i()) {
            StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder(vmPolicy).permitUnsafeIntentLaunch().build());
        }
        try {
            d1 d1Var = this.f7822g;
            boolean zC = d1Var.f7855j.c(d1Var.f7852g, str, this.f7820e.b(d1Var.f7852g), this, 4225, executor);
            this.f7818c = zC;
            if (zC) {
                this.f7822g.f7853h.sendMessageDelayed(this.f7822g.f7853h.obtainMessage(1, this.f7820e), this.f7822g.f7857l);
            } else {
                this.f7817b = 2;
                try {
                    d1 d1Var2 = this.f7822g;
                    d1Var2.f7855j.b(d1Var2.f7852g, this);
                } catch (IllegalArgumentException unused) {
                }
            }
            StrictMode.setVmPolicy(vmPolicy);
        } catch (Throwable th) {
            StrictMode.setVmPolicy(vmPolicy);
            throw th;
        }
    }

    public final void f(ServiceConnection serviceConnection, String str) {
        this.f7816a.remove(serviceConnection);
    }

    public final void g(String str) {
        this.f7822g.f7853h.removeMessages(1, this.f7820e);
        d1 d1Var = this.f7822g;
        d1Var.f7855j.b(d1Var.f7852g, this);
        this.f7818c = false;
        this.f7817b = 2;
    }

    public final boolean h(ServiceConnection serviceConnection) {
        return this.f7816a.containsKey(serviceConnection);
    }

    public final boolean i() {
        return this.f7816a.isEmpty();
    }

    public final boolean j() {
        return this.f7818c;
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        onServiceDisconnected(componentName);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.f7822g.f7851f) {
            try {
                this.f7822g.f7853h.removeMessages(1, this.f7820e);
                this.f7819d = iBinder;
                this.f7821f = componentName;
                Iterator it = this.f7816a.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
                }
                this.f7817b = 1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f7822g.f7851f) {
            try {
                this.f7822g.f7853h.removeMessages(1, this.f7820e);
                this.f7819d = null;
                this.f7821f = componentName;
                Iterator it = this.f7816a.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
                }
                this.f7817b = 2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
