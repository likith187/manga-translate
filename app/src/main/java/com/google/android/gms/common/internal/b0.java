package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class b0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        int iA = -1;
        int iA2 = 0;
        int iA3 = 0;
        int iA4 = 0;
        int iA5 = 0;
        String strO = null;
        String strO2 = null;
        long jB = 0;
        long jB2 = 0;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            switch (n3.a.u(iY)) {
                case 1:
                    iA2 = n3.a.A(parcel, iY);
                    break;
                case 2:
                    iA3 = n3.a.A(parcel, iY);
                    break;
                case 3:
                    iA4 = n3.a.A(parcel, iY);
                    break;
                case 4:
                    jB = n3.a.B(parcel, iY);
                    break;
                case 5:
                    jB2 = n3.a.B(parcel, iY);
                    break;
                case 6:
                    strO = n3.a.o(parcel, iY);
                    break;
                case 7:
                    strO2 = n3.a.o(parcel, iY);
                    break;
                case 8:
                    iA5 = n3.a.A(parcel, iY);
                    break;
                case 9:
                    iA = n3.a.A(parcel, iY);
                    break;
                default:
                    n3.a.E(parcel, iY);
                    break;
            }
        }
        n3.a.t(parcel, iF);
        return new MethodInvocation(iA2, iA3, iA4, jB, jB2, strO, strO2, iA5, iA);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new MethodInvocation[i10];
    }
}
