package com.google.android.gms.common.moduleinstall.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.moduleinstall.ModuleInstallStatusUpdate;
import t3.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class zag extends t3.b implements zah {
    public zag() {
        super("com.google.android.gms.common.moduleinstall.internal.IModuleInstallStatusListener");
    }

    @Override // t3.b
    protected final boolean zaa(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        ModuleInstallStatusUpdate moduleInstallStatusUpdate = (ModuleInstallStatusUpdate) c.a(parcel, ModuleInstallStatusUpdate.CREATOR);
        c.b(parcel);
        zab(moduleInstallStatusUpdate);
        return true;
    }
}
