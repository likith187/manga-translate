package com.coloros.translate.engine;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.coloros.translate.engine.IOfflineTranslateListener;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IOfflineTranslateEngine extends IInterface {
    public static final String DESCRIPTOR = "com.coloros.translate.engine.IOfflineTranslateEngine";

    public static abstract class Stub extends Binder implements IOfflineTranslateEngine {
        static final int TRANSACTION_destroy = 3;
        static final int TRANSACTION_existsOfflinePackage = 4;
        static final int TRANSACTION_translate = 1;
        static final int TRANSACTION_translateList = 2;

        private static class a implements IOfflineTranslateEngine {

            /* JADX INFO: renamed from: a */
            private IBinder f4822a;

            a(IBinder iBinder) {
                this.f4822a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4822a;
            }

            @Override // com.coloros.translate.engine.IOfflineTranslateEngine
            public void destroy() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IOfflineTranslateEngine.DESCRIPTOR);
                    this.f4822a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IOfflineTranslateEngine
            public boolean existsOfflinePackage(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IOfflineTranslateEngine.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.f4822a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IOfflineTranslateEngine
            public void translate(String str, String str2, String str3, IOfflineTranslateListener iOfflineTranslateListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IOfflineTranslateEngine.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeStrongInterface(iOfflineTranslateListener);
                    this.f4822a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.IOfflineTranslateEngine
            public void translateList(String str, String str2, List list, IOfflineTranslateListener iOfflineTranslateListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IOfflineTranslateEngine.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeStringList(list);
                    parcelObtain.writeStrongInterface(iOfflineTranslateListener);
                    this.f4822a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IOfflineTranslateEngine.DESCRIPTOR);
        }

        public static IOfflineTranslateEngine asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IOfflineTranslateEngine.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IOfflineTranslateEngine)) ? new a(iBinder) : (IOfflineTranslateEngine) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(IOfflineTranslateEngine.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(IOfflineTranslateEngine.DESCRIPTOR);
                return true;
            }
            if (i10 == 1) {
                translate(parcel.readString(), parcel.readString(), parcel.readString(), IOfflineTranslateListener.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
            } else if (i10 == 2) {
                translateList(parcel.readString(), parcel.readString(), parcel.createStringArrayList(), IOfflineTranslateListener.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
            } else if (i10 == 3) {
                destroy();
                parcel2.writeNoException();
            } else {
                if (i10 != 4) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                boolean zExistsOfflinePackage = existsOfflinePackage(parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(zExistsOfflinePackage ? 1 : 0);
            }
            return true;
        }
    }

    void destroy() throws RemoteException;

    boolean existsOfflinePackage(String str, String str2) throws RemoteException;

    void translate(String str, String str2, String str3, IOfflineTranslateListener iOfflineTranslateListener) throws RemoteException;

    void translateList(String str, String str2, List<String> list, IOfflineTranslateListener iOfflineTranslateListener) throws RemoteException;
}
