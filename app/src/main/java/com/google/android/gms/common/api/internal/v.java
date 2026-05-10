package com.google.android.gms.common.api.internal;

/* JADX INFO: loaded from: classes.dex */
final class v implements Runnable {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ w f7692a;

    v(w wVar) {
        this.f7692a = wVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        x xVar = this.f7692a.f7695a;
        xVar.f7701b.d(xVar.f7701b.getClass().getName().concat(" disconnecting because it was signed out."));
    }
}
