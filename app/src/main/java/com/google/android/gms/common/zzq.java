package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public final class zzq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzq> CREATOR = new s();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f8044a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f8045b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f8046c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f8047f;

    zzq(boolean z10, String str, int i10, int i11) {
        this.f8044a = z10;
        this.f8045b = str;
        this.f8046c = u.a(i10) - 1;
        this.f8047f = h.a(i11) - 1;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = n3.b.a(parcel);
        n3.b.c(parcel, 1, this.f8044a);
        n3.b.m(parcel, 2, this.f8045b, false);
        n3.b.g(parcel, 3, this.f8046c);
        n3.b.g(parcel, 4, this.f8047f);
        n3.b.b(parcel, iA);
    }
}
