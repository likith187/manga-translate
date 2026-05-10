package kotlin.coroutines.jvm.internal;

import kotlin.coroutines.g;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d extends a {
    private final kotlin.coroutines.g _context;
    private transient kotlin.coroutines.d intercepted;

    public d(kotlin.coroutines.d dVar, kotlin.coroutines.g gVar) {
        super(dVar);
        this._context = gVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a, kotlin.coroutines.d
    public kotlin.coroutines.g getContext() {
        kotlin.coroutines.g gVar = this._context;
        r.b(gVar);
        return gVar;
    }

    public final kotlin.coroutines.d intercepted() {
        kotlin.coroutines.d dVarV = this.intercepted;
        if (dVarV == null) {
            kotlin.coroutines.e eVar = (kotlin.coroutines.e) getContext().get(kotlin.coroutines.e.f13037d);
            if (eVar == null || (dVarV = eVar.v(this)) == null) {
                dVarV = this;
            }
            this.intercepted = dVarV;
        }
        return dVarV;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    protected void releaseIntercepted() {
        kotlin.coroutines.d dVar = this.intercepted;
        if (dVar != null && dVar != this) {
            g.b bVar = getContext().get(kotlin.coroutines.e.f13037d);
            r.b(bVar);
            ((kotlin.coroutines.e) bVar).k(dVar);
        }
        this.intercepted = c.INSTANCE;
    }

    public d(kotlin.coroutines.d dVar) {
        this(dVar, dVar != null ? dVar.getContext() : null);
    }
}
