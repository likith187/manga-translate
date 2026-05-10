package com.google.android.gms.internal.mlkit_language_id_bundled;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class j extends i {
    static final i zba = new j(new Object[0], 0);
    final transient Object[] zbb;
    private final transient int zbc;

    j(Object[] objArr, int i10) {
        this.zbb = objArr;
        this.zbc = i10;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        c.a(i10, this.zbc, "index");
        Object obj = this.zbb[i10];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zbc;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.i, com.google.android.gms.internal.mlkit_language_id_bundled.f
    final int zba(Object[] objArr, int i10) {
        System.arraycopy(this.zbb, 0, objArr, 0, this.zbc);
        return this.zbc;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.f
    final int zbb() {
        return this.zbc;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.f
    final int zbc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.f
    final Object[] zbe() {
        return this.zbb;
    }
}
