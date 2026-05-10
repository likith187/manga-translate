package com.google.android.gms.common.moduleinstall;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import n3.b;
import o3.a;

/* JADX INFO: loaded from: classes.dex */
public class ModuleAvailabilityResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ModuleAvailabilityResponse> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f7956a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f7957b;

    public ModuleAvailabilityResponse(boolean z10, int i10) {
        this.f7956a = z10;
        this.f7957b = i10;
    }

    public boolean D0() {
        return this.f7956a;
    }

    public int E0() {
        return this.f7957b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = b.a(parcel);
        b.c(parcel, 1, D0());
        b.g(parcel, 2, E0());
        b.b(parcel, iA);
    }
}
