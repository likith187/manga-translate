package com.google.android.gms.common.api.internal;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
final class y0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ LifecycleCallback f7716a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f7717b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ z0 f7718c;

    y0(z0 z0Var, LifecycleCallback lifecycleCallback, String str) {
        this.f7718c = z0Var;
        this.f7716a = lifecycleCallback;
        this.f7717b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bundle bundle;
        z0 z0Var = this.f7718c;
        if (z0Var.f7723b > 0) {
            LifecycleCallback lifecycleCallback = this.f7716a;
            if (z0Var.f7724c != null) {
                bundle = z0Var.f7724c.getBundle(this.f7717b);
            } else {
                bundle = null;
            }
            lifecycleCallback.f(bundle);
        }
        if (this.f7718c.f7723b >= 2) {
            this.f7716a.j();
        }
        if (this.f7718c.f7723b >= 3) {
            this.f7716a.h();
        }
        if (this.f7718c.f7723b >= 4) {
            this.f7716a.k();
        }
        if (this.f7718c.f7723b >= 5) {
            this.f7716a.g();
        }
    }
}
