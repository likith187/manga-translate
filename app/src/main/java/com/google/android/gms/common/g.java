package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class g implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        PendingIntent pendingIntent = null;
        int iA = 0;
        int iA2 = 0;
        String strO = null;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            int iU = n3.a.u(iY);
            if (iU == 1) {
                iA = n3.a.A(parcel, iY);
            } else if (iU == 2) {
                iA2 = n3.a.A(parcel, iY);
            } else if (iU == 3) {
                pendingIntent = (PendingIntent) n3.a.n(parcel, iY, PendingIntent.CREATOR);
            } else if (iU != 4) {
                n3.a.E(parcel, iY);
            } else {
                strO = n3.a.o(parcel, iY);
            }
        }
        n3.a.t(parcel, iF);
        return new ConnectionResult(iA, iA2, pendingIntent, strO);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new ConnectionResult[i10];
    }
}
