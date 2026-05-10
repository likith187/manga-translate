package com.coloros.translate.engine;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.coloros.translate.engine.ITtsListener;
import com.coloros.translate.engine.info.TtsParams;

/* JADX INFO: loaded from: classes.dex */
public interface ITtsEngine extends IInterface {
    public static final String DESCRIPTOR = "com.coloros.translate.engine.ITtsEngine";

    public static abstract class Stub extends Binder implements ITtsEngine {
        static final int TRANSACTION_destroy = 3;
        static final int TRANSACTION_invokeMethod = 5;
        static final int TRANSACTION_playText = 1;
        static final int TRANSACTION_playTextWithExtra = 4;
        static final int TRANSACTION_stopPlay = 2;

        private static class a implements ITtsEngine {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f4833a;

            a(IBinder iBinder) {
                this.f4833a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4833a;
            }

            @Override // com.coloros.translate.engine.ITtsEngine
            public void destroy() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITtsEngine.DESCRIPTOR);
                    this.f4833a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITtsEngine
            public Bundle invokeMethod(String str, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITtsEngine.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    a.d(parcelObtain, bundle, 0);
                    this.f4833a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (Bundle) a.c(parcelObtain2, Bundle.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITtsEngine
            public void playText(String str, TtsParams ttsParams, ITtsListener iTtsListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITtsEngine.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    a.d(parcelObtain, ttsParams, 0);
                    parcelObtain.writeStrongInterface(iTtsListener);
                    this.f4833a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITtsEngine
            public void playTextWithExtra(String str, TtsParams ttsParams, Bundle bundle, ITtsListener iTtsListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITtsEngine.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    a.d(parcelObtain, ttsParams, 0);
                    a.d(parcelObtain, bundle, 0);
                    parcelObtain.writeStrongInterface(iTtsListener);
                    this.f4833a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.translate.engine.ITtsEngine
            public void stopPlay() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ITtsEngine.DESCRIPTOR);
                    this.f4833a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, ITtsEngine.DESCRIPTOR);
        }

        public static ITtsEngine asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(ITtsEngine.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITtsEngine)) ? new a(iBinder) : (ITtsEngine) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(ITtsEngine.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(ITtsEngine.DESCRIPTOR);
                return true;
            }
            if (i10 == 1) {
                playText(parcel.readString(), (TtsParams) a.c(parcel, TtsParams.CREATOR), ITtsListener.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
            } else if (i10 == 2) {
                stopPlay();
                parcel2.writeNoException();
            } else if (i10 == 3) {
                destroy();
                parcel2.writeNoException();
            } else if (i10 == 4) {
                playTextWithExtra(parcel.readString(), (TtsParams) a.c(parcel, TtsParams.CREATOR), (Bundle) a.c(parcel, Bundle.CREATOR), ITtsListener.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
            } else {
                if (i10 != 5) {
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

    void destroy() throws RemoteException;

    Bundle invokeMethod(String str, Bundle bundle) throws RemoteException;

    void playText(String str, TtsParams ttsParams, ITtsListener iTtsListener) throws RemoteException;

    void playTextWithExtra(String str, TtsParams ttsParams, Bundle bundle, ITtsListener iTtsListener) throws RemoteException;

    void stopPlay() throws RemoteException;
}
