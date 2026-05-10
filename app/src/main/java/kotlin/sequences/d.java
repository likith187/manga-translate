package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f13087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f13088b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w8.l f13089c;

    public static final class a implements Iterator, x8.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Iterator f13090a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f13091b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Object f13092c;

        a() {
            this.f13090a = d.this.f13087a.iterator();
        }

        private final void a() {
            while (this.f13090a.hasNext()) {
                Object next = this.f13090a.next();
                if (((Boolean) d.this.f13089c.invoke(next)).booleanValue() == d.this.f13088b) {
                    this.f13092c = next;
                    this.f13091b = 1;
                    return;
                }
            }
            this.f13091b = 0;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f13091b == -1) {
                a();
            }
            return this.f13091b == 1;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (this.f13091b == -1) {
                a();
            }
            if (this.f13091b == 0) {
                throw new NoSuchElementException();
            }
            Object obj = this.f13092c;
            this.f13092c = null;
            this.f13091b = -1;
            return obj;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public d(f sequence, boolean z10, w8.l predicate) {
        r.e(sequence, "sequence");
        r.e(predicate, "predicate");
        this.f13087a = sequence;
        this.f13088b = z10;
        this.f13089c = predicate;
    }

    @Override // kotlin.sequences.f
    public Iterator iterator() {
        return new a();
    }
}
