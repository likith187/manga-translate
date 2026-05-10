package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlinx.coroutines.s1;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d0 extends d implements s1 {

    /* JADX INFO: renamed from: d */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f13260d = AtomicIntegerFieldUpdater.newUpdater(d0.class, "cleanedAndPointers$volatile");

    /* JADX INFO: renamed from: c */
    public final long f13261c;
    private volatile /* synthetic */ int cleanedAndPointers$volatile;

    public d0(long j10, d0 d0Var, int i10) {
        super(d0Var);
        this.f13261c = j10;
        this.cleanedAndPointers$volatile = i10 << 16;
    }

    @Override // kotlinx.coroutines.internal.d
    public boolean k() {
        return f13260d.get(this) == r() && !l();
    }

    public final boolean p() {
        return f13260d.addAndGet(this, -65536) == r() && !l();
    }

    public abstract int r();

    public abstract void s(int i10, Throwable th, kotlin.coroutines.g gVar);

    public final void t() {
        if (f13260d.incrementAndGet(this) == r()) {
            n();
        }
    }

    public final boolean u() {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f13260d;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 == r() && !l()) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i10, 65536 + i10));
        return true;
    }
}
