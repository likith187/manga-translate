package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public class ClientIdentity extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ClientIdentity> CREATOR = new p();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f7775a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f7776b;

    public ClientIdentity(int i10, String str) {
        this.f7775a = i10;
        this.f7776b = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClientIdentity)) {
            return false;
        }
        ClientIdentity clientIdentity = (ClientIdentity) obj;
        return clientIdentity.f7775a == this.f7775a && j.a(clientIdentity.f7776b, this.f7776b);
    }

    public final int hashCode() {
        return this.f7775a;
    }

    public final String toString() {
        return this.f7775a + ":" + this.f7776b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f7775a;
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, i11);
        n3.b.m(parcel, 2, this.f7776b, false);
        n3.b.b(parcel, iA);
    }
}
