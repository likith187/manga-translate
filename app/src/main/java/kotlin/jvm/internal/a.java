package kotlin.jvm.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes2.dex */
final class a implements Iterator, x8.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object[] f13067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f13068b;

    public a(Object[] array) {
        r.e(array, "array");
        this.f13067a = array;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f13068b < this.f13067a.length;
    }

    @Override // java.util.Iterator
    public Object next() {
        try {
            Object[] objArr = this.f13067a;
            int i10 = this.f13068b;
            this.f13068b = i10 + 1;
            return objArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f13068b--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
