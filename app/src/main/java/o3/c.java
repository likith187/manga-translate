package o3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.moduleinstall.ModuleInstallResponse;

/* JADX INFO: loaded from: classes.dex */
public final class c implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        int iA = 0;
        boolean zV = false;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            int iU = n3.a.u(iY);
            if (iU == 1) {
                iA = n3.a.A(parcel, iY);
            } else if (iU != 2) {
                n3.a.E(parcel, iY);
            } else {
                zV = n3.a.v(parcel, iY);
            }
        }
        n3.a.t(parcel, iF);
        return new ModuleInstallResponse(iA, zV);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new ModuleInstallResponse[i10];
    }
}
