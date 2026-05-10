package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes.dex */
public final class j implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        String strO = null;
        ConnectionResult connectionResult = null;
        int iA = 0;
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            int iU = n3.a.u(iY);
            if (iU == 1) {
                iA = n3.a.A(parcel, iY);
            } else if (iU == 2) {
                strO = n3.a.o(parcel, iY);
            } else if (iU == 3) {
                pendingIntent = (PendingIntent) n3.a.n(parcel, iY, PendingIntent.CREATOR);
            } else if (iU != 4) {
                n3.a.E(parcel, iY);
            } else {
                connectionResult = (ConnectionResult) n3.a.n(parcel, iY, ConnectionResult.CREATOR);
            }
        }
        n3.a.t(parcel, iF);
        return new Status(iA, strO, pendingIntent, connectionResult);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new Status[i10];
    }
}
