package kotlin.sequences;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicReference f13082a;

    public a(f sequence) {
        r.e(sequence, "sequence");
        this.f13082a = new AtomicReference(sequence);
    }

    @Override // kotlin.sequences.f
    public Iterator iterator() {
        f fVar = (f) this.f13082a.getAndSet(null);
        if (fVar != null) {
            return fVar.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
