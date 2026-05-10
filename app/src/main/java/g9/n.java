package g9;

import com.oplus.aiunit.download.core.ErrorCode;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.c0;

/* JADX INFO: loaded from: classes2.dex */
public final class n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f12160b = AtomicReferenceFieldUpdater.newUpdater(n.class, Object.class, "lastScheduledTask$volatile");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f12161c = AtomicIntegerFieldUpdater.newUpdater(n.class, "producerIndex$volatile");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f12162d = AtomicIntegerFieldUpdater.newUpdater(n.class, "consumerIndex$volatile");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f12163e = AtomicIntegerFieldUpdater.newUpdater(n.class, "blockingTasksInBuffer$volatile");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicReferenceArray f12164a = new AtomicReferenceArray(128);
    private volatile /* synthetic */ int blockingTasksInBuffer$volatile;
    private volatile /* synthetic */ int consumerIndex$volatile;
    private volatile /* synthetic */ Object lastScheduledTask$volatile;
    private volatile /* synthetic */ int producerIndex$volatile;

    private final h b(h hVar) {
        if (e() == 127) {
            return hVar;
        }
        if (hVar.f12149b.b() == 1) {
            f12163e.incrementAndGet(this);
        }
        int i10 = f12161c.get(this) & ErrorCode.CODE_SERVICE_DIED;
        while (this.f12164a.get(i10) != null) {
            Thread.yield();
        }
        this.f12164a.lazySet(i10, hVar);
        f12161c.incrementAndGet(this);
        return null;
    }

    private final void c(h hVar) {
        if (hVar == null || hVar.f12149b.b() != 1) {
            return;
        }
        f12163e.decrementAndGet(this);
    }

    private final int e() {
        return f12161c.get(this) - f12162d.get(this);
    }

    private final h m() {
        h hVar;
        while (true) {
            int i10 = f12162d.get(this);
            if (i10 - f12161c.get(this) == 0) {
                return null;
            }
            int i11 = i10 & ErrorCode.CODE_SERVICE_DIED;
            if (f12162d.compareAndSet(this, i10, i10 + 1) && (hVar = (h) this.f12164a.getAndSet(i11, null)) != null) {
                c(hVar);
                return hVar;
            }
        }
    }

    private final boolean n(d dVar) {
        h hVarM = m();
        if (hVarM == null) {
            return false;
        }
        dVar.a(hVarM);
        return true;
    }

    private final h o(boolean z10) {
        h hVar;
        do {
            hVar = (h) f12160b.get(this);
            if (hVar != null) {
                if ((hVar.f12149b.b() == 1) == z10) {
                }
            }
            int i10 = f12162d.get(this);
            int i11 = f12161c.get(this);
            while (i10 != i11) {
                if (z10 && f12163e.get(this) == 0) {
                    return null;
                }
                i11--;
                h hVarQ = q(i11, z10);
                if (hVarQ != null) {
                    return hVarQ;
                }
            }
            return null;
        } while (!androidx.concurrent.futures.b.a(f12160b, this, hVar, null));
        return hVar;
    }

    private final h p(int i10) {
        int i11 = f12162d.get(this);
        int i12 = f12161c.get(this);
        boolean z10 = i10 == 1;
        while (i11 != i12) {
            if (z10 && f12163e.get(this) == 0) {
                return null;
            }
            int i13 = i11 + 1;
            h hVarQ = q(i11, z10);
            if (hVarQ != null) {
                return hVarQ;
            }
            i11 = i13;
        }
        return null;
    }

    private final h q(int i10, boolean z10) {
        int i11 = i10 & ErrorCode.CODE_SERVICE_DIED;
        h hVar = (h) this.f12164a.get(i11);
        if (hVar != null) {
            if ((hVar.f12149b.b() == 1) == z10 && kotlinx.coroutines.channels.h.a(this.f12164a, i11, hVar, null)) {
                if (z10) {
                    f12163e.decrementAndGet(this);
                }
                return hVar;
            }
        }
        return null;
    }

    private final long s(int i10, c0 c0Var) {
        h hVar;
        do {
            hVar = (h) f12160b.get(this);
            if (hVar == null) {
                return -2L;
            }
            if (((hVar.f12149b.b() != 1 ? 2 : 1) & i10) == 0) {
                return -2L;
            }
            long jA = l.f12157f.a() - hVar.f12148a;
            long j10 = l.f12153b;
            if (jA < j10) {
                return j10 - jA;
            }
        } while (!androidx.concurrent.futures.b.a(f12160b, this, hVar, null));
        c0Var.element = hVar;
        return -1L;
    }

    public final h a(h hVar, boolean z10) {
        if (z10) {
            return b(hVar);
        }
        h hVar2 = (h) f12160b.getAndSet(this, hVar);
        if (hVar2 == null) {
            return null;
        }
        return b(hVar2);
    }

    public final int i() {
        Object obj = f12160b.get(this);
        int iE = e();
        return obj != null ? iE + 1 : iE;
    }

    public final void j(d dVar) {
        h hVar = (h) f12160b.getAndSet(this, null);
        if (hVar != null) {
            dVar.a(hVar);
        }
        while (n(dVar)) {
        }
    }

    public final h k() {
        h hVar = (h) f12160b.getAndSet(this, null);
        return hVar == null ? m() : hVar;
    }

    public final h l() {
        return o(true);
    }

    public final long r(int i10, c0 c0Var) {
        h hVarM = i10 == 3 ? m() : p(i10);
        if (hVarM == null) {
            return s(i10, c0Var);
        }
        c0Var.element = hVarM;
        return -1L;
    }
}
