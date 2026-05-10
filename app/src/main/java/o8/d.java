package o8;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends a {

    /* JADX INFO: renamed from: a */
    private final c f14469a;

    public d(c backing) {
        r.e(backing, "backing");
        this.f14469a = backing;
    }

    @Override // kotlin.collections.f
    public int a() {
        return this.f14469a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(Collection elements) {
        r.e(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f14469a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection elements) {
        r.e(elements, "elements");
        return this.f14469a.containsAllEntries$kotlin_stdlib(elements);
    }

    @Override // o8.a
    public boolean d(Map.Entry element) {
        r.e(element, "element");
        return this.f14469a.containsEntry$kotlin_stdlib(element);
    }

    @Override // o8.a
    public boolean e(Map.Entry element) {
        r.e(element, "element");
        return this.f14469a.removeEntry$kotlin_stdlib(element);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: f */
    public boolean add(Map.Entry element) {
        r.e(element, "element");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f14469a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        return this.f14469a.entriesIterator$kotlin_stdlib();
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(Collection elements) {
        r.e(elements, "elements");
        this.f14469a.checkIsMutable$kotlin_stdlib();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(Collection elements) {
        r.e(elements, "elements");
        this.f14469a.checkIsMutable$kotlin_stdlib();
        return super.retainAll(elements);
    }
}
