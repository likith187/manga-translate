package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class x0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        RootTelemetryConfiguration rootTelemetryConfiguration = null;
        int[] iArrJ = null;
        int[] iArrJ2 = null;
        boolean zV = false;
        boolean zV2 = false;
        int iA = 0;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            switch (n3.a.u(iY)) {
                case 1:
                    rootTelemetryConfiguration = (RootTelemetryConfiguration) n3.a.n(parcel, iY, RootTelemetryConfiguration.CREATOR);
                    break;
                case 2:
                    zV = n3.a.v(parcel, iY);
                    break;
                case 3:
                    zV2 = n3.a.v(parcel, iY);
                    break;
                case 4:
                    iArrJ = n3.a.j(parcel, iY);
                    break;
                case 5:
                    iA = n3.a.A(parcel, iY);
                    break;
                case 6:
                    iArrJ2 = n3.a.j(parcel, iY);
                    break;
                default:
                    n3.a.E(parcel, iY);
                    break;
            }
        }
        n3.a.t(parcel, iF);
        return new ConnectionTelemetryConfiguration(rootTelemetryConfiguration, zV, zV2, iArrJ, iA, iArrJ2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new ConnectionTelemetryConfiguration[i10];
    }
}
