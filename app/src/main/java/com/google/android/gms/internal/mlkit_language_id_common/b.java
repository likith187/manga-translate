package com.google.android.gms.internal.mlkit_language_id_common;

import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes.dex */
final class b extends qb {
    private final transient pb zza;
    private final transient Object[] zzb;
    private final transient int zzc;

    b(pb pbVar, Object[] objArr, int i10, int i11) {
        this.zza = pbVar;
        this.zzb = objArr;
        this.zzc = i11;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.jb, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.zza.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.qb, com.google.android.gms.internal.mlkit_language_id_common.jb, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return zzf().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.jb
    final int zza(Object[] objArr, int i10) {
        return zzf().zza(objArr, 0);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.qb, com.google.android.gms.internal.mlkit_language_id_common.jb
    /* JADX INFO: renamed from: zzd */
    public final g iterator() {
        return zzf().listIterator(0);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.qb
    final nb zzg() {
        return new sb(this);
    }
}
