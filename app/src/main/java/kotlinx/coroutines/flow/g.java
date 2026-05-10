package kotlinx.coroutines.flow;

import n8.h0;
import w8.p;

/* JADX INFO: loaded from: classes2.dex */
final class g extends a {

    /* JADX INFO: renamed from: a */
    private final p f13231a;

    public g(p pVar) {
        this.f13231a = pVar;
    }

    @Override // kotlinx.coroutines.flow.a
    public Object a(c cVar, kotlin.coroutines.d dVar) {
        Object objInvoke = this.f13231a.invoke(cVar, dVar);
        return objInvoke == kotlin.coroutines.intrinsics.b.f() ? objInvoke : h0.INSTANCE;
    }
}
