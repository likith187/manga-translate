package kotlin.coroutines;

import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import w8.p;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f {
    public static final void a(p pVar, Object obj, d completion) {
        r.e(pVar, "<this>");
        r.e(completion, "completion");
        d dVarC = kotlin.coroutines.intrinsics.b.c(kotlin.coroutines.intrinsics.b.a(pVar, obj, completion));
        r.a aVar = n8.r.Companion;
        dVarC.resumeWith(n8.r.m59constructorimpl(h0.INSTANCE));
    }
}
