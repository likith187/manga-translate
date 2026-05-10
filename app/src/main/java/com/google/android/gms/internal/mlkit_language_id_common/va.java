package com.google.android.gms.internal.mlkit_language_id_common;

import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes.dex */
public final class va implements ka {

    /* JADX INFO: renamed from: a */
    private final h7 f8774a;

    /* JADX INFO: renamed from: b */
    private l9 f8775b = new l9();

    /* JADX INFO: renamed from: c */
    private final int f8776c;

    private va(h7 h7Var, int i10) {
        this.f8774a = h7Var;
        eb.a();
        this.f8776c = i10;
    }

    public static ka d(h7 h7Var) {
        return new va(h7Var, 0);
    }

    public static ka e(h7 h7Var, int i10) {
        return new va(h7Var, 1);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.ka
    public final ka a(g7 g7Var) {
        this.f8774a.d(g7Var);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.ka
    public final byte[] b(int i10, boolean z10) {
        this.f8775b.f(Boolean.valueOf(1 == (i10 ^ 1)));
        this.f8775b.e(Boolean.FALSE);
        this.f8774a.f(this.f8775b.m());
        try {
            eb.a();
            if (i10 == 0) {
                return new s4.d().g(s5.f8685a).h(true).f().a(this.f8774a.g()).getBytes("utf-8");
            }
            k7 k7VarG = this.f8774a.g();
            r rVar = new r();
            s5.f8685a.a(rVar);
            return rVar.b().a(k7VarG);
        } catch (UnsupportedEncodingException e10) {
            throw new UnsupportedOperationException("Failed to covert logging to UTF-8 byte array", e10);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.ka
    public final ka c(l9 l9Var) {
        this.f8775b = l9Var;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.ka
    public final int zza() {
        return this.f8776c;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.ka
    public final String zzd() {
        n9 n9VarD = this.f8774a.g().d();
        return (n9VarD == null || ja.b(n9VarD.k())) ? "NA" : (String) com.google.android.gms.common.internal.k.g(n9VarD.k());
    }
}
