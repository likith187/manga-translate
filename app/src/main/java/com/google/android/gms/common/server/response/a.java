package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.converter.zaa;
import com.google.android.gms.common.server.response.FastJsonResponse;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        String strO = null;
        String strO2 = null;
        zaa zaaVar = null;
        int iA = 0;
        int iA2 = 0;
        boolean zV = false;
        int iA3 = 0;
        boolean zV2 = false;
        int iA4 = 0;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            switch (n3.a.u(iY)) {
                case 1:
                    iA = n3.a.A(parcel, iY);
                    break;
                case 2:
                    iA2 = n3.a.A(parcel, iY);
                    break;
                case 3:
                    zV = n3.a.v(parcel, iY);
                    break;
                case 4:
                    iA3 = n3.a.A(parcel, iY);
                    break;
                case 5:
                    zV2 = n3.a.v(parcel, iY);
                    break;
                case 6:
                    strO = n3.a.o(parcel, iY);
                    break;
                case 7:
                    iA4 = n3.a.A(parcel, iY);
                    break;
                case 8:
                    strO2 = n3.a.o(parcel, iY);
                    break;
                case 9:
                    zaaVar = (zaa) n3.a.n(parcel, iY, zaa.CREATOR);
                    break;
                default:
                    n3.a.E(parcel, iY);
                    break;
            }
        }
        n3.a.t(parcel, iF);
        return new FastJsonResponse.Field(iA, iA2, zV, iA3, zV2, strO, iA4, strO2, zaaVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new FastJsonResponse.Field[i10];
    }
}
