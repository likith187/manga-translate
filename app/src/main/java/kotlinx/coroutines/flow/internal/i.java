package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.g;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import kotlinx.coroutines.f1;
import kotlinx.coroutines.internal.c0;
import w8.p;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i {

    static final class a extends s implements p {
        final /* synthetic */ g $this_checkContext;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(g gVar) {
            super(2);
            this.$this_checkContext = gVar;
        }

        @Override // w8.p
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return invoke(((Number) obj).intValue(), (g.b) obj2);
        }

        public final Integer invoke(int i10, g.b bVar) {
            g.c key = bVar.getKey();
            g.b bVar2 = this.$this_checkContext.collectContext.get(key);
            if (key != f1.f13228g) {
                return Integer.valueOf(bVar != bVar2 ? Integer.MIN_VALUE : i10 + 1);
            }
            f1 f1Var = (f1) bVar2;
            r.c(bVar, "null cannot be cast to non-null type kotlinx.coroutines.Job");
            f1 f1VarB = i.b((f1) bVar, f1Var);
            if (f1VarB == f1Var) {
                if (f1Var != null) {
                    i10++;
                }
                return Integer.valueOf(i10);
            }
            throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + f1VarB + ", expected child of " + f1Var + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
        }
    }

    public static final void a(g gVar, kotlin.coroutines.g gVar2) {
        if (((Number) gVar2.fold(0, new a(gVar))).intValue() == gVar.collectContextSize) {
            return;
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + gVar.collectContext + ",\n\t\tbut emission happened in " + gVar2 + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
    }

    public static final f1 b(f1 f1Var, f1 f1Var2) {
        while (f1Var != null) {
            if (f1Var == f1Var2 || !(f1Var instanceof c0)) {
                return f1Var;
            }
            f1Var = f1Var.getParent();
        }
        return null;
    }
}
