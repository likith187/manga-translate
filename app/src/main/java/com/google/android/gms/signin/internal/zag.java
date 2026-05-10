package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zag extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zag> CREATOR = new e();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f8878a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f8879b;

    public zag(List list, String str) {
        this.f8878a = list;
        this.f8879b = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        List list = this.f8878a;
        int iA = n3.b.a(parcel);
        n3.b.o(parcel, 1, list, false);
        n3.b.m(parcel, 2, this.f8879b, false);
        n3.b.b(parcel, iA);
    }
}
