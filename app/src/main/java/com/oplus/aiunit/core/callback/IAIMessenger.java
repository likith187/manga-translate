package com.oplus.aiunit.core.callback;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.oplus.aiunit.core.FramePackage;

/* JADX INFO: loaded from: classes.dex */
public interface IAIMessenger extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.aiunit.core.callback.IAIMessenger";

    public static class Default implements IAIMessenger {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.oplus.aiunit.core.callback.IAIMessenger
        public int send(FramePackage framePackage) {
            return 0;
        }
    }

    public static abstract class Stub extends Binder implements IAIMessenger {
        static final int TRANSACTION_send = 1;

        public static class Proxy implements IAIMessenger {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IAIMessenger.DESCRIPTOR;
            }

            @Override // com.oplus.aiunit.core.callback.IAIMessenger
            public int send(FramePackage framePackage) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IAIMessenger.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, framePackage, 0);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    int i10 = parcelObtain2.readInt();
                    if (parcelObtain2.readInt() != 0) {
                        framePackage.readFromParcel(parcelObtain2);
                    }
                    return i10;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IAIMessenger.DESCRIPTOR);
        }

        public static IAIMessenger asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IAIMessenger.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAIMessenger)) ? new Proxy(iBinder) : (IAIMessenger) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(IAIMessenger.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(IAIMessenger.DESCRIPTOR);
                return true;
            }
            if (i10 != 1) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            FramePackage framePackage = (FramePackage) _Parcel.readTypedObject(parcel, FramePackage.CREATOR);
            int iSend = send(framePackage);
            parcel2.writeNoException();
            parcel2.writeInt(iSend);
            _Parcel.writeTypedObject(parcel2, framePackage, 1);
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

    int send(FramePackage framePackage);
}
