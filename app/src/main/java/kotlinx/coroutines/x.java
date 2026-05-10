package kotlinx.coroutines;

import kotlin.coroutines.g;

/* JADX INFO: loaded from: classes2.dex */
public abstract class x {

    static final class a extends kotlin.jvm.internal.s implements w8.p {
        public static final a INSTANCE = new a();

        a() {
            super(2);
        }

        @Override // w8.p
        public final kotlin.coroutines.g invoke(kotlin.coroutines.g gVar, g.b bVar) {
            return gVar.plus(bVar);
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.p {
        final /* synthetic */ boolean $isNewCoroutine;
        final /* synthetic */ kotlin.jvm.internal.c0 $leftoverContext;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(kotlin.jvm.internal.c0 c0Var, boolean z10) {
            super(2);
            this.$leftoverContext = c0Var;
            this.$isNewCoroutine = z10;
        }

        @Override // w8.p
        public final kotlin.coroutines.g invoke(kotlin.coroutines.g gVar, g.b bVar) {
            return gVar.plus(bVar);
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.p {
        public static final c INSTANCE = new c();

        c() {
            super(2);
        }

        public final Boolean invoke(boolean z10, g.b bVar) {
            return Boolean.valueOf(z10);
        }

        @Override // w8.p
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return invoke(((Boolean) obj).booleanValue(), (g.b) obj2);
        }
    }

    private static final kotlin.coroutines.g a(kotlin.coroutines.g gVar, kotlin.coroutines.g gVar2, boolean z10) {
        boolean zC = c(gVar);
        boolean zC2 = c(gVar2);
        if (!zC && !zC2) {
            return gVar.plus(gVar2);
        }
        kotlin.jvm.internal.c0 c0Var = new kotlin.jvm.internal.c0();
        c0Var.element = gVar2;
        kotlin.coroutines.h hVar = kotlin.coroutines.h.INSTANCE;
        kotlin.coroutines.g gVar3 = (kotlin.coroutines.g) gVar.fold(hVar, new b(c0Var, z10));
        if (zC2) {
            c0Var.element = ((kotlin.coroutines.g) c0Var.element).fold(hVar, a.INSTANCE);
        }
        return gVar3.plus((kotlin.coroutines.g) c0Var.element);
    }

    public static final String b(kotlin.coroutines.g gVar) {
        return null;
    }

    private static final boolean c(kotlin.coroutines.g gVar) {
        return ((Boolean) gVar.fold(Boolean.FALSE, c.INSTANCE)).booleanValue();
    }

    public static final kotlin.coroutines.g d(kotlin.coroutines.g gVar, kotlin.coroutines.g gVar2) {
        return !c(gVar2) ? gVar.plus(gVar2) : a(gVar, gVar2, false);
    }

    public static final kotlin.coroutines.g e(c0 c0Var, kotlin.coroutines.g gVar) {
        kotlin.coroutines.g gVarA = a(c0Var.c(), gVar, true);
        return (gVarA == o0.a() || gVarA.get(kotlin.coroutines.e.f13037d) != null) ? gVarA : gVarA.plus(o0.a());
    }

    public static final c2 f(kotlin.coroutines.jvm.internal.e eVar) {
        while (!(eVar instanceof l0) && (eVar = eVar.getCallerFrame()) != null) {
            if (eVar instanceof c2) {
                return (c2) eVar;
            }
        }
        return null;
    }

    public static final c2 g(kotlin.coroutines.d dVar, kotlin.coroutines.g gVar, Object obj) {
        if (!(dVar instanceof kotlin.coroutines.jvm.internal.e) || gVar.get(d2.INSTANCE) == null) {
            return null;
        }
        c2 c2VarF = f((kotlin.coroutines.jvm.internal.e) dVar);
        if (c2VarF != null) {
            c2VarF.C0(gVar, obj);
        }
        return c2VarF;
    }
}
