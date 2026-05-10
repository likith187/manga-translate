package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zav;

/* JADX INFO: loaded from: classes.dex */
public final class g implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        ConnectionResult connectionResult = null;
        int iA = 0;
        zav zavVar = null;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            int iU = n3.a.u(iY);
            if (iU == 1) {
                iA = n3.a.A(parcel, iY);
            } else if (iU == 2) {
                connectionResult = (ConnectionResult) n3.a.n(parcel, iY, ConnectionResult.CREATOR);
            } else if (iU != 3) {
                n3.a.E(parcel, iY);
            } else {
                zavVar = (zav) n3.a.n(parcel, iY, zav.CREATOR);
            }
        }
        n3.a.t(parcel, iF);
        return new zak(iA, connectionResult, zavVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zak[i10];
    }
}
