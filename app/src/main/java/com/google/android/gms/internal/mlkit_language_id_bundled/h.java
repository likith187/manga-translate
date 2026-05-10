package com.google.android.gms.internal.mlkit_language_id_bundled;

import java.util.List;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes.dex */
final class h extends i {
    final transient int zba;
    final transient int zbb;
    final /* synthetic */ i zbc;

    h(i iVar, int i10, int i11) {
        this.zbc = iVar;
        this.zba = i10;
        this.zbb = i11;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        c.a(i10, this.zbb, "index");
        return this.zbc.get(i10 + this.zba);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zbb;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.i, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i10, int i11) {
        return subList(i10, i11);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.f
    final int zbb() {
        return this.zbc.zbc() + this.zba + this.zbb;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.f
    final int zbc() {
        return this.zbc.zbc() + this.zba;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.f
    @CheckForNull
    final Object[] zbe() {
        return this.zbc.zbe();
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.i
    /* JADX INFO: renamed from: zbf */
    public final i subList(int i10, int i11) {
        c.c(i10, i11, this.zbb);
        int i12 = this.zba;
        return this.zbc.subList(i10 + i12, i11 + i12);
    }
}
