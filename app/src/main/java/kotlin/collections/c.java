package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c extends kotlin.collections.a implements List, x8.a {
    public static final a Companion = new a(null);
    private static final int maxArraySize = 2147483639;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(int i10, int i11, int i12) {
            if (i10 < 0 || i11 > i12) {
                throw new IndexOutOfBoundsException("startIndex: " + i10 + ", endIndex: " + i11 + ", size: " + i12);
            }
            if (i10 <= i11) {
                return;
            }
            throw new IllegalArgumentException("startIndex: " + i10 + " > endIndex: " + i11);
        }

        public final void b(int i10, int i11) {
            if (i10 < 0 || i10 >= i11) {
                throw new IndexOutOfBoundsException("index: " + i10 + ", size: " + i11);
            }
        }

        public final void c(int i10, int i11) {
            if (i10 < 0 || i10 > i11) {
                throw new IndexOutOfBoundsException("index: " + i10 + ", size: " + i11);
            }
        }

        public final void d(int i10, int i11, int i12) {
            if (i10 < 0 || i11 > i12) {
                throw new IndexOutOfBoundsException("fromIndex: " + i10 + ", toIndex: " + i11 + ", size: " + i12);
            }
            if (i10 <= i11) {
                return;
            }
            throw new IllegalArgumentException("fromIndex: " + i10 + " > toIndex: " + i11);
        }

        public final int e(int i10, int i11) {
            int i12 = i10 + (i10 >> 1);
            if (i12 - i11 < 0) {
                i12 = i11;
            }
            int i13 = c.maxArraySize;
            if (i12 - c.maxArraySize <= 0) {
                return i12;
            }
            if (i11 > c.maxArraySize) {
                i13 = Integer.MAX_VALUE;
            }
            return i13;
        }

        public final boolean f(Collection c10, Collection other) {
            kotlin.jvm.internal.r.e(c10, "c");
            kotlin.jvm.internal.r.e(other, "other");
            if (c10.size() != other.size()) {
                return false;
            }
            Iterator it = other.iterator();
            Iterator it2 = c10.iterator();
            while (it2.hasNext()) {
                if (!kotlin.jvm.internal.r.a(it2.next(), it.next())) {
                    return false;
                }
            }
            return true;
        }

        public final int g(Collection c10) {
            kotlin.jvm.internal.r.e(c10, "c");
            Iterator it = c10.iterator();
            int iHashCode = 1;
            while (it.hasNext()) {
                Object next = it.next();
                iHashCode = (iHashCode * 31) + (next != null ? next.hashCode() : 0);
            }
            return iHashCode;
        }

        private a() {
        }
    }

    private class b implements Iterator, x8.a {

        /* JADX INFO: renamed from: a */
        private int f13011a;

        public b() {
        }

        protected final int a() {
            return this.f13011a;
        }

        protected final void c(int i10) {
            this.f13011a = i10;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f13011a < c.this.size();
        }

        @Override // java.util.Iterator
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            c cVar = c.this;
            int i10 = this.f13011a;
            this.f13011a = i10 + 1;
            return cVar.get(i10);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX INFO: renamed from: kotlin.collections.c$c */
    private class C0162c extends b implements ListIterator, x8.a {
        public C0162c(int i10) {
            super();
            c.Companion.c(i10, c.this.size());
            c(i10);
        }

        @Override // java.util.ListIterator
        public void add(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return a() > 0;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return a();
        }

        @Override // java.util.ListIterator
        public Object previous() {
            if (!hasPrevious()) {
                throw new NoSuchElementException();
            }
            c cVar = c.this;
            c(a() - 1);
            return cVar.get(a());
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return a() - 1;
        }

        @Override // java.util.ListIterator
        public void set(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    private static final class d extends c implements RandomAccess {

        /* JADX INFO: renamed from: a */
        private final c f13014a;

        /* JADX INFO: renamed from: b */
        private final int f13015b;

        /* JADX INFO: renamed from: c */
        private int f13016c;

        public d(c list, int i10, int i11) {
            kotlin.jvm.internal.r.e(list, "list");
            this.f13014a = list;
            this.f13015b = i10;
            c.Companion.d(i10, i11, list.size());
            this.f13016c = i11 - i10;
        }

        @Override // kotlin.collections.c, java.util.List
        public Object get(int i10) {
            c.Companion.b(i10, this.f13016c);
            return this.f13014a.get(this.f13015b + i10);
        }

        @Override // kotlin.collections.a
        public int getSize() {
            return this.f13016c;
        }
    }

    protected c() {
    }

    @Override // java.util.List
    public void add(int i10, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i10, Collection<Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            return Companion.f(this, (Collection) obj);
        }
        return false;
    }

    @Override // java.util.List
    public abstract Object get(int i10);

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        return Companion.g(this);
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        Iterator it = iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (kotlin.jvm.internal.r.a(it.next(), obj)) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<Object> iterator() {
        return new b();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        ListIterator listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (kotlin.jvm.internal.r.a(listIterator.previous(), obj)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override // java.util.List
    public ListIterator<Object> listIterator() {
        return new C0162c(0);
    }

    @Override // java.util.List
    public Object remove(int i10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public Object set(int i10, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public List<Object> subList(int i10, int i11) {
        return new d(this, i10, i11);
    }

    @Override // java.util.List
    public ListIterator<Object> listIterator(int i10) {
        return new C0162c(i10);
    }
}
