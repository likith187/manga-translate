package kotlin.collections;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class g0 implements Iterator, x8.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Iterator f13022a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f13023b;

    public g0(Iterator iterator) {
        kotlin.jvm.internal.r.e(iterator, "iterator");
        this.f13022a = iterator;
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final e0 next() {
        int i10 = this.f13023b;
        this.f13023b = i10 + 1;
        if (i10 < 0) {
            o.q();
        }
        return new e0(i10, this.f13022a.next());
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f13022a.hasNext();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
