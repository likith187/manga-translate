package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class g1 extends com.google.android.gms.internal.common.a implements IAccountAccessor {
    g1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
    }

    @Override // com.google.android.gms.common.internal.IAccountAccessor
    public final Account zzb() {
        Parcel parcelA = a(2, d());
        Account account = (Account) com.google.android.gms.internal.common.c.a(parcelA, Account.CREATOR);
        parcelA.recycle();
        return account;
    }
}
