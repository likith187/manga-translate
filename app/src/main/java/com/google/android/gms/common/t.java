package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class t implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        boolean zV = false;
        String strO = null;
        IBinder iBinderZ = null;
        boolean zV2 = false;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            int iU = n3.a.u(iY);
            if (iU == 1) {
                strO = n3.a.o(parcel, iY);
            } else if (iU == 2) {
                iBinderZ = n3.a.z(parcel, iY);
            } else if (iU == 3) {
                zV = n3.a.v(parcel, iY);
            } else if (iU != 4) {
                n3.a.E(parcel, iY);
            } else {
                zV2 = n3.a.v(parcel, iY);
            }
        }
        n3.a.t(parcel, iF);
        return new zzs(strO, iBinderZ, zV, zV2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zzs[i10];
    }
}
