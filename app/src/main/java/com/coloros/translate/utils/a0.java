package com.coloros.translate.utils;

/* JADX INFO: loaded from: classes.dex */
final class a0 {
    public static final a0 INSTANCE = new a0();

    /* JADX INFO: renamed from: a */
    private static final n8.j f7094a = n8.k.b(a.INSTANCE);

    static final class a extends kotlin.jvm.internal.s implements w8.a {
        public static final a INSTANCE = new a();

        a() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final com.google.gson.d mo8invoke() {
            return new com.google.gson.e().b();
        }
    }

    private a0() {
    }

    public final com.google.gson.d a() {
        return (com.google.gson.d) f7094a.getValue();
    }
}
