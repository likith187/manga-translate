package c9;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {
    public static final Object a(c cVar, Object obj) {
        r.e(cVar, "<this>");
        if (cVar.b(obj)) {
            r.c(obj, "null cannot be cast to non-null type T of kotlin.reflect.KClasses.cast");
            return obj;
        }
        throw new ClassCastException("Value cannot be cast to " + cVar.a());
    }
}
