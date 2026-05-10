package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
final class e implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final w8.a f13094a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w8.l f13095b;

    public static final class a implements Iterator, x8.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Object f13096a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f13097b = -2;

        a() {
        }

        private final void a() {
            Object objInvoke;
            if (this.f13097b == -2) {
                objInvoke = e.this.f13094a.mo8invoke();
            } else {
                w8.l lVar = e.this.f13095b;
                Object obj = this.f13096a;
                r.b(obj);
                objInvoke = lVar.invoke(obj);
            }
            this.f13096a = objInvoke;
            this.f13097b = objInvoke == null ? 0 : 1;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f13097b < 0) {
                a();
            }
            return this.f13097b == 1;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (this.f13097b < 0) {
                a();
            }
            if (this.f13097b == 0) {
                throw new NoSuchElementException();
            }
            Object obj = this.f13096a;
            r.c(obj, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence");
            this.f13097b = -1;
            return obj;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public e(w8.a getInitialValue, w8.l getNextValue) {
        r.e(getInitialValue, "getInitialValue");
        r.e(getNextValue, "getNextValue");
        this.f13094a = getInitialValue;
        this.f13095b = getNextValue;
    }

    @Override // kotlin.sequences.f
    public Iterator iterator() {
        return new a();
    }
}
