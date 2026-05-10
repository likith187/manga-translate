package s_a.s_a.s_a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public interface s_b extends IInterface {

    public static abstract class s_a extends Binder implements s_b {

        public static class a implements s_b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f15586a;

            public a(IBinder iBinder) {
                this.f15586a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f15586a;
            }

            @Override // s_a.s_a.s_a.s_b
            public String s_b(String str, String str2, String str3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.oplus.stdid.IStdID");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    this.f15586a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static s_b s_a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.oplus.stdid.IStdID");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof s_b)) ? new a(iBinder) : (s_b) iInterfaceQueryLocalInterface;
        }
    }

    String s_b(String str, String str2, String str3);
}
