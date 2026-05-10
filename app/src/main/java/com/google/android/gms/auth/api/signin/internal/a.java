package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        Bundle bundleF = null;
        int iA = 0;
        int iA2 = 0;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            int iU = n3.a.u(iY);
            if (iU == 1) {
                iA = n3.a.A(parcel, iY);
            } else if (iU == 2) {
                iA2 = n3.a.A(parcel, iY);
            } else if (iU != 3) {
                n3.a.E(parcel, iY);
            } else {
                bundleF = n3.a.f(parcel, iY);
            }
        }
        n3.a.t(parcel, iF);
        return new GoogleSignInOptionsExtensionParcelable(iA, iA2, bundleF);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new GoogleSignInOptionsExtensionParcelable[i10];
    }
}
