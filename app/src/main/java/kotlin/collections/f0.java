package kotlin.collections;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class f0 implements Iterable, x8.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final w8.a f13019a;

    public f0(w8.a iteratorFactory) {
        kotlin.jvm.internal.r.e(iteratorFactory, "iteratorFactory");
        this.f13019a = iteratorFactory;
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return new g0((Iterator) this.f13019a.mo8invoke());
    }
}
