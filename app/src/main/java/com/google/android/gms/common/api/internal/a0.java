package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes.dex */
final class a0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ConnectionResult f7602a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ b0 f7603b;

    a0(b0 b0Var, ConnectionResult connectionResult) {
        this.f7603b = b0Var;
        this.f7602a = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        b0 b0Var = this.f7603b;
        x xVar = (x) b0Var.f7613f.f7633j.get(b0Var.f7609b);
        if (xVar == null) {
            return;
        }
        if (!this.f7602a.H0()) {
            xVar.H(this.f7602a, null);
            return;
        }
        this.f7603b.f7612e = true;
        if (this.f7603b.f7608a.n()) {
            this.f7603b.i();
            return;
        }
        try {
            b0 b0Var2 = this.f7603b;
            b0Var2.f7608a.c(null, b0Var2.f7608a.b());
        } catch (SecurityException e10) {
            Log.e("GoogleApiManager", "Failed to get service from broker. ", e10);
            this.f7603b.f7608a.d("Failed to get service from broker.");
            xVar.H(new ConnectionResult(10), null);
        }
    }
}
