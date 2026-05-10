package com.google.android.gms.common.moduleinstall;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import n3.b;
import o3.c;

/* JADX INFO: loaded from: classes.dex */
public class ModuleInstallResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ModuleInstallResponse> CREATOR = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f7959a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f7960b;

    public ModuleInstallResponse(int i10, boolean z10) {
        this.f7959a = i10;
        this.f7960b = z10;
    }

    public int D0() {
        return this.f7959a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = b.a(parcel);
        b.g(parcel, 1, D0());
        b.c(parcel, 2, this.f7960b);
        b.b(parcel, iA);
    }
}
