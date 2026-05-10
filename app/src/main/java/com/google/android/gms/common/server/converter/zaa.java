package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;

/* JADX INFO: loaded from: classes.dex */
public final class zaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaa> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f7991a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final StringToIntConverter f7992b;

    zaa(int i10, StringToIntConverter stringToIntConverter) {
        this.f7991a = i10;
        this.f7992b = stringToIntConverter;
    }

    public static zaa D0(FastJsonResponse.a aVar) {
        if (aVar instanceof StringToIntConverter) {
            return new zaa((StringToIntConverter) aVar);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    public final FastJsonResponse.a E0() {
        StringToIntConverter stringToIntConverter = this.f7992b;
        if (stringToIntConverter != null) {
            return stringToIntConverter;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f7991a;
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, i11);
        n3.b.l(parcel, 2, this.f7992b, i10, false);
        n3.b.b(parcel, iA);
    }

    private zaa(StringToIntConverter stringToIntConverter) {
        this.f7991a = 1;
        this.f7992b = stringToIntConverter;
    }
}
