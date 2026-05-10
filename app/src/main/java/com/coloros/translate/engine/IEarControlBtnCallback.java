package com.coloros.translate.engine;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface IEarControlBtnCallback extends IInterface {
    public static final String DESCRIPTOR = "com.coloros.translate.engine.IEarControlBtnCallback";

    public static abstract class Stub extends Binder implements IEarControlBtnCallback {
        static final int TRANSACTION_callback = 1;

        private static class a implements IEarControlBtnCallback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f4820a;

            a(IBinder iBinder) {
                this.f4820a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4820a;
            }

            @Override // com.coloros.translate.engine.IEarControlBtnCallback
            public void callback(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEarControlBtnCallback.DESCRIPTOR);
                    a.d(parcelObtain, bundle, 0);
                    this.f4820a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IEarControlBtnCallback.DESCRIPTOR);
        }

        public static IEarControlBtnCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IEarControlBtnCallback.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IEarControlBtnCallback)) ? new a(iBinder) : (IEarControlBtnCallback) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(IEarControlBtnCallback.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(IEarControlBtnCallback.DESCRIPTOR);
                return true;
            }
            if (i10 != 1) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            callback((Bundle) a.c(parcel, Bundle.CREATOR));
            parcel2.writeNoException();
            return true;
        }
    }

    public static class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static Object c(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void d(Parcel parcel, Parcelable parcelable, int i10) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcelable.writeToParcel(parcel, i10);
            }
        }
    }

    void callback(Bundle bundle) throws RemoteException;
}
