package com.google.android.gms.internal.mlkit_language_id_common;

import java.util.List;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes.dex */
final class mb extends nb {
    final transient int zza;
    final transient int zzb;
    final /* synthetic */ nb zzc;

    mb(nb nbVar, int i10, int i11) {
        this.zzc = nbVar;
        this.zza = i10;
        this.zzb = i11;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        i9.a(i10, this.zzb, "index");
        return this.zzc.get(i10 + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.nb, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i10, int i11) {
        return subList(i10, i11);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.jb
    final int zzb() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.jb
    final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.jb
    @CheckForNull
    final Object[] zze() {
        return this.zzc.zze();
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.nb
    /* JADX INFO: renamed from: zzf */
    public final nb subList(int i10, int i11) {
        i9.c(i10, i11, this.zzb);
        nb nbVar = this.zzc;
        int i12 = this.zza;
        return nbVar.subList(i10 + i12, i11 + i12);
    }
}
