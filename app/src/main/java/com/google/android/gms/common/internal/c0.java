package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;

/* JADX INFO: loaded from: classes.dex */
public final class c0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iF = n3.a.F(parcel);
        Account account = null;
        int iA = 0;
        int iA2 = 0;
        GoogleSignInAccount googleSignInAccount = null;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            int iU = n3.a.u(iY);
            if (iU == 1) {
                iA = n3.a.A(parcel, iY);
            } else if (iU == 2) {
                account = (Account) n3.a.n(parcel, iY, Account.CREATOR);
            } else if (iU == 3) {
                iA2 = n3.a.A(parcel, iY);
            } else if (iU != 4) {
                n3.a.E(parcel, iY);
            } else {
                googleSignInAccount = (GoogleSignInAccount) n3.a.n(parcel, iY, GoogleSignInAccount.CREATOR);
            }
        }
        n3.a.t(parcel, iF);
        return new zat(iA, account, iA2, googleSignInAccount);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zat[i10];
    }
}
