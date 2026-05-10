package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public abstract class zad extends t3.b implements zae {
    public zad() {
        super("com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    @Override // t3.b
    protected final boolean zaa(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        switch (i10) {
            case 3:
                t3.c.b(parcel);
                break;
            case 4:
                t3.c.b(parcel);
                break;
            case 5:
            default:
                return false;
            case 6:
                t3.c.b(parcel);
                break;
            case 7:
                t3.c.b(parcel);
                break;
            case 8:
                zak zakVar = (zak) t3.c.a(parcel, zak.CREATOR);
                t3.c.b(parcel);
                zab(zakVar);
                break;
            case 9:
                t3.c.b(parcel);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
