package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        String strO = null;
        int iA = 0;
        FastJsonResponse.Field field = null;
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
                field = (FastJsonResponse.Field) n3.a.n(parcel, iY, FastJsonResponse.Field.CREATOR);
            }
        }
        n3.a.t(parcel, iF);
        return new zam(iA, strO, field);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zam[i10];
    }
}
