package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class c implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        int iA = 0;
        String strO = null;
        int iA2 = 0;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            int iU = n3.a.u(iY);
            if (iU == 1) {
                iA = n3.a.A(parcel, iY);
            } else if (iU == 2) {
                strO = n3.a.o(parcel, iY);
            } else if (iU != 3) {
                n3.a.E(parcel, iY);
            } else {
                iA2 = n3.a.A(parcel, iY);
            }
        }
        n3.a.t(parcel, iF);
        return new zac(iA, strO, iA2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zac[i10];
    }
}
