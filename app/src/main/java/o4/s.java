package o4;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
class s implements t4.c, t4.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f14429a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Queue f14430b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f14431c;

    s(Executor executor) {
        this.f14431c = executor;
    }

    private synchronized Set b(t4.a aVar) {
        throw null;
    }

    static /* synthetic */ void c(Map.Entry entry, t4.a aVar) {
        androidx.appcompat.app.t.a(entry.getKey());
        throw null;
    }

    void a() {
        Queue queue;
        synchronized (this) {
            try {
                queue = this.f14430b;
                if (queue != null) {
                    this.f14430b = null;
                } else {
                    queue = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (queue != null) {
            Iterator it = queue.iterator();
            while (it.hasNext()) {
                androidx.appcompat.app.t.a(it.next());
                d(null);
            }
        }
    }

    public void d(t4.a aVar) {
        a0.b(aVar);
        synchronized (this) {
            try {
                Queue queue = this.f14430b;
                if (queue != null) {
                    queue.add(aVar);
                    return;
                }
                for (Map.Entry entry : b(aVar)) {
                    ((Executor) entry.getValue()).execute(r.a(entry, aVar));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
