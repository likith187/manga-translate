package com.oplus.epona;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface ITransferCallback extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.epona.ITransferCallback";

    public static abstract class Stub extends Binder implements ITransferCallback {
        static final int TRANSACTION_onReceive = 1;

        private static class a implements ITransferCallback {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static ITransferCallback f11177b;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f11178a;

            a(IBinder iBinder) {
                this.f11178a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f11178a;
            }

            @Override // com.oplus.epona.ITransferCallback
            public void onReceive(Response response) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITransferCallback.DESCRIPTOR);
                    if (response != null) {
                        parcelObtain.writeInt(1);
                        response.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.f11178a.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    } else {
                        Stub.getDefaultImpl().onReceive(response);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }
        }

        public Stub() {
            attachInterface(this, ITransferCallback.DESCRIPTOR);
        }

        public static ITransferCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(ITransferCallback.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITransferCallback)) ? new a(iBinder) : (ITransferCallback) iInterfaceQueryLocalInterface;
        }

        public static ITransferCallback getDefaultImpl() {
            return a.f11177b;
        }

        public static boolean setDefaultImpl(ITransferCallback iTransferCallback) {
            if (a.f11177b != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iTransferCallback == null) {
                return false;
            }
            a.f11177b = iTransferCallback;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1598968902) {
                parcel2.writeString(ITransferCallback.DESCRIPTOR);
                return true;
            }
            if (i10 != 1) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel.enforceInterface(ITransferCallback.DESCRIPTOR);
            onReceive(parcel.readInt() != 0 ? Response.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }
    }

    void onReceive(Response response) throws RemoteException;
}
