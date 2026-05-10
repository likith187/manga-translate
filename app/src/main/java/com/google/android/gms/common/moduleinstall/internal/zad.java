package com.google.android.gms.common.moduleinstall.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.moduleinstall.ModuleAvailabilityResponse;
import com.google.android.gms.common.moduleinstall.ModuleInstallIntentResponse;
import com.google.android.gms.common.moduleinstall.ModuleInstallResponse;
import t3.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class zad extends t3.b implements zae {
    public zad() {
        super("com.google.android.gms.common.moduleinstall.internal.IModuleInstallCallbacks");
    }

    @Override // t3.b
    protected final boolean zaa(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            Status status = (Status) c.a(parcel, Status.CREATOR);
            ModuleAvailabilityResponse moduleAvailabilityResponse = (ModuleAvailabilityResponse) c.a(parcel, ModuleAvailabilityResponse.CREATOR);
            c.b(parcel);
            zae(status, moduleAvailabilityResponse);
        } else if (i10 == 2) {
            Status status2 = (Status) c.a(parcel, Status.CREATOR);
            ModuleInstallResponse moduleInstallResponse = (ModuleInstallResponse) c.a(parcel, ModuleInstallResponse.CREATOR);
            c.b(parcel);
            zad(status2, moduleInstallResponse);
        } else if (i10 == 3) {
            Status status3 = (Status) c.a(parcel, Status.CREATOR);
            ModuleInstallIntentResponse moduleInstallIntentResponse = (ModuleInstallIntentResponse) c.a(parcel, ModuleInstallIntentResponse.CREATOR);
            c.b(parcel);
            zac(status3, moduleInstallIntentResponse);
        } else {
            if (i10 != 4) {
                return false;
            }
            Status status4 = (Status) c.a(parcel, Status.CREATOR);
            c.b(parcel);
            zab(status4);
        }
        return true;
    }
}
