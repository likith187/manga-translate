package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class g implements Collection, x8.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object[] f13020a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f13021b;

    public g(Object[] values, boolean z10) {
        kotlin.jvm.internal.r.e(values, "values");
        this.f13020a = values;
        this.f13021b = z10;
    }

    public int a() {
        return this.f13020a.length;
    }

    @Override // java.util.Collection
    public boolean add(Object obj) {
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
    public boolean contains(Object obj) {
        return i.y(this.f13020a, obj);
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection elements) {
        kotlin.jvm.internal.r.e(elements, "elements");
        if (elements.isEmpty()) {
            return true;
        }
        Iterator it = elements.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.f13020a.length == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return kotlin.jvm.internal.b.a(this.f13020a);
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
    public final /* bridge */ int size() {
        return a();
    }

    @Override // java.util.Collection
    public Object[] toArray(Object[] array) {
        kotlin.jvm.internal.r.e(array, "array");
        return kotlin.jvm.internal.i.b(this, array);
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        return p.a(this.f13020a, this.f13021b);
    }
}
