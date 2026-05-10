package com.google.android.gms.internal.mlkit_language_id_bundled;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
abstract class e extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f8114a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f8115b;

    protected e(int i10, int i11) {
        c.b(i11, i10, "index");
        this.f8114a = i10;
        this.f8115b = i11;
    }

    protected abstract Object a(int i10);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f8115b < this.f8114a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f8115b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f8115b;
        this.f8115b = i10 + 1;
        return a(i10);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f8115b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f8115b - 1;
        this.f8115b = i10;
        return a(i10);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f8115b - 1;
    }
}
