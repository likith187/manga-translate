package com.coloros.translate.engine;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface ITranServiceBinder extends IInterface {
    public static final String DESCRIPTOR = "com.coloros.translate.engine.ITranServiceBinder";

    public static abstract class Stub extends Binder implements ITranServiceBinder {
        static final int TRANSACTION_isDownloadOfflinePackage = 1;

        private static class a implements ITranServiceBinder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f4828a;

            a(IBinder iBinder) {
                this.f4828a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4828a;
            }

            @Override // com.coloros.translate.engine.ITranServiceBinder
            public boolean isDownloadOfflinePackage() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranServiceBinder.DESCRIPTOR);
                    this.f4828a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, ITranServiceBinder.DESCRIPTOR);
        }

        public static ITranServiceBinder asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(ITranServiceBinder.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITranServiceBinder)) ? new a(iBinder) : (ITranServiceBinder) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(ITranServiceBinder.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(ITranServiceBinder.DESCRIPTOR);
                return true;
            }
            if (i10 != 1) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            boolean zIsDownloadOfflinePackage = isDownloadOfflinePackage();
            parcel2.writeNoException();
            parcel2.writeInt(zIsDownloadOfflinePackage ? 1 : 0);
            return true;
        }
    }

    boolean isDownloadOfflinePackage() throws RemoteException;
}
