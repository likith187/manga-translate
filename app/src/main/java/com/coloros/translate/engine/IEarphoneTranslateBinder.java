package com.coloros.translate.engine;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.coloros.translate.engine.IEarBinderCallback;

/* JADX INFO: loaded from: classes.dex */
public interface IEarphoneTranslateBinder extends IInterface {
    public static final String DESCRIPTOR = "com.coloros.translate.engine.IEarphoneTranslateBinder";

    public static abstract class Stub extends Binder implements IEarphoneTranslateBinder {
        static final int TRANSACTION_changeMicState = 2;
        static final int TRANSACTION_getApiVersion = 1;
        static final int TRANSACTION_registerCallBack = 3;

        private static class a implements IEarphoneTranslateBinder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f4821a;

            a(IBinder iBinder) {
                this.f4821a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4821a;
            }

            @Override // com.coloros.translate.engine.IEarphoneTranslateBinder
            public Bundle changeMicState(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEarphoneTranslateBinder.DESCRIPTOR);
                    a.d(parcelObtain, bundle, 0);
                    this.f4821a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (Bundle) a.c(parcelObtain2, Bundle.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IEarphoneTranslateBinder
            public int getApiVersion() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEarphoneTranslateBinder.DESCRIPTOR);
                    this.f4821a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IEarphoneTranslateBinder
            public void registerCallBack(IEarBinderCallback iEarBinderCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEarphoneTranslateBinder.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iEarBinderCallback);
                    this.f4821a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IEarphoneTranslateBinder.DESCRIPTOR);
        }

        public static IEarphoneTranslateBinder asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IEarphoneTranslateBinder.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IEarphoneTranslateBinder)) ? new a(iBinder) : (IEarphoneTranslateBinder) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(IEarphoneTranslateBinder.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(IEarphoneTranslateBinder.DESCRIPTOR);
                return true;
            }
            if (i10 == 1) {
                int apiVersion = getApiVersion();
                parcel2.writeNoException();
                parcel2.writeInt(apiVersion);
            } else if (i10 == 2) {
                Bundle bundleChangeMicState = changeMicState((Bundle) a.c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                a.d(parcel2, bundleChangeMicState, 1);
            } else {
                if (i10 != 3) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                registerCallBack(IEarBinderCallback.Stub.asInterface(parcel.readStrongBinder()));
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

    Bundle changeMicState(Bundle bundle) throws RemoteException;

    int getApiVersion() throws RemoteException;

    void registerCallBack(IEarBinderCallback iEarBinderCallback) throws RemoteException;
}
