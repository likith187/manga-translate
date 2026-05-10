package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        int iA = 0;
        int iA2 = 0;
        int iA3 = 0;
        int iA4 = 0;
        boolean zV = false;
        String strO = null;
        ArrayList arrayListQ = null;
        String strO2 = null;
        String strO3 = null;
        String strO4 = null;
        String strO5 = null;
        long jB = 0;
        long jB2 = 0;
        long jB3 = 0;
        float fX = 0.0f;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            switch (n3.a.u(iY)) {
                case 1:
                    iA = n3.a.A(parcel, iY);
                    break;
                case 2:
                    jB = n3.a.B(parcel, iY);
                    break;
                case 3:
                case 7:
                case 9:
                default:
                    n3.a.E(parcel, iY);
                    break;
                case 4:
                    strO = n3.a.o(parcel, iY);
                    break;
                case 5:
                    iA3 = n3.a.A(parcel, iY);
                    break;
                case 6:
                    arrayListQ = n3.a.q(parcel, iY);
                    break;
                case 8:
                    jB2 = n3.a.B(parcel, iY);
                    break;
                case 10:
                    strO3 = n3.a.o(parcel, iY);
                    break;
                case 11:
                    iA2 = n3.a.A(parcel, iY);
                    break;
                case 12:
                    strO2 = n3.a.o(parcel, iY);
                    break;
                case 13:
                    strO4 = n3.a.o(parcel, iY);
                    break;
                case 14:
                    iA4 = n3.a.A(parcel, iY);
                    break;
                case 15:
                    fX = n3.a.x(parcel, iY);
                    break;
                case 16:
                    jB3 = n3.a.B(parcel, iY);
                    break;
                case 17:
                    strO5 = n3.a.o(parcel, iY);
                    break;
                case 18:
                    zV = n3.a.v(parcel, iY);
                    break;
            }
        }
        n3.a.t(parcel, iF);
        return new WakeLockEvent(iA, jB, iA2, strO, iA3, arrayListQ, strO2, jB2, iA4, strO3, strO4, fX, jB3, strO5, zV);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new WakeLockEvent[i10];
    }
}
