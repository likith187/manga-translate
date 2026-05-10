package androidx.lifecycle;

import androidx.lifecycle.l;
import kotlinx.coroutines.k1;

/* JADX INFO: loaded from: classes.dex */
public final class n extends m implements p {

    /* JADX INFO: renamed from: a */
    private final l f2804a;

    /* JADX INFO: renamed from: b */
    private final kotlin.coroutines.g f2805b;

    static final class a extends kotlin.coroutines.jvm.internal.l implements w8.p {
        private /* synthetic */ Object L$0;
        int label;

        a(kotlin.coroutines.d dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            a aVar = n.this.new a(dVar);
            aVar.L$0 = obj;
            return aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.b.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            n8.s.b(obj);
            kotlinx.coroutines.c0 c0Var = (kotlinx.coroutines.c0) this.L$0;
            if (n.this.a().b().compareTo(l.b.INITIALIZED) >= 0) {
                n.this.a().a(n.this);
            } else {
                k1.d(c0Var.c(), null, 1, null);
            }
            return n8.h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    public n(l lifecycle, kotlin.coroutines.g coroutineContext) {
        kotlin.jvm.internal.r.e(lifecycle, "lifecycle");
        kotlin.jvm.internal.r.e(coroutineContext, "coroutineContext");
        this.f2804a = lifecycle;
        this.f2805b = coroutineContext;
        if (a().b() == l.b.DESTROYED) {
            k1.d(c(), null, 1, null);
        }
    }

    public l a() {
        return this.f2804a;
    }

    public final void b() {
        kotlinx.coroutines.g.b(this, kotlinx.coroutines.o0.c().F0(), null, new a(null), 2, null);
    }

    @Override // kotlinx.coroutines.c0
    public kotlin.coroutines.g c() {
        return this.f2805b;
    }

    @Override // androidx.lifecycle.p
    public void onStateChanged(s source, l.a event) {
        kotlin.jvm.internal.r.e(source, "source");
        kotlin.jvm.internal.r.e(event, "event");
        if (a().b().compareTo(l.b.DESTROYED) <= 0) {
            a().d(this);
            k1.d(c(), null, 1, null);
        }
    }
}
