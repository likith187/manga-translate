package kotlin.coroutines.jvm.internal;

import java.io.Serializable;
import kotlin.jvm.internal.r;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements kotlin.coroutines.d, e, Serializable {
    private final kotlin.coroutines.d completion;

    public a(kotlin.coroutines.d dVar) {
        this.completion = dVar;
    }

    public kotlin.coroutines.d create(kotlin.coroutines.d completion) {
        r.e(completion, "completion");
        throw new UnsupportedOperationException("create(Continuation) has not been overridden");
    }

    @Override // kotlin.coroutines.jvm.internal.e
    public e getCallerFrame() {
        kotlin.coroutines.d dVar = this.completion;
        if (dVar instanceof e) {
            return (e) dVar;
        }
        return null;
    }

    public final kotlin.coroutines.d getCompletion() {
        return this.completion;
    }

    @Override // kotlin.coroutines.d
    public abstract /* synthetic */ kotlin.coroutines.g getContext();

    public StackTraceElement getStackTraceElement() {
        return g.d(this);
    }

    protected abstract Object invokeSuspend(Object obj);

    protected void releaseIntercepted() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlin.coroutines.d] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    @Override // kotlin.coroutines.d
    public final void resumeWith(Object obj) {
        Object objInvokeSuspend;
        ?? r22 = this;
        while (true) {
            h.b(r22);
            a aVar = (a) r22;
            kotlin.coroutines.d dVar = aVar.completion;
            r.b(dVar);
            try {
                objInvokeSuspend = aVar.invokeSuspend(obj);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                obj = n8.r.m59constructorimpl(s.a(th));
            }
            if (objInvokeSuspend == kotlin.coroutines.intrinsics.b.f()) {
                return;
            }
            obj = n8.r.m59constructorimpl(objInvokeSuspend);
            aVar.releaseIntercepted();
            if (!(dVar instanceof a)) {
                dVar.resumeWith(obj);
                return;
            }
            r22 = dVar;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Continuation at ");
        Object stackTraceElement = getStackTraceElement();
        if (stackTraceElement == null) {
            stackTraceElement = getClass().getName();
        }
        sb.append(stackTraceElement);
        return sb.toString();
    }

    public kotlin.coroutines.d create(Object obj, kotlin.coroutines.d completion) {
        kotlin.jvm.internal.r.e(completion, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }
}
