package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public final class zaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaa> CREATOR = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f8875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f8876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Intent f8877c;

    zaa(int i10, int i11, Intent intent) {
        this.f8875a = i10;
        this.f8876b = i11;
        this.f8877c = intent;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f8875a;
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, i11);
        n3.b.g(parcel, 2, this.f8876b);
        n3.b.l(parcel, 3, this.f8877c, i10, false);
        n3.b.b(parcel, iA);
    }
}
