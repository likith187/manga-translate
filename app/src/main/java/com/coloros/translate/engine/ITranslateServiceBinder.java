package com.coloros.translate.engine;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.coloros.translate.engine.IOfflineTranslateEngine;

/* JADX INFO: loaded from: classes.dex */
public interface ITranslateServiceBinder extends IInterface {
    public static final String DESCRIPTOR = "com.coloros.translate.engine.ITranslateServiceBinder";

    public static abstract class Stub extends Binder implements ITranslateServiceBinder {
        static final int TRANSACTION_generateOfflineTranslateEngine = 1;

        private static class a implements ITranslateServiceBinder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f4831a;

            a(IBinder iBinder) {
                this.f4831a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4831a;
            }

            @Override // com.coloros.translate.engine.ITranslateServiceBinder
            public IOfflineTranslateEngine generateOfflineTranslateEngine(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateServiceBinder.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.f4831a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return IOfflineTranslateEngine.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, ITranslateServiceBinder.DESCRIPTOR);
        }

        public static ITranslateServiceBinder asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(ITranslateServiceBinder.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITranslateServiceBinder)) ? new a(iBinder) : (ITranslateServiceBinder) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(ITranslateServiceBinder.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(ITranslateServiceBinder.DESCRIPTOR);
                return true;
            }
            if (i10 != 1) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            IOfflineTranslateEngine iOfflineTranslateEngineGenerateOfflineTranslateEngine = generateOfflineTranslateEngine(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeStrongInterface(iOfflineTranslateEngineGenerateOfflineTranslateEngine);
            return true;
        }
    }

    IOfflineTranslateEngine generateOfflineTranslateEngine(String str) throws RemoteException;
}
