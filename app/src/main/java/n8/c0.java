package n8;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes2.dex */
public final class c0 implements Collection, x8.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long[] f14089a;

    private static final class a implements Iterator, x8.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long[] f14090a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f14091b;

        public a(long[] array) {
            kotlin.jvm.internal.r.e(array, "array");
            this.f14090a = array;
        }

        public long a() {
            int i10 = this.f14091b;
            long[] jArr = this.f14090a;
            if (i10 >= jArr.length) {
                throw new NoSuchElementException(String.valueOf(this.f14091b));
            }
            this.f14091b = i10 + 1;
            return b0.b(jArr[i10]);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14091b < this.f14090a.length;
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ Object next() {
            return b0.a(a());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    private /* synthetic */ c0(long[] jArr) {
        this.f14089a = jArr;
    }

    public static final /* synthetic */ c0 a(long[] jArr) {
        return new c0(jArr);
    }

    public static long[] c(int i10) {
        return d(new long[i10]);
    }

    public static long[] d(long[] storage) {
        kotlin.jvm.internal.r.e(storage, "storage");
        return storage;
    }

    public static boolean f(long[] jArr, long j10) {
        return kotlin.collections.i.x(jArr, j10);
    }

    public static boolean g(long[] jArr, Collection elements) {
        kotlin.jvm.internal.r.e(elements, "elements");
        if (elements.isEmpty()) {
            return true;
        }
        for (Object obj : elements) {
            if (!(obj instanceof b0) || !kotlin.collections.i.x(jArr, ((b0) obj).f())) {
                return false;
            }
        }
        return true;
    }

    public static boolean h(long[] jArr, Object obj) {
        return (obj instanceof c0) && kotlin.jvm.internal.r.a(jArr, ((c0) obj).q());
    }

    public static final long i(long[] jArr, int i10) {
        return b0.b(jArr[i10]);
    }

    public static int k(long[] jArr) {
        return jArr.length;
    }

    public static int l(long[] jArr) {
        return Arrays.hashCode(jArr);
    }

    public static boolean m(long[] jArr) {
        return jArr.length == 0;
    }

    public static Iterator n(long[] jArr) {
        return new a(jArr);
    }

    public static final void o(long[] jArr, int i10, long j10) {
        jArr[i10] = j10;
    }

    public static String p(long[] jArr) {
        return "ULongArray(storage=" + Arrays.toString(jArr) + ')';
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
        if (obj instanceof b0) {
            return e(((b0) obj).f());
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection elements) {
        kotlin.jvm.internal.r.e(elements, "elements");
        return g(this.f14089a, elements);
    }

    public boolean e(long j10) {
        return f(this.f14089a, j10);
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return h(this.f14089a, obj);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return l(this.f14089a);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m(this.f14089a);
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return n(this.f14089a);
    }

    @Override // java.util.Collection
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public int size() {
        return k(this.f14089a);
    }

    public final /* synthetic */ long[] q() {
        return this.f14089a;
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
        return p(this.f14089a);
    }

    @Override // java.util.Collection
    public Object[] toArray(Object[] array) {
        kotlin.jvm.internal.r.e(array, "array");
        return kotlin.jvm.internal.i.b(this, array);
    }
}
