package com.google.android.gms.internal.mlkit_language_id_common;

import q4.c;

/* JADX INFO: loaded from: classes.dex */
final class e4 implements q4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final e4 f8235a = new e4();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final q4.c f8236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final q4.c f8237c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final q4.c f8238d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final q4.c f8239e;

    static {
        c.b bVarA = q4.c.a("inferenceCommonLogEvent");
        j jVar = new j();
        jVar.a(1);
        f8236b = bVarA.b(jVar.b()).a();
        c.b bVarA2 = q4.c.a("options");
        j jVar2 = new j();
        jVar2.a(2);
        f8237c = bVarA2.b(jVar2.b()).a();
        c.b bVarA3 = q4.c.a("identifyLanguageResult");
        j jVar3 = new j();
        jVar3.a(3);
        f8238d = bVarA3.b(jVar3.b()).a();
        c.b bVarA4 = q4.c.a("identifyPossibleLanguagesResult");
        j jVar4 = new j();
        jVar4.a(4);
        f8239e = bVarA4.b(jVar4.b()).a();
    }

    private e4() {
    }

    @Override // q4.d
    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
        n8 n8Var = (n8) obj;
        q4.e eVar = (q4.e) obj2;
        eVar.d(f8236b, n8Var.a());
        eVar.d(f8237c, n8Var.b());
        eVar.d(f8238d, n8Var.c());
        q4.c cVar = f8239e;
        n8Var.d();
        eVar.d(cVar, null);
    }
}
