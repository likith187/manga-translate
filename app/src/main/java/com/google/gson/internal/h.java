package com.google.gson.internal;

import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class h extends AbstractMap implements Serializable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Comparator<Comparable> NATURAL_ORDER = new a();
    private final boolean allowNullValues;
    private final Comparator<Object> comparator;
    private com.google.gson.internal.h.b entrySet;
    final e header;
    private com.google.gson.internal.h.c keySet;
    int modCount;
    e root;
    int size;

    class a implements Comparator {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    class b extends AbstractSet {

        class a extends d {
            a() {
                super();
            }

            @Override // java.util.Iterator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry next() {
                return a();
            }
        }

        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            h.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && h.this.findByEntry((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            e eVarFindByEntry;
            if (!(obj instanceof Map.Entry) || (eVarFindByEntry = h.this.findByEntry((Map.Entry) obj)) == null) {
                return false;
            }
            h.this.removeInternal(eVarFindByEntry, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return h.this.size;
        }
    }

    final class c extends AbstractSet {

        class a extends d {
            a() {
                super();
            }

            @Override // java.util.Iterator
            public Object next() {
                return a().f10745i;
            }
        }

        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            h.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return h.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return h.this.removeInternalByKey(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return h.this.size;
        }
    }

    private abstract class d implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        e f10736a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        e f10737b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f10738c;

        d() {
            this.f10736a = h.this.header.f10743f;
            this.f10738c = h.this.modCount;
        }

        final e a() {
            e eVar = this.f10736a;
            h hVar = h.this;
            if (eVar == hVar.header) {
                throw new NoSuchElementException();
            }
            if (hVar.modCount != this.f10738c) {
                throw new ConcurrentModificationException();
            }
            this.f10736a = eVar.f10743f;
            this.f10737b = eVar;
            return eVar;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f10736a != h.this.header;
        }

        @Override // java.util.Iterator
        public final void remove() {
            e eVar = this.f10737b;
            if (eVar == null) {
                throw new IllegalStateException();
            }
            h.this.removeInternal(eVar, true);
            this.f10737b = null;
            this.f10738c = h.this.modCount;
        }
    }

    public h() {
        this(NATURAL_ORDER, true);
    }

    private boolean equal(Object obj, Object obj2) {
        return Objects.equals(obj, obj2);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        throw new InvalidObjectException("Deserialization is unsupported");
    }

    private void rebalance(e eVar, boolean z10) {
        while (eVar != null) {
            e eVar2 = eVar.f10741b;
            e eVar3 = eVar.f10742c;
            int i10 = eVar2 != null ? eVar2.f10748l : 0;
            int i11 = eVar3 != null ? eVar3.f10748l : 0;
            int i12 = i10 - i11;
            if (i12 == -2) {
                e eVar4 = eVar3.f10741b;
                e eVar5 = eVar3.f10742c;
                int i13 = (eVar4 != null ? eVar4.f10748l : 0) - (eVar5 != null ? eVar5.f10748l : 0);
                if (i13 == -1 || (i13 == 0 && !z10)) {
                    rotateLeft(eVar);
                } else {
                    rotateRight(eVar3);
                    rotateLeft(eVar);
                }
                if (z10) {
                    return;
                }
            } else if (i12 == 2) {
                e eVar6 = eVar2.f10741b;
                e eVar7 = eVar2.f10742c;
                int i14 = (eVar6 != null ? eVar6.f10748l : 0) - (eVar7 != null ? eVar7.f10748l : 0);
                if (i14 == 1 || (i14 == 0 && !z10)) {
                    rotateRight(eVar);
                } else {
                    rotateLeft(eVar2);
                    rotateRight(eVar);
                }
                if (z10) {
                    return;
                }
            } else if (i12 == 0) {
                eVar.f10748l = i10 + 1;
                if (z10) {
                    return;
                }
            } else {
                eVar.f10748l = Math.max(i10, i11) + 1;
                if (!z10) {
                    return;
                }
            }
            eVar = eVar.f10740a;
        }
    }

    private void replaceInParent(e eVar, e eVar2) {
        e eVar3 = eVar.f10740a;
        eVar.f10740a = null;
        if (eVar2 != null) {
            eVar2.f10740a = eVar3;
        }
        if (eVar3 == null) {
            this.root = eVar2;
        } else if (eVar3.f10741b == eVar) {
            eVar3.f10741b = eVar2;
        } else {
            eVar3.f10742c = eVar2;
        }
    }

    private void rotateLeft(e eVar) {
        e eVar2 = eVar.f10741b;
        e eVar3 = eVar.f10742c;
        e eVar4 = eVar3.f10741b;
        e eVar5 = eVar3.f10742c;
        eVar.f10742c = eVar4;
        if (eVar4 != null) {
            eVar4.f10740a = eVar;
        }
        replaceInParent(eVar, eVar3);
        eVar3.f10741b = eVar;
        eVar.f10740a = eVar3;
        int iMax = Math.max(eVar2 != null ? eVar2.f10748l : 0, eVar4 != null ? eVar4.f10748l : 0) + 1;
        eVar.f10748l = iMax;
        eVar3.f10748l = Math.max(iMax, eVar5 != null ? eVar5.f10748l : 0) + 1;
    }

    private void rotateRight(e eVar) {
        e eVar2 = eVar.f10741b;
        e eVar3 = eVar.f10742c;
        e eVar4 = eVar2.f10741b;
        e eVar5 = eVar2.f10742c;
        eVar.f10741b = eVar5;
        if (eVar5 != null) {
            eVar5.f10740a = eVar;
        }
        replaceInParent(eVar, eVar2);
        eVar2.f10742c = eVar;
        eVar.f10740a = eVar2;
        int iMax = Math.max(eVar3 != null ? eVar3.f10748l : 0, eVar5 != null ? eVar5.f10748l : 0) + 1;
        eVar.f10748l = iMax;
        eVar2.f10748l = Math.max(iMax, eVar4 != null ? eVar4.f10748l : 0) + 1;
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.root = null;
        this.size = 0;
        this.modCount++;
        e eVar = this.header;
        eVar.f10744h = eVar;
        eVar.f10743f = eVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return findByObject(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<Object, Object>> entrySet() {
        com.google.gson.internal.h.b bVar = this.entrySet;
        if (bVar != null) {
            return bVar;
        }
        b bVar2 = new b();
        this.entrySet = bVar2;
        return bVar2;
    }

    e find(Object obj, boolean z10) {
        int iCompareTo;
        e eVar;
        Comparator<Object> comparator = this.comparator;
        e eVar2 = this.root;
        if (eVar2 != null) {
            Comparable comparable = comparator == NATURAL_ORDER ? (Comparable) obj : null;
            while (true) {
                iCompareTo = comparable != null ? comparable.compareTo(eVar2.f10745i) : comparator.compare(obj, eVar2.f10745i);
                if (iCompareTo == 0) {
                    return eVar2;
                }
                e eVar3 = iCompareTo < 0 ? eVar2.f10741b : eVar2.f10742c;
                if (eVar3 == null) {
                    break;
                }
                eVar2 = eVar3;
            }
        } else {
            iCompareTo = 0;
        }
        if (!z10) {
            return null;
        }
        e eVar4 = this.header;
        if (eVar2 != null) {
            eVar = new e(this.allowNullValues, eVar2, obj, eVar4, eVar4.f10744h);
            if (iCompareTo < 0) {
                eVar2.f10741b = eVar;
            } else {
                eVar2.f10742c = eVar;
            }
            rebalance(eVar2, true);
        } else {
            if (comparator == NATURAL_ORDER && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName() + " is not Comparable");
            }
            eVar = new e(this.allowNullValues, eVar2, obj, eVar4, eVar4.f10744h);
            this.root = eVar;
        }
        this.size++;
        this.modCount++;
        return eVar;
    }

    e findByEntry(Map.Entry<?, ?> entry) {
        e eVarFindByObject = findByObject(entry.getKey());
        if (eVarFindByObject == null || !equal(eVarFindByObject.f10747k, entry.getValue())) {
            return null;
        }
        return eVarFindByObject;
    }

    e findByObject(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            return find(obj, false);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        e eVarFindByObject = findByObject(obj);
        if (eVarFindByObject != null) {
            return eVarFindByObject.f10747k;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Object> keySet() {
        com.google.gson.internal.h.c cVar = this.keySet;
        if (cVar != null) {
            return cVar;
        }
        c cVar2 = new c();
        this.keySet = cVar2;
        return cVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object put(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        if (obj2 == null && !this.allowNullValues) {
            throw new NullPointerException("value == null");
        }
        e eVarFind = find(obj, true);
        Object obj3 = eVarFind.f10747k;
        eVarFind.f10747k = obj2;
        return obj3;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        e eVarRemoveInternalByKey = removeInternalByKey(obj);
        if (eVarRemoveInternalByKey != null) {
            return eVarRemoveInternalByKey.f10747k;
        }
        return null;
    }

    void removeInternal(e eVar, boolean z10) {
        int i10;
        if (z10) {
            e eVar2 = eVar.f10744h;
            eVar2.f10743f = eVar.f10743f;
            eVar.f10743f.f10744h = eVar2;
        }
        e eVar3 = eVar.f10741b;
        e eVar4 = eVar.f10742c;
        e eVar5 = eVar.f10740a;
        int i11 = 0;
        if (eVar3 == null || eVar4 == null) {
            if (eVar3 != null) {
                replaceInParent(eVar, eVar3);
                eVar.f10741b = null;
            } else if (eVar4 != null) {
                replaceInParent(eVar, eVar4);
                eVar.f10742c = null;
            } else {
                replaceInParent(eVar, null);
            }
            rebalance(eVar5, false);
            this.size--;
            this.modCount++;
            return;
        }
        e eVarB = eVar3.f10748l > eVar4.f10748l ? eVar3.b() : eVar4.a();
        removeInternal(eVarB, false);
        e eVar6 = eVar.f10741b;
        if (eVar6 != null) {
            i10 = eVar6.f10748l;
            eVarB.f10741b = eVar6;
            eVar6.f10740a = eVarB;
            eVar.f10741b = null;
        } else {
            i10 = 0;
        }
        e eVar7 = eVar.f10742c;
        if (eVar7 != null) {
            i11 = eVar7.f10748l;
            eVarB.f10742c = eVar7;
            eVar7.f10740a = eVarB;
            eVar.f10742c = null;
        }
        eVarB.f10748l = Math.max(i10, i11) + 1;
        replaceInParent(eVar, eVarB);
    }

    e removeInternalByKey(Object obj) {
        e eVarFindByObject = findByObject(obj);
        if (eVarFindByObject != null) {
            removeInternal(eVarFindByObject, true);
        }
        return eVarFindByObject;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.size;
    }

    public h(boolean z10) {
        this(NATURAL_ORDER, z10);
    }

    public h(Comparator<Object> comparator, boolean z10) {
        this.size = 0;
        this.modCount = 0;
        this.comparator = comparator == null ? NATURAL_ORDER : comparator;
        this.allowNullValues = z10;
        this.header = new e(z10);
    }

    static final class e implements Map.Entry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        e f10740a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        e f10741b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        e f10742c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        e f10743f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        e f10744h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final Object f10745i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final boolean f10746j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        Object f10747k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        int f10748l;

        e(boolean z10) {
            this.f10745i = null;
            this.f10746j = z10;
            this.f10744h = this;
            this.f10743f = this;
        }

        public e a() {
            e eVar = this.f10741b;
            while (true) {
                e eVar2 = eVar;
                e eVar3 = this;
                this = eVar2;
                if (this == null) {
                    return eVar3;
                }
                eVar = this.f10741b;
            }
        }

        public e b() {
            e eVar = this.f10742c;
            while (true) {
                e eVar2 = eVar;
                e eVar3 = this;
                this = eVar2;
                if (this == null) {
                    return eVar3;
                }
                eVar = this.f10742c;
            }
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = this.f10745i;
            if (obj2 == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!obj2.equals(entry.getKey())) {
                return false;
            }
            Object obj3 = this.f10747k;
            if (obj3 == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!obj3.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f10745i;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f10747k;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            Object obj = this.f10745i;
            int iHashCode = obj == null ? 0 : obj.hashCode();
            Object obj2 = this.f10747k;
            return iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (obj == null && !this.f10746j) {
                throw new NullPointerException("value == null");
            }
            Object obj2 = this.f10747k;
            this.f10747k = obj;
            return obj2;
        }

        public String toString() {
            return this.f10745i + "=" + this.f10747k;
        }

        e(boolean z10, e eVar, Object obj, e eVar2, e eVar3) {
            this.f10740a = eVar;
            this.f10745i = obj;
            this.f10746j = z10;
            this.f10748l = 1;
            this.f10743f = eVar2;
            this.f10744h = eVar3;
            eVar3.f10743f = this;
            eVar2.f10744h = this;
        }
    }
}
