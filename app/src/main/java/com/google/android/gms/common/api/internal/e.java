package com.google.android.gms.common.api.internal;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.TelemetryData;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class e implements Handler.Callback {

    /* JADX INFO: renamed from: p */
    public static final Status f7620p = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* JADX INFO: renamed from: q */
    private static final Status f7621q = new Status(4, "The user must be signed in to make this API call.");

    /* JADX INFO: renamed from: r */
    private static final Object f7622r = new Object();

    /* JADX INFO: renamed from: s */
    private static e f7623s;

    /* JADX INFO: renamed from: c */
    private TelemetryData f7626c;

    /* JADX INFO: renamed from: d */
    private com.google.android.gms.common.internal.n f7627d;

    /* JADX INFO: renamed from: e */
    private final Context f7628e;

    /* JADX INFO: renamed from: f */
    private final com.google.android.gms.common.a f7629f;

    /* JADX INFO: renamed from: g */
    private final com.google.android.gms.common.internal.z f7630g;

    /* JADX INFO: renamed from: n */
    private final Handler f7637n;

    /* JADX INFO: renamed from: o */
    private volatile boolean f7638o;

    /* JADX INFO: renamed from: a */
    private long f7624a = 10000;

    /* JADX INFO: renamed from: b */
    private boolean f7625b = false;

    /* JADX INFO: renamed from: h */
    private final AtomicInteger f7631h = new AtomicInteger(1);

    /* JADX INFO: renamed from: i */
    private final AtomicInteger f7632i = new AtomicInteger(0);

    /* JADX INFO: renamed from: j */
    private final Map f7633j = new ConcurrentHashMap(5, 0.75f, 1);

    /* JADX INFO: renamed from: k */
    private p f7634k = null;

    /* JADX INFO: renamed from: l */
    private final Set f7635l = new androidx.collection.b();

    /* JADX INFO: renamed from: m */
    private final Set f7636m = new androidx.collection.b();

    private e(Context context, Looper looper, com.google.android.gms.common.a aVar) {
        this.f7638o = true;
        this.f7628e = context;
        t3.i iVar = new t3.i(looper, this);
        this.f7637n = iVar;
        this.f7629f = aVar;
        this.f7630g = new com.google.android.gms.common.internal.z(aVar);
        if (r3.f.a(context)) {
            this.f7638o = false;
        }
        iVar.sendMessage(iVar.obtainMessage(6));
    }

    public static Status f(b bVar, ConnectionResult connectionResult) {
        return new Status(connectionResult, "API: " + bVar.b() + " is not available on this device. Connection failed with: " + String.valueOf(connectionResult));
    }

    private final x g(com.google.android.gms.common.api.d dVar) {
        Map map = this.f7633j;
        b bVarD = dVar.d();
        x xVar = (x) map.get(bVarD);
        if (xVar == null) {
            xVar = new x(this, dVar);
            this.f7633j.put(bVarD, xVar);
        }
        if (xVar.d()) {
            this.f7636m.add(bVarD);
        }
        xVar.E();
        return xVar;
    }

    private final com.google.android.gms.common.internal.n h() {
        if (this.f7627d == null) {
            this.f7627d = com.google.android.gms.common.internal.m.a(this.f7628e);
        }
        return this.f7627d;
    }

    private final void i() {
        TelemetryData telemetryData = this.f7626c;
        if (telemetryData != null) {
            if (telemetryData.D0() > 0 || d()) {
                h().a(telemetryData);
            }
            this.f7626c = null;
        }
    }

    private final void j(w3.j jVar, int i10, com.google.android.gms.common.api.d dVar) {
        g0 g0VarB;
        if (i10 == 0 || (g0VarB = g0.b(this, i10, dVar.d())) == null) {
            return;
        }
        w3.i iVarA = jVar.a();
        final Handler handler = this.f7637n;
        handler.getClass();
        iVarA.a(new Executor() { // from class: com.google.android.gms.common.api.internal.r
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        }, g0VarB);
    }

    public static e t(Context context) {
        e eVar;
        synchronized (f7622r) {
            try {
                if (f7623s == null) {
                    f7623s = new e(context.getApplicationContext(), com.google.android.gms.common.internal.g.b().getLooper(), com.google.android.gms.common.a.l());
                }
                eVar = f7623s;
            } catch (Throwable th) {
                throw th;
            }
        }
        return eVar;
    }

    final void A(MethodInvocation methodInvocation, int i10, long j10, int i11) {
        this.f7637n.sendMessage(this.f7637n.obtainMessage(18, new h0(methodInvocation, i10, j10, i11)));
    }

    public final void B(ConnectionResult connectionResult, int i10) {
        if (e(connectionResult, i10)) {
            return;
        }
        Handler handler = this.f7637n;
        handler.sendMessage(handler.obtainMessage(5, i10, 0, connectionResult));
    }

    public final void C() {
        Handler handler = this.f7637n;
        handler.sendMessage(handler.obtainMessage(3));
    }

    public final void D(com.google.android.gms.common.api.d dVar) {
        Handler handler = this.f7637n;
        handler.sendMessage(handler.obtainMessage(7, dVar));
    }

    public final void a(p pVar) {
        synchronized (f7622r) {
            try {
                if (this.f7634k != pVar) {
                    this.f7634k = pVar;
                    this.f7635l.clear();
                }
                this.f7635l.addAll(pVar.t());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    final void b(p pVar) {
        synchronized (f7622r) {
            try {
                if (this.f7634k == pVar) {
                    this.f7634k = null;
                    this.f7635l.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    final boolean d() {
        if (this.f7625b) {
            return false;
        }
        RootTelemetryConfiguration rootTelemetryConfigurationA = com.google.android.gms.common.internal.l.b().a();
        if (rootTelemetryConfigurationA != null && !rootTelemetryConfigurationA.F0()) {
            return false;
        }
        int iA = this.f7630g.a(this.f7628e, 203400000);
        return iA == -1 || iA == 0;
    }

    final boolean e(ConnectionResult connectionResult, int i10) {
        return this.f7629f.v(this.f7628e, connectionResult, i10);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i10 = message.what;
        x xVar = null;
        switch (i10) {
            case 1:
                this.f7624a = true == ((Boolean) message.obj).booleanValue() ? 10000L : 300000L;
                this.f7637n.removeMessages(12);
                for (b bVar : this.f7633j.keySet()) {
                    Handler handler = this.f7637n;
                    handler.sendMessageDelayed(handler.obtainMessage(12, bVar), this.f7624a);
                }
                return true;
            case 2:
                androidx.appcompat.app.t.a(message.obj);
                throw null;
            case 3:
                for (x xVar2 : this.f7633j.values()) {
                    xVar2.D();
                    xVar2.E();
                }
                return true;
            case 4:
            case 8:
            case 13:
                i0 i0Var = (i0) message.obj;
                x xVarG = (x) this.f7633j.get(i0Var.f7651c.d());
                if (xVarG == null) {
                    xVarG = g(i0Var.f7651c);
                }
                if (!xVarG.d() || this.f7632i.get() == i0Var.f7650b) {
                    xVarG.F(i0Var.f7649a);
                } else {
                    i0Var.f7649a.a(f7620p);
                    xVarG.K();
                }
                return true;
            case 5:
                int i11 = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator it = this.f7633j.values().iterator();
                while (true) {
                    if (it.hasNext()) {
                        x xVar3 = (x) it.next();
                        if (xVar3.s() == i11) {
                            xVar = xVar3;
                        }
                    }
                }
                if (xVar == null) {
                    Log.wtf("GoogleApiManager", "Could not find API instance " + i11 + " while trying to fail enqueued calls.", new Exception());
                } else if (connectionResult.D0() == 13) {
                    xVar.h(new Status(17, "Error resolution was canceled by the user, original error message: " + this.f7629f.d(connectionResult.D0()) + ": " + connectionResult.E0()));
                } else {
                    xVar.h(f(xVar.f7702c, connectionResult));
                }
                return true;
            case 6:
                if (this.f7628e.getApplicationContext() instanceof Application) {
                    c.c((Application) this.f7628e.getApplicationContext());
                    c.b().a(new s(this));
                    if (!c.b().e(true)) {
                        this.f7624a = 300000L;
                    }
                }
                return true;
            case 7:
                g((com.google.android.gms.common.api.d) message.obj);
                return true;
            case 9:
                if (this.f7633j.containsKey(message.obj)) {
                    ((x) this.f7633j.get(message.obj)).J();
                }
                return true;
            case 10:
                Iterator it2 = this.f7636m.iterator();
                while (it2.hasNext()) {
                    x xVar4 = (x) this.f7633j.remove((b) it2.next());
                    if (xVar4 != null) {
                        xVar4.K();
                    }
                }
                this.f7636m.clear();
                return true;
            case 11:
                if (this.f7633j.containsKey(message.obj)) {
                    ((x) this.f7633j.get(message.obj)).L();
                }
                return true;
            case 12:
                if (this.f7633j.containsKey(message.obj)) {
                    ((x) this.f7633j.get(message.obj)).e();
                }
                return true;
            case 14:
                androidx.appcompat.app.t.a(message.obj);
                throw null;
            case 15:
                z zVar = (z) message.obj;
                if (this.f7633j.containsKey(zVar.f7719a)) {
                    x.B((x) this.f7633j.get(zVar.f7719a), zVar);
                }
                return true;
            case 16:
                z zVar2 = (z) message.obj;
                if (this.f7633j.containsKey(zVar2.f7719a)) {
                    x.C((x) this.f7633j.get(zVar2.f7719a), zVar2);
                }
                return true;
            case 17:
                i();
                return true;
            case 18:
                h0 h0Var = (h0) message.obj;
                if (h0Var.f7647c == 0) {
                    h().a(new TelemetryData(h0Var.f7646b, Arrays.asList(h0Var.f7645a)));
                } else {
                    TelemetryData telemetryData = this.f7626c;
                    if (telemetryData != null) {
                        List listE0 = telemetryData.E0();
                        if (telemetryData.D0() != h0Var.f7646b || (listE0 != null && listE0.size() >= h0Var.f7648d)) {
                            this.f7637n.removeMessages(17);
                            i();
                        } else {
                            this.f7626c.F0(h0Var.f7645a);
                        }
                    }
                    if (this.f7626c == null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(h0Var.f7645a);
                        this.f7626c = new TelemetryData(h0Var.f7646b, arrayList);
                        Handler handler2 = this.f7637n;
                        handler2.sendMessageDelayed(handler2.obtainMessage(17), h0Var.f7647c);
                    }
                }
                return true;
            case 19:
                this.f7625b = false;
                return true;
            default:
                Log.w("GoogleApiManager", "Unknown message id: " + i10);
                return false;
        }
    }

    public final int k() {
        return this.f7631h.getAndIncrement();
    }

    final x s(b bVar) {
        return (x) this.f7633j.get(bVar);
    }

    public final void z(com.google.android.gms.common.api.d dVar, int i10, m mVar, w3.j jVar, l lVar) {
        j(jVar, mVar.d(), dVar);
        this.f7637n.sendMessage(this.f7637n.obtainMessage(4, new i0(new q0(i10, mVar, jVar, lVar), this.f7632i.get(), dVar)));
    }
}
