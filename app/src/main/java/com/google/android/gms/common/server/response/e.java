package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class e implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        Parcel parcelL = null;
        int iA = 0;
        zan zanVar = null;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            int iU = n3.a.u(iY);
            if (iU == 1) {
                iA = n3.a.A(parcel, iY);
            } else if (iU == 2) {
                parcelL = n3.a.l(parcel, iY);
            } else if (iU != 3) {
                n3.a.E(parcel, iY);
            } else {
                zanVar = (zan) n3.a.n(parcel, iY, zan.CREATOR);
            }
        }
        n3.a.t(parcel, iF);
        return new SafeParcelResponse(iA, parcelL, zanVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new SafeParcelResponse[i10];
    }
}
