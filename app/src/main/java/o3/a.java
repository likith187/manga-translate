package o3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.moduleinstall.ModuleAvailabilityResponse;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        boolean zV = false;
        int iA = 0;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            int iU = n3.a.u(iY);
            if (iU == 1) {
                zV = n3.a.v(parcel, iY);
            } else if (iU != 2) {
                n3.a.E(parcel, iY);
            } else {
                iA = n3.a.A(parcel, iY);
            }
        }
        n3.a.t(parcel, iF);
        return new ModuleAvailabilityResponse(zV, iA);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new ModuleAvailabilityResponse[i10];
    }
}
