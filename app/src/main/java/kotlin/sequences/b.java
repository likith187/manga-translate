package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements f, c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f13083a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f13084b;

    public static final class a implements Iterator, x8.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Iterator f13085a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f13086b;

        a(b bVar) {
            this.f13085a = bVar.f13083a.iterator();
            this.f13086b = bVar.f13084b;
        }

        private final void a() {
            while (this.f13086b > 0 && this.f13085a.hasNext()) {
                this.f13085a.next();
                this.f13086b--;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            a();
            return this.f13085a.hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            a();
            return this.f13085a.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public b(f sequence, int i10) {
        r.e(sequence, "sequence");
        this.f13083a = sequence;
        this.f13084b = i10;
        if (i10 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i10 + '.').toString());
    }

    @Override // kotlin.sequences.c
    public f a(int i10) {
        int i11 = this.f13084b + i10;
        return i11 < 0 ? new b(this, i10) : new b(this.f13083a, i11);
    }

    @Override // kotlin.sequences.f
    public Iterator iterator() {
        return new a(this);
    }
}
