package com.google.android.gms.common.api.internal;

import com.google.android.gms.signin.internal.zak;

/* JADX INFO: loaded from: classes.dex */
final class k0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zak f7653a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ m0 f7654b;

    k0(m0 m0Var, zak zakVar) {
        this.f7654b = m0Var;
        this.f7653a = zakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        m0.e(this.f7654b, this.f7653a);
    }
}
