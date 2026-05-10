package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zan extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zan> CREATOR = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f8020a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap f8021b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f8022c;

    zan(int i10, ArrayList arrayList, String str) {
        this.f8020a = i10;
        HashMap map = new HashMap();
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            zal zalVar = (zal) arrayList.get(i11);
            String str2 = zalVar.f8015b;
            HashMap map2 = new HashMap();
            int size2 = ((ArrayList) k.g(zalVar.f8016c)).size();
            for (int i12 = 0; i12 < size2; i12++) {
                zam zamVar = (zam) zalVar.f8016c.get(i12);
                map2.put(zamVar.f8018b, zamVar.f8019c);
            }
            map.put(str2, map2);
        }
        this.f8021b = map;
        this.f8022c = (String) k.g(str);
        F0();
    }

    public final String D0() {
        return this.f8022c;
    }

    public final Map E0(String str) {
        return (Map) this.f8021b.get(str);
    }

    public final void F0() {
        Iterator it = this.f8021b.keySet().iterator();
        while (it.hasNext()) {
            Map map = (Map) this.f8021b.get((String) it.next());
            Iterator it2 = map.keySet().iterator();
            while (it2.hasNext()) {
                ((FastJsonResponse.Field) map.get((String) it2.next())).J0(this);
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.f8021b.keySet()) {
            sb.append(str);
            sb.append(":\n");
            Map map = (Map) this.f8021b.get(str);
            for (String str2 : map.keySet()) {
                sb.append("  ");
                sb.append(str2);
                sb.append(": ");
                sb.append(map.get(str2));
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, this.f8020a);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f8021b.keySet()) {
            arrayList.add(new zal(str, (Map) this.f8021b.get(str)));
        }
        n3.b.q(parcel, 2, arrayList, false);
        n3.b.m(parcel, 3, this.f8022c, false);
        n3.b.b(parcel, iA);
    }
}
