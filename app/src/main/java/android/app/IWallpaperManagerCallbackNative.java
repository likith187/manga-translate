package android.app;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface IWallpaperManagerCallbackNative extends IInterface {
    public static final String DESCRIPTOR = "android.app.IWallpaperManagerCallbackNative";

    public static abstract class Stub extends Binder implements IWallpaperManagerCallbackNative {
        static final int TRANSACTION_onWallpaperChanged = 1;
        static final int TRANSACTION_onWallpaperColorsChanged = 2;

        private static class a implements IWallpaperManagerCallbackNative {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static IWallpaperManagerCallbackNative f149b;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f150a;

            a(IBinder iBinder) {
                this.f150a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f150a;
            }

            @Override // android.app.IWallpaperManagerCallbackNative
            public void onWallpaperChanged() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IWallpaperManagerCallbackNative.DESCRIPTOR);
                    if (this.f150a.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onWallpaperChanged();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IWallpaperManagerCallbackNative
            public void onWallpaperColorsChanged(WallpaperColors wallpaperColors, int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IWallpaperManagerCallbackNative.DESCRIPTOR);
                    if (wallpaperColors != null) {
                        parcelObtain.writeInt(1);
                        wallpaperColors.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.f150a.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    } else {
                        Stub.getDefaultImpl().onWallpaperColorsChanged(wallpaperColors, i10, i11);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }
        }

        public Stub() {
            attachInterface(this, IWallpaperManagerCallbackNative.DESCRIPTOR);
        }

        public static IWallpaperManagerCallbackNative asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IWallpaperManagerCallbackNative.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IWallpaperManagerCallbackNative)) ? new a(iBinder) : (IWallpaperManagerCallbackNative) iInterfaceQueryLocalInterface;
        }

        public static IWallpaperManagerCallbackNative getDefaultImpl() {
            return a.f149b;
        }

        public static boolean setDefaultImpl(IWallpaperManagerCallbackNative iWallpaperManagerCallbackNative) {
            if (a.f149b != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iWallpaperManagerCallbackNative == null) {
                return false;
            }
            a.f149b = iWallpaperManagerCallbackNative;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1598968902) {
                parcel2.writeString(IWallpaperManagerCallbackNative.DESCRIPTOR);
                return true;
            }
            if (i10 == 1) {
                parcel.enforceInterface(IWallpaperManagerCallbackNative.DESCRIPTOR);
                onWallpaperChanged();
                parcel2.writeNoException();
                return true;
            }
            if (i10 != 2) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel.enforceInterface(IWallpaperManagerCallbackNative.DESCRIPTOR);
            onWallpaperColorsChanged(parcel.readInt() != 0 ? (WallpaperColors) WallpaperColors.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
    }

    void onWallpaperChanged() throws RemoteException;

    void onWallpaperColorsChanged(WallpaperColors wallpaperColors, int i10, int i11) throws RemoteException;
}
