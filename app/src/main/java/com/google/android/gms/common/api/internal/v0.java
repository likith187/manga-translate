package com.google.android.gms.common.api.internal;

import android.app.Dialog;
import android.app.PendingIntent;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiActivity;

/* JADX INFO: loaded from: classes.dex */
final class v0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final t0 f7693a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ w0 f7694b;

    v0(w0 w0Var, t0 t0Var) {
        this.f7694b = w0Var;
        this.f7693a = t0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f7694b.f7696b) {
            ConnectionResult connectionResultB = this.f7693a.b();
            if (connectionResultB.G0()) {
                w0 w0Var = this.f7694b;
                w0Var.f7601a.startActivityForResult(GoogleApiActivity.a(w0Var.b(), (PendingIntent) com.google.android.gms.common.internal.k.g(connectionResultB.F0()), this.f7693a.a(), false), 1);
                return;
            }
            w0 w0Var2 = this.f7694b;
            if (w0Var2.f7699h.a(w0Var2.b(), connectionResultB.D0(), null) != null) {
                w0 w0Var3 = this.f7694b;
                w0Var3.f7699h.u(w0Var3.b(), w0Var3.f7601a, connectionResultB.D0(), 2, this.f7694b);
                return;
            }
            if (connectionResultB.D0() != 18) {
                this.f7694b.l(connectionResultB, this.f7693a.a());
                return;
            }
            w0 w0Var4 = this.f7694b;
            Dialog dialogP = w0Var4.f7699h.p(w0Var4.b(), w0Var4);
            w0 w0Var5 = this.f7694b;
            w0Var5.f7699h.q(w0Var5.b().getApplicationContext(), new u0(this, dialogP));
        }
    }
}
