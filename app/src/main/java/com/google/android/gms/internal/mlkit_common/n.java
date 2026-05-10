package com.google.android.gms.internal.mlkit_common;

import java.util.Iterator;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes.dex */
final class n extends i {
    private final transient h zza;
    private final transient e zzb;

    n(h hVar, e eVar) {
        this.zza = hVar;
        this.zzb = eVar;
    }

    @Override // com.google.android.gms.internal.mlkit_common.b, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        return this.zza.get(obj) != null;
    }

    @Override // com.google.android.gms.internal.mlkit_common.i, com.google.android.gms.internal.mlkit_common.b, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return this.zzb.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.mlkit_common.b
    final int zza(Object[] objArr, int i10) {
        return this.zzb.zza(objArr, 0);
    }

    @Override // com.google.android.gms.internal.mlkit_common.i, com.google.android.gms.internal.mlkit_common.b
    /* JADX INFO: renamed from: zzd */
    public final r iterator() {
        return this.zzb.listIterator(0);
    }
}
