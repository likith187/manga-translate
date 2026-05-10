package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public class RootTelemetryConfiguration extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RootTelemetryConfiguration> CREATOR = new m0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f7809a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f7810b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f7811c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f7812f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f7813h;

    public RootTelemetryConfiguration(int i10, boolean z10, boolean z11, int i11, int i12) {
        this.f7809a = i10;
        this.f7810b = z10;
        this.f7811c = z11;
        this.f7812f = i11;
        this.f7813h = i12;
    }

    public int D0() {
        return this.f7812f;
    }

    public int E0() {
        return this.f7813h;
    }

    public boolean F0() {
        return this.f7810b;
    }

    public boolean G0() {
        return this.f7811c;
    }

    public int l0() {
        return this.f7809a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, l0());
        n3.b.c(parcel, 2, F0());
        n3.b.c(parcel, 3, G0());
        n3.b.g(parcel, 4, D0());
        n3.b.g(parcel, 5, E0());
        n3.b.b(parcel, iA);
    }
}
