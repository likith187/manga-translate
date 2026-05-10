package e5;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f11740a = new HashMap();

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Class f11741a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final u4.b f11742b;

        public a(Class cls, u4.b bVar) {
            this.f11741a = cls;
            this.f11742b = bVar;
        }

        final u4.b a() {
            return this.f11742b;
        }

        final Class b() {
            return this.f11741a;
        }
    }

    public c(Set set) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            this.f11740a.put(aVar.b(), aVar.a());
        }
    }
}
