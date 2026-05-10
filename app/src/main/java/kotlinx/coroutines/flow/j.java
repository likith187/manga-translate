package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicReference;
import n8.h0;
import n8.r;

/* JADX INFO: loaded from: classes2.dex */
final class j extends kotlinx.coroutines.flow.internal.c {

    /* JADX INFO: renamed from: a */
    private final AtomicReference f13247a = new AtomicReference(null);

    @Override // kotlinx.coroutines.flow.internal.c
    /* JADX INFO: renamed from: d */
    public boolean a(h hVar) {
        if (kotlinx.coroutines.internal.e.a(this.f13247a) != null) {
            return false;
        }
        kotlinx.coroutines.internal.e.b(this.f13247a, i.f13234a);
        return true;
    }

    public final Object e(kotlin.coroutines.d dVar) {
        kotlinx.coroutines.j jVar = new kotlinx.coroutines.j(kotlin.coroutines.intrinsics.b.c(dVar), 1);
        jVar.D();
        if (!androidx.lifecycle.b.a(this.f13247a, i.f13234a, jVar)) {
            r.a aVar = r.Companion;
            jVar.resumeWith(r.m59constructorimpl(h0.INSTANCE));
        }
        Object objX = jVar.x();
        if (objX == kotlin.coroutines.intrinsics.b.f()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objX == kotlin.coroutines.intrinsics.b.f() ? objX : h0.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.c
    /* JADX INFO: renamed from: f */
    public kotlin.coroutines.d[] b(h hVar) {
        kotlinx.coroutines.internal.e.b(this.f13247a, null);
        return kotlinx.coroutines.flow.internal.b.f13239a;
    }

    public final void g() {
        AtomicReference atomicReference = this.f13247a;
        while (true) {
            Object objA = kotlinx.coroutines.internal.e.a(atomicReference);
            if (objA == null || objA == i.f13235b) {
                return;
            }
            if (objA == i.f13234a) {
                if (androidx.lifecycle.b.a(this.f13247a, objA, i.f13235b)) {
                    return;
                }
            } else if (androidx.lifecycle.b.a(this.f13247a, objA, i.f13234a)) {
                r.a aVar = r.Companion;
                ((kotlinx.coroutines.j) objA).resumeWith(r.m59constructorimpl(h0.INSTANCE));
                return;
            }
        }
    }

    public final boolean h() {
        Object andSet = this.f13247a.getAndSet(i.f13234a);
        kotlin.jvm.internal.r.b(andSet);
        return andSet == i.f13235b;
    }
}
