package com.ai.slp.library.impl.component;

import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
public abstract class f extends com.ai.slp.library.impl.component.e implements z0.a {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private a1.a f4499l;

    static final class a extends s implements w8.a {
        a() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final y0.a mo8invoke() {
            f.super.B();
            return null;
        }
    }

    static final class b extends s implements l {
        public static final b INSTANCE = new b();

        b() {
            super(1);
        }

        @Override // w8.l
        public final y0.a invoke(Object it) {
            r.e(it, "it");
            if (!(it instanceof z0.c)) {
                return null;
            }
            ((z0.c) it).release();
            return null;
        }
    }

    static final class c extends s implements w8.a {
        c() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final y0.a mo8invoke() {
            return f.super.F();
        }
    }

    static final class d extends s implements l {
        public static final d INSTANCE = new d();

        d() {
            super(1);
        }

        @Override // w8.l
        public final y0.a invoke(Object it) {
            r.e(it, "it");
            if (!(it instanceof z0.a)) {
                return null;
            }
            z0.a aVar = (z0.a) it;
            aVar.start();
            return aVar.c();
        }
    }

    static final class e extends s implements w8.a {
        e() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final y0.a mo8invoke() {
            return f.super.G();
        }
    }

    /* JADX INFO: renamed from: com.ai.slp.library.impl.component.f$f, reason: collision with other inner class name */
    static final class C0057f extends s implements l {
        public static final C0057f INSTANCE = new C0057f();

        C0057f() {
            super(1);
        }

        @Override // w8.l
        public final y0.a invoke(Object it) {
            r.e(it, "it");
            if (!(it instanceof z0.a)) {
                return null;
            }
            z0.a aVar = (z0.a) it;
            aVar.stop();
            return aVar.c();
        }
    }

    public f(z0.b bVar) {
        super(bVar);
    }

    private final y0.a P(y0.a aVar, w8.a aVar2, l lVar) {
        y0.a aVarQ = Q(aVar, lVar);
        if (aVarQ != null && aVarQ != aVar) {
            this.f4493i.ERROR.log(p() + " Call NextLink[" + o(this.f4499l) + "] => [" + aVar + "] Error [" + aVarQ + AbstractJsonLexerKt.END_LIST);
            y0.a status = c();
            r.d(status, "status");
            return status;
        }
        y0.a aVar3 = (y0.a) aVar2.mo8invoke();
        this.f4493i.DEBUG.log(p() + " T[" + aVar + "] cCall[" + aVar3 + "] nextCall[" + o(this.f4499l) + "] = [" + aVarQ + "] ERR[" + x() + AbstractJsonLexerKt.END_LIST);
        if (aVar3 == null || aVar3 == aVar) {
            return aVar != null ? aVar : y0.a.STATE_STOP;
        }
        this.f4493i.ERROR.log(p() + " Call [" + aVar + "] Error [" + aVar3 + AbstractJsonLexerKt.END_LIST);
        return aVar3;
    }

    private final y0.a Q(y0.a aVar, l lVar) {
        a1.a aVar2 = this.f4499l;
        if (aVar2 != null) {
            return (y0.a) lVar.invoke(aVar2);
        }
        this.f4493i.INFOS.log(aVar + " -> " + p() + " next obj is null!");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ai.slp.library.impl.component.c, com.ai.slp.library.impl.component.b
    public final void B() {
        P(null, new a(), b.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ai.slp.library.impl.component.c, com.ai.slp.library.impl.component.b
    public final y0.a F() {
        return P(y0.a.STATE_START, new c(), d.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ai.slp.library.impl.component.c, com.ai.slp.library.impl.component.b
    public final y0.a G() {
        return P(y0.a.STATE_STOP, new e(), C0057f.INSTANCE);
    }
}
