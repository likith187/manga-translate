package com.google.android.gms.internal.mlkit_common;

/* JADX INFO: loaded from: classes.dex */
final class z extends d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f8111a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f8112b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f8113c;

    /* synthetic */ z(String str, boolean z10, int i10, y yVar) {
        this.f8111a = str;
        this.f8112b = z10;
        this.f8113c = i10;
    }

    @Override // com.google.android.gms.internal.mlkit_common.d0
    public final int a() {
        return this.f8113c;
    }

    @Override // com.google.android.gms.internal.mlkit_common.d0
    public final String b() {
        return this.f8111a;
    }

    @Override // com.google.android.gms.internal.mlkit_common.d0
    public final boolean c() {
        return this.f8112b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof d0) {
            d0 d0Var = (d0) obj;
            if (this.f8111a.equals(d0Var.b()) && this.f8112b == d0Var.c() && this.f8113c == d0Var.a()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f8111a.hashCode() ^ 1000003;
        return this.f8113c ^ (((iHashCode * 1000003) ^ (true != this.f8112b ? 1237 : 1231)) * 1000003);
    }

    public final String toString() {
        return "MLKitLoggingOptions{libraryName=" + this.f8111a + ", enableFirelog=" + this.f8112b + ", firelogEventType=" + this.f8113c + "}";
    }
}
