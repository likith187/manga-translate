package o4;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
class v implements u4.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Set f14436b = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile Set f14435a = Collections.newSetFromMap(new ConcurrentHashMap());

    v(Collection collection) {
        this.f14435a.addAll(collection);
    }

    static v b(Collection collection) {
        return new v((Set) collection);
    }

    private synchronized void d() {
        try {
            Iterator it = this.f14435a.iterator();
            while (it.hasNext()) {
                this.f14436b.add(((u4.b) it.next()).get());
            }
            this.f14435a = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized void a(u4.b bVar) {
        try {
            if (this.f14436b == null) {
                this.f14435a.add(bVar);
            } else {
                this.f14436b.add(bVar.get());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // u4.b
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Set get() {
        if (this.f14436b == null) {
            synchronized (this) {
                try {
                    if (this.f14436b == null) {
                        this.f14436b = Collections.newSetFromMap(new ConcurrentHashMap());
                        d();
                    }
                } finally {
                }
            }
        }
        return Collections.unmodifiableSet(this.f14436b);
    }
}
