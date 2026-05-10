package androidx.room;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.os.CancellationSignal;
import android.os.Looper;
import android.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import s0.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected volatile s0.b f3548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Executor f3549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Executor f3550c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private s0.c f3551d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f3553f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f3554g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected List f3555h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ReentrantReadWriteLock f3556i = new ReentrantReadWriteLock();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ThreadLocal f3557j = new ThreadLocal();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Map f3558k = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e f3552e = e();

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Class f3559a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f3560b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Context f3561c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ArrayList f3562d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Executor f3563e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Executor f3564f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private c.InterfaceC0215c f3565g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f3566h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f3568j;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f3570l;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private Set f3572n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private Set f3573o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private String f3574p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private File f3575q;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private b f3567i = b.AUTOMATIC;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f3569k = true;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final c f3571m = new c();

        a(Context context, Class cls, String str) {
            this.f3561c = context;
            this.f3559a = cls;
            this.f3560b = str;
        }

        public a a(o0.a... aVarArr) {
            if (this.f3573o == null) {
                this.f3573o = new HashSet();
            }
            for (o0.a aVar : aVarArr) {
                this.f3573o.add(Integer.valueOf(aVar.f14297a));
                this.f3573o.add(Integer.valueOf(aVar.f14298b));
            }
            this.f3571m.b(aVarArr);
            return this;
        }

        public a b() {
            this.f3566h = true;
            return this;
        }

        public h c() {
            Executor executor;
            if (this.f3561c == null) {
                throw new IllegalArgumentException("Cannot provide null context for the database.");
            }
            if (this.f3559a == null) {
                throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
            }
            Executor executor2 = this.f3563e;
            if (executor2 == null && this.f3564f == null) {
                Executor executorF = h.c.f();
                this.f3564f = executorF;
                this.f3563e = executorF;
            } else if (executor2 != null && this.f3564f == null) {
                this.f3564f = executor2;
            } else if (executor2 == null && (executor = this.f3564f) != null) {
                this.f3563e = executor;
            }
            Set<Integer> set = this.f3573o;
            if (set != null && this.f3572n != null) {
                for (Integer num : set) {
                    if (this.f3572n.contains(num)) {
                        throw new IllegalArgumentException("Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: " + num);
                    }
                }
            }
            if (this.f3565g == null) {
                this.f3565g = new t0.c();
            }
            String str = this.f3574p;
            if (str != null || this.f3575q != null) {
                if (this.f3560b == null) {
                    throw new IllegalArgumentException("Cannot create from asset or file for an in-memory database.");
                }
                if (str != null && this.f3575q != null) {
                    throw new IllegalArgumentException("Both createFromAsset() and createFromFile() was called on this Builder but the database can only be created using one of the two configurations.");
                }
                this.f3565g = new m(str, this.f3575q, this.f3565g);
            }
            Context context = this.f3561c;
            androidx.room.a aVar = new androidx.room.a(context, this.f3560b, this.f3565g, this.f3571m, this.f3562d, this.f3566h, this.f3567i.resolve(context), this.f3563e, this.f3564f, this.f3568j, this.f3569k, this.f3570l, this.f3572n, this.f3574p, this.f3575q);
            h hVar = (h) g.b(this.f3559a, "_Impl");
            hVar.l(aVar);
            return hVar;
        }
    }

    public enum b {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        private static boolean isLowRamDevice(ActivityManager activityManager) {
            return activityManager.isLowRamDevice();
        }

        @SuppressLint({"NewApi"})
        b resolve(Context context) {
            if (this != AUTOMATIC) {
                return this;
            }
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            return (activityManager == null || isLowRamDevice(activityManager)) ? TRUNCATE : WRITE_AHEAD_LOGGING;
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private HashMap f3576a = new HashMap();

        private void a(o0.a aVar) {
            int i10 = aVar.f14297a;
            int i11 = aVar.f14298b;
            TreeMap treeMap = (TreeMap) this.f3576a.get(Integer.valueOf(i10));
            if (treeMap == null) {
                treeMap = new TreeMap();
                this.f3576a.put(Integer.valueOf(i10), treeMap);
            }
            o0.a aVar2 = (o0.a) treeMap.get(Integer.valueOf(i11));
            if (aVar2 != null) {
                Log.w("ROOM", "Overriding migration " + aVar2 + " with " + aVar);
            }
            treeMap.put(Integer.valueOf(i11), aVar);
        }

        /* JADX WARN: Code restructure failed: missing block: B:27:0x0052, code lost:
        
            return r6;
         */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0016 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0017  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private java.util.List d(java.util.List r6, boolean r7, int r8, int r9) {
            /*
                r5 = this;
            L0:
                if (r7 == 0) goto L5
                if (r8 >= r9) goto L52
                goto L7
            L5:
                if (r8 <= r9) goto L52
            L7:
                java.util.HashMap r0 = r5.f3576a
                java.lang.Integer r1 = java.lang.Integer.valueOf(r8)
                java.lang.Object r0 = r0.get(r1)
                java.util.TreeMap r0 = (java.util.TreeMap) r0
                r1 = 0
                if (r0 != 0) goto L17
                return r1
            L17:
                if (r7 == 0) goto L1e
                java.util.NavigableSet r2 = r0.descendingKeySet()
                goto L22
            L1e:
                java.util.Set r2 = r0.keySet()
            L22:
                java.util.Iterator r2 = r2.iterator()
            L26:
                boolean r3 = r2.hasNext()
                if (r3 == 0) goto L4a
                java.lang.Object r3 = r2.next()
                java.lang.Integer r3 = (java.lang.Integer) r3
                int r4 = r3.intValue()
                if (r7 == 0) goto L3d
                if (r4 > r9) goto L26
                if (r4 <= r8) goto L26
                goto L41
            L3d:
                if (r4 < r9) goto L26
                if (r4 >= r8) goto L26
            L41:
                java.lang.Object r8 = r0.get(r3)
                r6.add(r8)
                r8 = 1
                goto L4d
            L4a:
                r0 = 0
                r4 = r8
                r8 = r0
            L4d:
                if (r8 != 0) goto L50
                return r1
            L50:
                r8 = r4
                goto L0
            L52:
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.h.c.d(java.util.List, boolean, int, int):java.util.List");
        }

        public void b(o0.a... aVarArr) {
            for (o0.a aVar : aVarArr) {
                a(aVar);
            }
        }

        public List c(int i10, int i11) {
            if (i10 == i11) {
                return Collections.emptyList();
            }
            return d(new ArrayList(), i11 > i10, i10, i11);
        }
    }

    private static boolean n() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public void a() {
        if (!this.f3553f && n()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public void b() {
        if (!k() && this.f3557j.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    public void c() {
        a();
        s0.b bVarC = this.f3551d.c();
        this.f3552e.m(bVarC);
        bVarC.m();
    }

    public s0.f d(String str) {
        a();
        b();
        return this.f3551d.c().J(str);
    }

    protected abstract e e();

    protected abstract s0.c f(androidx.room.a aVar);

    public void g() {
        this.f3551d.c().l();
        if (k()) {
            return;
        }
        this.f3552e.f();
    }

    Lock h() {
        return this.f3556i.readLock();
    }

    public s0.c i() {
        return this.f3551d;
    }

    public Executor j() {
        return this.f3549b;
    }

    public boolean k() {
        return this.f3551d.c().W();
    }

    public void l(androidx.room.a aVar) {
        s0.c cVarF = f(aVar);
        this.f3551d = cVarF;
        if (cVarF instanceof l) {
            ((l) cVarF).f(aVar);
        }
        boolean z10 = aVar.f3492g == b.WRITE_AHEAD_LOGGING;
        this.f3551d.a(z10);
        this.f3555h = aVar.f3490e;
        this.f3549b = aVar.f3493h;
        this.f3550c = new o(aVar.f3494i);
        this.f3553f = aVar.f3491f;
        this.f3554g = z10;
        if (aVar.f3495j) {
            this.f3552e.i(aVar.f3487b, aVar.f3488c);
        }
    }

    protected void m(s0.b bVar) {
        this.f3552e.d(bVar);
    }

    public boolean o() {
        s0.b bVar = this.f3548a;
        return bVar != null && bVar.isOpen();
    }

    public Cursor p(s0.e eVar) {
        return q(eVar, null);
    }

    public Cursor q(s0.e eVar, CancellationSignal cancellationSignal) {
        a();
        b();
        return cancellationSignal != null ? this.f3551d.c().t0(eVar, cancellationSignal) : this.f3551d.c().p0(eVar);
    }

    public void r() {
        this.f3551d.c().g0();
    }
}
