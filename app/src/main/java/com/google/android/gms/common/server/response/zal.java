package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zal extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zal> CREATOR = new d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f8014a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f8015b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ArrayList f8016c;

    zal(int i10, String str, ArrayList arrayList) {
        this.f8014a = i10;
        this.f8015b = str;
        this.f8016c = arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f8014a;
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, i11);
        n3.b.m(parcel, 2, this.f8015b, false);
        n3.b.q(parcel, 3, this.f8016c, false);
        n3.b.b(parcel, iA);
    }

    zal(String str, Map map) {
        ArrayList arrayList;
        this.f8014a = 1;
        this.f8015b = str;
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            for (String str2 : map.keySet()) {
                arrayList.add(new zam(str2, (FastJsonResponse.Field) map.get(str2)));
            }
        }
        this.f8016c = arrayList;
    }
}
