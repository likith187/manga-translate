package com.google.android.gms.internal.mlkit_language_id_common;

/* JADX INFO: loaded from: classes.dex */
final class rb extends nb {
    static final nb zza = new rb(new Object[0], 0);
    final transient Object[] zzb;
    private final transient int zzc;

    rb(Object[] objArr, int i10) {
        this.zzb = objArr;
        this.zzc = i10;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        i9.a(i10, this.zzc, "index");
        Object obj = this.zzb[i10];
        obj.getClass();
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.nb, com.google.android.gms.internal.mlkit_language_id_common.jb
    final int zza(Object[] objArr, int i10) {
        System.arraycopy(this.zzb, 0, objArr, 0, this.zzc);
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.jb
    final int zzb() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.jb
    final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.jb
    final Object[] zze() {
        return this.zzb;
    }
}
