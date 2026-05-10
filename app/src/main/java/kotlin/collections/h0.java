package kotlin.collections;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h0 implements Iterator, x8.a {
    public abstract int a();

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ Object next() {
        return Integer.valueOf(a());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
