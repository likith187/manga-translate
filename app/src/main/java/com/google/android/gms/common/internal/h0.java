package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class h0 extends com.google.android.gms.internal.common.a implements IGmsCallbacks {
    h0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void onPostInitComplete(int i10, IBinder iBinder, Bundle bundle) {
        Parcel parcelD = d();
        parcelD.writeInt(i10);
        parcelD.writeStrongBinder(iBinder);
        com.google.android.gms.internal.common.c.c(parcelD, bundle);
        b(1, parcelD);
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void zzb(int i10, Bundle bundle) {
        throw null;
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void zzc(int i10, IBinder iBinder, zzk zzkVar) {
        throw null;
    }
}
