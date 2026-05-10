package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class x implements e.a, e.b {

    /* JADX INFO: renamed from: b */
    private final a.f f7701b;

    /* JADX INFO: renamed from: c */
    private final b f7702c;

    /* JADX INFO: renamed from: d */
    private final o f7703d;

    /* JADX INFO: renamed from: g */
    private final int f7706g;

    /* JADX INFO: renamed from: h */
    private final m0 f7707h;

    /* JADX INFO: renamed from: i */
    private boolean f7708i;

    /* JADX INFO: renamed from: m */
    final /* synthetic */ e f7712m;

    /* JADX INFO: renamed from: a */
    private final Queue f7700a = new LinkedList();

    /* JADX INFO: renamed from: e */
    private final Set f7704e = new HashSet();

    /* JADX INFO: renamed from: f */
    private final Map f7705f = new HashMap();

    /* JADX INFO: renamed from: j */
    private final List f7709j = new ArrayList();

    /* JADX INFO: renamed from: k */
    private ConnectionResult f7710k = null;

    /* JADX INFO: renamed from: l */
    private int f7711l = 0;

    public x(e eVar, com.google.android.gms.common.api.d dVar) {
        this.f7712m = eVar;
        a.f fVarG = dVar.g(eVar.f7637n.getLooper(), this);
        this.f7701b = fVarG;
        this.f7702c = dVar.d();
        this.f7703d = new o();
        this.f7706g = dVar.f();
        if (fVarG.n()) {
            this.f7707h = dVar.h(eVar.f7628e, eVar.f7637n);
        } else {
            this.f7707h = null;
        }
    }

    static /* bridge */ /* synthetic */ void B(x xVar, z zVar) {
        if (xVar.f7709j.contains(zVar) && !xVar.f7708i) {
            if (xVar.f7701b.isConnected()) {
                xVar.j();
            } else {
                xVar.E();
            }
        }
    }

    static /* bridge */ /* synthetic */ void C(x xVar, z zVar) {
        Feature[] featureArrG;
        if (xVar.f7709j.remove(zVar)) {
            xVar.f7712m.f7637n.removeMessages(15, zVar);
            xVar.f7712m.f7637n.removeMessages(16, zVar);
            Feature feature = zVar.f7720b;
            ArrayList arrayList = new ArrayList(xVar.f7700a.size());
            for (s0 s0Var : xVar.f7700a) {
                if ((s0Var instanceof f0) && (featureArrG = ((f0) s0Var).g(xVar)) != null && r3.a.b(featureArrG, feature)) {
                    arrayList.add(s0Var);
                }
            }
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                s0 s0Var2 = (s0) arrayList.get(i10);
                xVar.f7700a.remove(s0Var2);
                s0Var2.b(new com.google.android.gms.common.api.g(feature));
            }
        }
    }

    private final Feature f(Feature[] featureArr) {
        if (featureArr != null && featureArr.length != 0) {
            Feature[] featureArrI = this.f7701b.i();
            if (featureArrI == null) {
                featureArrI = new Feature[0];
            }
            androidx.collection.a aVar = new androidx.collection.a(featureArrI.length);
            for (Feature feature : featureArrI) {
                aVar.put(feature.D0(), Long.valueOf(feature.E0()));
            }
            for (Feature feature2 : featureArr) {
                Long l10 = (Long) aVar.get(feature2.D0());
                if (l10 == null || l10.longValue() < feature2.E0()) {
                    return feature2;
                }
            }
        }
        return null;
    }

    private final void g(ConnectionResult connectionResult) {
        Iterator it = this.f7704e.iterator();
        if (!it.hasNext()) {
            this.f7704e.clear();
            return;
        }
        androidx.appcompat.app.t.a(it.next());
        if (com.google.android.gms.common.internal.j.a(connectionResult, ConnectionResult.f7548h)) {
            this.f7701b.j();
        }
        throw null;
    }

    public final void h(Status status) {
        com.google.android.gms.common.internal.k.d(this.f7712m.f7637n);
        i(status, null, false);
    }

    private final void i(Status status, Exception exc, boolean z10) {
        com.google.android.gms.common.internal.k.d(this.f7712m.f7637n);
        if ((status == null) == (exc == null)) {
            throw new IllegalArgumentException("Status XOR exception should be null");
        }
        Iterator it = this.f7700a.iterator();
        while (it.hasNext()) {
            s0 s0Var = (s0) it.next();
            if (!z10 || s0Var.f7684a == 2) {
                if (status != null) {
                    s0Var.a(status);
                } else {
                    s0Var.b(exc);
                }
                it.remove();
            }
        }
    }

    private final void j() {
        ArrayList arrayList = new ArrayList(this.f7700a);
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            s0 s0Var = (s0) arrayList.get(i10);
            if (!this.f7701b.isConnected()) {
                return;
            }
            if (p(s0Var)) {
                this.f7700a.remove(s0Var);
            }
        }
    }

    public final void k() {
        D();
        g(ConnectionResult.f7548h);
        o();
        Iterator it = this.f7705f.values().iterator();
        if (it.hasNext()) {
            androidx.appcompat.app.t.a(it.next());
            throw null;
        }
        j();
        m();
    }

    public final void l(int i10) {
        D();
        this.f7708i = true;
        this.f7703d.c(i10, this.f7701b.k());
        b bVar = this.f7702c;
        e eVar = this.f7712m;
        eVar.f7637n.sendMessageDelayed(Message.obtain(eVar.f7637n, 9, bVar), 5000L);
        b bVar2 = this.f7702c;
        e eVar2 = this.f7712m;
        eVar2.f7637n.sendMessageDelayed(Message.obtain(eVar2.f7637n, 11, bVar2), 120000L);
        this.f7712m.f7630g.c();
        Iterator it = this.f7705f.values().iterator();
        if (it.hasNext()) {
            androidx.appcompat.app.t.a(it.next());
            throw null;
        }
    }

    private final void m() {
        this.f7712m.f7637n.removeMessages(12, this.f7702c);
        b bVar = this.f7702c;
        e eVar = this.f7712m;
        eVar.f7637n.sendMessageDelayed(eVar.f7637n.obtainMessage(12, bVar), this.f7712m.f7624a);
    }

    private final void n(s0 s0Var) {
        s0Var.d(this.f7703d, d());
        try {
            s0Var.c(this);
        } catch (DeadObjectException unused) {
            a(1);
            this.f7701b.d("DeadObjectException thrown while running ApiCallRunner.");
        }
    }

    private final void o() {
        if (this.f7708i) {
            e eVar = this.f7712m;
            eVar.f7637n.removeMessages(11, this.f7702c);
            e eVar2 = this.f7712m;
            eVar2.f7637n.removeMessages(9, this.f7702c);
            this.f7708i = false;
        }
    }

    private final boolean p(s0 s0Var) {
        if (!(s0Var instanceof f0)) {
            n(s0Var);
            return true;
        }
        f0 f0Var = (f0) s0Var;
        Feature featureF = f(f0Var.g(this));
        if (featureF == null) {
            n(s0Var);
            return true;
        }
        Log.w("GoogleApiManager", this.f7701b.getClass().getName() + " could not execute call because it requires feature (" + featureF.D0() + ", " + featureF.E0() + ").");
        if (!this.f7712m.f7638o || !f0Var.f(this)) {
            f0Var.b(new com.google.android.gms.common.api.g(featureF));
            return true;
        }
        z zVar = new z(this.f7702c, featureF, null);
        int iIndexOf = this.f7709j.indexOf(zVar);
        if (iIndexOf >= 0) {
            z zVar2 = (z) this.f7709j.get(iIndexOf);
            this.f7712m.f7637n.removeMessages(15, zVar2);
            e eVar = this.f7712m;
            eVar.f7637n.sendMessageDelayed(Message.obtain(eVar.f7637n, 15, zVar2), 5000L);
            return false;
        }
        this.f7709j.add(zVar);
        e eVar2 = this.f7712m;
        eVar2.f7637n.sendMessageDelayed(Message.obtain(eVar2.f7637n, 15, zVar), 5000L);
        e eVar3 = this.f7712m;
        eVar3.f7637n.sendMessageDelayed(Message.obtain(eVar3.f7637n, 16, zVar), 120000L);
        ConnectionResult connectionResult = new ConnectionResult(2, null);
        if (q(connectionResult)) {
            return false;
        }
        this.f7712m.e(connectionResult, this.f7706g);
        return false;
    }

    private final boolean q(ConnectionResult connectionResult) {
        synchronized (e.f7622r) {
            try {
                e eVar = this.f7712m;
                if (eVar.f7634k == null || !eVar.f7635l.contains(this.f7702c)) {
                    return false;
                }
                this.f7712m.f7634k.s(connectionResult, this.f7706g);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final boolean r(boolean z10) {
        com.google.android.gms.common.internal.k.d(this.f7712m.f7637n);
        if (!this.f7701b.isConnected() || !this.f7705f.isEmpty()) {
            return false;
        }
        if (!this.f7703d.e()) {
            this.f7701b.d("Timing out service connection.");
            return true;
        }
        if (!z10) {
            return false;
        }
        m();
        return false;
    }

    public final void D() {
        com.google.android.gms.common.internal.k.d(this.f7712m.f7637n);
        this.f7710k = null;
    }

    public final void E() {
        com.google.android.gms.common.internal.k.d(this.f7712m.f7637n);
        if (this.f7701b.isConnected() || this.f7701b.h()) {
            return;
        }
        try {
            e eVar = this.f7712m;
            int iB = eVar.f7630g.b(eVar.f7628e, this.f7701b);
            if (iB == 0) {
                e eVar2 = this.f7712m;
                a.f fVar = this.f7701b;
                b0 b0Var = new b0(eVar2, fVar, this.f7702c);
                if (fVar.n()) {
                    ((m0) com.google.android.gms.common.internal.k.g(this.f7707h)).f(b0Var);
                }
                try {
                    this.f7701b.l(b0Var);
                    return;
                } catch (SecurityException e10) {
                    H(new ConnectionResult(10), e10);
                    return;
                }
            }
            ConnectionResult connectionResult = new ConnectionResult(iB, null);
            Log.w("GoogleApiManager", "The service for " + this.f7701b.getClass().getName() + " is not available: " + connectionResult.toString());
            H(connectionResult, null);
        } catch (IllegalStateException e11) {
            H(new ConnectionResult(10), e11);
        }
    }

    public final void F(s0 s0Var) {
        com.google.android.gms.common.internal.k.d(this.f7712m.f7637n);
        if (this.f7701b.isConnected()) {
            if (p(s0Var)) {
                m();
                return;
            } else {
                this.f7700a.add(s0Var);
                return;
            }
        }
        this.f7700a.add(s0Var);
        ConnectionResult connectionResult = this.f7710k;
        if (connectionResult == null || !connectionResult.G0()) {
            E();
        } else {
            H(this.f7710k, null);
        }
    }

    final void G() {
        this.f7711l++;
    }

    public final void H(ConnectionResult connectionResult, Exception exc) {
        com.google.android.gms.common.internal.k.d(this.f7712m.f7637n);
        m0 m0Var = this.f7707h;
        if (m0Var != null) {
            m0Var.g();
        }
        D();
        this.f7712m.f7630g.c();
        g(connectionResult);
        if ((this.f7701b instanceof com.google.android.gms.common.internal.service.e) && connectionResult.D0() != 24) {
            this.f7712m.f7625b = true;
            e eVar = this.f7712m;
            eVar.f7637n.sendMessageDelayed(eVar.f7637n.obtainMessage(19), 300000L);
        }
        if (connectionResult.D0() == 4) {
            h(e.f7621q);
            return;
        }
        if (this.f7700a.isEmpty()) {
            this.f7710k = connectionResult;
            return;
        }
        if (exc != null) {
            com.google.android.gms.common.internal.k.d(this.f7712m.f7637n);
            i(null, exc, false);
            return;
        }
        if (!this.f7712m.f7638o) {
            h(e.f(this.f7702c, connectionResult));
            return;
        }
        i(e.f(this.f7702c, connectionResult), null, true);
        if (this.f7700a.isEmpty() || q(connectionResult) || this.f7712m.e(connectionResult, this.f7706g)) {
            return;
        }
        if (connectionResult.D0() == 18) {
            this.f7708i = true;
        }
        if (!this.f7708i) {
            h(e.f(this.f7702c, connectionResult));
            return;
        }
        e eVar2 = this.f7712m;
        eVar2.f7637n.sendMessageDelayed(Message.obtain(eVar2.f7637n, 9, this.f7702c), 5000L);
    }

    public final void I(ConnectionResult connectionResult) {
        com.google.android.gms.common.internal.k.d(this.f7712m.f7637n);
        a.f fVar = this.f7701b;
        fVar.d("onSignInFailed for " + fVar.getClass().getName() + " with " + String.valueOf(connectionResult));
        H(connectionResult, null);
    }

    public final void J() {
        com.google.android.gms.common.internal.k.d(this.f7712m.f7637n);
        if (this.f7708i) {
            E();
        }
    }

    public final void K() {
        com.google.android.gms.common.internal.k.d(this.f7712m.f7637n);
        h(e.f7620p);
        this.f7703d.d();
        for (h hVar : (h[]) this.f7705f.keySet().toArray(new h[0])) {
            F(new r0(null, new w3.j()));
        }
        g(new ConnectionResult(4));
        if (this.f7701b.isConnected()) {
            this.f7701b.a(new w(this));
        }
    }

    public final void L() {
        com.google.android.gms.common.internal.k.d(this.f7712m.f7637n);
        if (this.f7708i) {
            o();
            e eVar = this.f7712m;
            h(eVar.f7629f.f(eVar.f7628e) == 18 ? new Status(21, "Connection timed out waiting for Google Play services update to complete.") : new Status(22, "API failed to connect while resuming due to an unknown error."));
            this.f7701b.d("Timing out connection while resuming.");
        }
    }

    @Override // com.google.android.gms.common.api.internal.d
    public final void a(int i10) {
        if (Looper.myLooper() == this.f7712m.f7637n.getLooper()) {
            l(i10);
        } else {
            this.f7712m.f7637n.post(new u(this, i10));
        }
    }

    @Override // com.google.android.gms.common.api.internal.j
    public final void b(ConnectionResult connectionResult) {
        H(connectionResult, null);
    }

    @Override // com.google.android.gms.common.api.internal.d
    public final void c(Bundle bundle) {
        if (Looper.myLooper() == this.f7712m.f7637n.getLooper()) {
            k();
        } else {
            this.f7712m.f7637n.post(new t(this));
        }
    }

    public final boolean d() {
        return this.f7701b.n();
    }

    public final boolean e() {
        return r(true);
    }

    public final int s() {
        return this.f7706g;
    }

    final int t() {
        return this.f7711l;
    }

    public final a.f v() {
        return this.f7701b;
    }

    public final Map x() {
        return this.f7705f;
    }
}
