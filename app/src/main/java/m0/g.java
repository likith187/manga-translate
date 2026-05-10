package m0;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.r;
import n8.h0;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a */
    private final f f13808a = new f();

    /* JADX INFO: renamed from: b */
    private final Map f13809b = new LinkedHashMap();

    /* JADX INFO: renamed from: c */
    private final Set f13810c = new LinkedHashSet();

    /* JADX INFO: renamed from: d */
    private volatile boolean f13811d;

    public final void f(AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (Exception e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    public final void d(String key, AutoCloseable closeable) {
        AutoCloseable autoCloseable;
        r.e(key, "key");
        r.e(closeable, "closeable");
        if (this.f13811d) {
            f(closeable);
            return;
        }
        synchronized (this.f13808a) {
            autoCloseable = (AutoCloseable) this.f13809b.put(key, closeable);
        }
        f(autoCloseable);
    }

    public final void e() {
        if (this.f13811d) {
            return;
        }
        this.f13811d = true;
        synchronized (this.f13808a) {
            try {
                Iterator it = this.f13809b.values().iterator();
                while (it.hasNext()) {
                    f((AutoCloseable) it.next());
                }
                Iterator it2 = this.f13810c.iterator();
                while (it2.hasNext()) {
                    f((AutoCloseable) it2.next());
                }
                this.f13810c.clear();
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final AutoCloseable g(String key) {
        AutoCloseable autoCloseable;
        r.e(key, "key");
        synchronized (this.f13808a) {
            autoCloseable = (AutoCloseable) this.f13809b.get(key);
        }
        return autoCloseable;
    }
}
