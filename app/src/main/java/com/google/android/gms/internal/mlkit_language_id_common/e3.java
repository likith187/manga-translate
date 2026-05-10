package com.google.android.gms.internal.mlkit_language_id_common;

import java.util.Arrays;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public final class e3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f8232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d2 f8233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private d2 f8234c;

    /* synthetic */ e3(String str, b0 b0Var) {
        d2 d2Var = new d2(null);
        this.f8233b = d2Var;
        this.f8234c = d2Var;
        str.getClass();
        this.f8232a = str;
    }

    public final e3 a(String str, float f10) {
        String strValueOf = String.valueOf(f10);
        c1 c1Var = new c1(null);
        this.f8234c.f8200c = c1Var;
        this.f8234c = c1Var;
        c1Var.f8199b = strValueOf;
        c1Var.f8198a = "confidence";
        return this;
    }

    public final e3 b(String str, Object obj) {
        d2 d2Var = new d2(null);
        this.f8234c.f8200c = d2Var;
        this.f8234c = d2Var;
        d2Var.f8199b = obj;
        d2Var.f8198a = "languageTag";
        return this;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f8232a);
        sb.append(AbstractJsonLexerKt.BEGIN_OBJ);
        d2 d2Var = this.f8233b.f8200c;
        String str = "";
        while (d2Var != null) {
            Object obj = d2Var.f8199b;
            sb.append(str);
            String str2 = d2Var.f8198a;
            if (str2 != null) {
                sb.append(str2);
                sb.append('=');
            }
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                sb.append((CharSequence) Arrays.deepToString(new Object[]{obj}), 1, r1.length() - 1);
            }
            d2Var = d2Var.f8200c;
            str = ", ";
        }
        sb.append(AbstractJsonLexerKt.END_OBJ);
        return sb.toString();
    }
}
