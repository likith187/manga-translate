package androidx.collection;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public abstract class e implements Iterator, x8.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f1052a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1054c;

    public e(int i10) {
        this.f1052a = i10;
    }

    protected abstract Object a(int i10);

    protected abstract void c(int i10);

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f1053b < this.f1052a;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object objA = a(this.f1053b);
        this.f1053b++;
        this.f1054c = true;
        return objA;
    }

    @Override // java.util.Iterator
    public void remove() {
        if (!this.f1054c) {
            throw new IllegalStateException("Call next() before removing an element.");
        }
        int i10 = this.f1053b - 1;
        this.f1053b = i10;
        c(i10);
        this.f1052a--;
        this.f1054c = false;
    }
}
