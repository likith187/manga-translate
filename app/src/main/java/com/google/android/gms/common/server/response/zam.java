package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;

/* JADX INFO: loaded from: classes.dex */
public final class zam extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zam> CREATOR = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f8017a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f8018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final FastJsonResponse.Field f8019c;

    zam(int i10, String str, FastJsonResponse.Field field) {
        this.f8017a = i10;
        this.f8018b = str;
        this.f8019c = field;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f8017a;
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, i11);
        n3.b.m(parcel, 2, this.f8018b, false);
        n3.b.l(parcel, 3, this.f8019c, i10, false);
        n3.b.b(parcel, iA);
    }

    zam(String str, FastJsonResponse.Field field) {
        this.f8017a = 1;
        this.f8018b = str;
        this.f8019c = field;
    }
}
