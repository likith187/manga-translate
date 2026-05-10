package com.google.android.gms.internal.mlkit_language_id_common;

import q4.c;

/* JADX INFO: loaded from: classes.dex */
final class h3 implements q4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final h3 f8305a = new h3();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final q4.c f8306b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final q4.c f8307c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final q4.c f8308d;

    static {
        c.b bVarA = q4.c.a("identifyLanguageConfidenceThreshold");
        j jVar = new j();
        jVar.a(1);
        f8306b = bVarA.b(jVar.b()).a();
        c.b bVarA2 = q4.c.a("identifyAllLanguagesConfidenceThreshold");
        j jVar2 = new j();
        jVar2.a(2);
        f8307c = bVarA2.b(jVar2.b()).a();
        c.b bVarA3 = q4.c.a("confidenceThreshold");
        j jVar3 = new j();
        jVar3.a(3);
        f8308d = bVarA3.b(jVar3.b()).a();
    }

    private h3() {
    }

    @Override // q4.d
    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
        q4.e eVar = (q4.e) obj2;
        eVar.d(f8306b, null);
        eVar.d(f8307c, null);
        eVar.d(f8308d, ((c7) obj).a());
    }
}
