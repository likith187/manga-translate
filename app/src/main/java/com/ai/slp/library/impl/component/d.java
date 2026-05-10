package com.ai.slp.library.impl.component;

/* JADX INFO: loaded from: classes.dex */
public abstract class d extends h {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private c1.a f4496l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private c1.b f4497m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected final g f4498n;

    public d(z0.b bVar) {
        super(bVar);
        this.f4496l = null;
        this.f4497m = null;
        this.f4498n = (g) M(new g(this));
    }

    @Override // com.ai.slp.library.impl.component.b
    protected void A(Throwable th) {
        super.A(th);
        try {
            if (th instanceof com.ai.slp.library.base.exception.e) {
                return;
            }
            com.ai.slp.library.base.exception.b errorInfo = th instanceof com.ai.slp.library.base.exception.f ? ((com.ai.slp.library.base.exception.f) th).getErrorInfo() : new com.ai.slp.library.base.exception.b(com.ai.slp.library.base.exception.a.f4476a, th);
            this.f4493i.ERROR.logException(th);
            c1.a aVar = this.f4496l;
            if (aVar != null) {
                aVar.a(errorInfo);
            }
        } finally {
        }
    }

    protected c M(c cVar) {
        cVar.a(this);
        return cVar;
    }

    public void N(c1.a aVar) {
        this.f4496l = aVar;
    }

    public void O(c1.b bVar) {
        this.f4497m = bVar;
    }

    @Override // com.ai.slp.library.impl.component.h, com.ai.slp.library.impl.component.c, b1.b
    public b1.b d(b1.d dVar, Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            cVar.I(cVar, this);
        }
        return super.d(dVar, obj);
    }

    @Override // com.ai.slp.library.impl.component.b, z0.c
    public final synchronized void release() {
        super.release();
    }

    @Override // com.ai.slp.library.impl.component.b, z0.a
    public final synchronized void start() {
        super.start();
    }

    @Override // com.ai.slp.library.impl.component.b, z0.a
    public final synchronized void stop() {
        super.stop();
    }

    @Override // com.ai.slp.library.impl.component.b
    protected void z(y0.a aVar, y0.a aVar2) {
        if (aVar != aVar2) {
            if ((this.f4491g instanceof com.ai.slp.library.base.exception.e) && (aVar != y0.a.STATE_ERROR || aVar2 != y0.a.STATE_STOP)) {
                this.f4493i.DEBUG.log("cancel not change State");
                return;
            } else {
                c1.b bVar = this.f4497m;
                if (bVar != null) {
                    bVar.a(aVar2);
                }
            }
        }
        super.z(aVar, aVar2);
    }
}
