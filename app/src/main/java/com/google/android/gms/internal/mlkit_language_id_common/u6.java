package com.google.android.gms.internal.mlkit_language_id_common;

/* JADX INFO: loaded from: classes.dex */
public final class u6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Long f8744a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f7 f8745b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Boolean f8746c;

    public final u6 a(Long l10) {
        this.f8744a = Long.valueOf(l10.longValue() & Long.MAX_VALUE);
        return this;
    }

    public final u6 b(f7 f7Var) {
        this.f8745b = f7Var;
        return this;
    }

    public final u6 c(Boolean bool) {
        this.f8746c = bool;
        return this;
    }

    public final w6 d() {
        return new w6(this, null);
    }
}
