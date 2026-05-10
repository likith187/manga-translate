package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zav;

/* JADX INFO: loaded from: classes.dex */
public final class zak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zak> CREATOR = new g();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f8882a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConnectionResult f8883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zav f8884c;

    zak(int i10, ConnectionResult connectionResult, zav zavVar) {
        this.f8882a = i10;
        this.f8883b = connectionResult;
        this.f8884c = zavVar;
    }

    public final ConnectionResult D0() {
        return this.f8883b;
    }

    public final zav E0() {
        return this.f8884c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, this.f8882a);
        n3.b.l(parcel, 2, this.f8883b, i10, false);
        n3.b.l(parcel, 3, this.f8884c, i10, false);
        n3.b.b(parcel, iA);
    }
}
