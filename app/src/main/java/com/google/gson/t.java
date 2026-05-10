package com.google.gson;

import java.io.IOException;
import java.math.BigDecimal;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public abstract class t implements u {
    private static final /* synthetic */ t[] $VALUES;
    public static final t BIG_DECIMAL;
    public static final t DOUBLE;
    public static final t LAZILY_PARSED_NUMBER;
    public static final t LONG_OR_DOUBLE;

    enum a extends t {
        a(String str, int i10) {
            super(str, i10, null);
        }

        @Override // com.google.gson.t, com.google.gson.u
        public Double readNumber(a5.a aVar) throws IOException {
            return Double.valueOf(aVar.x0());
        }
    }

    static {
        a aVar = new a("DOUBLE", 0);
        DOUBLE = aVar;
        t tVar = new t("LAZILY_PARSED_NUMBER", 1) { // from class: com.google.gson.t.b
            {
                a aVar2 = null;
            }

            @Override // com.google.gson.t, com.google.gson.u
            public Number readNumber(a5.a aVar2) throws IOException {
                return new com.google.gson.internal.g(aVar2.J0());
            }
        };
        LAZILY_PARSED_NUMBER = tVar;
        t tVar2 = new t("LONG_OR_DOUBLE", 2) { // from class: com.google.gson.t.c
            {
                a aVar2 = null;
            }

            @Override // com.google.gson.t, com.google.gson.u
            public Number readNumber(a5.a aVar2) throws m, IOException {
                String strJ0 = aVar2.J0();
                try {
                    try {
                        return Long.valueOf(Long.parseLong(strJ0));
                    } catch (NumberFormatException e10) {
                        throw new m("Cannot parse " + strJ0 + "; at path " + aVar2.N(), e10);
                    }
                } catch (NumberFormatException unused) {
                    Double dValueOf = Double.valueOf(strJ0);
                    if (dValueOf.isInfinite() || dValueOf.isNaN()) {
                        if (!aVar2.a0()) {
                            throw new a5.d("JSON forbids NaN and infinities: " + dValueOf + "; at path " + aVar2.N());
                        }
                    }
                    return dValueOf;
                }
            }
        };
        LONG_OR_DOUBLE = tVar2;
        t tVar3 = new t("BIG_DECIMAL", 3) { // from class: com.google.gson.t.d
            {
                a aVar2 = null;
            }

            @Override // com.google.gson.t, com.google.gson.u
            public BigDecimal readNumber(a5.a aVar2) throws IOException {
                String strJ0 = aVar2.J0();
                try {
                    return new BigDecimal(strJ0);
                } catch (NumberFormatException e10) {
                    throw new m("Cannot parse " + strJ0 + "; at path " + aVar2.N(), e10);
                }
            }
        };
        BIG_DECIMAL = tVar3;
        $VALUES = new t[]{aVar, tVar, tVar2, tVar3};
    }

    private t(String str, int i10) {
    }

    public static t valueOf(String str) {
        return (t) Enum.valueOf(t.class, str);
    }

    public static t[] values() {
        return (t[]) $VALUES.clone();
    }

    @Override // com.google.gson.u
    public abstract /* synthetic */ Number readNumber(a5.a aVar) throws IOException;

    /* synthetic */ t(String str, int i10, a aVar) {
        this(str, i10);
    }
}
