package com.coloros.translate.engine;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.coloros.translate.engine.info.OnLineTranslateResult;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface ITranslateListener extends IInterface {
    public static final String DESCRIPTOR = "com.coloros.translate.engine.ITranslateListener";

    public static abstract class Stub extends Binder implements ITranslateListener {
        static final int TRANSACTION_onError = 3;
        static final int TRANSACTION_onResult = 2;
        static final int TRANSACTION_onResultList = 4;
        static final int TRANSACTION_onStreamError = 7;
        static final int TRANSACTION_onStreamResult = 6;
        static final int TRANSACTION_onStreamResultList = 8;
        static final int TRANSACTION_onStreamTranslateStart = 5;
        static final int TRANSACTION_onTranslateStart = 1;

        private static class a implements ITranslateListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f4830a;

            a(IBinder iBinder) {
                this.f4830a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4830a;
            }

            @Override // com.coloros.translate.engine.ITranslateListener
            public void onError(String str, String str2, int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateListener.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i10);
                    this.f4830a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITranslateListener
            public void onResult(OnLineTranslateResult onLineTranslateResult) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateListener.DESCRIPTOR);
                    a.f(parcelObtain, onLineTranslateResult, 0);
                    this.f4830a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITranslateListener
            public void onResultList(List list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateListener.DESCRIPTOR);
                    a.e(parcelObtain, list, 0);
                    this.f4830a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITranslateListener
            public void onStreamError(String str, String str2, int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateListener.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i10);
                    this.f4830a.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITranslateListener
            public void onStreamResult(String str, boolean z10, OnLineTranslateResult onLineTranslateResult) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateListener.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    a.f(parcelObtain, onLineTranslateResult, 0);
                    this.f4830a.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITranslateListener
            public void onStreamResultList(String str, List list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateListener.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    a.e(parcelObtain, list, 0);
                    this.f4830a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITranslateListener
            public void onStreamTranslateStart(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateListener.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.f4830a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITranslateListener
            public void onTranslateStart(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateListener.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.f4830a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, ITranslateListener.DESCRIPTOR);
        }

        public static ITranslateListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(ITranslateListener.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITranslateListener)) ? new a(iBinder) : (ITranslateListener) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(ITranslateListener.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(ITranslateListener.DESCRIPTOR);
                return true;
            }
            switch (i10) {
                case 1:
                    onTranslateStart(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    onResult((OnLineTranslateResult) a.d(parcel, OnLineTranslateResult.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    onError(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    onResultList(parcel.createTypedArrayList(OnLineTranslateResult.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    onStreamTranslateStart(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    onStreamResult(parcel.readString(), parcel.readInt() != 0, (OnLineTranslateResult) a.d(parcel, OnLineTranslateResult.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    onStreamError(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    onStreamResultList(parcel.readString(), parcel.createTypedArrayList(OnLineTranslateResult.CREATOR));
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    public static class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static Object d(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void e(Parcel parcel, List list, int i10) {
            if (list == null) {
                parcel.writeInt(-1);
                return;
            }
            int size = list.size();
            parcel.writeInt(size);
            for (int i11 = 0; i11 < size; i11++) {
                f(parcel, (Parcelable) list.get(i11), i10);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void f(Parcel parcel, Parcelable parcelable, int i10) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcelable.writeToParcel(parcel, i10);
            }
        }
    }

    void onError(String str, String str2, int i10) throws RemoteException;

    void onResult(OnLineTranslateResult onLineTranslateResult) throws RemoteException;

    void onResultList(List<OnLineTranslateResult> list) throws RemoteException;

    void onStreamError(String str, String str2, int i10) throws RemoteException;

    void onStreamResult(String str, boolean z10, OnLineTranslateResult onLineTranslateResult) throws RemoteException;

    void onStreamResultList(String str, List<OnLineTranslateResult> list) throws RemoteException;

    void onStreamTranslateStart(String str) throws RemoteException;

    void onTranslateStart(String str) throws RemoteException;
}
