package o4;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
abstract class n {

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final o4.c f14420a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Set f14421b = new HashSet();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Set f14422c = new HashSet();

        b(o4.c cVar) {
            this.f14420a = cVar;
        }

        void a(b bVar) {
            this.f14421b.add(bVar);
        }

        void b(b bVar) {
            this.f14422c.add(bVar);
        }

        o4.c c() {
            return this.f14420a;
        }

        Set d() {
            return this.f14421b;
        }

        boolean e() {
            return this.f14421b.isEmpty();
        }

        boolean f() {
            return this.f14422c.isEmpty();
        }

        void g(b bVar) {
            this.f14422c.remove(bVar);
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Class f14423a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f14424b;

        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return cVar.f14423a.equals(this.f14423a) && cVar.f14424b == this.f14424b;
        }

        public int hashCode() {
            return Boolean.valueOf(this.f14424b).hashCode() ^ ((this.f14423a.hashCode() ^ 1000003) * 1000003);
        }

        private c(Class cls, boolean z10) {
            this.f14423a = cls;
            this.f14424b = z10;
        }
    }

    static void a(List list) {
        Set<b> setC = c(list);
        Set setB = b(setC);
        int i10 = 0;
        while (!setB.isEmpty()) {
            b bVar = (b) setB.iterator().next();
            setB.remove(bVar);
            i10++;
            for (b bVar2 : bVar.d()) {
                bVar2.g(bVar);
                if (bVar2.f()) {
                    setB.add(bVar2);
                }
            }
        }
        if (i10 == list.size()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (b bVar3 : setC) {
            if (!bVar3.f() && !bVar3.e()) {
                arrayList.add(bVar3.c());
            }
        }
        throw new p(arrayList);
    }

    private static Set b(Set set) {
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            if (bVar.f()) {
                hashSet.add(bVar);
            }
        }
        return hashSet;
    }

    private static Set c(List list) {
        Set<b> set;
        HashMap map = new HashMap(list.size());
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                Iterator it2 = map.values().iterator();
                while (it2.hasNext()) {
                    for (b bVar : (Set) it2.next()) {
                        for (o oVar : bVar.c().c()) {
                            if (oVar.d() && (set = (Set) map.get(new c(oVar.b(), oVar.f()))) != null) {
                                for (b bVar2 : set) {
                                    bVar.a(bVar2);
                                    bVar2.b(bVar);
                                }
                            }
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                Iterator it3 = map.values().iterator();
                while (it3.hasNext()) {
                    hashSet.addAll((Set) it3.next());
                }
                return hashSet;
            }
            o4.c cVar = (o4.c) it.next();
            b bVar3 = new b(cVar);
            for (Class cls : cVar.e()) {
                c cVar2 = new c(cls, !cVar.j());
                if (!map.containsKey(cVar2)) {
                    map.put(cVar2, new HashSet());
                }
                Set set2 = (Set) map.get(cVar2);
                if (!set2.isEmpty() && !cVar2.f14424b) {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", cls));
                }
                set2.add(bVar3);
            }
        }
    }
}
