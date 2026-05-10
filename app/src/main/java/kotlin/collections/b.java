package kotlin.collections;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b implements Iterator, x8.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f13009a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f13010b;

    private final boolean e() {
        this.f13009a = 3;
        a();
        return this.f13009a == 1;
    }

    protected abstract void a();

    protected final void c() {
        this.f13009a = 2;
    }

    protected final void d(Object obj) {
        this.f13010b = obj;
        this.f13009a = 1;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        int i10 = this.f13009a;
        if (i10 == 0) {
            return e();
        }
        if (i10 == 1) {
            return true;
        }
        if (i10 == 2) {
            return false;
        }
        throw new IllegalArgumentException("hasNext called when the iterator is in the FAILED state.");
    }

    @Override // java.util.Iterator
    public Object next() {
        int i10 = this.f13009a;
        if (i10 == 1) {
            this.f13009a = 0;
            return this.f13010b;
        }
        if (i10 == 2 || !e()) {
            throw new NoSuchElementException();
        }
        this.f13009a = 0;
        return this.f13010b;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
