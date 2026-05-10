package androidx.collection;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.r;
import n8.h0;

/* JADX INFO: loaded from: classes.dex */
public class h {
    private int createCount;
    private int evictionCount;
    private int hitCount;
    private final k.b lock;
    private final k.c map;
    private int maxSize;
    private int missCount;
    private int putCount;
    private int size;

    public h(int i10) {
        this.maxSize = i10;
        if (i10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.map = new k.c(0, 0.75f);
        this.lock = new k.b();
    }

    private final int a(Object obj, Object obj2) {
        int iSizeOf = sizeOf(obj, obj2);
        if (iSizeOf >= 0) {
            return iSizeOf;
        }
        throw new IllegalStateException(("Negative size: " + obj + '=' + obj2).toString());
    }

    protected Object create(Object key) {
        r.e(key, "key");
        return null;
    }

    public final int createCount() {
        int i10;
        synchronized (this.lock) {
            i10 = this.createCount;
        }
        return i10;
    }

    protected void entryRemoved(boolean z10, Object key, Object oldValue, Object obj) {
        r.e(key, "key");
        r.e(oldValue, "oldValue");
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final int evictionCount() {
        int i10;
        synchronized (this.lock) {
            i10 = this.evictionCount;
        }
        return i10;
    }

    public final Object get(Object key) {
        Object objD;
        r.e(key, "key");
        synchronized (this.lock) {
            Object objA = this.map.a(key);
            if (objA != null) {
                this.hitCount++;
                return objA;
            }
            this.missCount++;
            Object objCreate = create(key);
            if (objCreate == null) {
                return null;
            }
            synchronized (this.lock) {
                try {
                    this.createCount++;
                    objD = this.map.d(key, objCreate);
                    if (objD != null) {
                        this.map.d(key, objD);
                    } else {
                        this.size += a(key, objCreate);
                        h0 h0Var = h0.INSTANCE;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (objD != null) {
                entryRemoved(false, key, objCreate, objD);
                return objD;
            }
            trimToSize(this.maxSize);
            return objCreate;
        }
    }

    public final int hitCount() {
        int i10;
        synchronized (this.lock) {
            i10 = this.hitCount;
        }
        return i10;
    }

    public final int maxSize() {
        int i10;
        synchronized (this.lock) {
            i10 = this.maxSize;
        }
        return i10;
    }

    public final int missCount() {
        int i10;
        synchronized (this.lock) {
            i10 = this.missCount;
        }
        return i10;
    }

    public final Object put(Object key, Object value) {
        Object objD;
        r.e(key, "key");
        r.e(value, "value");
        synchronized (this.lock) {
            try {
                this.putCount++;
                this.size += a(key, value);
                objD = this.map.d(key, value);
                if (objD != null) {
                    this.size -= a(key, objD);
                }
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (objD != null) {
            entryRemoved(false, key, objD, value);
        }
        trimToSize(this.maxSize);
        return objD;
    }

    public final int putCount() {
        int i10;
        synchronized (this.lock) {
            i10 = this.putCount;
        }
        return i10;
    }

    public final Object remove(Object key) {
        Object objE;
        r.e(key, "key");
        synchronized (this.lock) {
            try {
                objE = this.map.e(key);
                if (objE != null) {
                    this.size -= a(key, objE);
                }
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (objE != null) {
            entryRemoved(false, key, objE, null);
        }
        return objE;
    }

    public void resize(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        synchronized (this.lock) {
            this.maxSize = i10;
            h0 h0Var = h0.INSTANCE;
        }
        trimToSize(i10);
    }

    public final int size() {
        int i10;
        synchronized (this.lock) {
            i10 = this.size;
        }
        return i10;
    }

    protected int sizeOf(Object key, Object value) {
        r.e(key, "key");
        r.e(value, "value");
        return 1;
    }

    public final Map<Object, Object> snapshot() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        synchronized (this.lock) {
            try {
                for (Map.Entry entry : this.map.b()) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return linkedHashMap;
    }

    public String toString() {
        String str;
        synchronized (this.lock) {
            try {
                int i10 = this.hitCount;
                int i11 = this.missCount + i10;
                str = "LruCache[maxSize=" + this.maxSize + ",hits=" + this.hitCount + ",misses=" + this.missCount + ",hitRate=" + (i11 != 0 ? (i10 * 100) / i11 : 0) + "%]";
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0056, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x005e, code lost:
    
        throw new java.lang.IllegalStateException("LruCache.sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void trimToSize(int r6) {
        /*
            r5 = this;
        L0:
            k.b r0 = r5.lock
            monitor-enter(r0)
            int r1 = r5.size     // Catch: java.lang.Throwable -> L14
            if (r1 < 0) goto L57
            k.c r1 = r5.map     // Catch: java.lang.Throwable -> L14
            boolean r1 = r1.c()     // Catch: java.lang.Throwable -> L14
            if (r1 == 0) goto L16
            int r1 = r5.size     // Catch: java.lang.Throwable -> L14
            if (r1 != 0) goto L57
            goto L16
        L14:
            r5 = move-exception
            goto L5f
        L16:
            int r1 = r5.size     // Catch: java.lang.Throwable -> L14
            if (r1 <= r6) goto L55
            k.c r1 = r5.map     // Catch: java.lang.Throwable -> L14
            boolean r1 = r1.c()     // Catch: java.lang.Throwable -> L14
            if (r1 == 0) goto L23
            goto L55
        L23:
            k.c r1 = r5.map     // Catch: java.lang.Throwable -> L14
            java.util.Set r1 = r1.b()     // Catch: java.lang.Throwable -> L14
            java.lang.Object r1 = kotlin.collections.o.R(r1)     // Catch: java.lang.Throwable -> L14
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1     // Catch: java.lang.Throwable -> L14
            if (r1 != 0) goto L33
            monitor-exit(r0)
            return
        L33:
            java.lang.Object r2 = r1.getKey()     // Catch: java.lang.Throwable -> L14
            java.lang.Object r1 = r1.getValue()     // Catch: java.lang.Throwable -> L14
            k.c r3 = r5.map     // Catch: java.lang.Throwable -> L14
            r3.e(r2)     // Catch: java.lang.Throwable -> L14
            int r3 = r5.size     // Catch: java.lang.Throwable -> L14
            int r4 = r5.a(r2, r1)     // Catch: java.lang.Throwable -> L14
            int r3 = r3 - r4
            r5.size = r3     // Catch: java.lang.Throwable -> L14
            int r3 = r5.evictionCount     // Catch: java.lang.Throwable -> L14
            r4 = 1
            int r3 = r3 + r4
            r5.evictionCount = r3     // Catch: java.lang.Throwable -> L14
            monitor-exit(r0)
            r0 = 0
            r5.entryRemoved(r4, r2, r1, r0)
            goto L0
        L55:
            monitor-exit(r0)
            return
        L57:
            java.lang.String r5 = "LruCache.sizeOf() is reporting inconsistent results!"
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L14
            r6.<init>(r5)     // Catch: java.lang.Throwable -> L14
            throw r6     // Catch: java.lang.Throwable -> L14
        L5f:
            monitor-exit(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.h.trimToSize(int):void");
    }
}
