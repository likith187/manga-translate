package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class q0 extends zzac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f7908a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f7909b;

    public q0(d dVar, int i10) {
        this.f7908a = dVar;
        this.f7909b = i10;
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void onPostInitComplete(int i10, IBinder iBinder, Bundle bundle) {
        k.h(this.f7908a, "onPostInitComplete can be called only once per call to getRemoteService");
        this.f7908a.L(i10, iBinder, bundle, this.f7909b);
        this.f7908a = null;
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void zzb(int i10, Bundle bundle) {
        Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void zzc(int i10, IBinder iBinder, zzk zzkVar) {
        d dVar = this.f7908a;
        k.h(dVar, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
        k.g(zzkVar);
        d.Z(dVar, zzkVar);
        onPostInitComplete(i10, iBinder, zzkVar.f7951a);
    }
}
