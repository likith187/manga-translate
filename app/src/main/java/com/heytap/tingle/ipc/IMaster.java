package com.heytap.tingle.ipc;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface IMaster extends IInterface {
    public static final String DESCRIPTOR = "com.heytap.tingle.ipc.IMaster";

    public static abstract class Stub extends Binder implements IMaster {
        static final int TRANSACTION_getUid = 4;

        private static class a implements IMaster {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static IMaster f10824b;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f10825a;

            a(IBinder iBinder) {
                this.f10825a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f10825a;
            }

            @Override // com.heytap.tingle.ipc.IMaster
            public int getUid() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IMaster.DESCRIPTOR);
                    if (!this.f10825a.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getUid();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IMaster.DESCRIPTOR);
        }

        public static IMaster asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IMaster.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMaster)) ? new a(iBinder) : (IMaster) iInterfaceQueryLocalInterface;
        }

        public static IMaster getDefaultImpl() {
            return a.f10824b;
        }

        public static boolean setDefaultImpl(IMaster iMaster) {
            if (a.f10824b != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iMaster == null) {
                return false;
            }
            a.f10824b = iMaster;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1598968902) {
                parcel2.writeString(IMaster.DESCRIPTOR);
                return true;
            }
            if (i10 != 4) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel.enforceInterface(IMaster.DESCRIPTOR);
            int uid = getUid();
            parcel2.writeNoException();
            parcel2.writeInt(uid);
            return true;
        }
    }

    int getUid() throws RemoteException;
}
