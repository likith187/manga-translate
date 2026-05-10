package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes.dex */
abstract class g0 extends p0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f7883d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Bundle f7884e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ d f7885f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected g0(d dVar, int i10, Bundle bundle) {
        super(dVar, Boolean.TRUE);
        this.f7885f = dVar;
        this.f7883d = i10;
        this.f7884e = bundle;
    }

    @Override // com.google.android.gms.common.internal.p0
    protected final /* bridge */ /* synthetic */ void a(Object obj) {
        if (this.f7883d != 0) {
            this.f7885f.f0(1, null);
            Bundle bundle = this.f7884e;
            f(new ConnectionResult(this.f7883d, bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null));
        } else {
            if (g()) {
                return;
            }
            this.f7885f.f0(1, null);
            f(new ConnectionResult(8, null));
        }
    }

    @Override // com.google.android.gms.common.internal.p0
    protected final void b() {
    }

    protected abstract void f(ConnectionResult connectionResult);

    protected abstract boolean g();
}
