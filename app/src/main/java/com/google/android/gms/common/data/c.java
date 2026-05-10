package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class c implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        String[] strArrP = null;
        CursorWindow[] cursorWindowArr = null;
        Bundle bundleF = null;
        int iA = 0;
        int iA2 = 0;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            int iU = n3.a.u(iY);
            if (iU == 1) {
                strArrP = n3.a.p(parcel, iY);
            } else if (iU == 2) {
                cursorWindowArr = (CursorWindow[]) n3.a.r(parcel, iY, CursorWindow.CREATOR);
            } else if (iU == 3) {
                iA2 = n3.a.A(parcel, iY);
            } else if (iU == 4) {
                bundleF = n3.a.f(parcel, iY);
            } else if (iU != 1000) {
                n3.a.E(parcel, iY);
            } else {
                iA = n3.a.A(parcel, iY);
            }
        }
        n3.a.t(parcel, iF);
        DataHolder dataHolder = new DataHolder(iA, strArrP, cursorWindowArr, iA2, bundleF);
        dataHolder.F0();
        return dataHolder;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new DataHolder[i10];
    }
}
