package x9;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.logging.Level;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: s */
    static volatile c f16414s;

    /* JADX INFO: renamed from: t */
    private static final d f16415t = new d();

    /* JADX INFO: renamed from: u */
    private static final Map f16416u = new HashMap();

    /* JADX INFO: renamed from: a */
    private final Map f16417a;

    /* JADX INFO: renamed from: b */
    private final Map f16418b;

    /* JADX INFO: renamed from: c */
    private final Map f16419c;

    /* JADX INFO: renamed from: d */
    private final ThreadLocal f16420d;

    /* JADX INFO: renamed from: e */
    private final h f16421e;

    /* JADX INFO: renamed from: f */
    private final l f16422f;

    /* JADX INFO: renamed from: g */
    private final x9.b f16423g;

    /* JADX INFO: renamed from: h */
    private final x9.a f16424h;

    /* JADX INFO: renamed from: i */
    private final p f16425i;

    /* JADX INFO: renamed from: j */
    private final ExecutorService f16426j;

    /* JADX INFO: renamed from: k */
    private final boolean f16427k;

    /* JADX INFO: renamed from: l */
    private final boolean f16428l;

    /* JADX INFO: renamed from: m */
    private final boolean f16429m;

    /* JADX INFO: renamed from: n */
    private final boolean f16430n;

    /* JADX INFO: renamed from: o */
    private final boolean f16431o;

    /* JADX INFO: renamed from: p */
    private final boolean f16432p;

    /* JADX INFO: renamed from: q */
    private final int f16433q;

    /* JADX INFO: renamed from: r */
    private final g f16434r;

    class a extends ThreadLocal {
        a() {
        }

        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a */
        public C0240c initialValue() {
            return new C0240c();
        }
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f16436a;

        static {
            int[] iArr = new int[ThreadMode.values().length];
            f16436a = iArr;
            try {
                iArr[ThreadMode.POSTING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16436a[ThreadMode.MAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16436a[ThreadMode.MAIN_ORDERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16436a[ThreadMode.BACKGROUND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16436a[ThreadMode.ASYNC.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: renamed from: x9.c$c */
    static final class C0240c {

        /* JADX INFO: renamed from: a */
        final List f16437a = new ArrayList();

        /* JADX INFO: renamed from: b */
        boolean f16438b;

        /* JADX INFO: renamed from: c */
        boolean f16439c;

        /* JADX INFO: renamed from: d */
        q f16440d;

        /* JADX INFO: renamed from: e */
        Object f16441e;

        /* JADX INFO: renamed from: f */
        boolean f16442f;

        C0240c() {
        }
    }

    public c() {
        this(f16415t);
    }

    static void a(List list, Class[] clsArr) {
        for (Class cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                a(list, cls.getInterfaces());
            }
        }
    }

    private void b(q qVar, Object obj) {
        if (obj != null) {
            n(qVar, obj, i());
        }
    }

    public static c c() {
        c cVar = f16414s;
        if (cVar == null) {
            synchronized (c.class) {
                try {
                    cVar = f16414s;
                    if (cVar == null) {
                        cVar = new c();
                        f16414s = cVar;
                    }
                } finally {
                }
            }
        }
        return cVar;
    }

    private void f(q qVar, Object obj, Throwable th) {
        if (!(obj instanceof n)) {
            if (this.f16427k) {
                throw new e("Invoking subscriber failed", th);
            }
            if (this.f16428l) {
                this.f16434r.b(Level.SEVERE, "Could not dispatch event: " + obj.getClass() + " to subscribing class " + qVar.f16490a.getClass(), th);
            }
            if (this.f16430n) {
                k(new n(this, th, obj, qVar.f16490a));
                return;
            }
            return;
        }
        if (this.f16428l) {
            g gVar = this.f16434r;
            Level level = Level.SEVERE;
            gVar.b(level, "SubscriberExceptionEvent subscriber " + qVar.f16490a.getClass() + " threw an exception", th);
            n nVar = (n) obj;
            this.f16434r.b(level, "Initial event " + nVar.f16470c + " caused exception in " + nVar.f16471d, nVar.f16469b);
        }
    }

    private boolean i() {
        h hVar = this.f16421e;
        return hVar == null || hVar.a();
    }

    private static List j(Class cls) {
        List arrayList;
        Map map = f16416u;
        synchronized (map) {
            try {
                arrayList = (List) map.get(cls);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    for (Class superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                        arrayList.add(superclass);
                        a(arrayList, superclass.getInterfaces());
                    }
                    f16416u.put(cls, arrayList);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    private void l(Object obj, C0240c c0240c) {
        boolean zM;
        Class<?> cls = obj.getClass();
        if (this.f16432p) {
            List listJ = j(cls);
            int size = listJ.size();
            zM = false;
            for (int i10 = 0; i10 < size; i10++) {
                zM |= m(obj, c0240c, (Class) listJ.get(i10));
            }
        } else {
            zM = m(obj, c0240c, cls);
        }
        if (zM) {
            return;
        }
        if (this.f16429m) {
            this.f16434r.a(Level.FINE, "No subscribers registered for event " + cls);
        }
        if (!this.f16431o || cls == i.class || cls == n.class) {
            return;
        }
        k(new i(this, obj));
    }

    private boolean m(Object obj, C0240c c0240c, Class cls) {
        CopyOnWriteArrayList<q> copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = (CopyOnWriteArrayList) this.f16417a.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        for (q qVar : copyOnWriteArrayList) {
            c0240c.f16441e = obj;
            c0240c.f16440d = qVar;
            try {
                n(qVar, obj, c0240c.f16439c);
                if (c0240c.f16442f) {
                    return true;
                }
            } finally {
                c0240c.f16441e = null;
                c0240c.f16440d = null;
                c0240c.f16442f = false;
            }
        }
        return true;
    }

    private void n(q qVar, Object obj, boolean z10) {
        int i10 = b.f16436a[qVar.f16491b.f16473b.ordinal()];
        if (i10 == 1) {
            h(qVar, obj);
            return;
        }
        if (i10 == 2) {
            if (z10) {
                h(qVar, obj);
                return;
            } else {
                this.f16422f.a(qVar, obj);
                return;
            }
        }
        if (i10 == 3) {
            l lVar = this.f16422f;
            if (lVar != null) {
                lVar.a(qVar, obj);
                return;
            } else {
                h(qVar, obj);
                return;
            }
        }
        if (i10 == 4) {
            if (z10) {
                this.f16423g.a(qVar, obj);
                return;
            } else {
                h(qVar, obj);
                return;
            }
        }
        if (i10 == 5) {
            this.f16424h.a(qVar, obj);
            return;
        }
        throw new IllegalStateException("Unknown thread mode: " + qVar.f16491b.f16473b);
    }

    private void p(Object obj, o oVar) {
        Class cls = oVar.f16474c;
        q qVar = new q(obj, oVar);
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) this.f16417a.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList();
            this.f16417a.put(cls, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(qVar)) {
            throw new e("Subscriber " + obj.getClass() + " already registered to event " + cls);
        }
        int size = copyOnWriteArrayList.size();
        for (int i10 = 0; i10 <= size; i10++) {
            if (i10 == size || oVar.f16475d > ((q) copyOnWriteArrayList.get(i10)).f16491b.f16475d) {
                copyOnWriteArrayList.add(i10, qVar);
                break;
            }
        }
        List arrayList = (List) this.f16418b.get(obj);
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.f16418b.put(obj, arrayList);
        }
        arrayList.add(cls);
        if (oVar.f16476e) {
            if (!this.f16432p) {
                b(qVar, this.f16419c.get(cls));
                return;
            }
            for (Map.Entry entry : this.f16419c.entrySet()) {
                if (cls.isAssignableFrom((Class) entry.getKey())) {
                    b(qVar, entry.getValue());
                }
            }
        }
    }

    private void r(Object obj, Class cls) {
        List list = (List) this.f16417a.get(cls);
        if (list != null) {
            int size = list.size();
            int i10 = 0;
            while (i10 < size) {
                q qVar = (q) list.get(i10);
                if (qVar.f16490a == obj) {
                    qVar.f16492c = false;
                    list.remove(i10);
                    i10--;
                    size--;
                }
                i10++;
            }
        }
    }

    ExecutorService d() {
        return this.f16426j;
    }

    public g e() {
        return this.f16434r;
    }

    void g(j jVar) {
        Object obj = jVar.f16463a;
        q qVar = jVar.f16464b;
        j.b(jVar);
        if (qVar.f16492c) {
            h(qVar, obj);
        }
    }

    void h(q qVar, Object obj) {
        try {
            qVar.f16491b.f16472a.invoke(qVar.f16490a, obj);
        } catch (IllegalAccessException e10) {
            throw new IllegalStateException("Unexpected exception", e10);
        } catch (InvocationTargetException e11) {
            f(qVar, obj, e11.getCause());
        }
    }

    public void k(Object obj) {
        C0240c c0240c = (C0240c) this.f16420d.get();
        List list = c0240c.f16437a;
        list.add(obj);
        if (c0240c.f16438b) {
            return;
        }
        c0240c.f16439c = i();
        c0240c.f16438b = true;
        if (c0240c.f16442f) {
            throw new e("Internal error. Abort state was not reset");
        }
        while (true) {
            try {
                if (list.isEmpty()) {
                    return;
                } else {
                    l(list.remove(0), c0240c);
                }
            } finally {
                c0240c.f16438b = false;
                c0240c.f16439c = false;
            }
        }
    }

    public void o(Object obj) {
        if (y9.b.c() && !y9.b.a()) {
            throw new RuntimeException("It looks like you are using EventBus on Android, make sure to add the \"eventbus\" Android library to your dependencies.");
        }
        List listA = this.f16425i.a(obj.getClass());
        synchronized (this) {
            try {
                Iterator it = listA.iterator();
                while (it.hasNext()) {
                    p(obj, (o) it.next());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public synchronized void q(Object obj) {
        try {
            List list = (List) this.f16418b.get(obj);
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    r(obj, (Class) it.next());
                }
                this.f16418b.remove(obj);
            } else {
                this.f16434r.a(Level.WARNING, "Subscriber to unregister was not registered before: " + obj.getClass());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public String toString() {
        return "EventBus[indexCount=" + this.f16433q + ", eventInheritance=" + this.f16432p + "]";
    }

    c(d dVar) {
        this.f16420d = new a();
        this.f16434r = dVar.a();
        this.f16417a = new HashMap();
        this.f16418b = new HashMap();
        this.f16419c = new ConcurrentHashMap();
        h hVarB = dVar.b();
        this.f16421e = hVarB;
        this.f16422f = hVarB != null ? hVarB.b(this) : null;
        this.f16423g = new x9.b(this);
        this.f16424h = new x9.a(this);
        List list = dVar.f16453j;
        this.f16433q = list != null ? list.size() : 0;
        this.f16425i = new p(dVar.f16453j, dVar.f16451h, dVar.f16450g);
        this.f16428l = dVar.f16444a;
        this.f16429m = dVar.f16445b;
        this.f16430n = dVar.f16446c;
        this.f16431o = dVar.f16447d;
        this.f16427k = dVar.f16448e;
        this.f16432p = dVar.f16449f;
        this.f16426j = dVar.f16452i;
    }
}
