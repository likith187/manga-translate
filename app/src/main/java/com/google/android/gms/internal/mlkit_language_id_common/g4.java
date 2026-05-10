package com.google.android.gms.internal.mlkit_language_id_common;

import q4.c;

/* JADX INFO: loaded from: classes.dex */
final class g4 implements q4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final g4 f8288a = new g4();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final q4.c f8289b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final q4.c f8290c;

    static {
        c.b bVarA = q4.c.a("confidence");
        j jVar = new j();
        jVar.a(1);
        f8289b = bVarA.b(jVar.b()).a();
        c.b bVarA2 = q4.c.a("languageCode");
        j jVar2 = new j();
        jVar2.a(2);
        f8290c = bVarA2.b(jVar2.b()).a();
    }

    private g4() {
    }

    @Override // q4.d
    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
        g8 g8Var = (g8) obj;
        q4.e eVar = (q4.e) obj2;
        eVar.d(f8289b, g8Var.a());
        eVar.d(f8290c, g8Var.b());
    }
}
