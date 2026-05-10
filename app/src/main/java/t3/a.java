package t3;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IBinder f15696a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f15697b;

    protected a(IBinder iBinder, String str) {
        this.f15696a = iBinder;
        this.f15697b = str;
    }

    protected final Parcel a() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f15697b);
        return parcelObtain;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f15696a;
    }

    protected final Parcel b(int i10, Parcel parcel) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.f15696a.transact(2, parcel, parcelObtain, 0);
                parcelObtain.readException();
                return parcelObtain;
            } catch (RuntimeException e10) {
                parcelObtain.recycle();
                throw e10;
            }
        } finally {
            parcel.recycle();
        }
    }

    protected final void c(int i10, Parcel parcel) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            this.f15696a.transact(i10, parcel, parcelObtain, 0);
            parcelObtain.readException();
        } finally {
            parcel.recycle();
            parcelObtain.recycle();
        }
    }

    protected final void d(int i10, Parcel parcel) {
        try {
            this.f15696a.transact(1, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
