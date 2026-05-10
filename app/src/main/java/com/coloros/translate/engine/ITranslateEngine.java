package com.coloros.translate.engine;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.coloros.translate.engine.ITranslateListener;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface ITranslateEngine extends IInterface {
    public static final String DESCRIPTOR = "com.coloros.translate.engine.ITranslateEngine";

    public static abstract class Stub extends Binder implements ITranslateEngine {
        static final int TRANSACTION_existsOfflinePackage = 3;
        static final int TRANSACTION_invokeMethod = 4;
        static final int TRANSACTION_translate = 1;
        static final int TRANSACTION_translateList = 2;

        private static class a implements ITranslateEngine {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f4829a;

            a(IBinder iBinder) {
                this.f4829a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4829a;
            }

            @Override // com.coloros.translate.engine.ITranslateEngine
            public boolean existsOfflinePackage(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateEngine.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.f4829a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITranslateEngine
            public Bundle invokeMethod(String str, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateEngine.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    a.d(parcelObtain, bundle, 0);
                    this.f4829a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (Bundle) a.c(parcelObtain2, Bundle.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITranslateEngine
            public void translate(String str, String str2, String str3, ITranslateListener iTranslateListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateEngine.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeStrongInterface(iTranslateListener);
                    this.f4829a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITranslateEngine
            public void translateList(String str, String str2, List list, ITranslateListener iTranslateListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITranslateEngine.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeStringList(list);
                    parcelObtain.writeStrongInterface(iTranslateListener);
                    this.f4829a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, ITranslateEngine.DESCRIPTOR);
        }

        public static ITranslateEngine asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(ITranslateEngine.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITranslateEngine)) ? new a(iBinder) : (ITranslateEngine) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(ITranslateEngine.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(ITranslateEngine.DESCRIPTOR);
                return true;
            }
            if (i10 == 1) {
                translate(parcel.readString(), parcel.readString(), parcel.readString(), ITranslateListener.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
            } else if (i10 == 2) {
                translateList(parcel.readString(), parcel.readString(), parcel.createStringArrayList(), ITranslateListener.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
            } else if (i10 == 3) {
                boolean zExistsOfflinePackage = existsOfflinePackage(parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(zExistsOfflinePackage ? 1 : 0);
            } else {
                if (i10 != 4) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                Bundle bundleInvokeMethod = invokeMethod(parcel.readString(), (Bundle) a.c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                a.d(parcel2, bundleInvokeMethod, 1);
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

    boolean existsOfflinePackage(String str, String str2) throws RemoteException;

    Bundle invokeMethod(String str, Bundle bundle) throws RemoteException;

    void translate(String str, String str2, String str3, ITranslateListener iTranslateListener) throws RemoteException;

    void translateList(String str, String str2, List<String> list, ITranslateListener iTranslateListener) throws RemoteException;
}
