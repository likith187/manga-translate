package n8;

import n8.r;

/* JADX INFO: loaded from: classes2.dex */
final class d extends c implements kotlin.coroutines.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private w8.q f14092a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f14093b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private kotlin.coroutines.d f14094c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Object f14095f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(w8.q block, Object obj) {
        super(null);
        kotlin.jvm.internal.r.e(block, "block");
        this.f14092a = block;
        this.f14093b = obj;
        kotlin.jvm.internal.r.c(this, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        this.f14094c = this;
        this.f14095f = b.f14086a;
    }

    @Override // n8.c
    public Object b(Object obj, kotlin.coroutines.d dVar) {
        kotlin.jvm.internal.r.c(dVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        this.f14094c = dVar;
        this.f14093b = obj;
        Object objF = kotlin.coroutines.intrinsics.b.f();
        if (objF == kotlin.coroutines.intrinsics.b.f()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objF;
    }

    public final Object c() {
        while (true) {
            Object obj = this.f14095f;
            kotlin.coroutines.d dVar = this.f14094c;
            if (dVar == null) {
                s.b(obj);
                return obj;
            }
            if (r.m61equalsimpl0(b.f14086a, obj)) {
                try {
                    w8.q qVar = this.f14092a;
                    Object obj2 = this.f14093b;
                    Object objE = !(qVar instanceof kotlin.coroutines.jvm.internal.a) ? kotlin.coroutines.intrinsics.b.e(qVar, this, obj2, dVar) : ((w8.q) kotlin.jvm.internal.i0.d(qVar, 3)).invoke(this, obj2, dVar);
                    if (objE != kotlin.coroutines.intrinsics.b.f()) {
                        dVar.resumeWith(r.m59constructorimpl(objE));
                    }
                } catch (Throwable th) {
                    r.a aVar = r.Companion;
                    dVar.resumeWith(r.m59constructorimpl(s.a(th)));
                }
            } else {
                this.f14095f = b.f14086a;
                dVar.resumeWith(obj);
            }
        }
    }

    @Override // kotlin.coroutines.d
    public kotlin.coroutines.g getContext() {
        return kotlin.coroutines.h.INSTANCE;
    }

    @Override // kotlin.coroutines.d
    public void resumeWith(Object obj) {
        this.f14094c = null;
        this.f14095f = obj;
    }
}
