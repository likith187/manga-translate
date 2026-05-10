package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class q implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        ArrayList arrayListS = null;
        int iA = 0;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            int iU = n3.a.u(iY);
            if (iU == 1) {
                iA = n3.a.A(parcel, iY);
            } else if (iU != 2) {
                n3.a.E(parcel, iY);
            } else {
                arrayListS = n3.a.s(parcel, iY, MethodInvocation.CREATOR);
            }
        }
        n3.a.t(parcel, iF);
        return new TelemetryData(iA, arrayListS);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new TelemetryData[i10];
    }
}
