package i;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class b implements Iterable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    c f12347a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f12348b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WeakHashMap f12349c = new WeakHashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f12350f = 0;

    static class a extends e {
        a(c cVar, c cVar2) {
            super(cVar, cVar2);
        }

        @Override // i.b.e
        c b(c cVar) {
            return cVar.f12354f;
        }

        @Override // i.b.e
        c c(c cVar) {
            return cVar.f12353c;
        }
    }

    /* JADX INFO: renamed from: i.b$b, reason: collision with other inner class name */
    private static class C0148b extends e {
        C0148b(c cVar, c cVar2) {
            super(cVar, cVar2);
        }

        @Override // i.b.e
        c b(c cVar) {
            return cVar.f12353c;
        }

        @Override // i.b.e
        c c(c cVar) {
            return cVar.f12354f;
        }
    }

    static class c implements Map.Entry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f12351a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Object f12352b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        c f12353c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        c f12354f;

        c(Object obj, Object obj2) {
            this.f12351a = obj;
            this.f12352b = obj2;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f12351a.equals(cVar.f12351a) && this.f12352b.equals(cVar.f12352b);
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f12351a;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f12352b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f12352b.hashCode() ^ this.f12351a.hashCode();
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f12351a + "=" + this.f12352b;
        }
    }

    public class d extends f implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private c f12355a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f12356b = true;

        d() {
        }

        @Override // i.b.f
        void a(c cVar) {
            c cVar2 = this.f12355a;
            if (cVar == cVar2) {
                c cVar3 = cVar2.f12354f;
                this.f12355a = cVar3;
                this.f12356b = cVar3 == null;
            }
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry next() {
            if (this.f12356b) {
                this.f12356b = false;
                this.f12355a = b.this.f12347a;
            } else {
                c cVar = this.f12355a;
                this.f12355a = cVar != null ? cVar.f12353c : null;
            }
            return this.f12355a;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f12356b) {
                return b.this.f12347a != null;
            }
            c cVar = this.f12355a;
            return (cVar == null || cVar.f12353c == null) ? false : true;
        }
    }

    private static abstract class e extends f implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        c f12358a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        c f12359b;

        e(c cVar, c cVar2) {
            this.f12358a = cVar2;
            this.f12359b = cVar;
        }

        private c e() {
            c cVar = this.f12359b;
            c cVar2 = this.f12358a;
            if (cVar == cVar2 || cVar2 == null) {
                return null;
            }
            return c(cVar);
        }

        @Override // i.b.f
        public void a(c cVar) {
            if (this.f12358a == cVar && cVar == this.f12359b) {
                this.f12359b = null;
                this.f12358a = null;
            }
            c cVar2 = this.f12358a;
            if (cVar2 == cVar) {
                this.f12358a = b(cVar2);
            }
            if (this.f12359b == cVar) {
                this.f12359b = e();
            }
        }

        abstract c b(c cVar);

        abstract c c(c cVar);

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Map.Entry next() {
            c cVar = this.f12359b;
            this.f12359b = e();
            return cVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f12359b != null;
        }
    }

    public static abstract class f {
        abstract void a(c cVar);
    }

    public Iterator a() {
        C0148b c0148b = new C0148b(this.f12348b, this.f12347a);
        this.f12349c.put(c0148b, Boolean.FALSE);
        return c0148b;
    }

    public Map.Entry b() {
        return this.f12347a;
    }

    protected c c(Object obj) {
        c cVar = this.f12347a;
        while (cVar != null && !cVar.f12351a.equals(obj)) {
            cVar = cVar.f12353c;
        }
        return cVar;
    }

    public d d() {
        d dVar = new d();
        this.f12349c.put(dVar, Boolean.FALSE);
        return dVar;
    }

    public Map.Entry e() {
        return this.f12348b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (size() != bVar.size()) {
            return false;
        }
        Iterator it = iterator();
        Iterator it2 = bVar.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object next = it2.next();
            if ((entry == null && next != null) || (entry != null && !entry.equals(next))) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    c f(Object obj, Object obj2) {
        c cVar = new c(obj, obj2);
        this.f12350f++;
        c cVar2 = this.f12348b;
        if (cVar2 == null) {
            this.f12347a = cVar;
            this.f12348b = cVar;
            return cVar;
        }
        cVar2.f12353c = cVar;
        cVar.f12354f = cVar2;
        this.f12348b = cVar;
        return cVar;
    }

    public Object g(Object obj, Object obj2) {
        c cVarC = c(obj);
        if (cVarC != null) {
            return cVarC.f12352b;
        }
        f(obj, obj2);
        return null;
    }

    public Object h(Object obj) {
        c cVarC = c(obj);
        if (cVarC == null) {
            return null;
        }
        this.f12350f--;
        if (!this.f12349c.isEmpty()) {
            Iterator it = this.f12349c.keySet().iterator();
            while (it.hasNext()) {
                ((f) it.next()).a(cVarC);
            }
        }
        c cVar = cVarC.f12354f;
        if (cVar != null) {
            cVar.f12353c = cVarC.f12353c;
        } else {
            this.f12347a = cVarC.f12353c;
        }
        c cVar2 = cVarC.f12353c;
        if (cVar2 != null) {
            cVar2.f12354f = cVar;
        } else {
            this.f12348b = cVar;
        }
        cVarC.f12353c = null;
        cVarC.f12354f = null;
        return cVarC.f12352b;
    }

    public int hashCode() {
        Iterator it = iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            iHashCode += ((Map.Entry) it.next()).hashCode();
        }
        return iHashCode;
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        a aVar = new a(this.f12347a, this.f12348b);
        this.f12349c.put(aVar, Boolean.FALSE);
        return aVar;
    }

    public int size() {
        return this.f12350f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator it = iterator();
        while (it.hasNext()) {
            sb.append(((Map.Entry) it.next()).toString());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
