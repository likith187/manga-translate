package com.coloros.translate.engine;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.coloros.translate.engine.info.AsrResult;
import com.coloros.translate.engine.info.AsrTranslateResult;

/* JADX INFO: loaded from: classes.dex */
public interface IRtasrListener extends IInterface {
    public static final String DESCRIPTOR = "com.coloros.translate.engine.IRtasrListener";

    public static abstract class Stub extends Binder implements IRtasrListener {
        static final int TRANSACTION_onRecordTime = 10;
        static final int TRANSACTION_onResultStatus = 8;
        static final int TRANSACTION_onRtasrResult = 3;
        static final int TRANSACTION_onStart = 1;
        static final int TRANSACTION_onStatus = 5;
        static final int TRANSACTION_onStop = 2;
        static final int TRANSACTION_onTranslateResult = 4;
        static final int TRANSACTION_onVoiceData = 7;
        static final int TRANSACTION_onVoiceVolume = 6;
        static final int TRANSACTION_setRunningType = 9;

        private static class a implements IRtasrListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f4826a;

            a(IBinder iBinder) {
                this.f4826a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4826a;
            }

            @Override // com.coloros.translate.engine.IRtasrListener
            public void onRecordTime(long j10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrListener.DESCRIPTOR);
                    parcelObtain.writeLong(j10);
                    this.f4826a.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrListener
            public void onResultStatus(int i10, int i11, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrListener.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeString(str);
                    this.f4826a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrListener
            public void onRtasrResult(AsrResult asrResult) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrListener.DESCRIPTOR);
                    a.d(parcelObtain, asrResult, 0);
                    this.f4826a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrListener
            public void onStart() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrListener.DESCRIPTOR);
                    this.f4826a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrListener
            public void onStatus(int i10, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrListener.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeString(str);
                    this.f4826a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrListener
            public void onStop() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrListener.DESCRIPTOR);
                    this.f4826a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrListener
            public void onTranslateResult(AsrTranslateResult asrTranslateResult) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrListener.DESCRIPTOR);
                    a.d(parcelObtain, asrTranslateResult, 0);
                    this.f4826a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrListener
            public void onVoiceData(byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrListener.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    this.f4826a.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrListener
            public void onVoiceVolume(double d10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrListener.DESCRIPTOR);
                    parcelObtain.writeDouble(d10);
                    this.f4826a.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrListener
            public void setRunningType(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrListener.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.f4826a.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IRtasrListener.DESCRIPTOR);
        }

        public static IRtasrListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IRtasrListener.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IRtasrListener)) ? new a(iBinder) : (IRtasrListener) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(IRtasrListener.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(IRtasrListener.DESCRIPTOR);
                return true;
            }
            switch (i10) {
                case 1:
                    onStart();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    onStop();
                    parcel2.writeNoException();
                    return true;
                case 3:
                    onRtasrResult((AsrResult) a.c(parcel, AsrResult.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    onTranslateResult((AsrTranslateResult) a.c(parcel, AsrTranslateResult.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    onStatus(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    onVoiceVolume(parcel.readDouble());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    onVoiceData(parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    onResultStatus(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    setRunningType(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    onRecordTime(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
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

    void onRecordTime(long j10) throws RemoteException;

    void onResultStatus(int i10, int i11, String str) throws RemoteException;

    void onRtasrResult(AsrResult asrResult) throws RemoteException;

    void onStart() throws RemoteException;

    void onStatus(int i10, String str) throws RemoteException;

    void onStop() throws RemoteException;

    void onTranslateResult(AsrTranslateResult asrTranslateResult) throws RemoteException;

    void onVoiceData(byte[] bArr) throws RemoteException;

    void onVoiceVolume(double d10) throws RemoteException;

    void setRunningType(int i10) throws RemoteException;
}
