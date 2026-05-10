package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public final class zax extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zax> CREATOR = new e0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f7946a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f7947b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f7948c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Scope[] f7949f;

    zax(int i10, int i11, int i12, Scope[] scopeArr) {
        this.f7946a = i10;
        this.f7947b = i11;
        this.f7948c = i12;
        this.f7949f = scopeArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f7946a;
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, i11);
        n3.b.g(parcel, 2, this.f7947b);
        n3.b.g(parcel, 3, this.f7948c);
        n3.b.p(parcel, 4, this.f7949f, i10, false);
        n3.b.b(parcel, iA);
    }
}
