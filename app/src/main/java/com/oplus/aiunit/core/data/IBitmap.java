package com.oplus.aiunit.core.data;

import android.graphics.Bitmap;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public interface IBitmap extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.aiunit.core.data.IBitmap";

    public static class Default implements IBitmap {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.oplus.aiunit.core.data.IBitmap
        public Bitmap getBitmap() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBitmap {
        static final int TRANSACTION_getBitmap = 1;

        public static class Proxy implements IBitmap {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.oplus.aiunit.core.data.IBitmap
            public Bitmap getBitmap() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IBitmap.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (Bitmap) _Parcel.readTypedObject(parcelObtain2, Bitmap.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return IBitmap.DESCRIPTOR;
            }
        }

        public Stub() {
            attachInterface(this, IBitmap.DESCRIPTOR);
        }

        public static IBitmap asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IBitmap.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IBitmap)) ? new Proxy(iBinder) : (IBitmap) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(IBitmap.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(IBitmap.DESCRIPTOR);
                return true;
            }
            if (i10 != 1) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            Bitmap bitmap = getBitmap();
            parcel2.writeNoException();
            _Parcel.writeTypedObject(parcel2, bitmap, 1);
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

    Bitmap getBitmap();
}
