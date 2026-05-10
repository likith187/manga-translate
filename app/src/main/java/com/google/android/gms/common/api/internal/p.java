package com.google.android.gms.common.api.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes.dex */
public final class p extends w0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.collection.b f7675i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final e f7676j;

    p(g gVar, e eVar, com.google.android.gms.common.a aVar) {
        super(gVar, aVar);
        this.f7675i = new androidx.collection.b();
        this.f7676j = eVar;
        this.f7601a.a("ConnectionlessLifecycleHelper", this);
    }

    public static void u(Activity activity, e eVar, b bVar) {
        g gVarC = LifecycleCallback.c(activity);
        p pVar = (p) gVarC.b("ConnectionlessLifecycleHelper", p.class);
        if (pVar == null) {
            pVar = new p(gVarC, eVar, com.google.android.gms.common.a.l());
        }
        com.google.android.gms.common.internal.k.h(bVar, "ApiKey cannot be null");
        pVar.f7675i.add(bVar);
        eVar.a(pVar);
    }

    private final void v() {
        if (this.f7675i.isEmpty()) {
            return;
        }
        this.f7676j.a(this);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void h() {
        super.h();
        v();
    }

    @Override // com.google.android.gms.common.api.internal.w0, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void j() {
        super.j();
        v();
    }

    @Override // com.google.android.gms.common.api.internal.w0, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void k() {
        super.k();
        this.f7676j.b(this);
    }

    @Override // com.google.android.gms.common.api.internal.w0
    protected final void m(ConnectionResult connectionResult, int i10) {
        this.f7676j.B(connectionResult, i10);
    }

    @Override // com.google.android.gms.common.api.internal.w0
    protected final void n() {
        this.f7676j.C();
    }

    final androidx.collection.b t() {
        return this.f7675i;
    }
}
