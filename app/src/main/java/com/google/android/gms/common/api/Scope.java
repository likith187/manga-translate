package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public final class Scope extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new i();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f7568a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f7569b;

    Scope(int i10, String str) {
        k.f(str, "scopeUri must not be null or empty");
        this.f7568a = i10;
        this.f7569b = str;
    }

    public String D0() {
        return this.f7569b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Scope) {
            return this.f7569b.equals(((Scope) obj).f7569b);
        }
        return false;
    }

    public int hashCode() {
        return this.f7569b.hashCode();
    }

    public String toString() {
        return this.f7569b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f7568a;
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, i11);
        n3.b.m(parcel, 2, D0(), false);
        n3.b.b(parcel, iA);
    }

    public Scope(String str) {
        this(1, str);
    }
}
