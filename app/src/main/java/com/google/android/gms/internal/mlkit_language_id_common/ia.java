package com.google.android.gms.internal.mlkit_language_id_common;

/* JADX INFO: loaded from: classes.dex */
final class ia extends ma {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f8342a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f8343b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f8344c;

    /* synthetic */ ia(String str, boolean z10, int i10, ha haVar) {
        this.f8342a = str;
        this.f8343b = z10;
        this.f8344c = i10;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.ma
    public final int a() {
        return this.f8344c;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.ma
    public final String b() {
        return this.f8342a;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.ma
    public final boolean c() {
        return this.f8343b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ma) {
            ma maVar = (ma) obj;
            if (this.f8342a.equals(maVar.b()) && this.f8343b == maVar.c() && this.f8344c == maVar.a()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f8344c ^ ((((this.f8342a.hashCode() ^ 1000003) * 1000003) ^ (true != this.f8343b ? 1237 : 1231)) * 1000003);
    }

    public final String toString() {
        return "MLKitLoggingOptions{libraryName=" + this.f8342a + ", enableFirelog=" + this.f8343b + ", firelogEventType=" + this.f8344c + "}";
    }
}
