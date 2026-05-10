package androidx.collection;

import java.lang.reflect.Array;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class a extends i implements Map {

    /* JADX INFO: renamed from: f */
    C0007a f1036f;

    /* JADX INFO: renamed from: h */
    c f1037h;

    /* JADX INFO: renamed from: i */
    e f1038i;

    /* JADX INFO: renamed from: androidx.collection.a$a */
    final class C0007a extends AbstractSet {
        C0007a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return a.this.new d();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return a.this.size();
        }
    }

    final class b extends androidx.collection.e {
        b() {
            super(a.this.size());
        }

        @Override // androidx.collection.e
        protected Object a(int i10) {
            return a.this.g(i10);
        }

        @Override // androidx.collection.e
        protected void c(int i10) {
            a.this.i(i10);
        }
    }

    final class d implements Iterator, Map.Entry {

        /* JADX INFO: renamed from: a */
        int f1042a;

        /* JADX INFO: renamed from: b */
        int f1043b = -1;

        /* JADX INFO: renamed from: c */
        boolean f1044c;

        d() {
            this.f1042a = a.this.size() - 1;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a */
        public Map.Entry next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.f1043b++;
            this.f1044c = true;
            return this;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!this.f1044c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return k.a.c(entry.getKey(), a.this.g(this.f1043b)) && k.a.c(entry.getValue(), a.this.k(this.f1043b));
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            if (this.f1044c) {
                return a.this.g(this.f1043b);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            if (this.f1044c) {
                return a.this.k(this.f1043b);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f1043b < this.f1042a;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (!this.f1044c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            Object objG = a.this.g(this.f1043b);
            Object objK = a.this.k(this.f1043b);
            return (objG == null ? 0 : objG.hashCode()) ^ (objK != null ? objK.hashCode() : 0);
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f1044c) {
                throw new IllegalStateException();
            }
            a.this.i(this.f1043b);
            this.f1043b--;
            this.f1042a--;
            this.f1044c = false;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (this.f1044c) {
                return a.this.j(this.f1043b, obj);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    final class f extends androidx.collection.e {
        f() {
            super(a.this.size());
        }

        @Override // androidx.collection.e
        protected Object a(int i10) {
            return a.this.k(i10);
        }

        @Override // androidx.collection.e
        protected void c(int i10) {
            a.this.i(i10);
        }
    }

    public a() {
    }

    static boolean m(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // androidx.collection.i, java.util.Map
    public boolean containsKey(Object obj) {
        return super.containsKey(obj);
    }

    @Override // androidx.collection.i, java.util.Map
    public boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override // java.util.Map
    public Set entrySet() {
        C0007a c0007a = this.f1036f;
        if (c0007a != null) {
            return c0007a;
        }
        C0007a c0007a2 = new C0007a();
        this.f1036f = c0007a2;
        return c0007a2;
    }

    @Override // androidx.collection.i, java.util.Map
    public Object get(Object obj) {
        return super.get(obj);
    }

    @Override // java.util.Map
    public Set keySet() {
        c cVar = this.f1037h;
        if (cVar != null) {
            return cVar;
        }
        c cVar2 = new c();
        this.f1037h = cVar2;
        return cVar2;
    }

    public boolean l(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public boolean n(Collection collection) {
        int size = size();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
        return size != size();
    }

    public boolean o(Collection collection) {
        int size = size();
        for (int size2 = size() - 1; size2 >= 0; size2--) {
            if (!collection.contains(g(size2))) {
                i(size2);
            }
        }
        return size != size();
    }

    @Override // java.util.Map
    public void putAll(Map map) {
        c(size() + map.size());
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // androidx.collection.i, java.util.Map
    public Object remove(Object obj) {
        return super.remove(obj);
    }

    @Override // java.util.Map
    public Collection values() {
        e eVar = this.f1038i;
        if (eVar != null) {
            return eVar;
        }
        e eVar2 = new e();
        this.f1038i = eVar2;
        return eVar2;
    }

    public a(int i10) {
        super(i10);
    }

    final class c implements Set {
        c() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            a.this.clear();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return a.this.containsKey(obj);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection collection) {
            return a.this.l(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return a.m(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int iHashCode = 0;
            for (int size = a.this.size() - 1; size >= 0; size--) {
                Object objG = a.this.g(size);
                iHashCode += objG == null ? 0 : objG.hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return a.this.isEmpty();
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return a.this.new b();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int iE = a.this.e(obj);
            if (iE < 0) {
                return false;
            }
            a.this.i(iE);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection collection) {
            return a.this.n(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection collection) {
            return a.this.o(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return a.this.size();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            int size = a.this.size();
            Object[] objArr = new Object[size];
            for (int i10 = 0; i10 < size; i10++) {
                objArr[i10] = a.this.g(i10);
            }
            return objArr;
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray(Object[] objArr) {
            int size = size();
            if (objArr.length < size) {
                objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), size);
            }
            for (int i10 = 0; i10 < size; i10++) {
                objArr[i10] = a.this.g(i10);
            }
            if (objArr.length > size) {
                objArr[size] = null;
            }
            return objArr;
        }
    }

    final class e implements Collection {
        e() {
        }

        @Override // java.util.Collection
        public boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            a.this.clear();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return a.this.a(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return a.this.isEmpty();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return a.this.new f();
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int iA = a.this.a(obj);
            if (iA < 0) {
                return false;
            }
            a.this.i(iA);
            return true;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection collection) {
            int size = a.this.size();
            int i10 = 0;
            boolean z10 = false;
            while (i10 < size) {
                if (collection.contains(a.this.k(i10))) {
                    a.this.i(i10);
                    i10--;
                    size--;
                    z10 = true;
                }
                i10++;
            }
            return z10;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection collection) {
            int size = a.this.size();
            int i10 = 0;
            boolean z10 = false;
            while (i10 < size) {
                if (!collection.contains(a.this.k(i10))) {
                    a.this.i(i10);
                    i10--;
                    size--;
                    z10 = true;
                }
                i10++;
            }
            return z10;
        }

        @Override // java.util.Collection
        public int size() {
            return a.this.size();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            int size = a.this.size();
            Object[] objArr = new Object[size];
            for (int i10 = 0; i10 < size; i10++) {
                objArr[i10] = a.this.k(i10);
            }
            return objArr;
        }

        @Override // java.util.Collection
        public Object[] toArray(Object[] objArr) {
            int size = size();
            if (objArr.length < size) {
                objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), size);
            }
            for (int i10 = 0; i10 < size; i10++) {
                objArr[i10] = a.this.k(i10);
            }
            if (objArr.length > size) {
                objArr[size] = null;
            }
            return objArr;
        }
    }

    public a(i iVar) {
        super(iVar);
    }
}
