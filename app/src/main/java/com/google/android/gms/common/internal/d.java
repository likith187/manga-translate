package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a */
    private int f7824a;

    /* JADX INFO: renamed from: b */
    private long f7825b;

    /* JADX INFO: renamed from: c */
    private long f7826c;

    /* JADX INFO: renamed from: d */
    private int f7827d;

    /* JADX INFO: renamed from: e */
    private long f7828e;

    /* JADX INFO: renamed from: g */
    f1 f7830g;

    /* JADX INFO: renamed from: h */
    private final Context f7831h;

    /* JADX INFO: renamed from: i */
    private final Looper f7832i;

    /* JADX INFO: renamed from: j */
    private final g f7833j;

    /* JADX INFO: renamed from: k */
    private final com.google.android.gms.common.b f7834k;

    /* JADX INFO: renamed from: l */
    final Handler f7835l;

    /* JADX INFO: renamed from: o */
    private IGmsServiceBroker f7838o;

    /* JADX INFO: renamed from: p */
    protected c f7839p;

    /* JADX INFO: renamed from: q */
    private IInterface f7840q;

    /* JADX INFO: renamed from: s */
    private r0 f7842s;

    /* JADX INFO: renamed from: u */
    private final a f7844u;

    /* JADX INFO: renamed from: v */
    private final b f7845v;

    /* JADX INFO: renamed from: w */
    private final int f7846w;

    /* JADX INFO: renamed from: x */
    private final String f7847x;

    /* JADX INFO: renamed from: y */
    private volatile String f7848y;
    private static final Feature[] E = new Feature[0];
    public static final String[] D = {"service_esmobile", "service_googleme"};

    /* JADX INFO: renamed from: f */
    private volatile String f7829f = null;

    /* JADX INFO: renamed from: m */
    private final Object f7836m = new Object();

    /* JADX INFO: renamed from: n */
    private final Object f7837n = new Object();

    /* JADX INFO: renamed from: r */
    private final ArrayList f7841r = new ArrayList();

    /* JADX INFO: renamed from: t */
    private int f7843t = 1;

    /* JADX INFO: renamed from: z */
    private ConnectionResult f7849z = null;
    private boolean A = false;
    private volatile zzk B = null;
    protected AtomicInteger C = new AtomicInteger(0);

    public interface a {
        void a(int i10);

        void c(Bundle bundle);
    }

    public interface b {
        void b(ConnectionResult connectionResult);
    }

    public interface c {
        void a(ConnectionResult connectionResult);
    }

    /* JADX INFO: renamed from: com.google.android.gms.common.internal.d$d */
    protected class C0105d implements c {
        public C0105d() {
        }

        @Override // com.google.android.gms.common.internal.d.c
        public final void a(ConnectionResult connectionResult) {
            if (connectionResult.H0()) {
                d dVar = d.this;
                dVar.c(null, dVar.A());
            } else if (d.this.f7845v != null) {
                d.this.f7845v.b(connectionResult);
            }
        }
    }

    public interface e {
        void a();
    }

    protected d(Context context, Looper looper, g gVar, com.google.android.gms.common.b bVar, int i10, a aVar, b bVar2, String str) {
        k.h(context, "Context must not be null");
        this.f7831h = context;
        k.h(looper, "Looper must not be null");
        this.f7832i = looper;
        k.h(gVar, "Supervisor must not be null");
        this.f7833j = gVar;
        k.h(bVar, "API availability must not be null");
        this.f7834k = bVar;
        this.f7835l = new o0(this, looper);
        this.f7846w = i10;
        this.f7844u = aVar;
        this.f7845v = bVar2;
        this.f7847x = str;
    }

    static /* bridge */ /* synthetic */ void Z(d dVar, zzk zzkVar) {
        dVar.B = zzkVar;
        if (dVar.P()) {
            ConnectionTelemetryConfiguration connectionTelemetryConfiguration = zzkVar.f7954f;
            l.b().c(connectionTelemetryConfiguration == null ? null : connectionTelemetryConfiguration.I0());
        }
    }

    static /* bridge */ /* synthetic */ void a0(d dVar, int i10) {
        int i11;
        int i12;
        synchronized (dVar.f7836m) {
            i11 = dVar.f7843t;
        }
        if (i11 == 3) {
            dVar.A = true;
            i12 = 5;
        } else {
            i12 = 4;
        }
        Handler handler = dVar.f7835l;
        handler.sendMessage(handler.obtainMessage(i12, dVar.C.get(), 16));
    }

    static /* bridge */ /* synthetic */ boolean d0(d dVar, int i10, int i11, IInterface iInterface) {
        synchronized (dVar.f7836m) {
            try {
                if (dVar.f7843t != i10) {
                    return false;
                }
                dVar.f0(i11, iInterface);
                return true;
            } finally {
            }
        }
    }

    static /* bridge */ /* synthetic */ boolean e0(d dVar) {
        if (dVar.A || TextUtils.isEmpty(dVar.C()) || TextUtils.isEmpty(dVar.z())) {
            return false;
        }
        try {
            Class.forName(dVar.C());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public final void f0(int i10, IInterface iInterface) {
        f1 f1Var;
        k.a((i10 == 4) == (iInterface != null));
        synchronized (this.f7836m) {
            try {
                this.f7843t = i10;
                this.f7840q = iInterface;
                if (i10 == 1) {
                    r0 r0Var = this.f7842s;
                    if (r0Var != null) {
                        g gVar = this.f7833j;
                        String strB = this.f7830g.b();
                        k.g(strB);
                        gVar.d(strB, this.f7830g.a(), 4225, r0Var, U(), this.f7830g.c());
                        this.f7842s = null;
                    }
                } else if (i10 == 2 || i10 == 3) {
                    r0 r0Var2 = this.f7842s;
                    if (r0Var2 != null && (f1Var = this.f7830g) != null) {
                        Log.e("GmsClient", "Calling connect() while still connected, missing disconnect() for " + f1Var.b() + " on " + f1Var.a());
                        g gVar2 = this.f7833j;
                        String strB2 = this.f7830g.b();
                        k.g(strB2);
                        gVar2.d(strB2, this.f7830g.a(), 4225, r0Var2, U(), this.f7830g.c());
                        this.C.incrementAndGet();
                    }
                    r0 r0Var3 = new r0(this, this.C.get());
                    this.f7842s = r0Var3;
                    f1 f1Var2 = (this.f7843t != 3 || z() == null) ? new f1(E(), D(), false, 4225, G()) : new f1(w().getPackageName(), z(), true, 4225, false);
                    this.f7830g = f1Var2;
                    if (f1Var2.c() && g() < 17895000) {
                        throw new IllegalStateException("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(String.valueOf(this.f7830g.b())));
                    }
                    g gVar3 = this.f7833j;
                    String strB3 = this.f7830g.b();
                    k.g(strB3);
                    if (!gVar3.e(new z0(strB3, this.f7830g.a(), 4225, this.f7830g.c()), r0Var3, U(), u())) {
                        Log.w("GmsClient", "unable to connect to service: " + this.f7830g.b() + " on " + this.f7830g.a());
                        b0(16, null, this.C.get());
                    }
                } else if (i10 == 4) {
                    k.g(iInterface);
                    I(iInterface);
                }
            } finally {
            }
        }
    }

    protected abstract Set A();

    public final IInterface B() {
        IInterface iInterface;
        synchronized (this.f7836m) {
            try {
                if (this.f7843t == 5) {
                    throw new DeadObjectException();
                }
                p();
                iInterface = this.f7840q;
                k.h(iInterface, "Client is connected but service is null");
            } catch (Throwable th) {
                throw th;
            }
        }
        return iInterface;
    }

    protected abstract String C();

    protected abstract String D();

    protected String E() {
        return "com.google.android.gms";
    }

    public ConnectionTelemetryConfiguration F() {
        zzk zzkVar = this.B;
        if (zzkVar == null) {
            return null;
        }
        return zzkVar.f7954f;
    }

    protected boolean G() {
        return g() >= 211700000;
    }

    public boolean H() {
        return this.B != null;
    }

    protected void I(IInterface iInterface) {
        this.f7826c = System.currentTimeMillis();
    }

    protected void J(ConnectionResult connectionResult) {
        this.f7827d = connectionResult.D0();
        this.f7828e = System.currentTimeMillis();
    }

    protected void K(int i10) {
        this.f7824a = i10;
        this.f7825b = System.currentTimeMillis();
    }

    protected void L(int i10, IBinder iBinder, Bundle bundle, int i11) {
        this.f7835l.sendMessage(this.f7835l.obtainMessage(1, i11, -1, new s0(this, i10, iBinder, bundle)));
    }

    public boolean M() {
        return false;
    }

    public void N(String str) {
        this.f7848y = str;
    }

    public void O(int i10) {
        this.f7835l.sendMessage(this.f7835l.obtainMessage(6, this.C.get(), i10));
    }

    public boolean P() {
        return false;
    }

    protected final String U() {
        String str = this.f7847x;
        return str == null ? this.f7831h.getClass().getName() : str;
    }

    public void a(e eVar) {
        eVar.a();
    }

    protected final void b0(int i10, Bundle bundle, int i11) {
        this.f7835l.sendMessage(this.f7835l.obtainMessage(7, i11, -1, new t0(this, i10, null)));
    }

    public void c(IAccountAccessor iAccountAccessor, Set set) {
        Bundle bundleY = y();
        String str = this.f7848y;
        int i10 = com.google.android.gms.common.b.f7731a;
        Scope[] scopeArr = GetServiceRequest.f7784r;
        Bundle bundle = new Bundle();
        int i11 = this.f7846w;
        Feature[] featureArr = GetServiceRequest.f7785s;
        GetServiceRequest getServiceRequest = new GetServiceRequest(6, i11, i10, null, null, scopeArr, bundle, null, featureArr, featureArr, true, 0, false, str);
        getServiceRequest.f7789f = this.f7831h.getPackageName();
        getServiceRequest.f7792j = bundleY;
        if (set != null) {
            getServiceRequest.f7791i = (Scope[]) set.toArray(new Scope[0]);
        }
        if (n()) {
            Account accountS = s();
            if (accountS == null) {
                accountS = new Account("<<default account>>", "com.google");
            }
            getServiceRequest.f7793k = accountS;
            if (iAccountAccessor != null) {
                getServiceRequest.f7790h = iAccountAccessor.asBinder();
            }
        } else if (M()) {
            getServiceRequest.f7793k = s();
        }
        getServiceRequest.f7794l = E;
        getServiceRequest.f7795m = t();
        if (P()) {
            getServiceRequest.f7798p = true;
        }
        try {
            try {
                synchronized (this.f7837n) {
                    try {
                        IGmsServiceBroker iGmsServiceBroker = this.f7838o;
                        if (iGmsServiceBroker != null) {
                            iGmsServiceBroker.getService(new q0(this, this.C.get()), getServiceRequest);
                        } else {
                            Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                        }
                    } finally {
                    }
                }
            } catch (DeadObjectException e10) {
                Log.w("GmsClient", "IGmsServiceBroker.getService failed", e10);
                O(3);
            } catch (SecurityException e11) {
                throw e11;
            }
        } catch (RemoteException | RuntimeException e12) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e12);
            L(8, null, null, this.C.get());
        }
    }

    public void d(String str) {
        this.f7829f = str;
        m();
    }

    public boolean e() {
        return true;
    }

    public abstract int g();

    public boolean h() {
        boolean z10;
        synchronized (this.f7836m) {
            int i10 = this.f7843t;
            z10 = true;
            if (i10 != 2 && i10 != 3) {
                z10 = false;
            }
        }
        return z10;
    }

    public final Feature[] i() {
        zzk zzkVar = this.B;
        if (zzkVar == null) {
            return null;
        }
        return zzkVar.f7952b;
    }

    public boolean isConnected() {
        boolean z10;
        synchronized (this.f7836m) {
            z10 = this.f7843t == 4;
        }
        return z10;
    }

    public String j() {
        f1 f1Var;
        if (!isConnected() || (f1Var = this.f7830g) == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
        return f1Var.a();
    }

    public String k() {
        return this.f7829f;
    }

    public void l(c cVar) {
        k.h(cVar, "Connection progress callbacks cannot be null.");
        this.f7839p = cVar;
        f0(2, null);
    }

    public void m() {
        this.C.incrementAndGet();
        synchronized (this.f7841r) {
            try {
                int size = this.f7841r.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((p0) this.f7841r.get(i10)).d();
                }
                this.f7841r.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.f7837n) {
            this.f7838o = null;
        }
        f0(1, null);
    }

    public boolean n() {
        return false;
    }

    protected final void p() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    protected abstract IInterface q(IBinder iBinder);

    protected boolean r() {
        return false;
    }

    public abstract Account s();

    public Feature[] t() {
        return E;
    }

    protected abstract Executor u();

    public Bundle v() {
        return null;
    }

    public final Context w() {
        return this.f7831h;
    }

    public int x() {
        return this.f7846w;
    }

    protected abstract Bundle y();

    protected String z() {
        return null;
    }
}
