package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.g;
import w8.p;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements kotlin.coroutines.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Throwable f13240a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ kotlin.coroutines.g f13241b;

    public d(Throwable th, kotlin.coroutines.g gVar) {
        this.f13240a = th;
        this.f13241b = gVar;
    }

    @Override // kotlin.coroutines.g
    public Object fold(Object obj, p pVar) {
        return this.f13241b.fold(obj, pVar);
    }

    @Override // kotlin.coroutines.g
    public g.b get(g.c cVar) {
        return this.f13241b.get(cVar);
    }

    @Override // kotlin.coroutines.g
    public kotlin.coroutines.g minusKey(g.c cVar) {
        return this.f13241b.minusKey(cVar);
    }

    @Override // kotlin.coroutines.g
    public kotlin.coroutines.g plus(kotlin.coroutines.g gVar) {
        return this.f13241b.plus(gVar);
    }
}
