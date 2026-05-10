package l9;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import kotlin.jvm.internal.r;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a */
    private final e f13657a;

    /* JADX INFO: renamed from: b */
    private final String f13658b;

    /* JADX INFO: renamed from: c */
    private boolean f13659c;

    /* JADX INFO: renamed from: d */
    private a f13660d;

    /* JADX INFO: renamed from: e */
    private final List f13661e;

    /* JADX INFO: renamed from: f */
    private boolean f13662f;

    public d(e taskRunner, String name) {
        r.e(taskRunner, "taskRunner");
        r.e(name, "name");
        this.f13657a = taskRunner;
        this.f13658b = name;
        this.f13661e = new ArrayList();
    }

    public static /* synthetic */ void j(d dVar, a aVar, long j10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = 0;
        }
        dVar.i(aVar, j10);
    }

    public final void a() {
        if (i9.d.f12674h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        synchronized (this.f13657a) {
            try {
                if (b()) {
                    this.f13657a.h(this);
                }
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean b() {
        a aVar = this.f13660d;
        if (aVar != null) {
            r.b(aVar);
            if (aVar.a()) {
                this.f13662f = true;
            }
        }
        boolean z10 = false;
        for (int size = this.f13661e.size() - 1; -1 < size; size--) {
            if (((a) this.f13661e.get(size)).a()) {
                a aVar2 = (a) this.f13661e.get(size);
                if (e.f13663h.a().isLoggable(Level.FINE)) {
                    b.c(aVar2, this, "canceled");
                }
                this.f13661e.remove(size);
                z10 = true;
            }
        }
        return z10;
    }

    public final a c() {
        return this.f13660d;
    }

    public final boolean d() {
        return this.f13662f;
    }

    public final List e() {
        return this.f13661e;
    }

    public final String f() {
        return this.f13658b;
    }

    public final boolean g() {
        return this.f13659c;
    }

    public final e h() {
        return this.f13657a;
    }

    public final void i(a task, long j10) {
        r.e(task, "task");
        synchronized (this.f13657a) {
            if (!this.f13659c) {
                if (k(task, j10, false)) {
                    this.f13657a.h(this);
                }
                h0 h0Var = h0.INSTANCE;
            } else if (task.a()) {
                if (e.f13663h.a().isLoggable(Level.FINE)) {
                    b.c(task, this, "schedule canceled (queue is shutdown)");
                }
            } else {
                if (e.f13663h.a().isLoggable(Level.FINE)) {
                    b.c(task, this, "schedule failed (queue is shutdown)");
                }
                throw new RejectedExecutionException();
            }
        }
    }

    public final boolean k(a task, long j10, boolean z10) {
        String str;
        r.e(task, "task");
        task.e(this);
        long jA = this.f13657a.g().a();
        long j11 = jA + j10;
        int iIndexOf = this.f13661e.indexOf(task);
        if (iIndexOf != -1) {
            if (task.c() <= j11) {
                if (e.f13663h.a().isLoggable(Level.FINE)) {
                    b.c(task, this, "already scheduled");
                }
                return false;
            }
            this.f13661e.remove(iIndexOf);
        }
        task.g(j11);
        if (e.f13663h.a().isLoggable(Level.FINE)) {
            if (z10) {
                str = "run again after " + b.b(j11 - jA);
            } else {
                str = "scheduled after " + b.b(j11 - jA);
            }
            b.c(task, this, str);
        }
        Iterator it = this.f13661e.iterator();
        int size = 0;
        while (true) {
            if (!it.hasNext()) {
                size = -1;
                break;
            }
            if (((a) it.next()).c() - jA > j10) {
                break;
            }
            size++;
        }
        if (size == -1) {
            size = this.f13661e.size();
        }
        this.f13661e.add(size, task);
        return size == 0;
    }

    public final void l(a aVar) {
        this.f13660d = aVar;
    }

    public final void m(boolean z10) {
        this.f13662f = z10;
    }

    public final void n() {
        if (i9.d.f12674h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        synchronized (this.f13657a) {
            try {
                this.f13659c = true;
                if (b()) {
                    this.f13657a.h(this);
                }
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String toString() {
        return this.f13658b;
    }
}
