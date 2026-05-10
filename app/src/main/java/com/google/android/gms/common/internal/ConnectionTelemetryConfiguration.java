package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public class ConnectionTelemetryConfiguration extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ConnectionTelemetryConfiguration> CREATOR = new x0();

    /* JADX INFO: renamed from: a */
    private final RootTelemetryConfiguration f7777a;

    /* JADX INFO: renamed from: b */
    private final boolean f7778b;

    /* JADX INFO: renamed from: c */
    private final boolean f7779c;

    /* JADX INFO: renamed from: f */
    private final int[] f7780f;

    /* JADX INFO: renamed from: h */
    private final int f7781h;

    /* JADX INFO: renamed from: i */
    private final int[] f7782i;

    public ConnectionTelemetryConfiguration(RootTelemetryConfiguration rootTelemetryConfiguration, boolean z10, boolean z11, int[] iArr, int i10, int[] iArr2) {
        this.f7777a = rootTelemetryConfiguration;
        this.f7778b = z10;
        this.f7779c = z11;
        this.f7780f = iArr;
        this.f7781h = i10;
        this.f7782i = iArr2;
    }

    public int D0() {
        return this.f7781h;
    }

    public int[] E0() {
        return this.f7780f;
    }

    public int[] F0() {
        return this.f7782i;
    }

    public boolean G0() {
        return this.f7778b;
    }

    public boolean H0() {
        return this.f7779c;
    }

    public final RootTelemetryConfiguration I0() {
        return this.f7777a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = n3.b.a(parcel);
        n3.b.l(parcel, 1, this.f7777a, i10, false);
        n3.b.c(parcel, 2, G0());
        n3.b.c(parcel, 3, H0());
        n3.b.h(parcel, 4, E0(), false);
        n3.b.g(parcel, 5, D0());
        n3.b.h(parcel, 6, F0(), false);
        n3.b.b(parcel, iA);
    }
}
