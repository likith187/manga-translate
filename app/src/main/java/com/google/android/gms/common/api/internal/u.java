package com.google.android.gms.common.api.internal;

/* JADX INFO: loaded from: classes.dex */
final class u implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f7688a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ x f7689b;

    u(x xVar, int i10) {
        this.f7689b = xVar;
        this.f7688a = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7689b.l(this.f7688a);
    }
}
