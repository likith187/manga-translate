package kotlinx.coroutines.flow.internal;

import kotlin.jvm.internal.i0;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import w8.q;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h {

    /* JADX INFO: renamed from: a */
    private static final q f13246a;

    /* synthetic */ class a extends o implements q {
        public static final a INSTANCE = new a();

        a() {
            super(3, kotlinx.coroutines.flow.c.class, "emit", "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        @Override // w8.q
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Object obj, kotlin.coroutines.d dVar) {
            return cVar.emit(obj, dVar);
        }
    }

    static {
        a aVar = a.INSTANCE;
        r.c(aVar, "null cannot be cast to non-null type kotlin.Function3<kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>, kotlin.Any?, kotlin.coroutines.Continuation<kotlin.Unit>, kotlin.Any?>");
        f13246a = (q) i0.d(aVar, 3);
    }
}
