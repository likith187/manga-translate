package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: loaded from: classes2.dex */
public final class n extends kotlinx.coroutines.y implements kotlinx.coroutines.j0 {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f13282k = AtomicIntegerFieldUpdater.newUpdater(n.class, "runningWorkers$volatile");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final kotlinx.coroutines.y f13283c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f13284f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final /* synthetic */ kotlinx.coroutines.j0 f13285h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final s f13286i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Object f13287j;
    private volatile /* synthetic */ int runningWorkers$volatile;

    private final class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Runnable f13288a;

        public a(Runnable runnable) {
            this.f13288a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10 = 0;
            while (true) {
                try {
                    this.f13288a.run();
                } catch (Throwable th) {
                    kotlinx.coroutines.a0.a(kotlin.coroutines.h.INSTANCE, th);
                }
                Runnable runnableI0 = n.this.I0();
                if (runnableI0 == null) {
                    return;
                }
                this.f13288a = runnableI0;
                i10++;
                if (i10 >= 16 && n.this.f13283c.D0(n.this)) {
                    n.this.f13283c.x0(n.this, this);
                    return;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public n(kotlinx.coroutines.y yVar, int i10) {
        this.f13283c = yVar;
        this.f13284f = i10;
        kotlinx.coroutines.j0 j0Var = yVar instanceof kotlinx.coroutines.j0 ? (kotlinx.coroutines.j0) yVar : null;
        this.f13285h = j0Var == null ? kotlinx.coroutines.i0.a() : j0Var;
        this.f13286i = new s(false);
        this.f13287j = new Object();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Runnable I0() {
        while (true) {
            Runnable runnable = (Runnable) this.f13286i.e();
            if (runnable != null) {
                return runnable;
            }
            synchronized (this.f13287j) {
                f13282k.decrementAndGet(this);
                if (this.f13286i.c() == 0) {
                    return null;
                }
                f13282k.incrementAndGet(this);
            }
        }
    }

    private final boolean J0() {
        synchronized (this.f13287j) {
            if (f13282k.get(this) >= this.f13284f) {
                return false;
            }
            f13282k.incrementAndGet(this);
            return true;
        }
    }

    @Override // kotlinx.coroutines.j0
    public void x(long j10, kotlinx.coroutines.i iVar) {
        this.f13285h.x(j10, iVar);
    }

    @Override // kotlinx.coroutines.y
    public void x0(kotlin.coroutines.g gVar, Runnable runnable) {
        Runnable runnableI0;
        this.f13286i.a(runnable);
        if (f13282k.get(this) >= this.f13284f || !J0() || (runnableI0 = I0()) == null) {
            return;
        }
        this.f13283c.x0(this, new a(runnableI0));
    }
}
