package kotlin.collections;

import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public abstract class r extends q {
    public static int r(Iterable iterable, int i10) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        return iterable instanceof Collection ? ((Collection) iterable).size() : i10;
    }

    public static final Integer s(Iterable iterable) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        if (iterable instanceof Collection) {
            return Integer.valueOf(((Collection) iterable).size());
        }
        return null;
    }
}
