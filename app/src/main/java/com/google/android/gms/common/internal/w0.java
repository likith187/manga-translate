package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;

/* JADX INFO: loaded from: classes.dex */
public final class w0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        Bundle bundleF = null;
        ConnectionTelemetryConfiguration connectionTelemetryConfiguration = null;
        int iA = 0;
        Feature[] featureArr = null;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            int iU = n3.a.u(iY);
            if (iU == 1) {
                bundleF = n3.a.f(parcel, iY);
            } else if (iU == 2) {
                featureArr = (Feature[]) n3.a.r(parcel, iY, Feature.CREATOR);
            } else if (iU == 3) {
                iA = n3.a.A(parcel, iY);
            } else if (iU != 4) {
                n3.a.E(parcel, iY);
            } else {
                connectionTelemetryConfiguration = (ConnectionTelemetryConfiguration) n3.a.n(parcel, iY, ConnectionTelemetryConfiguration.CREATOR);
            }
        }
        n3.a.t(parcel, iF);
        return new zzk(bundleF, featureArr, iA, connectionTelemetryConfiguration);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zzk[i10];
    }
}
