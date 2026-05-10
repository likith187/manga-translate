package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes.dex */
public final class t0 extends g0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final /* synthetic */ d f7921g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t0(d dVar, int i10, Bundle bundle) {
        super(dVar, i10, null);
        this.f7921g = dVar;
    }

    @Override // com.google.android.gms.common.internal.g0
    protected final void f(ConnectionResult connectionResult) {
        if (this.f7921g.r() && d.e0(this.f7921g)) {
            d.a0(this.f7921g, 16);
        } else {
            this.f7921g.f7839p.a(connectionResult);
            this.f7921g.J(connectionResult);
        }
    }

    @Override // com.google.android.gms.common.internal.g0
    protected final boolean g() {
        this.f7921g.f7839p.a(ConnectionResult.f7548h);
        return true;
    }
}
