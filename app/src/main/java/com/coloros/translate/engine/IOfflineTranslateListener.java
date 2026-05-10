package com.coloros.translate.engine;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.coloros.translate.engine.info.TranslateResult;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IOfflineTranslateListener extends IInterface {
    public static final String DESCRIPTOR = "com.coloros.translate.engine.IOfflineTranslateListener";

    public static abstract class Stub extends Binder implements IOfflineTranslateListener {
        static final int TRANSACTION_onOfflineError = 2;
        static final int TRANSACTION_onOfflineResult = 3;
        static final int TRANSACTION_onOfflineStart = 1;

        private static class a implements IOfflineTranslateListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f4823a;

            a(IBinder iBinder) {
                this.f4823a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4823a;
            }

            @Override // com.coloros.translate.engine.IOfflineTranslateListener
            public void onOfflineError(String str, int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IOfflineTranslateListener.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    this.f4823a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IOfflineTranslateListener
            public void onOfflineResult(List list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IOfflineTranslateListener.DESCRIPTOR);
                    a.b(parcelObtain, list, 0);
                    this.f4823a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IOfflineTranslateListener
            public void onOfflineStart() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IOfflineTranslateListener.DESCRIPTOR);
                    this.f4823a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IOfflineTranslateListener.DESCRIPTOR);
        }

        public static IOfflineTranslateListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IOfflineTranslateListener.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IOfflineTranslateListener)) ? new a(iBinder) : (IOfflineTranslateListener) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(IOfflineTranslateListener.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(IOfflineTranslateListener.DESCRIPTOR);
                return true;
            }
            if (i10 == 1) {
                onOfflineStart();
                parcel2.writeNoException();
            } else if (i10 == 2) {
                onOfflineError(parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
            } else {
                if (i10 != 3) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                onOfflineResult(parcel.createTypedArrayList(TranslateResult.CREATOR));
                parcel2.writeNoException();
            }
            return true;
        }
    }

    public static class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static void b(Parcel parcel, List list, int i10) {
            if (list == null) {
                parcel.writeInt(-1);
                return;
            }
            int size = list.size();
            parcel.writeInt(size);
            for (int i11 = 0; i11 < size; i11++) {
                c(parcel, (Parcelable) list.get(i11), i10);
            }
        }

        private static void c(Parcel parcel, Parcelable parcelable, int i10) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcelable.writeToParcel(parcel, i10);
            }
        }
    }

    void onOfflineError(String str, int i10) throws RemoteException;

    void onOfflineResult(List<TranslateResult> list) throws RemoteException;

    void onOfflineStart() throws RemoteException;
}
