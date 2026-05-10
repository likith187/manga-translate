package com.google.android.gms.common.internal.service;

import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public abstract class zaj extends t3.b implements zak {
    public zaj() {
        super("com.google.android.gms.common.internal.service.ICommonCallbacks");
    }

    @Override // t3.b
    protected final boolean zaa(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        int i12 = parcel.readInt();
        t3.c.b(parcel);
        zab(i12);
        return true;
    }
}
