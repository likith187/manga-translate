package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class r implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        boolean zV = false;
        boolean zV2 = false;
        boolean zV3 = false;
        boolean zV4 = false;
        String strO = null;
        IBinder iBinderZ = null;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            switch (n3.a.u(iY)) {
                case 1:
                    strO = n3.a.o(parcel, iY);
                    break;
                case 2:
                    zV = n3.a.v(parcel, iY);
                    break;
                case 3:
                    zV2 = n3.a.v(parcel, iY);
                    break;
                case 4:
                    iBinderZ = n3.a.z(parcel, iY);
                    break;
                case 5:
                    zV3 = n3.a.v(parcel, iY);
                    break;
                case 6:
                    zV4 = n3.a.v(parcel, iY);
                    break;
                default:
                    n3.a.E(parcel, iY);
                    break;
            }
        }
        n3.a.t(parcel, iF);
        return new zzo(strO, zV, zV2, iBinderZ, zV3, zV4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zzo[i10];
    }
}
