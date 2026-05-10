package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.internal.zav;
import com.google.android.gms.signin.internal.zak;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class m0 extends com.google.android.gms.signin.internal.c implements e.a, e.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final a.AbstractC0103a f7662h = v3.d.f15937c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f7663a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f7664b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a.AbstractC0103a f7665c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set f7666d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.google.android.gms.common.internal.e f7667e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private v3.e f7668f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private l0 f7669g;

    public m0(Context context, Handler handler, com.google.android.gms.common.internal.e eVar) {
        a.AbstractC0103a abstractC0103a = f7662h;
        this.f7663a = context;
        this.f7664b = handler;
        this.f7667e = (com.google.android.gms.common.internal.e) com.google.android.gms.common.internal.k.h(eVar, "ClientSettings must not be null");
        this.f7666d = eVar.e();
        this.f7665c = abstractC0103a;
    }

    static /* bridge */ /* synthetic */ void e(m0 m0Var, zak zakVar) {
        ConnectionResult connectionResultD0 = zakVar.D0();
        if (connectionResultD0.H0()) {
            zav zavVar = (zav) com.google.android.gms.common.internal.k.g(zakVar.E0());
            ConnectionResult connectionResultD02 = zavVar.D0();
            if (!connectionResultD02.H0()) {
                String strValueOf = String.valueOf(connectionResultD02);
                Log.wtf("SignInCoordinator", "Sign-in succeeded with resolve account failure: ".concat(strValueOf), new Exception());
                m0Var.f7669g.c(connectionResultD02);
                m0Var.f7668f.m();
                return;
            }
            m0Var.f7669g.b(zavVar.E0(), m0Var.f7666d);
        } else {
            m0Var.f7669g.c(connectionResultD0);
        }
        m0Var.f7668f.m();
    }

    @Override // com.google.android.gms.common.api.internal.d
    public final void a(int i10) {
        this.f7669g.d(i10);
    }

    @Override // com.google.android.gms.common.api.internal.j
    public final void b(ConnectionResult connectionResult) {
        this.f7669g.c(connectionResult);
    }

    @Override // com.google.android.gms.common.api.internal.d
    public final void c(Bundle bundle) {
        this.f7668f.f(this);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.common.api.a$f, v3.e] */
    public final void f(l0 l0Var) {
        v3.e eVar = this.f7668f;
        if (eVar != null) {
            eVar.m();
        }
        this.f7667e.i(Integer.valueOf(System.identityHashCode(this)));
        a.AbstractC0103a abstractC0103a = this.f7665c;
        Context context = this.f7663a;
        Handler handler = this.f7664b;
        com.google.android.gms.common.internal.e eVar2 = this.f7667e;
        this.f7668f = abstractC0103a.a(context, handler.getLooper(), eVar2, eVar2.f(), this, this);
        this.f7669g = l0Var;
        Set set = this.f7666d;
        if (set == null || set.isEmpty()) {
            this.f7664b.post(new j0(this));
        } else {
            this.f7668f.o();
        }
    }

    public final void g() {
        v3.e eVar = this.f7668f;
        if (eVar != null) {
            eVar.m();
        }
    }

    @Override // com.google.android.gms.signin.internal.zae
    public final void zab(zak zakVar) {
        this.f7664b.post(new k0(this, zakVar));
    }
}
