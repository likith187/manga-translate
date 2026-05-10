package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: loaded from: classes2.dex */
public final class l0 extends kotlinx.coroutines.internal.c0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f13317h = AtomicIntegerFieldUpdater.newUpdater(l0.class, "_decision$volatile");
    private volatile /* synthetic */ int _decision$volatile;

    public l0(kotlin.coroutines.g gVar, kotlin.coroutines.d dVar) {
        super(gVar, dVar);
    }

    private final boolean D0() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f13317h;
        do {
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed");
            }
        } while (!f13317h.compareAndSet(this, 0, 2));
        return true;
    }

    private final boolean E0() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f13317h;
        do {
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended");
            }
        } while (!f13317h.compareAndSet(this, 0, 1));
        return true;
    }

    public final Object B0() {
        if (E0()) {
            return kotlin.coroutines.intrinsics.b.f();
        }
        Object objH = n1.h(H());
        if (objH instanceof t) {
            throw ((t) objH).f13378a;
        }
        return objH;
    }

    @Override // kotlinx.coroutines.internal.c0, kotlinx.coroutines.m1
    protected void m(Object obj) {
        x0(obj);
    }

    @Override // kotlinx.coroutines.internal.c0, kotlinx.coroutines.a
    protected void x0(Object obj) {
        if (D0()) {
            return;
        }
        kotlinx.coroutines.internal.k.c(kotlin.coroutines.intrinsics.b.c(this.f13257f), w.a(obj, this.f13257f), null, 2, null);
    }
}
