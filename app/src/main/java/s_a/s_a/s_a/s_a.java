package s_a.s_a.s_a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public interface s_a extends IInterface {

    /* JADX INFO: renamed from: s_a.s_a.s_a.s_a$s_a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0218s_a extends Binder implements s_a {

        /* JADX INFO: renamed from: s_a, reason: collision with root package name */
        public static final String f15584s_a = ca.a.a("Y29tLmhleXRhcC5vcGVuaWQuSU9wZW5JRA==");

        /* JADX INFO: renamed from: s_a.s_a.s_a.s_a$s_a$a */
        public static class a implements s_a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f15585a;

            public a(IBinder iBinder) {
                this.f15585a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f15585a;
            }

            @Override // s_a.s_a.s_a.s_a
            public String s_a(String str, String str2, String str3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC0218s_a.f15584s_a);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    this.f15585a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static s_a s_a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(f15584s_a);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof s_a)) ? new a(iBinder) : (s_a) iInterfaceQueryLocalInterface;
        }
    }

    String s_a(String str, String str2, String str3);
}
