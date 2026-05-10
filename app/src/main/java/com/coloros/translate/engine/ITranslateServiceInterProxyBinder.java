package com.coloros.translate.engine;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.coloros.translate.engine.IOfflineTranslateEngine;
import com.coloros.translate.engine.IRegisterListener;
import com.coloros.translate.engine.IRtasrEngine;
import com.coloros.translate.engine.ITranslateEngine;
import com.coloros.translate.engine.ITtsEngine;

/* JADX INFO: loaded from: classes.dex */
public interface ITranslateServiceInterProxyBinder extends IInterface {
    public static final String DESCRIPTOR = "com.coloros.translate.engine.ITranslateServiceInterProxyBinder";

    public static abstract class Stub extends Binder implements ITranslateServiceInterProxyBinder {
        static final int TRANSACTION_clearMap = 7;
        static final int TRANSACTION_generateOfflineTranslateEngine = 3;
        static final int TRANSACTION_generateRtasrEngine = 4;
        static final int TRANSACTION_generateTranslateEngine = 2;
        static final int TRANSACTION_generateTtsEngine = 5;
        static final int TRANSACTION_invokeMethod = 8;
        static final int TRANSACTION_registerClient = 1;
        static final int TRANSACTION_registerLLMClient = 10;
        static final int TRANSACTION_setEngineAutoDestroyWhenBinderDied = 9;
        static final int TRANSACTION_unRegisterClient = 6;

        private static class a implements ITranslateServiceInterProxyBinder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f4832a;

            a(IBinder iBinder) {
                this.f4832a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4832a;
            }

            @Override // com.coloros.translate.engine.ITranslateServiceInterProxyBinder
            public void clearMap(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateServiceInterProxyBinder.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.f4832a.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITranslateServiceInterProxyBinder
            public IOfflineTranslateEngine generateOfflineTranslateEngine(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateServiceInterProxyBinder.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.f4832a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return IOfflineTranslateEngine.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITranslateServiceInterProxyBinder
            public IRtasrEngine generateRtasrEngine(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateServiceInterProxyBinder.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.f4832a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return IRtasrEngine.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITranslateServiceInterProxyBinder
            public ITranslateEngine generateTranslateEngine(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateServiceInterProxyBinder.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.f4832a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return ITranslateEngine.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITranslateServiceInterProxyBinder
            public ITtsEngine generateTtsEngine(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateServiceInterProxyBinder.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.f4832a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return ITtsEngine.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITranslateServiceInterProxyBinder
            public Bundle invokeMethod(String str, String str2, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateServiceInterProxyBinder.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    a.d(parcelObtain, bundle, 0);
                    this.f4832a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (Bundle) a.c(parcelObtain2, Bundle.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITranslateServiceInterProxyBinder
            public void registerClient(IRegisterListener iRegisterListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateServiceInterProxyBinder.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iRegisterListener);
                    this.f4832a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITranslateServiceInterProxyBinder
            public void registerLLMClient(IRegisterListener iRegisterListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateServiceInterProxyBinder.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iRegisterListener);
                    this.f4832a.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITranslateServiceInterProxyBinder
            public void setEngineAutoDestroyWhenBinderDied(IRegisterListener iRegisterListener, boolean z10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateServiceInterProxyBinder.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iRegisterListener);
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    this.f4832a.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITranslateServiceInterProxyBinder
            public void unRegisterClient(IRegisterListener iRegisterListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateServiceInterProxyBinder.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iRegisterListener);
                    this.f4832a.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, ITranslateServiceInterProxyBinder.DESCRIPTOR);
        }

        public static ITranslateServiceInterProxyBinder asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(ITranslateServiceInterProxyBinder.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITranslateServiceInterProxyBinder)) ? new a(iBinder) : (ITranslateServiceInterProxyBinder) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(ITranslateServiceInterProxyBinder.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(ITranslateServiceInterProxyBinder.DESCRIPTOR);
                return true;
            }
            switch (i10) {
                case 1:
                    registerClient(IRegisterListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    ITranslateEngine iTranslateEngineGenerateTranslateEngine = generateTranslateEngine(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStrongInterface(iTranslateEngineGenerateTranslateEngine);
                    return true;
                case 3:
                    IOfflineTranslateEngine iOfflineTranslateEngineGenerateOfflineTranslateEngine = generateOfflineTranslateEngine(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStrongInterface(iOfflineTranslateEngineGenerateOfflineTranslateEngine);
                    return true;
                case 4:
                    IRtasrEngine iRtasrEngineGenerateRtasrEngine = generateRtasrEngine(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStrongInterface(iRtasrEngineGenerateRtasrEngine);
                    return true;
                case 5:
                    ITtsEngine iTtsEngineGenerateTtsEngine = generateTtsEngine(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStrongInterface(iTtsEngineGenerateTtsEngine);
                    return true;
                case 6:
                    unRegisterClient(IRegisterListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    clearMap(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    Bundle bundleInvokeMethod = invokeMethod(parcel.readString(), parcel.readString(), (Bundle) a.c(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    a.d(parcel2, bundleInvokeMethod, 1);
                    return true;
                case 9:
                    setEngineAutoDestroyWhenBinderDied(IRegisterListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 10:
                    registerLLMClient(IRegisterListener.Stub.asInterface(parcel.readStrongBinder()));
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

    void clearMap(String str) throws RemoteException;

    IOfflineTranslateEngine generateOfflineTranslateEngine(String str) throws RemoteException;

    IRtasrEngine generateRtasrEngine(String str) throws RemoteException;

    ITranslateEngine generateTranslateEngine(String str) throws RemoteException;

    ITtsEngine generateTtsEngine(String str) throws RemoteException;

    Bundle invokeMethod(String str, String str2, Bundle bundle) throws RemoteException;

    void registerClient(IRegisterListener iRegisterListener) throws RemoteException;

    void registerLLMClient(IRegisterListener iRegisterListener) throws RemoteException;

    void setEngineAutoDestroyWhenBinderDied(IRegisterListener iRegisterListener, boolean z10) throws RemoteException;

    void unRegisterClient(IRegisterListener iRegisterListener) throws RemoteException;
}
