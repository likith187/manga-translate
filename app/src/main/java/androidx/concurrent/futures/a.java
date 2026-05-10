package androidx.concurrent.futures;

import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements Future {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final boolean f1068f = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Logger f1069h = Logger.getLogger(a.class.getName());

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final b f1070i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Object f1071j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    volatile Object f1072a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    volatile e f1073b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    volatile h f1074c;

    private static abstract class b {
        private b() {
        }

        abstract boolean a(a aVar, e eVar, e eVar2);

        abstract boolean b(a aVar, Object obj, Object obj2);

        abstract boolean c(a aVar, h hVar, h hVar2);

        abstract void d(h hVar, h hVar2);

        abstract void e(h hVar, Thread thread);
    }

    private static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final c f1075c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final c f1076d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final boolean f1077a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Throwable f1078b;

        static {
            if (a.f1068f) {
                f1076d = null;
                f1075c = null;
            } else {
                f1076d = new c(false, null);
                f1075c = new c(true, null);
            }
        }

        c(boolean z10, Throwable th) {
            this.f1077a = z10;
            this.f1078b = th;
        }
    }

    private static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Throwable f1079a;
    }

    private static final class e {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final e f1080d = new e(null, null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Runnable f1081a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Executor f1082b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        e f1083c;

        e(Runnable runnable, Executor executor) {
            this.f1081a = runnable;
            this.f1082b = executor;
        }
    }

    private static final class f extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final AtomicReferenceFieldUpdater f1084a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final AtomicReferenceFieldUpdater f1085b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final AtomicReferenceFieldUpdater f1086c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final AtomicReferenceFieldUpdater f1087d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final AtomicReferenceFieldUpdater f1088e;

        f(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
            super();
            this.f1084a = atomicReferenceFieldUpdater;
            this.f1085b = atomicReferenceFieldUpdater2;
            this.f1086c = atomicReferenceFieldUpdater3;
            this.f1087d = atomicReferenceFieldUpdater4;
            this.f1088e = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.concurrent.futures.a.b
        boolean a(a aVar, e eVar, e eVar2) {
            return androidx.concurrent.futures.b.a(this.f1087d, aVar, eVar, eVar2);
        }

        @Override // androidx.concurrent.futures.a.b
        boolean b(a aVar, Object obj, Object obj2) {
            return androidx.concurrent.futures.b.a(this.f1088e, aVar, obj, obj2);
        }

        @Override // androidx.concurrent.futures.a.b
        boolean c(a aVar, h hVar, h hVar2) {
            return androidx.concurrent.futures.b.a(this.f1086c, aVar, hVar, hVar2);
        }

        @Override // androidx.concurrent.futures.a.b
        void d(h hVar, h hVar2) {
            this.f1085b.lazySet(hVar, hVar2);
        }

        @Override // androidx.concurrent.futures.a.b
        void e(h hVar, Thread thread) {
            this.f1084a.lazySet(hVar, thread);
        }
    }

    private static final class g extends b {
        g() {
            super();
        }

        @Override // androidx.concurrent.futures.a.b
        boolean a(a aVar, e eVar, e eVar2) {
            synchronized (aVar) {
                try {
                    if (aVar.f1073b != eVar) {
                        return false;
                    }
                    aVar.f1073b = eVar2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.concurrent.futures.a.b
        boolean b(a aVar, Object obj, Object obj2) {
            synchronized (aVar) {
                try {
                    if (aVar.f1072a != obj) {
                        return false;
                    }
                    aVar.f1072a = obj2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.concurrent.futures.a.b
        boolean c(a aVar, h hVar, h hVar2) {
            synchronized (aVar) {
                try {
                    if (aVar.f1074c != hVar) {
                        return false;
                    }
                    aVar.f1074c = hVar2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.concurrent.futures.a.b
        void d(h hVar, h hVar2) {
            hVar.f1091b = hVar2;
        }

        @Override // androidx.concurrent.futures.a.b
        void e(h hVar, Thread thread) {
            hVar.f1090a = thread;
        }
    }

    private static final class h {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final h f1089c = new h(false);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        volatile Thread f1090a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        volatile h f1091b;

        h(boolean z10) {
        }

        void a(h hVar) {
            a.f1070i.d(this, hVar);
        }

        void b() {
            Thread thread = this.f1090a;
            if (thread != null) {
                this.f1090a = null;
                LockSupport.unpark(thread);
            }
        }

        h() {
            a.f1070i.e(this, Thread.currentThread());
        }
    }

    static {
        b gVar;
        try {
            gVar = new f(AtomicReferenceFieldUpdater.newUpdater(h.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(h.class, h.class, "b"), AtomicReferenceFieldUpdater.newUpdater(a.class, h.class, "c"), AtomicReferenceFieldUpdater.newUpdater(a.class, e.class, "b"), AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "a"));
            th = null;
        } catch (Throwable th) {
            th = th;
            gVar = new g();
        }
        f1070i = gVar;
        if (th != null) {
            f1069h.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f1071j = new Object();
    }

    protected a() {
    }

    private void a(StringBuilder sb) {
        try {
            Object objH = h(this);
            sb.append("SUCCESS, result=[");
            sb.append(n(objH));
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e10) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e10.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e11) {
            sb.append("FAILURE, cause=[");
            sb.append(e11.getCause());
            sb.append("]");
        }
    }

    private static CancellationException c(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    private e d(e eVar) {
        e eVar2;
        do {
            eVar2 = this.f1073b;
        } while (!f1070i.a(this, eVar2, e.f1080d));
        while (true) {
            e eVar3 = eVar;
            eVar = eVar2;
            if (eVar == null) {
                return eVar3;
            }
            eVar2 = eVar.f1083c;
            eVar.f1083c = eVar3;
        }
    }

    static void e(a aVar) {
        aVar.k();
        aVar.b();
        e eVarD = aVar.d(null);
        while (eVarD != null) {
            e eVar = eVarD.f1083c;
            f(eVarD.f1081a, eVarD.f1082b);
            eVarD = eVar;
        }
    }

    private static void f(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e10) {
            f1069h.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e10);
        }
    }

    private Object g(Object obj) throws ExecutionException {
        if (obj instanceof c) {
            throw c("Task was cancelled.", ((c) obj).f1078b);
        }
        if (obj instanceof d) {
            throw new ExecutionException(((d) obj).f1079a);
        }
        if (obj == f1071j) {
            return null;
        }
        return obj;
    }

    static Object h(Future future) {
        Object obj;
        boolean z10 = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z10 = true;
            } catch (Throwable th) {
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    private void k() {
        h hVar;
        do {
            hVar = this.f1074c;
        } while (!f1070i.c(this, hVar, h.f1089c));
        while (hVar != null) {
            hVar.b();
            hVar = hVar.f1091b;
        }
    }

    private void l(h hVar) {
        hVar.f1090a = null;
        while (true) {
            h hVar2 = this.f1074c;
            if (hVar2 == h.f1089c) {
                return;
            }
            h hVar3 = null;
            while (hVar2 != null) {
                h hVar4 = hVar2.f1091b;
                if (hVar2.f1090a != null) {
                    hVar3 = hVar2;
                } else if (hVar3 != null) {
                    hVar3.f1091b = hVar4;
                    if (hVar3.f1090a == null) {
                        break;
                    }
                } else if (!f1070i.c(this, hVar2, hVar4)) {
                    break;
                }
                hVar2 = hVar4;
            }
            return;
        }
    }

    private String n(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    protected void b() {
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z10) {
        Object obj = this.f1072a;
        if (obj == null) {
            if (f1070i.b(this, obj, f1068f ? new c(z10, new CancellationException("Future.cancel() was called.")) : z10 ? c.f1075c : c.f1076d)) {
                if (z10) {
                    i();
                }
                e(this);
                return true;
            }
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j10, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j10);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f1072a;
        if (obj != null) {
            return g(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            h hVar = this.f1074c;
            if (hVar != h.f1089c) {
                h hVar2 = new h();
                do {
                    hVar2.a(hVar);
                    if (f1070i.c(this, hVar, hVar2)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                l(hVar2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f1072a;
                            if (obj2 != null) {
                                return g(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        l(hVar2);
                    } else {
                        hVar = this.f1074c;
                    }
                } while (hVar != h.f1089c);
            }
            return g(this.f1072a);
        }
        while (nanos > 0) {
            Object obj3 = this.f1072a;
            if (obj3 != null) {
                return g(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String string2 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string2.toLowerCase(locale);
        String str = "Waited " + j10 + " " + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < 0) {
            String str2 = str + " (plus ";
            long j11 = -nanos;
            long jConvert = timeUnit.convert(j11, TimeUnit.NANOSECONDS);
            long nanos2 = j11 - timeUnit.toNanos(jConvert);
            boolean z10 = jConvert == 0 || nanos2 > 1000;
            if (jConvert > 0) {
                String str3 = str2 + jConvert + " " + lowerCase;
                if (z10) {
                    str3 = str3 + ",";
                }
                str2 = str3 + " ";
            }
            if (z10) {
                str2 = str2 + nanos2 + " nanoseconds ";
            }
            str = str2 + "delay)";
        }
        if (isDone()) {
            throw new TimeoutException(str + " but future completed as timeout expired");
        }
        throw new TimeoutException(str + " for " + string);
    }

    protected void i() {
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f1072a instanceof c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f1072a != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected String j() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    protected boolean m(Object obj) {
        if (obj == null) {
            obj = f1071j;
        }
        if (!f1070i.b(this, null, obj)) {
            return false;
        }
        e(this);
        return true;
    }

    public String toString() {
        String strJ;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            try {
                strJ = j();
            } catch (RuntimeException e10) {
                strJ = "Exception thrown from implementation: " + e10.getClass();
            }
            if (strJ != null && !strJ.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(strJ);
                sb.append("]");
            } else if (isDone()) {
                a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f1072a;
            if (obj2 != null) {
                return g(obj2);
            }
            h hVar = this.f1074c;
            if (hVar != h.f1089c) {
                h hVar2 = new h();
                do {
                    hVar2.a(hVar);
                    if (f1070i.c(this, hVar, hVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f1072a;
                            } else {
                                l(hVar2);
                                throw new InterruptedException();
                            }
                        } while (!(obj != null));
                        return g(obj);
                    }
                    hVar = this.f1074c;
                } while (hVar != h.f1089c);
            }
            return g(this.f1072a);
        }
        throw new InterruptedException();
    }
}
