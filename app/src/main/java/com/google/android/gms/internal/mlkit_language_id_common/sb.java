package com.google.android.gms.internal.mlkit_language_id_common;

import java.util.AbstractMap;

/* JADX INFO: loaded from: classes.dex */
final class sb extends nb {
    final /* synthetic */ b zza;

    sb(b bVar) {
        this.zza = bVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i10) {
        i9.a(i10, this.zza.zzc, "index");
        b bVar = this.zza;
        int i11 = i10 + i10;
        Object obj = bVar.zzb[i11];
        obj.getClass();
        Object obj2 = bVar.zzb[i11 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.zzc;
    }
}
