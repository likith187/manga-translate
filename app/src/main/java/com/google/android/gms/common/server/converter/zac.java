package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public final class zac extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zac> CREATOR = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f7993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f7994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f7995c;

    zac(int i10, String str, int i11) {
        this.f7993a = i10;
        this.f7994b = str;
        this.f7995c = i11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f7993a;
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, i11);
        n3.b.m(parcel, 2, this.f7994b, false);
        n3.b.g(parcel, 3, this.f7995c);
        n3.b.b(parcel, iA);
    }

    zac(String str, int i10) {
        this.f7993a = 1;
        this.f7994b = str;
        this.f7995c = i10;
    }
}
