package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.d;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class b0 implements d.c, l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a.f f7608a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f7609b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private IAccountAccessor f7610c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Set f7611d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f7612e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ e f7613f;

    public b0(e eVar, a.f fVar, b bVar) {
        this.f7613f = eVar;
        this.f7608a = fVar;
        this.f7609b = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i() {
        IAccountAccessor iAccountAccessor;
        if (!this.f7612e || (iAccountAccessor = this.f7610c) == null) {
            return;
        }
        this.f7608a.c(iAccountAccessor, this.f7611d);
    }

    @Override // com.google.android.gms.common.internal.d.c
    public final void a(ConnectionResult connectionResult) {
        this.f7613f.f7637n.post(new a0(this, connectionResult));
    }

    @Override // com.google.android.gms.common.api.internal.l0
    public final void b(IAccountAccessor iAccountAccessor, Set set) {
        if (iAccountAccessor == null || set == null) {
            Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
            c(new ConnectionResult(4));
        } else {
            this.f7610c = iAccountAccessor;
            this.f7611d = set;
            i();
        }
    }

    @Override // com.google.android.gms.common.api.internal.l0
    public final void c(ConnectionResult connectionResult) {
        x xVar = (x) this.f7613f.f7633j.get(this.f7609b);
        if (xVar != null) {
            xVar.I(connectionResult);
        }
    }

    @Override // com.google.android.gms.common.api.internal.l0
    public final void d(int i10) {
        x xVar = (x) this.f7613f.f7633j.get(this.f7609b);
        if (xVar != null) {
            if (xVar.f7708i) {
                xVar.I(new ConnectionResult(17));
            } else {
                xVar.a(i10);
            }
        }
    }
}
