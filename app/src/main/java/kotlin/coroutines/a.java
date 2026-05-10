package kotlin.coroutines;

import kotlin.coroutines.g;
import kotlin.jvm.internal.r;
import w8.p;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements g.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g.c f13034a;

    public a(g.c key) {
        r.e(key, "key");
        this.f13034a = key;
    }

    @Override // kotlin.coroutines.g
    public Object fold(Object obj, p pVar) {
        return g.b.a.a(this, obj, pVar);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    public g.b get(g.c cVar) {
        return g.b.a.b(this, cVar);
    }

    @Override // kotlin.coroutines.g.b
    public g.c getKey() {
        return this.f13034a;
    }

    @Override // kotlin.coroutines.g
    public g minusKey(g.c cVar) {
        return g.b.a.c(this, cVar);
    }

    @Override // kotlin.coroutines.g
    public g plus(g gVar) {
        return g.b.a.d(this, gVar);
    }
}
