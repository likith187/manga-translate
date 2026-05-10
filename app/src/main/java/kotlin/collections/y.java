package kotlin.collections;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public abstract class y extends x {

    public static final class a implements kotlin.sequences.f {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Iterable f13033a;

        public a(Iterable iterable) {
            this.f13033a = iterable;
        }

        @Override // kotlin.sequences.f
        public Iterator iterator() {
            return this.f13033a.iterator();
        }
    }

    public static kotlin.sequences.f L(Iterable iterable) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        return new a(iterable);
    }

    public static boolean M(Iterable iterable, Object obj) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        return iterable instanceof Collection ? ((Collection) iterable).contains(obj) : U(iterable, obj) >= 0;
    }

    public static List N(Iterable iterable, int i10) {
        ArrayList arrayList;
        kotlin.jvm.internal.r.e(iterable, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return o.r0(iterable);
        }
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size() - i10;
            if (size <= 0) {
                return o.h();
            }
            if (size == 1) {
                return o.b(b0(iterable));
            }
            arrayList = new ArrayList(size);
            if (iterable instanceof List) {
                if (iterable instanceof RandomAccess) {
                    int size2 = collection.size();
                    while (i10 < size2) {
                        arrayList.add(((List) iterable).get(i10));
                        i10++;
                    }
                } else {
                    ListIterator listIterator = ((List) iterable).listIterator(i10);
                    while (listIterator.hasNext()) {
                        arrayList.add(listIterator.next());
                    }
                }
                return arrayList;
            }
        } else {
            arrayList = new ArrayList();
        }
        int i11 = 0;
        for (Object obj : iterable) {
            if (i11 >= i10) {
                arrayList.add(obj);
            } else {
                i11++;
            }
        }
        return q.n(arrayList);
    }

    public static List O(List list, int i10) {
        kotlin.jvm.internal.r.e(list, "<this>");
        if (i10 >= 0) {
            return o.l0(list, b9.d.c(list.size() - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    public static Object P(Iterable iterable) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        if (iterable instanceof List) {
            return o.Q((List) iterable);
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static Object Q(List list) {
        kotlin.jvm.internal.r.e(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(0);
    }

    public static Object R(Iterable iterable) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                return null;
            }
            return list.get(0);
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public static Object S(List list) {
        kotlin.jvm.internal.r.e(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static Object T(List list, int i10) {
        kotlin.jvm.internal.r.e(list, "<this>");
        if (i10 < 0 || i10 >= list.size()) {
            return null;
        }
        return list.get(i10);
    }

    public static final int U(Iterable iterable, Object obj) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        if (iterable instanceof List) {
            return ((List) iterable).indexOf(obj);
        }
        int i10 = 0;
        for (Object obj2 : iterable) {
            if (i10 < 0) {
                o.q();
            }
            if (kotlin.jvm.internal.r.a(obj, obj2)) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static int V(List list, Object obj) {
        kotlin.jvm.internal.r.e(list, "<this>");
        return list.indexOf(obj);
    }

    public static Set W(Iterable iterable, Iterable other) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        kotlin.jvm.internal.r.e(other, "other");
        Set setU0 = u0(iterable);
        v.D(setU0, other);
        return setU0;
    }

    public static final Appendable X(Iterable iterable, Appendable buffer, CharSequence separator, CharSequence prefix, CharSequence postfix, int i10, CharSequence truncated, w8.l lVar) throws IOException {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        kotlin.jvm.internal.r.e(buffer, "buffer");
        kotlin.jvm.internal.r.e(separator, "separator");
        kotlin.jvm.internal.r.e(prefix, "prefix");
        kotlin.jvm.internal.r.e(postfix, "postfix");
        kotlin.jvm.internal.r.e(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (Object obj : iterable) {
            i11++;
            if (i11 > 1) {
                buffer.append(separator);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            kotlin.text.r.a(buffer, obj, lVar);
        }
        if (i10 >= 0 && i11 > i10) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static final String Z(Iterable iterable, CharSequence separator, CharSequence prefix, CharSequence postfix, int i10, CharSequence truncated, w8.l lVar) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        kotlin.jvm.internal.r.e(separator, "separator");
        kotlin.jvm.internal.r.e(prefix, "prefix");
        kotlin.jvm.internal.r.e(postfix, "postfix");
        kotlin.jvm.internal.r.e(truncated, "truncated");
        String string = ((StringBuilder) X(iterable, new StringBuilder(), separator, prefix, postfix, i10, truncated, lVar)).toString();
        kotlin.jvm.internal.r.d(string, "toString(...)");
        return string;
    }

    public static /* synthetic */ String a0(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, w8.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i11 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i11 & 4) == 0 ? charSequence3 : "";
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            lVar = null;
        }
        return Z(iterable, charSequence, charSequence5, charSequence6, i12, charSequence7, lVar);
    }

    public static final Object b0(Iterable iterable) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        if (iterable instanceof List) {
            return o.c0((List) iterable);
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        Object next = it.next();
        while (it.hasNext()) {
            next = it.next();
        }
        return next;
    }

    public static Object c0(List list) {
        kotlin.jvm.internal.r.e(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(o.j(list));
    }

    public static Object d0(List list) {
        kotlin.jvm.internal.r.e(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    public static Comparable e0(Iterable iterable) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Comparable comparable = (Comparable) it.next();
        while (it.hasNext()) {
            Comparable comparable2 = (Comparable) it.next();
            if (comparable.compareTo(comparable2) < 0) {
                comparable = comparable2;
            }
        }
        return comparable;
    }

    public static Comparable f0(Iterable iterable) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Comparable comparable = (Comparable) it.next();
        while (it.hasNext()) {
            Comparable comparable2 = (Comparable) it.next();
            if (comparable.compareTo(comparable2) > 0) {
                comparable = comparable2;
            }
        }
        return comparable;
    }

    public static List g0(Collection collection, Iterable elements) {
        kotlin.jvm.internal.r.e(collection, "<this>");
        kotlin.jvm.internal.r.e(elements, "elements");
        if (!(elements instanceof Collection)) {
            ArrayList arrayList = new ArrayList(collection);
            o.v(arrayList, elements);
            return arrayList;
        }
        Collection collection2 = (Collection) elements;
        ArrayList arrayList2 = new ArrayList(collection.size() + collection2.size());
        arrayList2.addAll(collection);
        arrayList2.addAll(collection2);
        return arrayList2;
    }

    public static List h0(Collection collection, Object obj) {
        kotlin.jvm.internal.r.e(collection, "<this>");
        ArrayList arrayList = new ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(obj);
        return arrayList;
    }

    public static Object i0(Iterable iterable) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        if (iterable instanceof List) {
            return j0((List) iterable);
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        Object next = it.next();
        if (it.hasNext()) {
            throw new IllegalArgumentException("Collection has more than one element.");
        }
        return next;
    }

    public static final Object j0(List list) {
        kotlin.jvm.internal.r.e(list, "<this>");
        int size = list.size();
        if (size == 0) {
            throw new NoSuchElementException("List is empty.");
        }
        if (size == 1) {
            return list.get(0);
        }
        throw new IllegalArgumentException("List has more than one element.");
    }

    public static Object k0(List list) {
        kotlin.jvm.internal.r.e(list, "<this>");
        if (list.size() == 1) {
            return list.get(0);
        }
        return null;
    }

    public static List l0(Iterable iterable, int i10) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return o.h();
        }
        if (iterable instanceof Collection) {
            if (i10 >= ((Collection) iterable).size()) {
                return o.r0(iterable);
            }
            if (i10 == 1) {
                return o.b(o.P(iterable));
            }
        }
        ArrayList arrayList = new ArrayList(i10);
        Iterator it = iterable.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            arrayList.add(it.next());
            i11++;
            if (i11 == i10) {
                break;
            }
        }
        return q.n(arrayList);
    }

    public static boolean[] m0(Collection collection) {
        kotlin.jvm.internal.r.e(collection, "<this>");
        boolean[] zArr = new boolean[collection.size()];
        Iterator it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            zArr[i10] = ((Boolean) it.next()).booleanValue();
            i10++;
        }
        return zArr;
    }

    public static final Collection n0(Iterable iterable, Collection destination) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        kotlin.jvm.internal.r.e(destination, "destination");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            destination.add(it.next());
        }
        return destination;
    }

    public static float[] o0(Collection collection) {
        kotlin.jvm.internal.r.e(collection, "<this>");
        float[] fArr = new float[collection.size()];
        Iterator it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            fArr[i10] = ((Number) it.next()).floatValue();
            i10++;
        }
        return fArr;
    }

    public static HashSet p0(Iterable iterable) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        return (HashSet) n0(iterable, new HashSet(j0.e(o.r(iterable, 12))));
    }

    public static int[] q0(Collection collection) {
        kotlin.jvm.internal.r.e(collection, "<this>");
        int[] iArr = new int[collection.size()];
        Iterator it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            iArr[i10] = ((Number) it.next()).intValue();
            i10++;
        }
        return iArr;
    }

    public static List r0(Iterable iterable) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return q.n(s0(iterable));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return o.h();
        }
        if (size != 1) {
            return o.t0(collection);
        }
        return o.b(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
    }

    public static final List s0(Iterable iterable) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        return iterable instanceof Collection ? o.t0((Collection) iterable) : (List) n0(iterable, new ArrayList());
    }

    public static List t0(Collection collection) {
        kotlin.jvm.internal.r.e(collection, "<this>");
        return new ArrayList(collection);
    }

    public static final Set u0(Iterable iterable) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        return iterable instanceof Collection ? new LinkedHashSet((Collection) iterable) : (Set) n0(iterable, new LinkedHashSet());
    }

    public static Set v0(Iterable iterable) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return s0.c((Set) n0(iterable, new LinkedHashSet()));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return q0.b();
        }
        if (size != 1) {
            return (Set) n0(iterable, new LinkedHashSet(j0.e(collection.size())));
        }
        return r0.a(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
    }

    public static List w0(Iterable iterable, Iterable other) {
        kotlin.jvm.internal.r.e(iterable, "<this>");
        kotlin.jvm.internal.r.e(other, "other");
        Iterator it = iterable.iterator();
        Iterator it2 = other.iterator();
        ArrayList arrayList = new ArrayList(Math.min(o.r(iterable, 10), o.r(other, 10)));
        while (it.hasNext() && it2.hasNext()) {
            arrayList.add(n8.w.a(it.next(), it2.next()));
        }
        return arrayList;
    }
}
