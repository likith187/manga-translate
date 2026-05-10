package androidx.core.app.unusedapprestrictions;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface IUnusedAppRestrictionsBackportCallback extends IInterface {
    public static final String DESCRIPTOR = "androidx$core$app$unusedapprestrictions$IUnusedAppRestrictionsBackportCallback".replace('$', '.');

    public static abstract class Stub extends Binder implements IUnusedAppRestrictionsBackportCallback {
        static final int TRANSACTION_onIsPermissionRevocationEnabledForAppResult = 1;

        private static class a implements IUnusedAppRestrictionsBackportCallback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f1984a;

            a(IBinder iBinder) {
                this.f1984a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f1984a;
            }

            @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback
            public void onIsPermissionRevocationEnabledForAppResult(boolean z10, boolean z11) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IUnusedAppRestrictionsBackportCallback.DESCRIPTOR);
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    parcelObtain.writeInt(z11 ? 1 : 0);
                    this.f1984a.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IUnusedAppRestrictionsBackportCallback.DESCRIPTOR);
        }

        public static IUnusedAppRestrictionsBackportCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IUnusedAppRestrictionsBackportCallback.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IUnusedAppRestrictionsBackportCallback)) ? new a(iBinder) : (IUnusedAppRestrictionsBackportCallback) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            String str = IUnusedAppRestrictionsBackportCallback.DESCRIPTOR;
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i10 != 1) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            onIsPermissionRevocationEnabledForAppResult(parcel.readInt() != 0, parcel.readInt() != 0);
            return true;
        }
    }

    void onIsPermissionRevocationEnabledForAppResult(boolean z10, boolean z11) throws RemoteException;
}
