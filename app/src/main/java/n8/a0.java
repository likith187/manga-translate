package n8;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes2.dex */
public final class a0 implements Collection, x8.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f14083a;

    private static final class a implements Iterator, x8.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int[] f14084a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f14085b;

        public a(int[] array) {
            kotlin.jvm.internal.r.e(array, "array");
            this.f14084a = array;
        }

        public int a() {
            int i10 = this.f14085b;
            int[] iArr = this.f14084a;
            if (i10 >= iArr.length) {
                throw new NoSuchElementException(String.valueOf(this.f14085b));
            }
            this.f14085b = i10 + 1;
            return z.b(iArr[i10]);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14085b < this.f14084a.length;
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ Object next() {
            return z.a(a());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    private /* synthetic */ a0(int[] iArr) {
        this.f14083a = iArr;
    }

    public static final /* synthetic */ a0 a(int[] iArr) {
        return new a0(iArr);
    }

    public static int[] c(int i10) {
        return d(new int[i10]);
    }

    public static int[] d(int[] storage) {
        kotlin.jvm.internal.r.e(storage, "storage");
        return storage;
    }

    public static boolean f(int[] iArr, int i10) {
        return kotlin.collections.i.w(iArr, i10);
    }

    public static boolean g(int[] iArr, Collection elements) {
        kotlin.jvm.internal.r.e(elements, "elements");
        if (elements.isEmpty()) {
            return true;
        }
        for (Object obj : elements) {
            if (!(obj instanceof z) || !kotlin.collections.i.w(iArr, ((z) obj).f())) {
                return false;
            }
        }
        return true;
    }

    public static boolean h(int[] iArr, Object obj) {
        return (obj instanceof a0) && kotlin.jvm.internal.r.a(iArr, ((a0) obj).q());
    }

    public static final int i(int[] iArr, int i10) {
        return z.b(iArr[i10]);
    }

    public static int k(int[] iArr) {
        return iArr.length;
    }

    public static int l(int[] iArr) {
        return Arrays.hashCode(iArr);
    }

    public static boolean m(int[] iArr) {
        return iArr.length == 0;
    }

    public static Iterator n(int[] iArr) {
        return new a(iArr);
    }

    public static final void o(int[] iArr, int i10, int i11) {
        iArr[i10] = i11;
    }

    public static String p(int[] iArr) {
        return "UIntArray(storage=" + Arrays.toString(iArr) + ')';
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
        if (obj instanceof z) {
            return e(((z) obj).f());
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection elements) {
        kotlin.jvm.internal.r.e(elements, "elements");
        return g(this.f14083a, elements);
    }

    public boolean e(int i10) {
        return f(this.f14083a, i10);
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return h(this.f14083a, obj);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return l(this.f14083a);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m(this.f14083a);
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return n(this.f14083a);
    }

    @Override // java.util.Collection
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public int size() {
        return k(this.f14083a);
    }

    public final /* synthetic */ int[] q() {
        return this.f14083a;
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
        return p(this.f14083a);
    }

    @Override // java.util.Collection
    public Object[] toArray(Object[] array) {
        kotlin.jvm.internal.r.e(array, "array");
        return kotlin.jvm.internal.i.b(this, array);
    }
}
