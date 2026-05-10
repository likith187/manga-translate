package kotlinx.coroutines.internal;

import kotlin.coroutines.g;
import kotlinx.coroutines.y1;

/* JADX INFO: loaded from: classes2.dex */
public abstract class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g0 f13276a = new g0("NO_THREAD_ELEMENTS");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final w8.p f13277b = a.INSTANCE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final w8.p f13278c = b.INSTANCE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final w8.p f13279d = c.INSTANCE;

    static final class a extends kotlin.jvm.internal.s implements w8.p {
        public static final a INSTANCE = new a();

        a() {
            super(2);
        }

        @Override // w8.p
        public final Object invoke(Object obj, g.b bVar) {
            if (!(bVar instanceof y1)) {
                return obj;
            }
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            int iIntValue = num != null ? num.intValue() : 1;
            return iIntValue == 0 ? bVar : Integer.valueOf(iIntValue + 1);
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.p {
        public static final b INSTANCE = new b();

        b() {
            super(2);
        }

        @Override // w8.p
        public final y1 invoke(y1 y1Var, g.b bVar) {
            if (y1Var != null) {
                return y1Var;
            }
            if (bVar instanceof y1) {
                return (y1) bVar;
            }
            return null;
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.p {
        public static final c INSTANCE = new c();

        c() {
            super(2);
        }

        @Override // w8.p
        public final o0 invoke(o0 o0Var, g.b bVar) {
            if (bVar instanceof y1) {
                y1 y1Var = (y1) bVar;
                o0Var.a(y1Var, y1Var.q0(o0Var.f13290a));
            }
            return o0Var;
        }
    }

    public static final void a(kotlin.coroutines.g gVar, Object obj) {
        if (obj == f13276a) {
            return;
        }
        if (obj instanceof o0) {
            ((o0) obj).b(gVar);
            return;
        }
        Object objFold = gVar.fold(null, f13278c);
        kotlin.jvm.internal.r.c(objFold, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        ((y1) objFold).D(gVar, obj);
    }

    public static final Object b(kotlin.coroutines.g gVar) {
        Object objFold = gVar.fold(0, f13277b);
        kotlin.jvm.internal.r.b(objFold);
        return objFold;
    }

    public static final Object c(kotlin.coroutines.g gVar, Object obj) {
        if (obj == null) {
            obj = b(gVar);
        }
        if (obj == 0) {
            return f13276a;
        }
        if (obj instanceof Integer) {
            return gVar.fold(new o0(gVar, ((Number) obj).intValue()), f13279d);
        }
        kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        return ((y1) obj).q0(gVar);
    }
}
