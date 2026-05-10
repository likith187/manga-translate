package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class StringToIntConverter extends AbstractSafeParcelable implements FastJsonResponse.a {
    public static final Parcelable.Creator<StringToIntConverter> CREATOR = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f7988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap f7989b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final SparseArray f7990c = new SparseArray();

    StringToIntConverter(int i10, ArrayList arrayList) {
        this.f7988a = i10;
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            zac zacVar = (zac) arrayList.get(i11);
            D0(zacVar.f7994b, zacVar.f7995c);
        }
    }

    public StringToIntConverter D0(String str, int i10) {
        this.f7989b.put(str, Integer.valueOf(i10));
        this.f7990c.put(i10, str);
        return this;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.a
    public final /* bridge */ /* synthetic */ Object c(Object obj) {
        String str = (String) this.f7990c.get(((Integer) obj).intValue());
        return (str == null && this.f7989b.containsKey("gms_unknown")) ? "gms_unknown" : str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f7988a;
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, i11);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f7989b.keySet()) {
            arrayList.add(new zac(str, ((Integer) this.f7989b.get(str)).intValue()));
        }
        n3.b.q(parcel, 2, arrayList, false);
        n3.b.b(parcel, iA);
    }
}
