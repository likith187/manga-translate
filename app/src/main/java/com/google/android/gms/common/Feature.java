package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.j;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.oplus.backup.sdk.common.plugin.BRPluginConfig;

/* JADX INFO: loaded from: classes.dex */
public class Feature extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Feature> CREATOR = new l3.b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7556a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f7557b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f7558c;

    public Feature(String str, int i10, long j10) {
        this.f7556a = str;
        this.f7557b = i10;
        this.f7558c = j10;
    }

    public String D0() {
        return this.f7556a;
    }

    public long E0() {
        long j10 = this.f7558c;
        return j10 == -1 ? this.f7557b : j10;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Feature) {
            Feature feature = (Feature) obj;
            if (((D0() != null && D0().equals(feature.D0())) || (D0() == null && feature.D0() == null)) && E0() == feature.E0()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.j.b(D0(), Long.valueOf(E0()));
    }

    public final String toString() {
        j.a aVarC = com.google.android.gms.common.internal.j.c(this);
        aVarC.a("name", D0());
        aVarC.a(BRPluginConfig.VERSION, Long.valueOf(E0()));
        return aVarC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = n3.b.a(parcel);
        n3.b.m(parcel, 1, D0(), false);
        n3.b.g(parcel, 2, this.f7557b);
        n3.b.i(parcel, 3, E0());
        n3.b.b(parcel, iA);
    }

    public Feature(String str, long j10) {
        this.f7556a = str;
        this.f7558c = j10;
        this.f7557b = -1;
    }
}
