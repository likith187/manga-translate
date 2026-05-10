package com.google.android.gms.internal.mlkit_common;

/* JADX INFO: loaded from: classes.dex */
final class x extends c0 {

    /* JADX INFO: renamed from: a */
    private String f8107a;

    /* JADX INFO: renamed from: b */
    private boolean f8108b;

    /* JADX INFO: renamed from: c */
    private int f8109c;

    /* JADX INFO: renamed from: d */
    private byte f8110d;

    x() {
    }

    @Override // com.google.android.gms.internal.mlkit_common.c0
    public final c0 a(boolean z10) {
        this.f8108b = true;
        this.f8110d = (byte) (1 | this.f8110d);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.c0
    public final c0 b(int i10) {
        this.f8109c = 1;
        this.f8110d = (byte) (this.f8110d | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.c0
    public final d0 c() {
        String str;
        if (this.f8110d == 3 && (str = this.f8107a) != null) {
            return new z(str, this.f8108b, this.f8109c, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f8107a == null) {
            sb.append(" libraryName");
        }
        if ((this.f8110d & 1) == 0) {
            sb.append(" enableFirelog");
        }
        if ((this.f8110d & 2) == 0) {
            sb.append(" firelogEventType");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    public final c0 d(String str) {
        this.f8107a = "common";
        return this;
    }
}
