package y5;

import java.util.function.Supplier;
import kotlin.coroutines.d;
import kotlin.coroutines.g;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.c0;
import kotlinx.coroutines.z;
import n8.h0;
import n8.s;
import w8.p;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final a INSTANCE = new a();

    /* JADX INFO: renamed from: y5.a$a, reason: collision with other inner class name */
    public static final class C0245a extends kotlin.coroutines.a implements z {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ x5.b f16563b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0245a(z.a aVar, x5.b bVar) {
            super(aVar);
            this.f16563b = bVar;
        }

        @Override // kotlinx.coroutines.z
        public void b0(g gVar, Throwable th) {
            if (th instanceof Exception) {
                this.f16563b.d((Exception) th);
            }
        }
    }

    public static final class b extends l implements p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f16564a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Supplier<Object> f16565b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ x5.b f16566c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Supplier<Object> supplier, x5.b bVar, d dVar) {
            super(2, dVar);
            this.f16565b = supplier;
            this.f16566c = bVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final d create(Object obj, d dVar) {
            b bVar = new b(this.f16565b, this.f16566c, dVar);
            bVar.f16564a = obj;
            return bVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            h0 h0Var;
            kotlin.coroutines.intrinsics.b.f();
            s.b(obj);
            Object obj2 = this.f16565b.get();
            if (obj2 != null) {
                this.f16566c.e(obj2);
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            if (h0Var == null) {
                this.f16566c.c(-1, null);
            }
            return h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(c0 c0Var, d dVar) {
            return ((b) create(c0Var, dVar)).invokeSuspend(h0.INSTANCE);
        }
    }

    public final x5.a a(c0 coroutine, Supplier supplier) {
        r.e(coroutine, "coroutine");
        r.e(supplier, "supplier");
        x5.b bVar = new x5.b();
        kotlinx.coroutines.g.b(coroutine, new C0245a(z.f13394e, bVar), null, new b(supplier, bVar, null), 2, null);
        return bVar.b();
    }
}
