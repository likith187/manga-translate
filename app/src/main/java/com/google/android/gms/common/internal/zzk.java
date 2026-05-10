package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public final class zzk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzk> CREATOR = new w0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Bundle f7951a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Feature[] f7952b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f7953c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ConnectionTelemetryConfiguration f7954f;

    zzk(Bundle bundle, Feature[] featureArr, int i10, ConnectionTelemetryConfiguration connectionTelemetryConfiguration) {
        this.f7951a = bundle;
        this.f7952b = featureArr;
        this.f7953c = i10;
        this.f7954f = connectionTelemetryConfiguration;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = n3.b.a(parcel);
        n3.b.d(parcel, 1, this.f7951a, false);
        n3.b.p(parcel, 2, this.f7952b, i10, false);
        n3.b.g(parcel, 3, this.f7953c);
        n3.b.l(parcel, 4, this.f7954f, i10, false);
        n3.b.b(parcel, iA);
    }
}
