package n8;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes2.dex */
public final class y implements Collection, x8.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f14104a;

    private static final class a implements Iterator, x8.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final byte[] f14105a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f14106b;

        public a(byte[] array) {
            kotlin.jvm.internal.r.e(array, "array");
            this.f14105a = array;
        }

        public byte a() {
            int i10 = this.f14106b;
            byte[] bArr = this.f14105a;
            if (i10 >= bArr.length) {
                throw new NoSuchElementException(String.valueOf(this.f14106b));
            }
            this.f14106b = i10 + 1;
            return x.b(bArr[i10]);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14106b < this.f14105a.length;
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ Object next() {
            return x.a(a());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    private /* synthetic */ y(byte[] bArr) {
        this.f14104a = bArr;
    }

    public static final /* synthetic */ y a(byte[] bArr) {
        return new y(bArr);
    }

    public static byte[] c(int i10) {
        return d(new byte[i10]);
    }

    public static byte[] d(byte[] storage) {
        kotlin.jvm.internal.r.e(storage, "storage");
        return storage;
    }

    public static boolean f(byte[] bArr, byte b10) {
        return kotlin.collections.i.u(bArr, b10);
    }

    public static boolean g(byte[] bArr, Collection elements) {
        kotlin.jvm.internal.r.e(elements, "elements");
        if (elements.isEmpty()) {
            return true;
        }
        for (Object obj : elements) {
            if (!(obj instanceof x) || !kotlin.collections.i.u(bArr, ((x) obj).f())) {
                return false;
            }
        }
        return true;
    }

    public static boolean h(byte[] bArr, Object obj) {
        return (obj instanceof y) && kotlin.jvm.internal.r.a(bArr, ((y) obj).q());
    }

    public static final byte i(byte[] bArr, int i10) {
        return x.b(bArr[i10]);
    }

    public static int k(byte[] bArr) {
        return bArr.length;
    }

    public static int l(byte[] bArr) {
        return Arrays.hashCode(bArr);
    }

    public static boolean m(byte[] bArr) {
        return bArr.length == 0;
    }

    public static Iterator n(byte[] bArr) {
        return new a(bArr);
    }

    public static final void o(byte[] bArr, int i10, byte b10) {
        bArr[i10] = b10;
    }

    public static String p(byte[] bArr) {
        return "UByteArray(storage=" + Arrays.toString(bArr) + ')';
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
        if (obj instanceof x) {
            return e(((x) obj).f());
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection elements) {
        kotlin.jvm.internal.r.e(elements, "elements");
        return g(this.f14104a, elements);
    }

    public boolean e(byte b10) {
        return f(this.f14104a, b10);
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return h(this.f14104a, obj);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return l(this.f14104a);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m(this.f14104a);
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return n(this.f14104a);
    }

    @Override // java.util.Collection
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public int size() {
        return k(this.f14104a);
    }

    public final /* synthetic */ byte[] q() {
        return this.f14104a;
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
        return p(this.f14104a);
    }

    @Override // java.util.Collection
    public Object[] toArray(Object[] array) {
        kotlin.jvm.internal.r.e(array, "array");
        return kotlin.jvm.internal.i.b(this, array);
    }
}
