package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public abstract class v extends u {
    public static boolean A(List list, w8.l predicate) {
        kotlin.jvm.internal.r.e(list, "<this>");
        kotlin.jvm.internal.r.e(predicate, "predicate");
        return z(list, predicate, true);
    }

    public static Object B(List list) {
        kotlin.jvm.internal.r.e(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.remove(o.j(list));
    }

    public static boolean C(Iterable iterable, w8.l predicate) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        kotlin.jvm.internal.r.e(predicate, "predicate");
        return y(iterable, predicate, false);
    }

    public static final boolean D(Collection collection, Iterable elements) {
        kotlin.jvm.internal.r.e(collection, "<this>");
        kotlin.jvm.internal.r.e(elements, "elements");
        return collection.retainAll(x(elements));
    }

    public static boolean v(Collection collection, Iterable elements) {
        kotlin.jvm.internal.r.e(collection, "<this>");
        kotlin.jvm.internal.r.e(elements, "elements");
        if (elements instanceof Collection) {
            return collection.addAll((Collection) elements);
        }
        Iterator it = elements.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (collection.add(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    public static boolean w(Collection collection, Object[] elements) {
        kotlin.jvm.internal.r.e(collection, "<this>");
        kotlin.jvm.internal.r.e(elements, "elements");
        return collection.addAll(i.f(elements));
    }

    public static final Collection x(Iterable iterable) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        return iterable instanceof Collection ? (Collection) iterable : o.r0(iterable);
    }

    private static final boolean y(Iterable iterable, w8.l lVar, boolean z10) {
        Iterator it = iterable.iterator();
        boolean z11 = false;
        while (it.hasNext()) {
            if (((Boolean) lVar.invoke(it.next())).booleanValue() == z10) {
                it.remove();
                z11 = true;
            }
        }
        return z11;
    }

    private static final boolean z(List list, w8.l lVar, boolean z10) {
        int i10;
        if (!(list instanceof RandomAccess)) {
            kotlin.jvm.internal.r.c(list, "null cannot be cast to non-null type kotlin.collections.MutableIterable<T of kotlin.collections.CollectionsKt__MutableCollectionsKt.filterInPlace>");
            return y(kotlin.jvm.internal.i0.b(list), lVar, z10);
        }
        int iJ = o.j(list);
        if (iJ >= 0) {
            int i11 = 0;
            i10 = 0;
            while (true) {
                Object obj = list.get(i11);
                if (((Boolean) lVar.invoke(obj)).booleanValue() != z10) {
                    if (i10 != i11) {
                        list.set(i10, obj);
                    }
                    i10++;
                }
                if (i11 == iJ) {
                    break;
                }
                i11++;
            }
        } else {
            i10 = 0;
        }
        if (i10 >= list.size()) {
            return false;
        }
        int iJ2 = o.j(list);
        if (i10 > iJ2) {
            return true;
        }
        while (true) {
            list.remove(iJ2);
            if (iJ2 == i10) {
                return true;
            }
            iJ2--;
        }
    }
}
