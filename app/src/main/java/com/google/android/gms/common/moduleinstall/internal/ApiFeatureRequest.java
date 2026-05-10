package com.google.android.gms.common.moduleinstall.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.j;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ApiFeatureRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ApiFeatureRequest> CREATOR = new b();

    /* JADX INFO: renamed from: h */
    private static final Comparator f7969h = new Comparator() { // from class: com.google.android.gms.common.moduleinstall.internal.a
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            Feature feature = (Feature) obj;
            Feature feature2 = (Feature) obj2;
            Parcelable.Creator<ApiFeatureRequest> creator = ApiFeatureRequest.CREATOR;
            return !feature.D0().equals(feature2.D0()) ? feature.D0().compareTo(feature2.D0()) : (feature.E0() > feature2.E0() ? 1 : (feature.E0() == feature2.E0() ? 0 : -1));
        }
    };

    /* JADX INFO: renamed from: a */
    private final List f7970a;

    /* JADX INFO: renamed from: b */
    private final boolean f7971b;

    /* JADX INFO: renamed from: c */
    private final String f7972c;

    /* JADX INFO: renamed from: f */
    private final String f7973f;

    public ApiFeatureRequest(List list, boolean z10, String str, String str2) {
        k.g(list);
        this.f7970a = list;
        this.f7971b = z10;
        this.f7972c = str;
        this.f7973f = str2;
    }

    public List D0() {
        return this.f7970a;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof ApiFeatureRequest)) {
            return false;
        }
        ApiFeatureRequest apiFeatureRequest = (ApiFeatureRequest) obj;
        return this.f7971b == apiFeatureRequest.f7971b && j.a(this.f7970a, apiFeatureRequest.f7970a) && j.a(this.f7972c, apiFeatureRequest.f7972c) && j.a(this.f7973f, apiFeatureRequest.f7973f);
    }

    public final int hashCode() {
        return j.b(Boolean.valueOf(this.f7971b), this.f7970a, this.f7972c, this.f7973f);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = n3.b.a(parcel);
        n3.b.q(parcel, 1, D0(), false);
        n3.b.c(parcel, 2, this.f7971b);
        n3.b.m(parcel, 3, this.f7972c, false);
        n3.b.m(parcel, 4, this.f7973f, false);
        n3.b.b(parcel, iA);
    }
}
