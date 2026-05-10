package kotlinx.coroutines.internal;

/* JADX INFO: loaded from: classes2.dex */
public abstract class y {

    static final class a extends kotlin.jvm.internal.s implements w8.l {
        final /* synthetic */ kotlin.coroutines.g $context;
        final /* synthetic */ Object $element;
        final /* synthetic */ w8.l $this_bindCancellationFun;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(w8.l lVar, Object obj, kotlin.coroutines.g gVar) {
            super(1);
            this.$this_bindCancellationFun = lVar;
            this.$element = obj;
            this.$context = gVar;
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Throwable) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Throwable th) {
            y.b(this.$this_bindCancellationFun, this.$element, this.$context);
        }
    }

    public static final w8.l a(w8.l lVar, Object obj, kotlin.coroutines.g gVar) {
        return new a(lVar, obj, gVar);
    }

    public static final void b(w8.l lVar, Object obj, kotlin.coroutines.g gVar) {
        p0 p0VarC = c(lVar, obj, null);
        if (p0VarC != null) {
            kotlinx.coroutines.a0.a(gVar, p0VarC);
        }
    }

    public static final p0 c(w8.l lVar, Object obj, p0 p0Var) {
        try {
            lVar.invoke(obj);
        } catch (Throwable th) {
            if (p0Var == null || p0Var.getCause() == th) {
                return new p0("Exception in undelivered element handler for " + obj, th);
            }
            n8.e.a(p0Var, th);
        }
        return p0Var;
    }

    public static /* synthetic */ p0 d(w8.l lVar, Object obj, p0 p0Var, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            p0Var = null;
        }
        return c(lVar, obj, p0Var);
    }
}
