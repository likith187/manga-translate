package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zat;

/* JADX INFO: loaded from: classes.dex */
public final class zai extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zai> CREATOR = new f();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f8880a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final zat f8881b;

    zai(int i10, zat zatVar) {
        this.f8880a = i10;
        this.f8881b = zatVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, this.f8880a);
        n3.b.l(parcel, 2, this.f8881b, i10, false);
        n3.b.b(parcel, iA);
    }
}
