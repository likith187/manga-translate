package com.coloros.translate.engine;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface IRtasrResultListener extends IInterface {
    public static final String DESCRIPTOR = "com.coloros.translate.engine.IRtasrResultListener";

    public static abstract class Stub extends Binder implements IRtasrResultListener {
        static final int TRANSACTION_onResult = 2;
        static final int TRANSACTION_onStatus = 1;

        private static class a implements IRtasrResultListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f4827a;

            a(IBinder iBinder) {
                this.f4827a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4827a;
            }

            @Override // com.coloros.translate.engine.IRtasrResultListener
            public void onResult(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrResultListener.DESCRIPTOR);
                    a.d(parcelObtain, bundle, 0);
                    this.f4827a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrResultListener
            public void onStatus(int i10, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrResultListener.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeString(str);
                    this.f4827a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IRtasrResultListener.DESCRIPTOR);
        }

        public static IRtasrResultListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IRtasrResultListener.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IRtasrResultListener)) ? new a(iBinder) : (IRtasrResultListener) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(IRtasrResultListener.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(IRtasrResultListener.DESCRIPTOR);
                return true;
            }
            if (i10 == 1) {
                onStatus(parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
            } else {
                if (i10 != 2) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                onResult((Bundle) a.c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
            }
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

    void onResult(Bundle bundle) throws RemoteException;

    void onStatus(int i10, String str) throws RemoteException;
}
