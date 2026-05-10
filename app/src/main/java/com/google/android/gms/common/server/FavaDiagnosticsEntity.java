package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import n3.b;
import p3.a;

/* JADX INFO: loaded from: classes.dex */
public class FavaDiagnosticsEntity extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<FavaDiagnosticsEntity> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f7985a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f7986b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f7987c;

    public FavaDiagnosticsEntity(int i10, String str, int i11) {
        this.f7985a = i10;
        this.f7986b = str;
        this.f7987c = i11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f7985a;
        int iA = b.a(parcel);
        b.g(parcel, 1, i11);
        b.m(parcel, 2, this.f7986b, false);
        b.g(parcel, 3, this.f7987c);
        b.b(parcel, iA);
    }
}
