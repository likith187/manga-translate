package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes.dex */
public final class s0 extends g0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final IBinder f7912g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final /* synthetic */ d f7913h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s0(d dVar, int i10, IBinder iBinder, Bundle bundle) {
        super(dVar, i10, bundle);
        this.f7913h = dVar;
        this.f7912g = iBinder;
    }

    @Override // com.google.android.gms.common.internal.g0
    protected final void f(ConnectionResult connectionResult) {
        if (this.f7913h.f7845v != null) {
            this.f7913h.f7845v.b(connectionResult);
        }
        this.f7913h.J(connectionResult);
    }

    @Override // com.google.android.gms.common.internal.g0
    protected final boolean g() {
        try {
            IBinder iBinder = this.f7912g;
            k.g(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            if (!this.f7913h.C().equals(interfaceDescriptor)) {
                Log.w("GmsClient", "service descriptor mismatch: " + this.f7913h.C() + " vs. " + interfaceDescriptor);
                return false;
            }
            IInterface iInterfaceQ = this.f7913h.q(this.f7912g);
            if (iInterfaceQ == null || !(d.d0(this.f7913h, 2, 4, iInterfaceQ) || d.d0(this.f7913h, 3, 4, iInterfaceQ))) {
                return false;
            }
            this.f7913h.f7849z = null;
            d dVar = this.f7913h;
            Bundle bundleV = dVar.v();
            if (dVar.f7844u == null) {
                return true;
            }
            this.f7913h.f7844u.c(bundleV);
            return true;
        } catch (RemoteException unused) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }
}
