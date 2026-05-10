package n8;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes2.dex */
public final class f0 implements Collection, x8.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final short[] f14098a;

    private static final class a implements Iterator, x8.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final short[] f14099a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f14100b;

        public a(short[] array) {
            kotlin.jvm.internal.r.e(array, "array");
            this.f14099a = array;
        }

        public short a() {
            int i10 = this.f14100b;
            short[] sArr = this.f14099a;
            if (i10 >= sArr.length) {
                throw new NoSuchElementException(String.valueOf(this.f14100b));
            }
            this.f14100b = i10 + 1;
            return e0.b(sArr[i10]);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14100b < this.f14099a.length;
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ Object next() {
            return e0.a(a());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    private /* synthetic */ f0(short[] sArr) {
        this.f14098a = sArr;
    }

    public static final /* synthetic */ f0 a(short[] sArr) {
        return new f0(sArr);
    }

    public static short[] c(int i10) {
        return d(new short[i10]);
    }

    public static short[] d(short[] storage) {
        kotlin.jvm.internal.r.e(storage, "storage");
        return storage;
    }

    public static boolean f(short[] sArr, short s10) {
        return kotlin.collections.i.z(sArr, s10);
    }

    public static boolean g(short[] sArr, Collection elements) {
        kotlin.jvm.internal.r.e(elements, "elements");
        if (elements.isEmpty()) {
            return true;
        }
        for (Object obj : elements) {
            if (!(obj instanceof e0) || !kotlin.collections.i.z(sArr, ((e0) obj).f())) {
                return false;
            }
        }
        return true;
    }

    public static boolean h(short[] sArr, Object obj) {
        return (obj instanceof f0) && kotlin.jvm.internal.r.a(sArr, ((f0) obj).q());
    }

    public static final short i(short[] sArr, int i10) {
        return e0.b(sArr[i10]);
    }

    public static int k(short[] sArr) {
        return sArr.length;
    }

    public static int l(short[] sArr) {
        return Arrays.hashCode(sArr);
    }

    public static boolean m(short[] sArr) {
        return sArr.length == 0;
    }

    public static Iterator n(short[] sArr) {
        return new a(sArr);
    }

    public static final void o(short[] sArr, int i10, short s10) {
        sArr[i10] = s10;
    }

    public static String p(short[] sArr) {
        return "UShortArray(storage=" + Arrays.toString(sArr) + ')';
    }

    @Override // java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof e0) {
            return e(((e0) obj).f());
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection elements) {
        kotlin.jvm.internal.r.e(elements, "elements");
        return g(this.f14098a, elements);
    }

    public boolean e(short s10) {
        return f(this.f14098a, s10);
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return h(this.f14098a, obj);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return l(this.f14098a);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m(this.f14098a);
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return n(this.f14098a);
    }

    @Override // java.util.Collection
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public int size() {
        return k(this.f14098a);
    }

    public final /* synthetic */ short[] q() {
        return this.f14098a;
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return kotlin.jvm.internal.i.a(this);
    }

    public String toString() {
        return p(this.f14098a);
    }

    @Override // java.util.Collection
    public Object[] toArray(Object[] array) {
        kotlin.jvm.internal.r.e(array, "array");
        return kotlin.jvm.internal.i.b(this, array);
    }
}
