package o3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.moduleinstall.ModuleInstallStatusUpdate;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        int iA = 0;
        int iA2 = 0;
        int iA3 = 0;
        Long lC = null;
        Long lC2 = null;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            int iU = n3.a.u(iY);
            if (iU == 1) {
                iA = n3.a.A(parcel, iY);
            } else if (iU == 2) {
                iA2 = n3.a.A(parcel, iY);
            } else if (iU == 3) {
                lC = n3.a.C(parcel, iY);
            } else if (iU == 4) {
                lC2 = n3.a.C(parcel, iY);
            } else if (iU != 5) {
                n3.a.E(parcel, iY);
            } else {
                iA3 = n3.a.A(parcel, iY);
            }
        }
        n3.a.t(parcel, iF);
        return new ModuleInstallStatusUpdate(iA, iA2, lC, lC2, iA3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new ModuleInstallStatusUpdate[i10];
    }
}
