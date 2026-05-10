package com.oplus.aiunit.core;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.oplus.aiunit.core.IUnit;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IService extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.aiunit.core.IService";

    public static class Default implements IService {
        @Override // com.oplus.aiunit.core.IService
        public int access(ParamPackage paramPackage) {
            return 0;
        }

        @Override // com.oplus.aiunit.core.IService
        public int acquire(ParamPackage paramPackage) {
            return 0;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.oplus.aiunit.core.IService
        public int attach(ConfigPackage configPackage) {
            return 0;
        }

        @Override // com.oplus.aiunit.core.IService
        public int authorize(ParamPackage paramPackage) {
            return 0;
        }

        @Override // com.oplus.aiunit.core.IService
        public int detach(String str) {
            return 0;
        }

        @Override // com.oplus.aiunit.core.IService
        public IUnit drive(ParamPackage paramPackage) {
            return null;
        }

        @Override // com.oplus.aiunit.core.IService
        public void infer(FramePackage framePackage) {
        }

        @Override // com.oplus.aiunit.core.IService
        public void init(List<String> list) {
        }

        @Override // com.oplus.aiunit.core.IService
        public boolean isActive(ParamPackage paramPackage) {
            return false;
        }

        @Override // com.oplus.aiunit.core.IService
        public void onSystemNotify(int i10, int i11, String str, byte[] bArr) {
        }

        @Override // com.oplus.aiunit.core.IService
        public void prepare(ParamPackage paramPackage) {
        }

        @Override // com.oplus.aiunit.core.IService
        public int process(FramePackage framePackage) {
            return 0;
        }

        @Override // com.oplus.aiunit.core.IService
        public void release(ParamPackage paramPackage) {
        }
    }

    public static abstract class Stub extends Binder implements IService {
        static final int TRANSACTION_access = 3;
        static final int TRANSACTION_acquire = 10;
        static final int TRANSACTION_attach = 11;
        static final int TRANSACTION_authorize = 2;
        static final int TRANSACTION_detach = 12;
        static final int TRANSACTION_drive = 5;
        static final int TRANSACTION_infer = 8;
        static final int TRANSACTION_init = 4;
        static final int TRANSACTION_isActive = 6;
        static final int TRANSACTION_onSystemNotify = 1;
        static final int TRANSACTION_prepare = 7;
        static final int TRANSACTION_process = 13;
        static final int TRANSACTION_release = 9;

        public static class Proxy implements IService {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.oplus.aiunit.core.IService
            public int access(ParamPackage paramPackage) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IService.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, paramPackage, 0);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
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

            @Override // com.oplus.aiunit.core.IService
            public int acquire(ParamPackage paramPackage) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IService.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, paramPackage, 0);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
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

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.oplus.aiunit.core.IService
            public int attach(ConfigPackage configPackage) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IService.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, configPackage, 0);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.aiunit.core.IService
            public int authorize(ParamPackage paramPackage) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IService.DESCRIPTOR);
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

            @Override // com.oplus.aiunit.core.IService
            public int detach(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IService.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.aiunit.core.IService
            public IUnit drive(ParamPackage paramPackage) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IService.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, paramPackage, 0);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    IUnit iUnitAsInterface = IUnit.Stub.asInterface(parcelObtain2.readStrongBinder());
                    if (parcelObtain2.readInt() != 0) {
                        paramPackage.readFromParcel(parcelObtain2);
                    }
                    return iUnitAsInterface;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return IService.DESCRIPTOR;
            }

            @Override // com.oplus.aiunit.core.IService
            public void infer(FramePackage framePackage) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IService.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, framePackage, 0);
                    this.mRemote.transact(8, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.aiunit.core.IService
            public void init(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IService.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.aiunit.core.IService
            public boolean isActive(ParamPackage paramPackage) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IService.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, paramPackage, 0);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    boolean z10 = parcelObtain2.readInt() != 0;
                    if (parcelObtain2.readInt() != 0) {
                        paramPackage.readFromParcel(parcelObtain2);
                    }
                    return z10;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.aiunit.core.IService
            public void onSystemNotify(int i10, int i11, String str, byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IService.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeString(str);
                    parcelObtain.writeByteArray(bArr);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.aiunit.core.IService
            public void prepare(ParamPackage paramPackage) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IService.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, paramPackage, 0);
                    this.mRemote.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.aiunit.core.IService
            public int process(FramePackage framePackage) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IService.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, framePackage, 0);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
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

            @Override // com.oplus.aiunit.core.IService
            public void release(ParamPackage paramPackage) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IService.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, paramPackage, 0);
                    this.mRemote.transact(9, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IService.DESCRIPTOR);
        }

        public static IService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IService.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IService)) ? new Proxy(iBinder) : (IService) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(IService.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(IService.DESCRIPTOR);
                return true;
            }
            switch (i10) {
                case 1:
                    onSystemNotify(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    ParamPackage paramPackage = (ParamPackage) _Parcel.readTypedObject(parcel, ParamPackage.CREATOR);
                    int iAuthorize = authorize(paramPackage);
                    parcel2.writeNoException();
                    parcel2.writeInt(iAuthorize);
                    _Parcel.writeTypedObject(parcel2, paramPackage, 1);
                    return true;
                case 3:
                    ParamPackage paramPackage2 = (ParamPackage) _Parcel.readTypedObject(parcel, ParamPackage.CREATOR);
                    int iAccess = access(paramPackage2);
                    parcel2.writeNoException();
                    parcel2.writeInt(iAccess);
                    _Parcel.writeTypedObject(parcel2, paramPackage2, 1);
                    return true;
                case 4:
                    init(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    ParamPackage paramPackage3 = (ParamPackage) _Parcel.readTypedObject(parcel, ParamPackage.CREATOR);
                    IUnit iUnitDrive = drive(paramPackage3);
                    parcel2.writeNoException();
                    parcel2.writeStrongInterface(iUnitDrive);
                    _Parcel.writeTypedObject(parcel2, paramPackage3, 1);
                    return true;
                case 6:
                    ParamPackage paramPackage4 = (ParamPackage) _Parcel.readTypedObject(parcel, ParamPackage.CREATOR);
                    boolean zIsActive = isActive(paramPackage4);
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsActive ? 1 : 0);
                    _Parcel.writeTypedObject(parcel2, paramPackage4, 1);
                    return true;
                case 7:
                    prepare((ParamPackage) _Parcel.readTypedObject(parcel, ParamPackage.CREATOR));
                    return true;
                case 8:
                    infer((FramePackage) _Parcel.readTypedObject(parcel, FramePackage.CREATOR));
                    return true;
                case 9:
                    release((ParamPackage) _Parcel.readTypedObject(parcel, ParamPackage.CREATOR));
                    return true;
                case 10:
                    ParamPackage paramPackage5 = (ParamPackage) _Parcel.readTypedObject(parcel, ParamPackage.CREATOR);
                    int iAcquire = acquire(paramPackage5);
                    parcel2.writeNoException();
                    parcel2.writeInt(iAcquire);
                    _Parcel.writeTypedObject(parcel2, paramPackage5, 1);
                    return true;
                case 11:
                    int iAttach = attach((ConfigPackage) _Parcel.readTypedObject(parcel, ConfigPackage.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(iAttach);
                    return true;
                case 12:
                    int iDetach = detach(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iDetach);
                    return true;
                case 13:
                    FramePackage framePackage = (FramePackage) _Parcel.readTypedObject(parcel, FramePackage.CREATOR);
                    int iProcess = process(framePackage);
                    parcel2.writeNoException();
                    parcel2.writeInt(iProcess);
                    _Parcel.writeTypedObject(parcel2, framePackage, 1);
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
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

    int access(ParamPackage paramPackage);

    int acquire(ParamPackage paramPackage);

    int attach(ConfigPackage configPackage);

    int authorize(ParamPackage paramPackage);

    int detach(String str);

    IUnit drive(ParamPackage paramPackage);

    void infer(FramePackage framePackage);

    void init(List<String> list);

    boolean isActive(ParamPackage paramPackage);

    void onSystemNotify(int i10, int i11, String str, byte[] bArr);

    void prepare(ParamPackage paramPackage);

    int process(FramePackage framePackage);

    void release(ParamPackage paramPackage);
}
