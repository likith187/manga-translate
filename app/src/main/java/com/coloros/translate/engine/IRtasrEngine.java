package com.coloros.translate.engine;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.coloros.translate.engine.IRtasrListener;
import com.coloros.translate.engine.info.AsrParams;

/* JADX INFO: loaded from: classes.dex */
public interface IRtasrEngine extends IInterface {
    public static final String DESCRIPTOR = "com.coloros.translate.engine.IRtasrEngine";

    public static abstract class Stub extends Binder implements IRtasrEngine {
        static final int TRANSACTION_destroy = 9;
        static final int TRANSACTION_invokeMethod = 10;
        static final int TRANSACTION_pauseRecord = 5;
        static final int TRANSACTION_registerRtasrListener = 2;
        static final int TRANSACTION_resumeRecord = 6;
        static final int TRANSACTION_saveAudioFile = 13;
        static final int TRANSACTION_sendAudioBytes = 7;
        static final int TRANSACTION_setConfig = 1;
        static final int TRANSACTION_startAsr = 11;
        static final int TRANSACTION_startRecord = 4;
        static final int TRANSACTION_stop = 8;
        static final int TRANSACTION_stopAsr = 12;
        static final int TRANSACTION_stopAudioFile = 14;
        static final int TRANSACTION_stopRecord = 15;
        static final int TRANSACTION_unRegisterRtasrListener = 3;
        static final int TRANSACTION_useBluetoothMic = 16;

        private static class a implements IRtasrEngine {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f4825a;

            a(IBinder iBinder) {
                this.f4825a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4825a;
            }

            @Override // com.coloros.translate.engine.IRtasrEngine
            public void destroy() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrEngine.DESCRIPTOR);
                    this.f4825a.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrEngine
            public Bundle invokeMethod(String str, String str2, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrEngine.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    a.d(parcelObtain, bundle, 0);
                    this.f4825a.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (Bundle) a.c(parcelObtain2, Bundle.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrEngine
            public void pauseRecord() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrEngine.DESCRIPTOR);
                    this.f4825a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrEngine
            public void registerRtasrListener(String str, IRtasrListener iRtasrListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrEngine.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongInterface(iRtasrListener);
                    this.f4825a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrEngine
            public void resumeRecord() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrEngine.DESCRIPTOR);
                    this.f4825a.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrEngine
            public void saveAudioFile(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrEngine.DESCRIPTOR);
                    a.d(parcelObtain, bundle, 0);
                    this.f4825a.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrEngine
            public void sendAudioBytes(byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrEngine.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    this.f4825a.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrEngine
            public void setConfig(AsrParams asrParams) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrEngine.DESCRIPTOR);
                    a.d(parcelObtain, asrParams, 0);
                    this.f4825a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrEngine
            public void startAsr(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrEngine.DESCRIPTOR);
                    a.d(parcelObtain, bundle, 0);
                    this.f4825a.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrEngine
            public void startRecord() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrEngine.DESCRIPTOR);
                    this.f4825a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrEngine
            public void stop() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrEngine.DESCRIPTOR);
                    this.f4825a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrEngine
            public void stopAsr() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrEngine.DESCRIPTOR);
                    this.f4825a.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrEngine
            public void stopAudioFile() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrEngine.DESCRIPTOR);
                    this.f4825a.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrEngine
            public void stopRecord() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrEngine.DESCRIPTOR);
                    this.f4825a.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrEngine
            public void unRegisterRtasrListener(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrEngine.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.f4825a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IRtasrEngine
            public void useBluetoothMic(boolean z10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRtasrEngine.DESCRIPTOR);
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    this.f4825a.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IRtasrEngine.DESCRIPTOR);
        }

        public static IRtasrEngine asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IRtasrEngine.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IRtasrEngine)) ? new a(iBinder) : (IRtasrEngine) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(IRtasrEngine.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(IRtasrEngine.DESCRIPTOR);
                return true;
            }
            switch (i10) {
                case 1:
                    setConfig((AsrParams) a.c(parcel, AsrParams.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    registerRtasrListener(parcel.readString(), IRtasrListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    unRegisterRtasrListener(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    startRecord();
                    parcel2.writeNoException();
                    return true;
                case 5:
                    pauseRecord();
                    parcel2.writeNoException();
                    return true;
                case 6:
                    resumeRecord();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    sendAudioBytes(parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    stop();
                    parcel2.writeNoException();
                    return true;
                case 9:
                    destroy();
                    parcel2.writeNoException();
                    return true;
                case 10:
                    Bundle bundleInvokeMethod = invokeMethod(parcel.readString(), parcel.readString(), (Bundle) a.c(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    a.d(parcel2, bundleInvokeMethod, 1);
                    return true;
                case 11:
                    startAsr((Bundle) a.c(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    stopAsr();
                    parcel2.writeNoException();
                    return true;
                case 13:
                    saveAudioFile((Bundle) a.c(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    stopAudioFile();
                    parcel2.writeNoException();
                    return true;
                case 15:
                    stopRecord();
                    parcel2.writeNoException();
                    return true;
                case 16:
                    useBluetoothMic(parcel.readInt() != 0);
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

    void destroy() throws RemoteException;

    Bundle invokeMethod(String str, String str2, Bundle bundle) throws RemoteException;

    void pauseRecord() throws RemoteException;

    void registerRtasrListener(String str, IRtasrListener iRtasrListener) throws RemoteException;

    void resumeRecord() throws RemoteException;

    void saveAudioFile(Bundle bundle) throws RemoteException;

    void sendAudioBytes(byte[] bArr) throws RemoteException;

    void setConfig(AsrParams asrParams) throws RemoteException;

    void startAsr(Bundle bundle) throws RemoteException;

    void startRecord() throws RemoteException;

    void stop() throws RemoteException;

    void stopAsr() throws RemoteException;

    void stopAudioFile() throws RemoteException;

    void stopRecord() throws RemoteException;

    void unRegisterRtasrListener(String str) throws RemoteException;

    void useBluetoothMic(boolean z10) throws RemoteException;
}
