package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
abstract class p0 extends f0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final w3.j f7677b;

    public p0(int i10, w3.j jVar) {
        super(i10);
        this.f7677b = jVar;
    }

    @Override // com.google.android.gms.common.api.internal.s0
    public final void a(Status status) {
        this.f7677b.d(new com.google.android.gms.common.api.b(status));
    }

    @Override // com.google.android.gms.common.api.internal.s0
    public final void b(Exception exc) {
        this.f7677b.d(exc);
    }

    @Override // com.google.android.gms.common.api.internal.s0
    public final void c(x xVar) throws DeadObjectException {
        try {
            h(xVar);
        } catch (DeadObjectException e10) {
            a(s0.e(e10));
            throw e10;
        } catch (RemoteException e11) {
            a(s0.e(e11));
        } catch (RuntimeException e12) {
            this.f7677b.d(e12);
        }
    }

    protected abstract void h(x xVar);
}
