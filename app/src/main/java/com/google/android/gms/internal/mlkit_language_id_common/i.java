package com.google.android.gms.internal.mlkit_language_id_common;

/* JADX INFO: loaded from: classes.dex */
final class i implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f8325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m f8326b;

    i(int i10, m mVar) {
        this.f8325a = i10;
        this.f8326b = mVar;
    }

    @Override // java.lang.annotation.Annotation
    public final Class annotationType() {
        return n.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f8325a == nVar.zza() && this.f8326b.equals(nVar.zzb());
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return (this.f8325a ^ 14552422) + (this.f8326b.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f8325a + "intEncoding=" + this.f8326b + ')';
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.n
    public final int zza() {
        return this.f8325a;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.n
    public final m zzb() {
        return this.f8326b;
    }
}
