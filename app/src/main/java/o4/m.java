package o4;

import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class m extends o4.a implements p4.a {

    /* JADX INFO: renamed from: g */
    private static final u4.b f14410g = l.a();

    /* JADX INFO: renamed from: a */
    private final Map f14411a;

    /* JADX INFO: renamed from: b */
    private final Map f14412b;

    /* JADX INFO: renamed from: c */
    private final Map f14413c;

    /* JADX INFO: renamed from: d */
    private final List f14414d;

    /* JADX INFO: renamed from: e */
    private final s f14415e;

    /* JADX INFO: renamed from: f */
    private final AtomicReference f14416f;

    public static final class b {

        /* JADX INFO: renamed from: a */
        private final Executor f14417a;

        /* JADX INFO: renamed from: b */
        private final List f14418b = new ArrayList();

        /* JADX INFO: renamed from: c */
        private final List f14419c = new ArrayList();

        b(Executor executor) {
            this.f14417a = executor;
        }

        public b a(c cVar) {
            this.f14419c.add(cVar);
            return this;
        }

        public b b(Collection collection) {
            this.f14418b.addAll(collection);
            return this;
        }

        public m c() {
            return new m(this.f14417a, this.f14418b, this.f14419c);
        }
    }

    /* synthetic */ m(Executor executor, Iterable iterable, Collection collection, a aVar) {
        this(executor, iterable, collection);
    }

    public static b e(Executor executor) {
        return new b(executor);
    }

    private void f(List list) {
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator it = this.f14414d.iterator();
            while (it.hasNext()) {
                try {
                    h hVar = (h) ((u4.b) it.next()).get();
                    if (hVar != null) {
                        list.addAll(hVar.a());
                        it.remove();
                    }
                } catch (t e10) {
                    it.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e10);
                }
            }
            if (this.f14411a.isEmpty()) {
                n.a(list);
            } else {
                ArrayList arrayList2 = new ArrayList(this.f14411a.keySet());
                arrayList2.addAll(list);
                n.a(arrayList2);
            }
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                c cVar = (c) it2.next();
                this.f14411a.put(cVar, new u(i.a(this, cVar)));
            }
            arrayList.addAll(o(list));
            arrayList.addAll(p());
            n();
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            ((Runnable) it3.next()).run();
        }
        m();
    }

    private void g(Map map, boolean z10) {
        for (Map.Entry entry : map.entrySet()) {
            c cVar = (c) entry.getKey();
            u4.b bVar = (u4.b) entry.getValue();
            if (cVar.h() || (cVar.i() && z10)) {
                bVar.get();
            }
        }
        this.f14415e.a();
    }

    private static List i(Iterable iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    private void m() {
        Boolean bool = (Boolean) this.f14416f.get();
        if (bool != null) {
            g(this.f14411a, bool.booleanValue());
        }
    }

    private void n() {
        for (c cVar : this.f14411a.keySet()) {
            for (o oVar : cVar.c()) {
                if (oVar.f() && !this.f14413c.containsKey(oVar.b())) {
                    this.f14413c.put(oVar.b(), v.b(Collections.emptySet()));
                } else if (this.f14412b.containsKey(oVar.b())) {
                    continue;
                } else {
                    if (oVar.e()) {
                        throw new w(String.format("Unsatisfied dependency for component %s: %s", cVar, oVar.b()));
                    }
                    if (!oVar.f()) {
                        this.f14412b.put(oVar.b(), z.a());
                    }
                }
            }
        }
    }

    private List o(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.j()) {
                u4.b bVar = (u4.b) this.f14411a.get(cVar);
                for (Class cls : cVar.e()) {
                    if (this.f14412b.containsKey(cls)) {
                        arrayList.add(j.a((z) ((u4.b) this.f14412b.get(cls)), bVar));
                    } else {
                        this.f14412b.put(cls, bVar);
                    }
                }
            }
        }
        return arrayList;
    }

    private List p() {
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        for (Map.Entry entry : this.f14411a.entrySet()) {
            c cVar = (c) entry.getKey();
            if (!cVar.j()) {
                u4.b bVar = (u4.b) entry.getValue();
                for (Class cls : cVar.e()) {
                    if (!map.containsKey(cls)) {
                        map.put(cls, new HashSet());
                    }
                    ((Set) map.get(cls)).add(bVar);
                }
            }
        }
        for (Map.Entry entry2 : map.entrySet()) {
            if (this.f14413c.containsKey(entry2.getKey())) {
                v vVar = (v) this.f14413c.get(entry2.getKey());
                Iterator it = ((Set) entry2.getValue()).iterator();
                while (it.hasNext()) {
                    arrayList.add(k.a(vVar, (u4.b) it.next()));
                }
            } else {
                this.f14413c.put((Class) entry2.getKey(), v.b((Collection) entry2.getValue()));
            }
        }
        return arrayList;
    }

    @Override // o4.a, o4.d
    public /* bridge */ /* synthetic */ Object a(Class cls) {
        return super.a(cls);
    }

    @Override // o4.a, o4.d
    public /* bridge */ /* synthetic */ Set b(Class cls) {
        return super.b(cls);
    }

    @Override // o4.d
    public synchronized u4.b c(Class cls) {
        a0.c(cls, "Null interface requested.");
        return (u4.b) this.f14412b.get(cls);
    }

    @Override // o4.d
    public synchronized u4.b d(Class cls) {
        v vVar = (v) this.f14413c.get(cls);
        if (vVar != null) {
            return vVar;
        }
        return f14410g;
    }

    public void h(boolean z10) {
        HashMap map;
        if (androidx.lifecycle.b.a(this.f14416f, null, Boolean.valueOf(z10))) {
            synchronized (this) {
                map = new HashMap(this.f14411a);
            }
            g(map, z10);
        }
    }

    private m(Executor executor, Iterable iterable, Collection collection) {
        this.f14411a = new HashMap();
        this.f14412b = new HashMap();
        this.f14413c = new HashMap();
        this.f14416f = new AtomicReference();
        s sVar = new s(executor);
        this.f14415e = sVar;
        ArrayList arrayList = new ArrayList();
        arrayList.add(c.l(sVar, s.class, t4.c.class, t4.b.class));
        arrayList.add(c.l(this, p4.a.class, new Class[0]));
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar != null) {
                arrayList.add(cVar);
            }
        }
        this.f14414d = i(iterable);
        f(arrayList);
    }
}
