package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class w0 extends LifecycleCallback implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected volatile boolean f7696b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final AtomicReference f7697c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Handler f7698f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected final com.google.android.gms.common.a f7699h;

    w0(g gVar, com.google.android.gms.common.a aVar) {
        super(gVar);
        this.f7697c = new AtomicReference(null);
        this.f7698f = new t3.i(Looper.getMainLooper());
        this.f7699h = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(ConnectionResult connectionResult, int i10) {
        this.f7697c.set(null);
        m(connectionResult, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o() {
        this.f7697c.set(null);
        n();
    }

    private static final int p(t0 t0Var) {
        if (t0Var == null) {
            return -1;
        }
        return t0Var.a();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void e(int i10, int i11, Intent intent) {
        t0 t0Var = (t0) this.f7697c.get();
        if (i10 != 1) {
            if (i10 == 2) {
                int iF = this.f7699h.f(b());
                if (iF == 0) {
                    o();
                    return;
                } else {
                    if (t0Var == null) {
                        return;
                    }
                    if (t0Var.b().D0() == 18 && iF == 18) {
                        return;
                    }
                }
            }
        } else if (i11 == -1) {
            o();
            return;
        } else if (i11 == 0) {
            if (t0Var != null) {
                l(new ConnectionResult(intent != null ? intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13) : 13, null, t0Var.b().toString()), p(t0Var));
                return;
            }
            return;
        }
        if (t0Var != null) {
            l(t0Var.b(), t0Var.a());
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void f(Bundle bundle) {
        super.f(bundle);
        if (bundle != null) {
            this.f7697c.set(bundle.getBoolean("resolving_error", false) ? new t0(new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void i(Bundle bundle) {
        super.i(bundle);
        t0 t0Var = (t0) this.f7697c.get();
        if (t0Var == null) {
            return;
        }
        bundle.putBoolean("resolving_error", true);
        bundle.putInt("failed_client_id", t0Var.a());
        bundle.putInt("failed_status", t0Var.b().D0());
        bundle.putParcelable("failed_resolution", t0Var.b().F0());
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void j() {
        super.j();
        this.f7696b = true;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void k() {
        super.k();
        this.f7696b = false;
    }

    protected abstract void m(ConnectionResult connectionResult, int i10);

    protected abstract void n();

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        l(new ConnectionResult(13, null), p((t0) this.f7697c.get()));
    }

    public final void s(ConnectionResult connectionResult, int i10) {
        AtomicReference atomicReference;
        t0 t0Var = new t0(connectionResult, i10);
        do {
            atomicReference = this.f7697c;
            if (androidx.lifecycle.b.a(atomicReference, null, t0Var)) {
                this.f7698f.post(new v0(this, t0Var));
                return;
            }
        } while (atomicReference.get() == null);
    }
}
