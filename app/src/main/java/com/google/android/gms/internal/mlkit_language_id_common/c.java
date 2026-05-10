package com.google.android.gms.internal.mlkit_language_id_common;

import java.util.Iterator;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes.dex */
final class c extends qb {
    private final transient pb zza;
    private final transient nb zzb;

    c(pb pbVar, nb nbVar) {
        this.zza = pbVar;
        this.zzb = nbVar;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.jb, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        return this.zza.get(obj) != null;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.qb, com.google.android.gms.internal.mlkit_language_id_common.jb, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return this.zzb.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.jb
    final int zza(Object[] objArr, int i10) {
        return this.zzb.zza(objArr, 0);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.qb, com.google.android.gms.internal.mlkit_language_id_common.jb
    /* JADX INFO: renamed from: zzd */
    public final g iterator() {
        return this.zzb.listIterator(0);
    }
}
