package com.coloros.translate.engine;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface IRegisterListener extends IInterface {
    public static final String DESCRIPTOR = "com.coloros.translate.engine.IRegisterListener";

    public static abstract class Stub extends Binder implements IRegisterListener {
        static final int TRANSACTION_callback = 1;

        private static class a implements IRegisterListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f4824a;

            a(IBinder iBinder) {
                this.f4824a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4824a;
            }

            @Override // com.coloros.translate.engine.IRegisterListener
            public void callback(int i10, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRegisterListener.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeString(str);
                    this.f4824a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IRegisterListener.DESCRIPTOR);
        }

        public static IRegisterListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IRegisterListener.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IRegisterListener)) ? new a(iBinder) : (IRegisterListener) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(IRegisterListener.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(IRegisterListener.DESCRIPTOR);
                return true;
            }
            if (i10 != 1) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            callback(parcel.readInt(), parcel.readString());
            parcel2.writeNoException();
            return true;
        }
    }

    void callback(int i10, String str) throws RemoteException;
}
