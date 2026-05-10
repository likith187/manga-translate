package com.google.android.gms.signin.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class d extends t3.a implements IInterface {
    d(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.signin.internal.ISignInService");
    }

    public final void e(zai zaiVar, zae zaeVar) {
        Parcel parcelA = a();
        t3.c.c(parcelA, zaiVar);
        t3.c.d(parcelA, zaeVar);
        c(12, parcelA);
    }
}
