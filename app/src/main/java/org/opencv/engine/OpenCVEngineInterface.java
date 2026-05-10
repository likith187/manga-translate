package org.opencv.engine;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface OpenCVEngineInterface extends IInterface {
    public static final String DESCRIPTOR = "org.opencv.engine.OpenCVEngineInterface";

    public static abstract class Stub extends Binder implements OpenCVEngineInterface {
        static final int TRANSACTION_getEngineVersion = 1;
        static final int TRANSACTION_getLibPathByVersion = 2;
        static final int TRANSACTION_getLibraryList = 4;
        static final int TRANSACTION_installVersion = 3;

        private static class a implements OpenCVEngineInterface {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f15055a;

            a(IBinder iBinder) {
                this.f15055a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f15055a;
            }

            @Override // org.opencv.engine.OpenCVEngineInterface
            public int getEngineVersion() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(OpenCVEngineInterface.DESCRIPTOR);
                    this.f15055a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // org.opencv.engine.OpenCVEngineInterface
            public String getLibPathByVersion(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(OpenCVEngineInterface.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.f15055a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // org.opencv.engine.OpenCVEngineInterface
            public String getLibraryList(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(OpenCVEngineInterface.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.f15055a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // org.opencv.engine.OpenCVEngineInterface
            public boolean installVersion(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(OpenCVEngineInterface.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.f15055a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, OpenCVEngineInterface.DESCRIPTOR);
        }

        public static OpenCVEngineInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(OpenCVEngineInterface.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof OpenCVEngineInterface)) ? new a(iBinder) : (OpenCVEngineInterface) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(OpenCVEngineInterface.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(OpenCVEngineInterface.DESCRIPTOR);
                return true;
            }
            if (i10 == 1) {
                int engineVersion = getEngineVersion();
                parcel2.writeNoException();
                parcel2.writeInt(engineVersion);
            } else if (i10 == 2) {
                String libPathByVersion = getLibPathByVersion(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(libPathByVersion);
            } else if (i10 == 3) {
                boolean zInstallVersion = installVersion(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(zInstallVersion ? 1 : 0);
            } else {
                if (i10 != 4) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                String libraryList = getLibraryList(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(libraryList);
            }
            return true;
        }
    }

    int getEngineVersion() throws RemoteException;

    String getLibPathByVersion(String str) throws RemoteException;

    String getLibraryList(String str) throws RemoteException;

    boolean installVersion(String str) throws RemoteException;
}
