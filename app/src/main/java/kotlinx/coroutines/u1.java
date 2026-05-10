package kotlinx.coroutines;

import n8.r;

/* JADX INFO: loaded from: classes2.dex */
final class u1 extends l1 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final kotlin.coroutines.d f13389h;

    public u1(kotlin.coroutines.d dVar) {
        this.f13389h = dVar;
    }

    @Override // kotlinx.coroutines.c1
    public void b(Throwable th) {
        kotlin.coroutines.d dVar = this.f13389h;
        r.a aVar = n8.r.Companion;
        dVar.resumeWith(n8.r.m59constructorimpl(n8.h0.INSTANCE));
    }
}
