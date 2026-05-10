package kotlinx.coroutines.channels;

import kotlin.jvm.internal.d0;
import kotlinx.coroutines.internal.p0;
import kotlinx.coroutines.internal.y;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
public class l extends b {

    /* JADX INFO: renamed from: n */
    private final int f13220n;

    /* JADX INFO: renamed from: o */
    private final a f13221o;

    public l(int i10, a aVar, w8.l lVar) {
        super(i10, lVar);
        this.f13220n = i10;
        this.f13221o = aVar;
        if (aVar == a.SUSPEND) {
            throw new IllegalArgumentException(("This implementation does not support suspension for senders, use " + d0.b(b.class).c() + " instead").toString());
        }
        if (i10 >= 1) {
            return;
        }
        throw new IllegalArgumentException(("Buffered channel capacity must be at least 1, but " + i10 + " was specified").toString());
    }

    private final Object u0(Object obj, boolean z10) {
        w8.l lVar;
        p0 p0VarD;
        Object objA = super.a(obj);
        if (g.d(objA) || g.c(objA)) {
            return objA;
        }
        if (!z10 || (lVar = this.f13188c) == null || (p0VarD = y.d(lVar, obj, null, 2, null)) == null) {
            return g.f13215a.c(h0.INSTANCE);
        }
        throw p0VarD;
    }

    private final Object v0(Object obj, boolean z10) {
        return this.f13221o == a.DROP_LATEST ? u0(obj, z10) : k0(obj);
    }

    @Override // kotlinx.coroutines.channels.b
    protected boolean V() {
        return this.f13221o == a.DROP_OLDEST;
    }

    @Override // kotlinx.coroutines.channels.b, kotlinx.coroutines.channels.n
    public Object a(Object obj) {
        return v0(obj, false);
    }
}
