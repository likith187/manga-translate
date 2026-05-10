package com.oplus.aiunit.core.callback;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.oplus.aiunit.core.ParamPackage;

/* JADX INFO: loaded from: classes.dex */
public interface IProcessCallback extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.aiunit.core.callback.IProcessCallback";

    public static class Default implements IProcessCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.oplus.aiunit.core.callback.IProcessCallback
        public String name() {
            return null;
        }

        @Override // com.oplus.aiunit.core.callback.IProcessCallback
        public int onCallback(ParamPackage paramPackage) {
            return 0;
        }
    }

    public static abstract class Stub extends Binder implements IProcessCallback {
        static final int TRANSACTION_name = 1;
        static final int TRANSACTION_onCallback = 2;

        public static class Proxy implements IProcessCallback {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IProcessCallback.DESCRIPTOR;
            }

            @Override // com.oplus.aiunit.core.callback.IProcessCallback
            public String name() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IProcessCallback.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.aiunit.core.callback.IProcessCallback
            public int onCallback(ParamPackage paramPackage) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IProcessCallback.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, paramPackage, 0);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    int i10 = parcelObtain2.readInt();
                    if (parcelObtain2.readInt() != 0) {
                        paramPackage.readFromParcel(parcelObtain2);
                    }
                    return i10;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IProcessCallback.DESCRIPTOR);
        }

        public static IProcessCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IProcessCallback.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IProcessCallback)) ? new Proxy(iBinder) : (IProcessCallback) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(IProcessCallback.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(IProcessCallback.DESCRIPTOR);
                return true;
            }
            if (i10 == 1) {
                String strName = name();
                parcel2.writeNoException();
                parcel2.writeString(strName);
            } else {
                if (i10 != 2) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                ParamPackage paramPackage = (ParamPackage) _Parcel.readTypedObject(parcel, ParamPackage.CREATOR);
                int iOnCallback = onCallback(paramPackage);
                parcel2.writeNoException();
                parcel2.writeInt(iOnCallback);
                _Parcel.writeTypedObject(parcel2, paramPackage, 1);
            }
            return true;
        }
    }

    public static class _Parcel {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T readTypedObject(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void writeTypedObject(Parcel parcel, T t10, int i10) {
            if (t10 == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                t10.writeToParcel(parcel, i10);
            }
        }
    }

    String name();

    int onCallback(ParamPackage paramPackage);
}
