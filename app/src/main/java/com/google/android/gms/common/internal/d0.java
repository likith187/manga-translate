package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes.dex */
public final class d0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        int iA = 0;
        boolean zV = false;
        boolean zV2 = false;
        IBinder iBinderZ = null;
        ConnectionResult connectionResult = null;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            int iU = n3.a.u(iY);
            if (iU == 1) {
                iA = n3.a.A(parcel, iY);
            } else if (iU == 2) {
                iBinderZ = n3.a.z(parcel, iY);
            } else if (iU == 3) {
                connectionResult = (ConnectionResult) n3.a.n(parcel, iY, ConnectionResult.CREATOR);
            } else if (iU == 4) {
                zV = n3.a.v(parcel, iY);
            } else if (iU != 5) {
                n3.a.E(parcel, iY);
            } else {
                zV2 = n3.a.v(parcel, iY);
            }
        }
        n3.a.t(parcel, iF);
        return new zav(iA, iBinderZ, connectionResult, zV, zV2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zav[i10];
    }
}
