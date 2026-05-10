package com.ai.slp.library.mt;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.j;
import n8.k;

/* JADX INFO: loaded from: classes.dex */
public final class e extends com.ai.slp.library.impl.component.d {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final j f4507o;

    static final class a extends s implements w8.a {
        a() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final d mo8invoke() {
            e eVar = e.this;
            return (d) eVar.M(new d(eVar));
        }
    }

    public e() {
        super(null);
        this.f4507o = k.b(new a());
    }

    private final d Q() {
        return (d) this.f4507o.getValue();
    }

    @Override // com.ai.slp.library.impl.component.c
    protected void J() {
        Q().release();
    }

    @Override // com.ai.slp.library.impl.component.h, com.ai.slp.library.impl.component.c
    protected y0.a K() {
        Q().start();
        y0.a aVarK = super.K();
        r.d(aVarK, "super.startComponent()");
        return aVarK;
    }

    @Override // com.ai.slp.library.impl.component.h, com.ai.slp.library.impl.component.c
    protected y0.a L() {
        Q().stop();
        y0.a aVarL = super.L();
        r.d(aVarL, "super.stopComponent()");
        return aVarL;
    }

    public final synchronized g R(f params) {
        r.e(params, "params");
        if (c() != y0.a.STATE_START) {
            this.f4493i.ERROR.log("Engine status != STATE_START");
            return null;
        }
        try {
            return Q().W(params);
        } catch (Throwable th) {
            i(th);
            return null;
        }
    }

    public final synchronized List S(List params) {
        r.e(params, "params");
        if (c() != y0.a.STATE_START) {
            this.f4493i.ERROR.log("Engine status != STATE_START");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = params.iterator();
        while (it.hasNext()) {
            g gVarR = R((f) it.next());
            if (gVarR == null) {
                return null;
            }
            arrayList.add(gVarR);
        }
        return arrayList;
    }
}
