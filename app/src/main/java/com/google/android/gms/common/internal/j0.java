package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.zzo;
import com.google.android.gms.common.zzq;
import com.google.android.gms.common.zzs;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class j0 extends com.google.android.gms.internal.common.a implements zzag {
    j0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override // com.google.android.gms.common.internal.zzag
    public final zzq zze(zzo zzoVar) {
        Parcel parcelD = d();
        com.google.android.gms.internal.common.c.c(parcelD, zzoVar);
        Parcel parcelA = a(6, parcelD);
        zzq zzqVar = (zzq) com.google.android.gms.internal.common.c.a(parcelA, zzq.CREATOR);
        parcelA.recycle();
        return zzqVar;
    }

    @Override // com.google.android.gms.common.internal.zzag
    public final zzq zzf(zzo zzoVar) {
        Parcel parcelD = d();
        com.google.android.gms.internal.common.c.c(parcelD, zzoVar);
        Parcel parcelA = a(8, parcelD);
        zzq zzqVar = (zzq) com.google.android.gms.internal.common.c.a(parcelA, zzq.CREATOR);
        parcelA.recycle();
        return zzqVar;
    }

    @Override // com.google.android.gms.common.internal.zzag
    public final boolean zzg() {
        Parcel parcelA = a(9, d());
        boolean zF = com.google.android.gms.internal.common.c.f(parcelA);
        parcelA.recycle();
        return zF;
    }

    @Override // com.google.android.gms.common.internal.zzag
    public final boolean zzh(zzs zzsVar, IObjectWrapper iObjectWrapper) {
        Parcel parcelD = d();
        com.google.android.gms.internal.common.c.c(parcelD, zzsVar);
        com.google.android.gms.internal.common.c.e(parcelD, iObjectWrapper);
        Parcel parcelA = a(5, parcelD);
        boolean zF = com.google.android.gms.internal.common.c.f(parcelA);
        parcelA.recycle();
        return zF;
    }

    @Override // com.google.android.gms.common.internal.zzag
    public final boolean zzi() {
        Parcel parcelA = a(7, d());
        boolean zF = com.google.android.gms.internal.common.c.f(parcelA);
        parcelA.recycle();
        return zF;
    }
}
