package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.g;

/* JADX INFO: loaded from: classes2.dex */
public interface f1 extends g.b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final b f13228g = b.f13229a;

    public static final class a {
        public static /* synthetic */ void a(f1 f1Var, CancellationException cancellationException, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i10 & 1) != 0) {
                cancellationException = null;
            }
            f1Var.X(cancellationException);
        }

        public static Object b(f1 f1Var, Object obj, w8.p pVar) {
            return g.b.a.a(f1Var, obj, pVar);
        }

        public static g.b c(f1 f1Var, g.c cVar) {
            return g.b.a.b(f1Var, cVar);
        }

        public static kotlin.coroutines.g d(f1 f1Var, g.c cVar) {
            return g.b.a.c(f1Var, cVar);
        }

        public static kotlin.coroutines.g e(f1 f1Var, kotlin.coroutines.g gVar) {
            return g.b.a.d(f1Var, gVar);
        }
    }

    public static final class b implements g.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ b f13229a = new b();

        private b() {
        }
    }

    Object G(kotlin.coroutines.d dVar);

    CancellationException N();

    void X(CancellationException cancellationException);

    f1 getParent();

    p0 i(boolean z10, boolean z11, w8.l lVar);

    boolean isActive();

    boolean start();

    o v0(q qVar);
}
