package com.google.android.gms.internal.mlkit_language_id_common;

/* JADX INFO: loaded from: classes.dex */
public enum e7 implements l {
    TYPE_UNKNOWN(0),
    TYPE_THIN(1),
    TYPE_THICK(2),
    TYPE_GMV(3);

    private final int zzf;

    e7(int i10) {
        this.zzf = i10;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.l
    public final int zza() {
        return this.zzf;
    }
}
