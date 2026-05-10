package com.google.android.gms.common.api.internal;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
final class x0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ LifecycleCallback f7713a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f7714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzb f7715c;

    x0(zzb zzbVar, LifecycleCallback lifecycleCallback, String str) {
        this.f7715c = zzbVar;
        this.f7713a = lifecycleCallback;
        this.f7714b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bundle bundle;
        zzb zzbVar = this.f7715c;
        if (zzbVar.f7729b > 0) {
            LifecycleCallback lifecycleCallback = this.f7713a;
            if (zzbVar.f7730c != null) {
                bundle = zzbVar.f7730c.getBundle(this.f7714b);
            } else {
                bundle = null;
            }
            lifecycleCallback.f(bundle);
        }
        if (this.f7715c.f7729b >= 2) {
            this.f7713a.j();
        }
        if (this.f7715c.f7729b >= 3) {
            this.f7713a.h();
        }
        if (this.f7715c.f7729b >= 4) {
            this.f7713a.k();
        }
        if (this.f7715c.f7729b >= 5) {
            this.f7713a.g();
        }
    }
}
