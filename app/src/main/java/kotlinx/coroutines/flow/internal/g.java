package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.g;
import kotlin.jvm.internal.s;
import kotlin.text.r;
import kotlinx.coroutines.j1;
import n8.h0;
import w8.p;
import w8.q;

/* JADX INFO: loaded from: classes2.dex */
public final class g extends kotlin.coroutines.jvm.internal.d implements kotlinx.coroutines.flow.c, kotlin.coroutines.jvm.internal.e {
    public final kotlin.coroutines.g collectContext;
    public final int collectContextSize;
    public final kotlinx.coroutines.flow.c collector;
    private kotlin.coroutines.d completion_;
    private kotlin.coroutines.g lastEmissionContext;

    static final class a extends s implements p {
        public static final a INSTANCE = new a();

        a() {
            super(2);
        }

        public final Integer invoke(int i10, g.b bVar) {
            return Integer.valueOf(i10 + 1);
        }

        @Override // w8.p
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return invoke(((Number) obj).intValue(), (g.b) obj2);
        }
    }

    public g(kotlinx.coroutines.flow.c cVar, kotlin.coroutines.g gVar) {
        super(e.INSTANCE, kotlin.coroutines.h.INSTANCE);
        this.collector = cVar;
        this.collectContext = gVar;
        this.collectContextSize = ((Number) gVar.fold(0, a.INSTANCE)).intValue();
    }

    private final void checkContext(kotlin.coroutines.g gVar, kotlin.coroutines.g gVar2, Object obj) {
        if (gVar2 instanceof d) {
            exceptionTransparencyViolated((d) gVar2, obj);
        }
        i.a(this, gVar);
    }

    private final void exceptionTransparencyViolated(d dVar, Object obj) {
        throw new IllegalStateException(r.f("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + dVar.f13240a + ", but then emission attempt of value '" + obj + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ").toString());
    }

    @Override // kotlinx.coroutines.flow.c
    public Object emit(Object obj, kotlin.coroutines.d dVar) {
        try {
            Object objEmit = emit(dVar, obj);
            if (objEmit == kotlin.coroutines.intrinsics.b.f()) {
                kotlin.coroutines.jvm.internal.h.c(dVar);
            }
            return objEmit == kotlin.coroutines.intrinsics.b.f() ? objEmit : h0.INSTANCE;
        } catch (Throwable th) {
            this.lastEmissionContext = new d(th, dVar.getContext());
            throw th;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.a, kotlin.coroutines.jvm.internal.e
    public kotlin.coroutines.jvm.internal.e getCallerFrame() {
        kotlin.coroutines.d dVar = this.completion_;
        if (dVar instanceof kotlin.coroutines.jvm.internal.e) {
            return (kotlin.coroutines.jvm.internal.e) dVar;
        }
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.d, kotlin.coroutines.jvm.internal.a, kotlin.coroutines.d
    public kotlin.coroutines.g getContext() {
        kotlin.coroutines.g gVar = this.lastEmissionContext;
        return gVar == null ? kotlin.coroutines.h.INSTANCE : gVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    public Object invokeSuspend(Object obj) {
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(obj);
        if (thM62exceptionOrNullimpl != null) {
            this.lastEmissionContext = new d(thM62exceptionOrNullimpl, getContext());
        }
        kotlin.coroutines.d dVar = this.completion_;
        if (dVar != null) {
            dVar.resumeWith(obj);
        }
        return kotlin.coroutines.intrinsics.b.f();
    }

    @Override // kotlin.coroutines.jvm.internal.d, kotlin.coroutines.jvm.internal.a
    public void releaseIntercepted() {
        super.releaseIntercepted();
    }

    private final Object emit(kotlin.coroutines.d dVar, Object obj) {
        kotlin.coroutines.g context = dVar.getContext();
        j1.e(context);
        kotlin.coroutines.g gVar = this.lastEmissionContext;
        if (gVar != context) {
            checkContext(context, gVar, obj);
            this.lastEmissionContext = context;
        }
        this.completion_ = dVar;
        q qVar = h.f13246a;
        kotlinx.coroutines.flow.c cVar = this.collector;
        kotlin.jvm.internal.r.c(cVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>");
        kotlin.jvm.internal.r.c(this, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Unit>");
        Object objInvoke = qVar.invoke(cVar, obj, this);
        if (!kotlin.jvm.internal.r.a(objInvoke, kotlin.coroutines.intrinsics.b.f())) {
            this.completion_ = null;
        }
        return objInvoke;
    }
}
