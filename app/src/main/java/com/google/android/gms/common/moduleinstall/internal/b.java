package com.google.android.gms.common.moduleinstall.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        ArrayList arrayListS = null;
        String strO = null;
        boolean zV = false;
        String strO2 = null;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            int iU = n3.a.u(iY);
            if (iU == 1) {
                arrayListS = n3.a.s(parcel, iY, Feature.CREATOR);
            } else if (iU == 2) {
                zV = n3.a.v(parcel, iY);
            } else if (iU == 3) {
                strO2 = n3.a.o(parcel, iY);
            } else if (iU != 4) {
                n3.a.E(parcel, iY);
            } else {
                strO = n3.a.o(parcel, iY);
            }
        }
        n3.a.t(parcel, iF);
        return new ApiFeatureRequest(arrayListS, zV, strO2, strO);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new ApiFeatureRequest[i10];
    }
}
