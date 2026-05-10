package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class q extends p {
    public static ArrayList d(Object... elements) {
        kotlin.jvm.internal.r.e(elements, "elements");
        return elements.length == 0 ? new ArrayList() : new ArrayList(new g(elements, true));
    }

    public static final Collection e(Object[] objArr) {
        kotlin.jvm.internal.r.e(objArr, "<this>");
        return new g(objArr, false);
    }

    public static final int f(List list, Comparable comparable, int i10, int i11) {
        kotlin.jvm.internal.r.e(list, "<this>");
        o(list.size(), i10, i11);
        int i12 = i11 - 1;
        while (i10 <= i12) {
            int i13 = (i10 + i12) >>> 1;
            int iA = q8.a.a((Comparable) list.get(i13), comparable);
            if (iA < 0) {
                i10 = i13 + 1;
            } else {
                if (iA <= 0) {
                    return i13;
                }
                i12 = i13 - 1;
            }
        }
        return -(i10 + 1);
    }

    public static /* synthetic */ int g(List list, Comparable comparable, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = list.size();
        }
        return f(list, comparable, i10, i11);
    }

    public static List h() {
        return a0.INSTANCE;
    }

    public static b9.c i(Collection collection) {
        kotlin.jvm.internal.r.e(collection, "<this>");
        return new b9.c(0, collection.size() - 1);
    }

    public static int j(List list) {
        kotlin.jvm.internal.r.e(list, "<this>");
        return list.size() - 1;
    }

    public static List k(Object... elements) {
        kotlin.jvm.internal.r.e(elements, "elements");
        return elements.length > 0 ? i.f(elements) : o.h();
    }

    public static List l(Object... elements) {
        kotlin.jvm.internal.r.e(elements, "elements");
        return i.B(elements);
    }

    public static List m(Object... elements) {
        kotlin.jvm.internal.r.e(elements, "elements");
        return elements.length == 0 ? new ArrayList() : new ArrayList(new g(elements, true));
    }

    public static final List n(List list) {
        kotlin.jvm.internal.r.e(list, "<this>");
        int size = list.size();
        return size != 0 ? size != 1 ? list : o.b(list.get(0)) : o.h();
    }

    private static final void o(int i10, int i11, int i12) {
        if (i11 > i12) {
            throw new IllegalArgumentException("fromIndex (" + i11 + ") is greater than toIndex (" + i12 + ").");
        }
        if (i11 < 0) {
            throw new IndexOutOfBoundsException("fromIndex (" + i11 + ") is less than zero.");
        }
        if (i12 <= i10) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i12 + ") is greater than size (" + i10 + ").");
    }

    public static void p() {
        throw new ArithmeticException("Count overflow has happened.");
    }

    public static void q() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}
