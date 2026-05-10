package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class n0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        int iA = 0;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            if (n3.a.u(iY) != 1) {
                n3.a.E(parcel, iY);
            } else {
                iA = n3.a.A(parcel, iY);
            }
        }
        n3.a.t(parcel, iF);
        return new zzak(iA);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zzak[i10];
    }
}
