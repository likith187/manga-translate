package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;

/* JADX INFO: loaded from: classes.dex */
public final class e0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        Scope[] scopeArr = null;
        int iA = 0;
        int iA2 = 0;
        int iA3 = 0;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            int iU = n3.a.u(iY);
            if (iU == 1) {
                iA = n3.a.A(parcel, iY);
            } else if (iU == 2) {
                iA2 = n3.a.A(parcel, iY);
            } else if (iU == 3) {
                iA3 = n3.a.A(parcel, iY);
            } else if (iU != 4) {
                n3.a.E(parcel, iY);
            } else {
                scopeArr = (Scope[]) n3.a.r(parcel, iY, Scope.CREATOR);
            }
        }
        n3.a.t(parcel, iF);
        return new zax(iA, iA2, iA3, scopeArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zax[i10];
    }
}
