package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public final class zat extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zat> CREATOR = new c0();

    /* JADX INFO: renamed from: a */
    final int f7937a;

    /* JADX INFO: renamed from: b */
    private final Account f7938b;

    /* JADX INFO: renamed from: c */
    private final int f7939c;

    /* JADX INFO: renamed from: f */
    private final GoogleSignInAccount f7940f;

    zat(int i10, Account account, int i11, GoogleSignInAccount googleSignInAccount) {
        this.f7937a = i10;
        this.f7938b = account;
        this.f7939c = i11;
        this.f7940f = googleSignInAccount;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f7937a;
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, i11);
        n3.b.l(parcel, 2, this.f7938b, i10, false);
        n3.b.g(parcel, 3, this.f7939c);
        n3.b.l(parcel, 4, this.f7940f, i10, false);
        n3.b.b(parcel, iA);
    }

    public zat(Account account, int i10, GoogleSignInAccount googleSignInAccount) {
        this(2, account, i10, googleSignInAccount);
    }
}
