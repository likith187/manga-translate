package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class e implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        ArrayList arrayListQ = null;
        String strO = null;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            int iU = n3.a.u(iY);
            if (iU == 1) {
                arrayListQ = n3.a.q(parcel, iY);
            } else if (iU != 2) {
                n3.a.E(parcel, iY);
            } else {
                strO = n3.a.o(parcel, iY);
            }
        }
        n3.a.t(parcel, iF);
        return new zag(arrayListQ, strO);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zag[i10];
    }
}
