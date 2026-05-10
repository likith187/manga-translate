package com.google.android.datatransport.cct;

import com.google.android.datatransport.cct.d;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class b implements c3.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f7485a;

    private b(d dVar) {
        this.f7485a = dVar;
    }

    public static c3.a a(d dVar) {
        return new b(dVar);
    }

    @Override // c3.a
    public Object apply(Object obj) {
        return this.f7485a.d((d.a) obj);
    }
}
