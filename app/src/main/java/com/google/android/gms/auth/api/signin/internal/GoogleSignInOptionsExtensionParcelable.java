package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import n3.b;

/* JADX INFO: loaded from: classes.dex */
public class GoogleSignInOptionsExtensionParcelable extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f7545a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f7546b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bundle f7547c;

    GoogleSignInOptionsExtensionParcelable(int i10, int i11, Bundle bundle) {
        this.f7545a = i10;
        this.f7546b = i11;
        this.f7547c = bundle;
    }

    public int D0() {
        return this.f7546b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = b.a(parcel);
        b.g(parcel, 1, this.f7545a);
        b.g(parcel, 2, D0());
        b.d(parcel, 3, this.f7547c, false);
        b.b(parcel, iA);
    }
}
