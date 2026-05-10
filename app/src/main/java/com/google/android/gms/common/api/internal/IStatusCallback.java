package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
public interface IStatusCallback extends IInterface {

    public static abstract class Stub extends t3.b implements IStatusCallback {
        public Stub() {
            super("com.google.android.gms.common.api.internal.IStatusCallback");
        }

        public static IStatusCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.api.internal.IStatusCallback");
            return iInterfaceQueryLocalInterface instanceof IStatusCallback ? (IStatusCallback) iInterfaceQueryLocalInterface : new e0(iBinder);
        }

        @Override // t3.b
        protected final boolean zaa(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 != 1) {
                return false;
            }
            Status status = (Status) t3.c.a(parcel, Status.CREATOR);
            t3.c.b(parcel);
            onResult(status);
            return true;
        }
    }

    void onResult(Status status) throws RemoteException;
}
