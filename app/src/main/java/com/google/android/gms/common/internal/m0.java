package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class m0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        int iA = 0;
        boolean zV = false;
        boolean zV2 = false;
        int iA2 = 0;
        int iA3 = 0;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            int iU = n3.a.u(iY);
            if (iU == 1) {
                iA = n3.a.A(parcel, iY);
            } else if (iU == 2) {
                zV = n3.a.v(parcel, iY);
            } else if (iU == 3) {
                zV2 = n3.a.v(parcel, iY);
            } else if (iU == 4) {
                iA2 = n3.a.A(parcel, iY);
            } else if (iU != 5) {
                n3.a.E(parcel, iY);
            } else {
                iA3 = n3.a.A(parcel, iY);
            }
        }
        n3.a.t(parcel, iF);
        return new RootTelemetryConfiguration(iA, zV, zV2, iA2, iA3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new RootTelemetryConfiguration[i10];
    }
}
