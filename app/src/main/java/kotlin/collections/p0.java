package kotlin.collections;

import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes2.dex */
class p0 extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f13030a;

    public static final class a implements ListIterator, x8.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ListIterator f13031a;

        a(int i10) {
            this.f13031a = p0.this.f13030a.listIterator(w.K(p0.this, i10));
        }

        @Override // java.util.ListIterator
        public void add(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f13031a.hasPrevious();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f13031a.hasNext();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public Object next() {
            return this.f13031a.previous();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return w.J(p0.this, this.f13031a.previousIndex());
        }

        @Override // java.util.ListIterator
        public Object previous() {
            return this.f13031a.next();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return w.J(p0.this, this.f13031a.nextIndex());
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public void set(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public p0(List delegate) {
        kotlin.jvm.internal.r.e(delegate, "delegate");
        this.f13030a = delegate;
    }

    @Override // kotlin.collections.c, java.util.List
    public Object get(int i10) {
        return this.f13030a.get(w.I(this, i10));
    }

    @Override // kotlin.collections.a
    public int getSize() {
        return this.f13030a.size();
    }

    @Override // kotlin.collections.c, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator iterator() {
        return listIterator(0);
    }

    @Override // kotlin.collections.c, java.util.List
    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // kotlin.collections.c, java.util.List
    public ListIterator listIterator(int i10) {
        return new a(i10);
    }
}
