package com.google.android.gms.internal.mlkit_language_id_common;

import q4.c;

/* JADX INFO: loaded from: classes.dex */
final class h4 implements q4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final h4 f8309a = new h4();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final q4.c f8310b;

    static {
        c.b bVarA = q4.c.a("identifiedLanguage");
        j jVar = new j();
        jVar.a(1);
        f8310b = bVarA.b(jVar.b()).a();
    }

    private h4() {
    }

    @Override // q4.d
    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
        ((q4.e) obj2).d(f8310b, ((k8) obj).a());
    }
}
