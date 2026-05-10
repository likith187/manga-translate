package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes.dex */
final class j0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ m0 f7652a;

    j0(m0 m0Var) {
        this.f7652a = m0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7652a.f7669g.c(new ConnectionResult(4));
    }
}
