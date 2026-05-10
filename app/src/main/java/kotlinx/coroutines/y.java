package kotlinx.coroutines;

import kotlin.coroutines.e;
import kotlin.coroutines.g;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public abstract class y extends kotlin.coroutines.a implements kotlin.coroutines.e {

    /* JADX INFO: renamed from: b */
    public static final a f13393b = new a(null);

    public static final class a extends kotlin.coroutines.b {

        /* JADX INFO: renamed from: kotlinx.coroutines.y$a$a */
        static final class C0176a extends kotlin.jvm.internal.s implements w8.l {
            public static final C0176a INSTANCE = new C0176a();

            C0176a() {
                super(1);
            }

            @Override // w8.l
            public final y invoke(g.b bVar) {
                if (bVar instanceof y) {
                    return (y) bVar;
                }
                return null;
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
            super(kotlin.coroutines.e.f13037d, C0176a.INSTANCE);
        }
    }

    public y() {
        super(kotlin.coroutines.e.f13037d);
    }

    public boolean D0(kotlin.coroutines.g gVar) {
        return true;
    }

    public y E0(int i10) {
        kotlinx.coroutines.internal.o.a(i10);
        return new kotlinx.coroutines.internal.n(this, i10);
    }

    @Override // kotlin.coroutines.a, kotlin.coroutines.g.b, kotlin.coroutines.g
    public g.b get(g.c cVar) {
        return e.a.a(this, cVar);
    }

    @Override // kotlin.coroutines.e
    public final void k(kotlin.coroutines.d dVar) {
        kotlin.jvm.internal.r.c(dVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        ((kotlinx.coroutines.internal.j) dVar).s();
    }

    @Override // kotlin.coroutines.a, kotlin.coroutines.g
    public kotlin.coroutines.g minusKey(g.c cVar) {
        return e.a.b(this, cVar);
    }

    public String toString() {
        return g0.a(this) + '@' + g0.b(this);
    }

    @Override // kotlin.coroutines.e
    public final kotlin.coroutines.d v(kotlin.coroutines.d dVar) {
        return new kotlinx.coroutines.internal.j(this, dVar);
    }

    public abstract void x0(kotlin.coroutines.g gVar, Runnable runnable);
}
