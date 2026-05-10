package com.coloros.translate.engine;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface ITtsListener extends IInterface {
    public static final String DESCRIPTOR = "com.coloros.translate.engine.ITtsListener";

    public static abstract class Stub extends Binder implements ITtsListener {
        static final int TRANSACTION_onStart = 1;
        static final int TRANSACTION_onStatus = 4;
        static final int TRANSACTION_onStop = 2;
        static final int TRANSACTION_onTtsEndWord = 5;
        static final int TRANSACTION_onTtsResult = 3;

        private static class a implements ITtsListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f4834a;

            a(IBinder iBinder) {
                this.f4834a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4834a;
            }

            @Override // com.coloros.translate.engine.ITtsListener
            public void onStart() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITtsListener.DESCRIPTOR);
                    this.f4834a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITtsListener
            public void onStatus(int i10, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITtsListener.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeString(str);
                    this.f4834a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITtsListener
            public void onStop() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITtsListener.DESCRIPTOR);
                    this.f4834a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITtsListener
            public void onTtsEndWord() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITtsListener.DESCRIPTOR);
                    this.f4834a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITtsListener
            public void onTtsResult(byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITtsListener.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    this.f4834a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, ITtsListener.DESCRIPTOR);
        }

        public static ITtsListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(ITtsListener.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITtsListener)) ? new a(iBinder) : (ITtsListener) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(ITtsListener.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(ITtsListener.DESCRIPTOR);
                return true;
            }
            if (i10 == 1) {
                onStart();
                parcel2.writeNoException();
            } else if (i10 == 2) {
                onStop();
                parcel2.writeNoException();
            } else if (i10 == 3) {
                onTtsResult(parcel.createByteArray());
                parcel2.writeNoException();
            } else if (i10 == 4) {
                onStatus(parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
            } else {
                if (i10 != 5) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                onTtsEndWord();
                parcel2.writeNoException();
            }
            return true;
        }
    }

    void onStart() throws RemoteException;

    void onStatus(int i10, String str) throws RemoteException;

    void onStop() throws RemoteException;

    void onTtsEndWord() throws RemoteException;

    void onTtsResult(byte[] bArr) throws RemoteException;
}
