package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public final class zav extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zav> CREATOR = new d0();

    /* JADX INFO: renamed from: a */
    final int f7941a;

    /* JADX INFO: renamed from: b */
    final IBinder f7942b;

    /* JADX INFO: renamed from: c */
    private final ConnectionResult f7943c;

    /* JADX INFO: renamed from: f */
    private final boolean f7944f;

    /* JADX INFO: renamed from: h */
    private final boolean f7945h;

    zav(int i10, IBinder iBinder, ConnectionResult connectionResult, boolean z10, boolean z11) {
        this.f7941a = i10;
        this.f7942b = iBinder;
        this.f7943c = connectionResult;
        this.f7944f = z10;
        this.f7945h = z11;
    }

    public final ConnectionResult D0() {
        return this.f7943c;
    }

    public final IAccountAccessor E0() {
        IBinder iBinder = this.f7942b;
        if (iBinder == null) {
            return null;
        }
        return IAccountAccessor.Stub.asInterface(iBinder);
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zav)) {
            return false;
        }
        zav zavVar = (zav) obj;
        return this.f7943c.equals(zavVar.f7943c) && j.a(E0(), zavVar.E0());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, this.f7941a);
        n3.b.f(parcel, 2, this.f7942b, false);
        n3.b.l(parcel, 3, this.f7943c, i10, false);
        n3.b.c(parcel, 4, this.f7944f);
        n3.b.c(parcel, 5, this.f7945h);
        n3.b.b(parcel, iA);
    }
}
