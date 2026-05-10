package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class zzak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzak> CREATOR = new n0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f7950a;

    zzak(int i10) {
        this.f7950a = i10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f7950a;
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, i11);
        n3.b.b(parcel, iA);
    }
}
