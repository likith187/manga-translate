package com.google.android.gms.internal.mlkit_common;

import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes.dex */
final class m extends i {
    private final transient h zza;
    private final transient Object[] zzb;
    private final transient int zzc;

    m(h hVar, Object[] objArr, int i10, int i11) {
        this.zza = hVar;
        this.zzb = objArr;
        this.zzc = i11;
    }

    @Override // com.google.android.gms.internal.mlkit_common.b, java.util.AbstractCollection, java.util.Collection
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

    @Override // com.google.android.gms.internal.mlkit_common.i, com.google.android.gms.internal.mlkit_common.b, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return zzf().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_common.b
    final int zza(Object[] objArr, int i10) {
        return zzf().zza(objArr, 0);
    }

    @Override // com.google.android.gms.internal.mlkit_common.i, com.google.android.gms.internal.mlkit_common.b
    /* JADX INFO: renamed from: zzd */
    public final r iterator() {
        return zzf().listIterator(0);
    }

    @Override // com.google.android.gms.internal.mlkit_common.i
    final e zzg() {
        return new l(this);
    }
}
