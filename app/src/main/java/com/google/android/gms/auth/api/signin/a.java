package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        String strO = null;
        String strO2 = null;
        String strO3 = null;
        String strO4 = null;
        Uri uri = null;
        String strO5 = null;
        String strO6 = null;
        ArrayList arrayListS = null;
        String strO7 = null;
        String strO8 = null;
        long jB = 0;
        int iA = 0;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            switch (n3.a.u(iY)) {
                case 1:
                    iA = n3.a.A(parcel, iY);
                    break;
                case 2:
                    strO = n3.a.o(parcel, iY);
                    break;
                case 3:
                    strO2 = n3.a.o(parcel, iY);
                    break;
                case 4:
                    strO3 = n3.a.o(parcel, iY);
                    break;
                case 5:
                    strO4 = n3.a.o(parcel, iY);
                    break;
                case 6:
                    uri = (Uri) n3.a.n(parcel, iY, Uri.CREATOR);
                    break;
                case 7:
                    strO5 = n3.a.o(parcel, iY);
                    break;
                case 8:
                    jB = n3.a.B(parcel, iY);
                    break;
                case 9:
                    strO6 = n3.a.o(parcel, iY);
                    break;
                case 10:
                    arrayListS = n3.a.s(parcel, iY, Scope.CREATOR);
                    break;
                case 11:
                    strO7 = n3.a.o(parcel, iY);
                    break;
                case 12:
                    strO8 = n3.a.o(parcel, iY);
                    break;
                default:
                    n3.a.E(parcel, iY);
                    break;
            }
        }
        n3.a.t(parcel, iF);
        return new GoogleSignInAccount(iA, strO, strO2, strO3, strO4, uri, strO5, jB, strO6, arrayListS, strO7, strO8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new GoogleSignInAccount[i10];
    }
}
