package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes2.dex */
final class g extends h implements Iterator, kotlin.coroutines.d, x8.a {

    /* JADX INFO: renamed from: a */
    private int f13099a;

    /* JADX INFO: renamed from: b */
    private Object f13100b;

    /* JADX INFO: renamed from: c */
    private Iterator f13101c;

    /* JADX INFO: renamed from: f */
    private kotlin.coroutines.d f13102f;

    private final Throwable h() {
        int i10 = this.f13099a;
        if (i10 == 4) {
            return new NoSuchElementException();
        }
        if (i10 == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.f13099a);
    }

    private final Object i() {
        if (hasNext()) {
            return next();
        }
        throw new NoSuchElementException();
    }

    @Override // kotlin.sequences.h
    public Object c(Object obj, kotlin.coroutines.d dVar) {
        this.f13100b = obj;
        this.f13099a = 3;
        this.f13102f = dVar;
        Object objF = kotlin.coroutines.intrinsics.b.f();
        if (objF == kotlin.coroutines.intrinsics.b.f()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objF == kotlin.coroutines.intrinsics.b.f() ? objF : h0.INSTANCE;
    }

    @Override // kotlin.coroutines.d
    public kotlin.coroutines.g getContext() {
        return kotlin.coroutines.h.INSTANCE;
    }

    @Override // java.util.Iterator
    public boolean hasNext() throws Throwable {
        while (true) {
            int i10 = this.f13099a;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2 || i10 == 3) {
                        return true;
                    }
                    if (i10 == 4) {
                        return false;
                    }
                    throw h();
                }
                Iterator it = this.f13101c;
                r.b(it);
                if (it.hasNext()) {
                    this.f13099a = 2;
                    return true;
                }
                this.f13101c = null;
            }
            this.f13099a = 5;
            kotlin.coroutines.d dVar = this.f13102f;
            r.b(dVar);
            this.f13102f = null;
            r.a aVar = n8.r.Companion;
            dVar.resumeWith(n8.r.m59constructorimpl(h0.INSTANCE));
        }
    }

    public final void j(kotlin.coroutines.d dVar) {
        this.f13102f = dVar;
    }

    @Override // java.util.Iterator
    public Object next() throws Throwable {
        int i10 = this.f13099a;
        if (i10 == 0 || i10 == 1) {
            return i();
        }
        if (i10 == 2) {
            this.f13099a = 1;
            Iterator it = this.f13101c;
            kotlin.jvm.internal.r.b(it);
            return it.next();
        }
        if (i10 != 3) {
            throw h();
        }
        this.f13099a = 0;
        Object obj = this.f13100b;
        this.f13100b = null;
        return obj;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // kotlin.coroutines.d
    public void resumeWith(Object obj) {
        s.b(obj);
        this.f13099a = 4;
    }
}
