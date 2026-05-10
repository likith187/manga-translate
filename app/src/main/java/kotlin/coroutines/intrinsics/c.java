package kotlin.coroutines.intrinsics;

import kotlin.coroutines.g;
import kotlin.coroutines.jvm.internal.h;
import kotlin.coroutines.jvm.internal.j;
import kotlin.jvm.internal.i0;
import kotlin.jvm.internal.r;
import n8.s;
import w8.p;
import w8.q;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    public static final class a extends j {
        final /* synthetic */ Object $receiver$inlined;
        final /* synthetic */ p $this_createCoroutineUnintercepted$inlined;
        private int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(kotlin.coroutines.d dVar, p pVar, Object obj) {
            super(dVar);
            this.$this_createCoroutineUnintercepted$inlined = pVar;
            this.$receiver$inlined = obj;
            r.c(dVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override // kotlin.coroutines.jvm.internal.a
        protected Object invokeSuspend(Object obj) {
            int i10 = this.label;
            if (i10 == 0) {
                this.label = 1;
                s.b(obj);
                r.c(this.$this_createCoroutineUnintercepted$inlined, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>");
                return ((p) i0.d(this.$this_createCoroutineUnintercepted$inlined, 2)).invoke(this.$receiver$inlined, this);
            }
            if (i10 != 1) {
                throw new IllegalStateException("This coroutine had already completed");
            }
            this.label = 2;
            s.b(obj);
            return obj;
        }
    }

    public static final class b extends kotlin.coroutines.jvm.internal.d {
        final /* synthetic */ Object $receiver$inlined;
        final /* synthetic */ p $this_createCoroutineUnintercepted$inlined;
        private int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(kotlin.coroutines.d dVar, g gVar, p pVar, Object obj) {
            super(dVar, gVar);
            this.$this_createCoroutineUnintercepted$inlined = pVar;
            this.$receiver$inlined = obj;
            r.c(dVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override // kotlin.coroutines.jvm.internal.a
        protected Object invokeSuspend(Object obj) {
            int i10 = this.label;
            if (i10 == 0) {
                this.label = 1;
                s.b(obj);
                r.c(this.$this_createCoroutineUnintercepted$inlined, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>");
                return ((p) i0.d(this.$this_createCoroutineUnintercepted$inlined, 2)).invoke(this.$receiver$inlined, this);
            }
            if (i10 != 1) {
                throw new IllegalStateException("This coroutine had already completed");
            }
            this.label = 2;
            s.b(obj);
            return obj;
        }
    }

    /* JADX INFO: renamed from: kotlin.coroutines.intrinsics.c$c */
    public static final class C0166c extends j {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0166c(kotlin.coroutines.d dVar) {
            super(dVar);
            r.c(dVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override // kotlin.coroutines.jvm.internal.a
        protected Object invokeSuspend(Object obj) {
            s.b(obj);
            return obj;
        }
    }

    public static final class d extends kotlin.coroutines.jvm.internal.d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(kotlin.coroutines.d dVar, g gVar) {
            super(dVar, gVar);
            r.c(dVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override // kotlin.coroutines.jvm.internal.a
        protected Object invokeSuspend(Object obj) {
            s.b(obj);
            return obj;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static kotlin.coroutines.d a(p pVar, Object obj, kotlin.coroutines.d completion) {
        r.e(pVar, "<this>");
        r.e(completion, "completion");
        kotlin.coroutines.d dVarA = h.a(completion);
        if (pVar instanceof kotlin.coroutines.jvm.internal.a) {
            return ((kotlin.coroutines.jvm.internal.a) pVar).create(obj, dVarA);
        }
        g context = dVarA.getContext();
        return context == kotlin.coroutines.h.INSTANCE ? new a(dVarA, pVar, obj) : new b(dVarA, context, pVar, obj);
    }

    private static final kotlin.coroutines.d b(kotlin.coroutines.d dVar) {
        g context = dVar.getContext();
        return context == kotlin.coroutines.h.INSTANCE ? new C0166c(dVar) : new d(dVar, context);
    }

    public static kotlin.coroutines.d c(kotlin.coroutines.d dVar) {
        kotlin.coroutines.d dVarIntercepted;
        r.e(dVar, "<this>");
        kotlin.coroutines.jvm.internal.d dVar2 = dVar instanceof kotlin.coroutines.jvm.internal.d ? (kotlin.coroutines.jvm.internal.d) dVar : null;
        return (dVar2 == null || (dVarIntercepted = dVar2.intercepted()) == null) ? dVar : dVarIntercepted;
    }

    public static Object d(p pVar, Object obj, kotlin.coroutines.d completion) {
        r.e(pVar, "<this>");
        r.e(completion, "completion");
        return ((p) i0.d(pVar, 2)).invoke(obj, b(h.a(completion)));
    }

    public static Object e(q qVar, Object obj, Object obj2, kotlin.coroutines.d completion) {
        r.e(qVar, "<this>");
        r.e(completion, "completion");
        return ((q) i0.d(qVar, 3)).invoke(obj, obj2, b(h.a(completion)));
    }
}
