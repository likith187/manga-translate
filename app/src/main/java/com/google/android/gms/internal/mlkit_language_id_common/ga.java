package com.google.android.gms.internal.mlkit_language_id_common;

/* JADX INFO: loaded from: classes.dex */
final class ga extends la {

    /* JADX INFO: renamed from: a */
    private String f8293a;

    /* JADX INFO: renamed from: b */
    private boolean f8294b;

    /* JADX INFO: renamed from: c */
    private int f8295c;

    /* JADX INFO: renamed from: d */
    private byte f8296d;

    ga() {
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.la
    public final la a(boolean z10) {
        this.f8294b = true;
        this.f8296d = (byte) (1 | this.f8296d);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.la
    public final la b(int i10) {
        this.f8295c = 1;
        this.f8296d = (byte) (this.f8296d | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.la
    public final ma c() {
        String str;
        if (this.f8296d == 3 && (str = this.f8293a) != null) {
            return new ia(str, this.f8294b, this.f8295c, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f8293a == null) {
            sb.append(" libraryName");
        }
        if ((this.f8296d & 1) == 0) {
            sb.append(" enableFirelog");
        }
        if ((this.f8296d & 2) == 0) {
            sb.append(" firelogEventType");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    public final la d(String str) {
        this.f8293a = str;
        return this;
    }
}
