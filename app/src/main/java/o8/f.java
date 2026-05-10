package o8;

import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends kotlin.collections.d implements Collection, x8.b {

    /* JADX INFO: renamed from: a */
    private final c f14471a;

    public f(c backing) {
        r.e(backing, "backing");
        this.f14471a = backing;
    }

    @Override // kotlin.collections.d
    public int a() {
        return this.f14471a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean addAll(Collection elements) {
        r.e(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.f14471a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.f14471a.containsValue(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.f14471a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return this.f14471a.valuesIterator$kotlin_stdlib();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        return this.f14471a.removeValue$kotlin_stdlib(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection elements) {
        r.e(elements, "elements");
        this.f14471a.checkIsMutable$kotlin_stdlib();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(Collection elements) {
        r.e(elements, "elements");
        this.f14471a.checkIsMutable$kotlin_stdlib();
        return super.retainAll(elements);
    }
}
