package kotlinx.coroutines;

import kotlin.coroutines.g;

/* JADX INFO: loaded from: classes2.dex */
final class d2 implements g.b, g.c {
    public static final d2 INSTANCE = new d2();

    private d2() {
    }

    @Override // kotlin.coroutines.g
    public Object fold(Object obj, w8.p pVar) {
        return g.b.a.a(this, obj, pVar);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    public g.b get(g.c cVar) {
        return g.b.a.b(this, cVar);
    }

    @Override // kotlin.coroutines.g.b
    public g.c getKey() {
        return this;
    }

    @Override // kotlin.coroutines.g
    public kotlin.coroutines.g minusKey(g.c cVar) {
        return g.b.a.c(this, cVar);
    }

    @Override // kotlin.coroutines.g
    public kotlin.coroutines.g plus(kotlin.coroutines.g gVar) {
        return g.b.a.d(this, gVar);
    }
}
