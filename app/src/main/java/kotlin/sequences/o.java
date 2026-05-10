package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class o implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f13106a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w8.l f13107b;

    public static final class a implements Iterator, x8.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Iterator f13108a;

        a() {
            this.f13108a = o.this.f13106a.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f13108a.hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            return o.this.f13107b.invoke(this.f13108a.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public o(f sequence, w8.l transformer) {
        r.e(sequence, "sequence");
        r.e(transformer, "transformer");
        this.f13106a = sequence;
        this.f13107b = transformer;
    }

    @Override // kotlin.sequences.f
    public Iterator iterator() {
        return new a();
    }
}
