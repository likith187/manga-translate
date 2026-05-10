package com.ai.slp.library.impl.component;

import com.slp.library.common.log.LogsWrap;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.security.cert.CertPathValidatorException;
import java.util.ArrayList;
import java.util.Iterator;
import javax.net.ssl.SSLException;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements z0.a, z0.c, z0.b {

    /* JADX INFO: renamed from: e */
    private Throwable f4489e;

    /* JADX INFO: renamed from: f */
    private Throwable f4490f;

    /* JADX INFO: renamed from: g */
    protected Throwable f4491g;

    /* JADX INFO: renamed from: h */
    z0.b f4492h;

    /* JADX INFO: renamed from: i */
    protected final LogsWrap f4493i;

    /* JADX INFO: renamed from: a */
    private y0.a f4485a = y0.a.STATE_STOP;

    /* JADX INFO: renamed from: b */
    private y0.a f4486b = null;

    /* JADX INFO: renamed from: c */
    private boolean f4487c = false;

    /* JADX INFO: renamed from: d */
    private final Object f4488d = new Object();

    /* JADX INFO: renamed from: j */
    private final ArrayList f4494j = new ArrayList();

    protected b(z0.b bVar) {
        this.f4492h = bVar;
        if (bVar == null) {
            this.f4493i = new LogsWrap(LogsWrap.DEFAULT);
        } else {
            bVar.g(this);
            this.f4493i = bVar.f();
        }
    }

    private void C(Throwable th) {
        synchronized (this.f4488d) {
            try {
                y0.a aVarT = t();
                y0.a aVar = y0.a.STATE_ERROR;
                if (aVarT == aVar) {
                    return;
                }
                this.f4486b = aVar;
                D(aVar);
                m("Throw_Exception::" + th.toString());
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void D(y0.a aVar) {
        synchronized (this.f4488d) {
            try {
                y0.a aVar2 = this.f4485a;
                y0.a aVar3 = y0.a.STATE_ERROR;
                if (aVar2 == aVar3 && aVar != y0.a.STATE_STOP) {
                    this.f4493i.WARNS.logf(1, 1, p() + " STATE[%s] RUN_STATE[%S] UPDATE_STATE[%S] No update state", aVar2, this.f4486b, aVar);
                    return;
                }
                y0.a aVar4 = this.f4486b;
                if (aVar4 != null && aVar4 != aVar && aVar != aVar3) {
                    this.f4493i.WARNS.logf(1, 1, p() + " STATE[%s] RUN_STATE[%S] UPDATE_STATE[%S]", aVar2, this.f4486b, aVar);
                    return;
                }
                this.f4493i.DEBUG.logf(1, 1, p() + " STATE UPDATE [%s]", this.f4485a + " => " + aVar);
                if (aVar != null) {
                    this.f4485a = aVar;
                }
                this.f4486b = null;
                l(this.f4488d, "BASE_UPDATE_STATE");
                if (aVar == null || aVar2 == aVar) {
                    return;
                }
                z(aVar2, aVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void E(Throwable th) {
        z0.b bVar = this.f4492h;
        if (bVar != null) {
            ((b) bVar).E(th);
        } else {
            this.f4490f = th;
        }
    }

    private void n(Object obj) {
        obj.notifyAll();
    }

    private boolean q() {
        return r() == null;
    }

    private Throwable w() {
        z0.b bVar = this.f4492h;
        return bVar != null ? ((b) bVar).w() : this.f4490f;
    }

    public /* synthetic */ void y(Throwable th) {
        try {
            Thread.sleep(1000L);
            A(th);
        } catch (InterruptedException e10) {
            throw new RuntimeException(e10);
        }
    }

    protected void A(Throwable th) {
        if (t() == y0.a.STATE_ERROR) {
            return;
        }
        this.f4491g = th;
        if (this.f4489e == null) {
            this.f4489e = th;
        }
        this.f4493i.ON.log(p() + " :: " + this.f4494j.size() + " THROW EXE  ");
        synchronized (this.f4494j) {
            try {
                int i10 = 0;
                for (b bVar : this.f4494j) {
                    i10++;
                    this.f4493i.ON.log(i10 + " :: " + this.f4494j.size() + " THROW EXE  " + o(bVar) + "::" + bVar.r() + "::" + bVar.c());
                    if (bVar.r() == null && bVar.c() == y0.a.STATE_STOP) {
                        l(bVar.f4488d, "Notify Of Exception");
                    } else {
                        bVar.A(th);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        C(th);
        this.f4493i.WARNS.log(p() + " throwError call stop()");
        stop();
    }

    protected abstract void B();

    protected abstract y0.a F();

    protected abstract y0.a G();

    public void H() {
        synchronized (this.f4494j) {
            try {
                Iterator it = this.f4494j.iterator();
                while (it.hasNext()) {
                    ((b) it.next()).H();
                }
                this.f4494j.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // z0.a
    public final y0.a c() {
        return this.f4485a;
    }

    @Override // z0.b
    public LogsWrap f() {
        z0.b bVar = this.f4492h;
        return bVar != null ? bVar.f() : this.f4493i;
    }

    @Override // z0.b
    public void g(b bVar) {
        synchronized (this.f4494j) {
            this.f4494j.add(0, bVar);
        }
    }

    @Override // z0.b
    public final void i(final Throwable th) {
        if (th != null && this.f4489e == null) {
            if (!(th instanceof com.ai.slp.library.base.exception.f)) {
                if (!(th instanceof CertPathValidatorException) && !(th instanceof SSLException) && !(th instanceof SocketTimeoutException) && !(th instanceof UnknownHostException) && th.getClass().getName().indexOf("java.net") != 0 && th.getClass().getName().indexOf("java.security") != 0) {
                    throw new RuntimeException(th);
                }
                th = new com.ai.slp.library.base.exception.f(com.ai.slp.library.base.exception.a.f4478c, th);
            }
            Throwable thW = w();
            if (thW == null) {
                E(th);
            } else {
                th = thW;
            }
            this.f4489e = th;
            if (this.f4492h == null) {
                g1.b.b(new Runnable() { // from class: com.ai.slp.library.impl.component.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4483a.y(th);
                    }
                });
            } else {
                A(th);
                this.f4492h.i(th);
            }
        }
    }

    protected void k(Object obj, int i10, String str) {
        if (obj == null) {
            throw new com.ai.slp.library.base.exception.f(com.ai.slp.library.base.exception.a.f4476a, "lock obj is Null!!");
        }
        synchronized (obj) {
            this.f4493i.INFOS.logf(1, i10 + 1, p() + " call Notify[%s] [%s]", 0, str);
            n(obj);
        }
    }

    protected void l(Object obj, String str) {
        k(obj, 1, str);
    }

    protected void m(String str) {
        k(this, 1, str);
    }

    protected String o(Object obj) {
        if (obj == null) {
            return obj + "";
        }
        return "[" + obj.toString().split("\\.")[r1.length - 1] + "]";
    }

    protected String p() {
        return o(this);
    }

    protected final y0.a r() {
        return s(this);
    }

    @Override // z0.c
    public void release() {
        synchronized (this.f4488d) {
            try {
                y0.a aVarC = c();
                y0.a aVar = y0.a.STATE_STOP;
                if (aVarC != aVar) {
                    stop();
                }
                if (q()) {
                    if (!this.f4487c && c() == aVar) {
                        this.f4487c = true;
                        this.f4493i.ON.logf("%s -> Release Begin", p());
                        B();
                        this.f4493i.ON.logf("%s -> Release Done", p());
                    }
                }
            } finally {
            }
        }
    }

    protected final y0.a s(b bVar) {
        return bVar.f4486b;
    }

    @Override // z0.a
    public void start() {
        synchronized (this.f4488d) {
            try {
                if (q() && !x()) {
                    if (c() != y0.a.STATE_STOP) {
                        return;
                    }
                    this.f4486b = y0.a.STATE_START;
                    if (this.f4491g != null) {
                        this.f4491g = null;
                    }
                    this.f4493i.ON.logf("%s -> Begin", p());
                    this.f4487c = false;
                    try {
                        D(F());
                    } catch (Throwable th) {
                        i(th);
                    }
                }
            } finally {
            }
        }
    }

    @Override // z0.a
    public void stop() {
        synchronized (this.f4488d) {
            try {
                if (q() || r() == y0.a.STATE_ERROR || !x()) {
                    y0.a aVarC = c();
                    y0.a aVar = y0.a.STATE_STOP;
                    if (aVarC == aVar) {
                        return;
                    }
                    this.f4486b = aVar;
                    this.f4493i.ON.logf("%s -> Begin", p());
                    y0.a aVarC2 = c();
                    try {
                        D(G());
                    } catch (Throwable th) {
                        try {
                            i(th);
                            this.f4489e = null;
                            this.f4490f = null;
                            if (aVarC2 != y0.a.STATE_ERROR) {
                            }
                        } finally {
                            this.f4489e = null;
                            this.f4490f = null;
                            if (aVarC2 == y0.a.STATE_ERROR) {
                                this.f4491g = null;
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected y0.a t() {
        return u(this);
    }

    protected y0.a u(b bVar) {
        synchronized (bVar.f4488d) {
            try {
                y0.a aVarR = bVar.r();
                if (aVarR != null) {
                    return aVarR;
                }
                return bVar.c();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    protected final Throwable v() {
        Throwable th = this.f4489e;
        if (th != null) {
            return th;
        }
        Throwable th2 = this.f4490f;
        if (th2 != null) {
            return th2;
        }
        z0.b bVar = this.f4492h;
        if (bVar == null || !(bVar instanceof b)) {
            return null;
        }
        return ((b) bVar).v();
    }

    public boolean x() {
        return v() != null;
    }

    protected void z(y0.a aVar, y0.a aVar2) {
    }
}
