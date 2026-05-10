package t9;

import com.oplus.aiunit.core.ConfigPackage;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class w {
    public static final w INSTANCE = new w();

    /* JADX INFO: renamed from: a */
    private static final int f15799a = 65536;

    /* JADX INFO: renamed from: b */
    private static final v f15800b = new v(new byte[0], 0, 0, false, false);

    /* JADX INFO: renamed from: c */
    private static final int f15801c;

    /* JADX INFO: renamed from: d */
    private static final AtomicReference[] f15802d;

    static {
        int iHighestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        f15801c = iHighestOneBit;
        AtomicReference[] atomicReferenceArr = new AtomicReference[iHighestOneBit];
        for (int i10 = 0; i10 < iHighestOneBit; i10++) {
            atomicReferenceArr[i10] = new AtomicReference();
        }
        f15802d = atomicReferenceArr;
    }

    private w() {
    }

    private final AtomicReference a() {
        return f15802d[(int) (Thread.currentThread().getId() & (((long) f15801c) - 1))];
    }

    public static final void b(v segment) {
        kotlin.jvm.internal.r.e(segment, "segment");
        if (segment.f15797f != null || segment.f15798g != null) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (segment.f15795d) {
            return;
        }
        AtomicReference atomicReferenceA = INSTANCE.a();
        v vVar = f15800b;
        v vVar2 = (v) atomicReferenceA.getAndSet(vVar);
        if (vVar2 == vVar) {
            return;
        }
        int i10 = vVar2 != null ? vVar2.f15794c : 0;
        if (i10 >= f15799a) {
            atomicReferenceA.set(vVar2);
            return;
        }
        segment.f15797f = vVar2;
        segment.f15793b = 0;
        segment.f15794c = i10 + ConfigPackage.FRAME_SIZE_6;
        atomicReferenceA.set(segment);
    }

    public static final v c() {
        AtomicReference atomicReferenceA = INSTANCE.a();
        v vVar = f15800b;
        v vVar2 = (v) atomicReferenceA.getAndSet(vVar);
        if (vVar2 == vVar) {
            return new v();
        }
        if (vVar2 == null) {
            atomicReferenceA.set(null);
            return new v();
        }
        atomicReferenceA.set(vVar2.f15797f);
        vVar2.f15797f = null;
        vVar2.f15794c = 0;
        return vVar2;
    }
}
