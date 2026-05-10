package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
public final class q0 extends f0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m f7679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w3.j f7680c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final l f7681d;

    public q0(int i10, m mVar, w3.j jVar, l lVar) {
        super(i10);
        this.f7680c = jVar;
        this.f7679b = mVar;
        this.f7681d = lVar;
        if (i10 == 2 && mVar.c()) {
            throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
        }
    }

    @Override // com.google.android.gms.common.api.internal.s0
    public final void a(Status status) {
        this.f7680c.d(this.f7681d.a(status));
    }

    @Override // com.google.android.gms.common.api.internal.s0
    public final void b(Exception exc) {
        this.f7680c.d(exc);
    }

    @Override // com.google.android.gms.common.api.internal.s0
    public final void c(x xVar) throws DeadObjectException {
        try {
            this.f7679b.b(xVar.v(), this.f7680c);
        } catch (DeadObjectException e10) {
            throw e10;
        } catch (RemoteException e11) {
            a(s0.e(e11));
        } catch (RuntimeException e12) {
            this.f7680c.d(e12);
        }
    }

    @Override // com.google.android.gms.common.api.internal.s0
    public final void d(o oVar, boolean z10) {
        oVar.b(this.f7680c, z10);
    }

    @Override // com.google.android.gms.common.api.internal.f0
    public final boolean f(x xVar) {
        return this.f7679b.c();
    }

    @Override // com.google.android.gms.common.api.internal.f0
    public final Feature[] g(x xVar) {
        return this.f7679b.e();
    }
}
