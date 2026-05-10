package com.coloros.translate.engine;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface IEarBinderCallback extends IInterface {
    public static final String DESCRIPTOR = "com.coloros.translate.engine.IEarBinderCallback";

    public static abstract class Stub extends Binder implements IEarBinderCallback {
        static final int TRANSACTION_callback = 1;

        private static class a implements IEarBinderCallback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f4819a;

            a(IBinder iBinder) {
                this.f4819a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4819a;
            }

            @Override // com.coloros.translate.engine.IEarBinderCallback
            public void callback() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEarBinderCallback.DESCRIPTOR);
                    this.f4819a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IEarBinderCallback.DESCRIPTOR);
        }

        public static IEarBinderCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IEarBinderCallback.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IEarBinderCallback)) ? new a(iBinder) : (IEarBinderCallback) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(IEarBinderCallback.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(IEarBinderCallback.DESCRIPTOR);
                return true;
            }
            if (i10 != 1) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            callback();
            parcel2.writeNoException();
            return true;
        }
    }

    void callback() throws RemoteException;
}
