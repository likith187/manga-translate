package o8;

import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements Map, Serializable, x8.e {
    public static final a Companion = new a(null);
    private static final c Empty;
    private static final int INITIAL_CAPACITY = 8;
    private static final int INITIAL_MAX_PROBE_DISTANCE = 2;
    private static final int MAGIC = -1640531527;
    private static final int TOMBSTONE = -1;
    private o8.d entriesView;
    private int[] hashArray;
    private int hashShift;
    private boolean isReadOnly;
    private Object[] keysArray;
    private o8.e keysView;
    private int length;
    private int maxProbeDistance;
    private int modCount;
    private int[] presenceArray;
    private int size;
    private Object[] valuesArray;
    private o8.f valuesView;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int c(int i10) {
            return Integer.highestOneBit(b9.d.c(i10, 1) * 3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int d(int i10) {
            return Integer.numberOfLeadingZeros(i10) + 1;
        }

        private a() {
        }
    }

    public static final class b extends d implements Iterator, x8.a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(c map) {
            super(map);
            r.e(map, "map");
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public C0188c next() {
            a();
            if (c() >= e().length) {
                throw new NoSuchElementException();
            }
            int iC = c();
            g(iC + 1);
            h(iC);
            C0188c c0188c = new C0188c(e(), d());
            f();
            return c0188c;
        }

        public final void j(StringBuilder sb) {
            r.e(sb, "sb");
            if (c() >= e().length) {
                throw new NoSuchElementException();
            }
            int iC = c();
            g(iC + 1);
            h(iC);
            Object obj = e().keysArray[d()];
            if (obj == e()) {
                sb.append("(this Map)");
            } else {
                sb.append(obj);
            }
            sb.append('=');
            Object[] objArr = e().valuesArray;
            r.b(objArr);
            Object obj2 = objArr[d()];
            if (obj2 == e()) {
                sb.append("(this Map)");
            } else {
                sb.append(obj2);
            }
            f();
        }

        public final int k() {
            if (c() >= e().length) {
                throw new NoSuchElementException();
            }
            int iC = c();
            g(iC + 1);
            h(iC);
            Object obj = e().keysArray[d()];
            int iHashCode = obj != null ? obj.hashCode() : 0;
            Object[] objArr = e().valuesArray;
            r.b(objArr);
            Object obj2 = objArr[d()];
            int iHashCode2 = iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
            f();
            return iHashCode2;
        }
    }

    /* JADX INFO: renamed from: o8.c$c, reason: collision with other inner class name */
    public static final class C0188c implements Map.Entry, x8.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f14463a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f14464b;

        public C0188c(c map, int i10) {
            r.e(map, "map");
            this.f14463a = map;
            this.f14464b = i10;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (r.a(entry.getKey(), getKey()) && r.a(entry.getValue(), getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f14463a.keysArray[this.f14464b];
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            Object[] objArr = this.f14463a.valuesArray;
            r.b(objArr);
            return objArr[this.f14464b];
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            Object key = getKey();
            int iHashCode = key != null ? key.hashCode() : 0;
            Object value = getValue();
            return iHashCode ^ (value != null ? value.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            this.f14463a.checkIsMutable$kotlin_stdlib();
            Object[] objArrAllocateValuesArray = this.f14463a.allocateValuesArray();
            int i10 = this.f14464b;
            Object obj2 = objArrAllocateValuesArray[i10];
            objArrAllocateValuesArray[i10] = obj;
            return obj2;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(getKey());
            sb.append('=');
            sb.append(getValue());
            return sb.toString();
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f14465a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f14466b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f14467c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f14468f;

        public d(c map) {
            r.e(map, "map");
            this.f14465a = map;
            this.f14467c = -1;
            this.f14468f = map.modCount;
            f();
        }

        public final void a() {
            if (this.f14465a.modCount != this.f14468f) {
                throw new ConcurrentModificationException();
            }
        }

        public final int c() {
            return this.f14466b;
        }

        public final int d() {
            return this.f14467c;
        }

        public final c e() {
            return this.f14465a;
        }

        public final void f() {
            while (this.f14466b < this.f14465a.length) {
                int[] iArr = this.f14465a.presenceArray;
                int i10 = this.f14466b;
                if (iArr[i10] >= 0) {
                    return;
                } else {
                    this.f14466b = i10 + 1;
                }
            }
        }

        public final void g(int i10) {
            this.f14466b = i10;
        }

        public final void h(int i10) {
            this.f14467c = i10;
        }

        public final boolean hasNext() {
            return this.f14466b < this.f14465a.length;
        }

        public final void remove() {
            a();
            if (this.f14467c == -1) {
                throw new IllegalStateException("Call next() before removing element from the iterator.");
            }
            this.f14465a.checkIsMutable$kotlin_stdlib();
            this.f14465a.removeEntryAt(this.f14467c);
            this.f14467c = -1;
            this.f14468f = this.f14465a.modCount;
        }
    }

    public static final class e extends d implements Iterator, x8.a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(c map) {
            super(map);
            r.e(map, "map");
        }

        @Override // java.util.Iterator
        public Object next() {
            a();
            if (c() >= e().length) {
                throw new NoSuchElementException();
            }
            int iC = c();
            g(iC + 1);
            h(iC);
            Object obj = e().keysArray[d()];
            f();
            return obj;
        }
    }

    public static final class f extends d implements Iterator, x8.a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(c map) {
            super(map);
            r.e(map, "map");
        }

        @Override // java.util.Iterator
        public Object next() {
            a();
            if (c() >= e().length) {
                throw new NoSuchElementException();
            }
            int iC = c();
            g(iC + 1);
            h(iC);
            Object[] objArr = e().valuesArray;
            r.b(objArr);
            Object obj = objArr[d()];
            f();
            return obj;
        }
    }

    static {
        c cVar = new c(0);
        cVar.isReadOnly = true;
        Empty = cVar;
    }

    private c(Object[] objArr, Object[] objArr2, int[] iArr, int[] iArr2, int i10, int i11) {
        this.keysArray = objArr;
        this.valuesArray = objArr2;
        this.presenceArray = iArr;
        this.hashArray = iArr2;
        this.maxProbeDistance = i10;
        this.length = i11;
        this.hashShift = Companion.d(getHashSize());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object[] allocateValuesArray() {
        Object[] objArr = this.valuesArray;
        if (objArr != null) {
            return objArr;
        }
        Object[] objArrA = o8.b.a(getCapacity$kotlin_stdlib());
        this.valuesArray = objArrA;
        return objArrA;
    }

    private final void compact(boolean z10) {
        int i10;
        Object[] objArr = this.valuesArray;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            i10 = this.length;
            if (i11 >= i10) {
                break;
            }
            int[] iArr = this.presenceArray;
            int i13 = iArr[i11];
            if (i13 >= 0) {
                Object[] objArr2 = this.keysArray;
                objArr2[i12] = objArr2[i11];
                if (objArr != null) {
                    objArr[i12] = objArr[i11];
                }
                if (z10) {
                    iArr[i12] = i13;
                    this.hashArray[i13] = i12 + 1;
                }
                i12++;
            }
            i11++;
        }
        o8.b.d(this.keysArray, i12, i10);
        if (objArr != null) {
            o8.b.d(objArr, i12, this.length);
        }
        this.length = i12;
    }

    private final boolean contentEquals(Map<?, ?> map) {
        return size() == map.size() && containsAllEntries$kotlin_stdlib(map.entrySet());
    }

    private final void ensureCapacity(int i10) {
        if (i10 < 0) {
            throw new OutOfMemoryError();
        }
        if (i10 > getCapacity$kotlin_stdlib()) {
            int iE = kotlin.collections.c.Companion.e(getCapacity$kotlin_stdlib(), i10);
            this.keysArray = o8.b.b(this.keysArray, iE);
            Object[] objArr = this.valuesArray;
            this.valuesArray = objArr != null ? o8.b.b(objArr, iE) : null;
            int[] iArrCopyOf = Arrays.copyOf(this.presenceArray, iE);
            r.d(iArrCopyOf, "copyOf(...)");
            this.presenceArray = iArrCopyOf;
            int iC = Companion.c(iE);
            if (iC > getHashSize()) {
                rehash(iC);
            }
        }
    }

    private final void ensureExtraCapacity(int i10) {
        if (shouldCompact(i10)) {
            compact(true);
        } else {
            ensureCapacity(this.length + i10);
        }
    }

    private final int findKey(Object obj) {
        int iHash = hash(obj);
        int i10 = this.maxProbeDistance;
        while (true) {
            int i11 = this.hashArray[iHash];
            if (i11 == 0) {
                return -1;
            }
            if (i11 > 0) {
                int i12 = i11 - 1;
                if (r.a(this.keysArray[i12], obj)) {
                    return i12;
                }
            }
            i10--;
            if (i10 < 0) {
                return -1;
            }
            iHash = iHash == 0 ? getHashSize() - 1 : iHash - 1;
        }
    }

    private final int findValue(Object obj) {
        int i10 = this.length;
        while (true) {
            i10--;
            if (i10 < 0) {
                return -1;
            }
            if (this.presenceArray[i10] >= 0) {
                Object[] objArr = this.valuesArray;
                r.b(objArr);
                if (r.a(objArr[i10], obj)) {
                    return i10;
                }
            }
        }
    }

    private final int getHashSize() {
        return this.hashArray.length;
    }

    private final int hash(Object obj) {
        return ((obj != null ? obj.hashCode() : 0) * MAGIC) >>> this.hashShift;
    }

    private final boolean putAllEntries(Collection<? extends Map.Entry<Object, Object>> collection) {
        boolean z10 = false;
        if (collection.isEmpty()) {
            return false;
        }
        ensureExtraCapacity(collection.size());
        Iterator<? extends Map.Entry<Object, Object>> it = collection.iterator();
        while (it.hasNext()) {
            if (putEntry(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    private final boolean putEntry(Map.Entry<Object, Object> entry) {
        int iAddKey$kotlin_stdlib = addKey$kotlin_stdlib(entry.getKey());
        Object[] objArrAllocateValuesArray = allocateValuesArray();
        if (iAddKey$kotlin_stdlib >= 0) {
            objArrAllocateValuesArray[iAddKey$kotlin_stdlib] = entry.getValue();
            return true;
        }
        int i10 = (-iAddKey$kotlin_stdlib) - 1;
        if (r.a(entry.getValue(), objArrAllocateValuesArray[i10])) {
            return false;
        }
        objArrAllocateValuesArray[i10] = entry.getValue();
        return true;
    }

    private final boolean putRehash(int i10) {
        int iHash = hash(this.keysArray[i10]);
        int i11 = this.maxProbeDistance;
        while (true) {
            int[] iArr = this.hashArray;
            if (iArr[iHash] == 0) {
                iArr[iHash] = i10 + 1;
                this.presenceArray[i10] = iHash;
                return true;
            }
            i11--;
            if (i11 < 0) {
                return false;
            }
            iHash = iHash == 0 ? getHashSize() - 1 : iHash - 1;
        }
    }

    private final void registerModification() {
        this.modCount++;
    }

    private final void rehash(int i10) {
        registerModification();
        int i11 = 0;
        if (this.length > size()) {
            compact(false);
        }
        this.hashArray = new int[i10];
        this.hashShift = Companion.d(i10);
        while (i11 < this.length) {
            int i12 = i11 + 1;
            if (!putRehash(i11)) {
                throw new IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
            }
            i11 = i12;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeEntryAt(int i10) {
        o8.b.c(this.keysArray, i10);
        Object[] objArr = this.valuesArray;
        if (objArr != null) {
            o8.b.c(objArr, i10);
        }
        removeHashAt(this.presenceArray[i10]);
        this.presenceArray[i10] = -1;
        this.size = size() - 1;
        registerModification();
    }

    private final void removeHashAt(int i10) {
        int iE = b9.d.e(this.maxProbeDistance * 2, getHashSize() / 2);
        int i11 = 0;
        int i12 = i10;
        do {
            i10 = i10 == 0 ? getHashSize() - 1 : i10 - 1;
            i11++;
            if (i11 > this.maxProbeDistance) {
                this.hashArray[i12] = 0;
                return;
            }
            int[] iArr = this.hashArray;
            int i13 = iArr[i10];
            if (i13 == 0) {
                iArr[i12] = 0;
                return;
            }
            if (i13 < 0) {
                iArr[i12] = -1;
            } else {
                int i14 = i13 - 1;
                if (((hash(this.keysArray[i14]) - i10) & (getHashSize() - 1)) >= i11) {
                    this.hashArray[i12] = i13;
                    this.presenceArray[i14] = i12;
                }
                iE--;
            }
            i12 = i10;
            i11 = 0;
            iE--;
        } while (iE >= 0);
        this.hashArray[i12] = -1;
    }

    private final boolean shouldCompact(int i10) {
        int capacity$kotlin_stdlib = getCapacity$kotlin_stdlib();
        int i11 = this.length;
        int i12 = capacity$kotlin_stdlib - i11;
        int size = i11 - size();
        return i12 < i10 && i12 + size >= i10 && size >= getCapacity$kotlin_stdlib() / 4;
    }

    private final Object writeReplace() throws NotSerializableException {
        if (this.isReadOnly) {
            return new g(this);
        }
        throw new NotSerializableException("The map cannot be serialized while it is being built.");
    }

    public final int addKey$kotlin_stdlib(Object obj) {
        checkIsMutable$kotlin_stdlib();
        while (true) {
            int iHash = hash(obj);
            int iE = b9.d.e(this.maxProbeDistance * 2, getHashSize() / 2);
            int i10 = 0;
            while (true) {
                int i11 = this.hashArray[iHash];
                if (i11 <= 0) {
                    if (this.length < getCapacity$kotlin_stdlib()) {
                        int i12 = this.length;
                        int i13 = i12 + 1;
                        this.length = i13;
                        this.keysArray[i12] = obj;
                        this.presenceArray[i12] = iHash;
                        this.hashArray[iHash] = i13;
                        this.size = size() + 1;
                        registerModification();
                        if (i10 > this.maxProbeDistance) {
                            this.maxProbeDistance = i10;
                        }
                        return i12;
                    }
                    ensureExtraCapacity(1);
                } else {
                    if (r.a(this.keysArray[i11 - 1], obj)) {
                        return -i11;
                    }
                    i10++;
                    if (i10 > iE) {
                        rehash(getHashSize() * 2);
                        break;
                    }
                    iHash = iHash == 0 ? getHashSize() - 1 : iHash - 1;
                }
            }
        }
    }

    public final Map<Object, Object> build() {
        checkIsMutable$kotlin_stdlib();
        this.isReadOnly = true;
        if (size() > 0) {
            return this;
        }
        c cVar = Empty;
        r.c(cVar, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.builders.MapBuilder, V of kotlin.collections.builders.MapBuilder>");
        return cVar;
    }

    public final void checkIsMutable$kotlin_stdlib() {
        if (this.isReadOnly) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Map
    public void clear() {
        checkIsMutable$kotlin_stdlib();
        int i10 = this.length - 1;
        if (i10 >= 0) {
            int i11 = 0;
            while (true) {
                int[] iArr = this.presenceArray;
                int i12 = iArr[i11];
                if (i12 >= 0) {
                    this.hashArray[i12] = 0;
                    iArr[i11] = -1;
                }
                if (i11 == i10) {
                    break;
                } else {
                    i11++;
                }
            }
        }
        o8.b.d(this.keysArray, 0, this.length);
        Object[] objArr = this.valuesArray;
        if (objArr != null) {
            o8.b.d(objArr, 0, this.length);
        }
        this.size = 0;
        this.length = 0;
        registerModification();
    }

    public final boolean containsAllEntries$kotlin_stdlib(Collection<?> m10) {
        r.e(m10, "m");
        for (Object obj : m10) {
            if (obj != null) {
                try {
                    if (!containsEntry$kotlin_stdlib((Map.Entry) obj)) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean containsEntry$kotlin_stdlib(Map.Entry<Object, Object> entry) {
        r.e(entry, "entry");
        int iFindKey = findKey(entry.getKey());
        if (iFindKey < 0) {
            return false;
        }
        Object[] objArr = this.valuesArray;
        r.b(objArr);
        return r.a(objArr[iFindKey], entry.getValue());
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return findKey(obj) >= 0;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return findValue(obj) >= 0;
    }

    public final b entriesIterator$kotlin_stdlib() {
        return new b(this);
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<Object, Object>> entrySet() {
        return getEntries();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof Map) && contentEquals((Map) obj));
    }

    @Override // java.util.Map
    public Object get(Object obj) {
        int iFindKey = findKey(obj);
        if (iFindKey < 0) {
            return null;
        }
        Object[] objArr = this.valuesArray;
        r.b(objArr);
        return objArr[iFindKey];
    }

    public final int getCapacity$kotlin_stdlib() {
        return this.keysArray.length;
    }

    public Set<Map.Entry<Object, Object>> getEntries() {
        o8.d dVar = this.entriesView;
        if (dVar != null) {
            return dVar;
        }
        o8.d dVar2 = new o8.d(this);
        this.entriesView = dVar2;
        return dVar2;
    }

    public Set<Object> getKeys() {
        o8.e eVar = this.keysView;
        if (eVar != null) {
            return eVar;
        }
        o8.e eVar2 = new o8.e(this);
        this.keysView = eVar2;
        return eVar2;
    }

    public int getSize() {
        return this.size;
    }

    public Collection<Object> getValues() {
        o8.f fVar = this.valuesView;
        if (fVar != null) {
            return fVar;
        }
        o8.f fVar2 = new o8.f(this);
        this.valuesView = fVar2;
        return fVar2;
    }

    @Override // java.util.Map
    public int hashCode() {
        b bVarEntriesIterator$kotlin_stdlib = entriesIterator$kotlin_stdlib();
        int iK = 0;
        while (bVarEntriesIterator$kotlin_stdlib.hasNext()) {
            iK += bVarEntriesIterator$kotlin_stdlib.k();
        }
        return iK;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    public final boolean isReadOnly$kotlin_stdlib() {
        return this.isReadOnly;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Object> keySet() {
        return getKeys();
    }

    public final e keysIterator$kotlin_stdlib() {
        return new e(this);
    }

    @Override // java.util.Map
    public Object put(Object obj, Object obj2) {
        checkIsMutable$kotlin_stdlib();
        int iAddKey$kotlin_stdlib = addKey$kotlin_stdlib(obj);
        Object[] objArrAllocateValuesArray = allocateValuesArray();
        if (iAddKey$kotlin_stdlib >= 0) {
            objArrAllocateValuesArray[iAddKey$kotlin_stdlib] = obj2;
            return null;
        }
        int i10 = (-iAddKey$kotlin_stdlib) - 1;
        Object obj3 = objArrAllocateValuesArray[i10];
        objArrAllocateValuesArray[i10] = obj2;
        return obj3;
    }

    @Override // java.util.Map
    public void putAll(Map<Object, Object> from) {
        r.e(from, "from");
        checkIsMutable$kotlin_stdlib();
        putAllEntries(from.entrySet());
    }

    @Override // java.util.Map
    public Object remove(Object obj) {
        checkIsMutable$kotlin_stdlib();
        int iFindKey = findKey(obj);
        if (iFindKey < 0) {
            return null;
        }
        Object[] objArr = this.valuesArray;
        r.b(objArr);
        Object obj2 = objArr[iFindKey];
        removeEntryAt(iFindKey);
        return obj2;
    }

    public final boolean removeEntry$kotlin_stdlib(Map.Entry<Object, Object> entry) {
        r.e(entry, "entry");
        checkIsMutable$kotlin_stdlib();
        int iFindKey = findKey(entry.getKey());
        if (iFindKey < 0) {
            return false;
        }
        Object[] objArr = this.valuesArray;
        r.b(objArr);
        if (!r.a(objArr[iFindKey], entry.getValue())) {
            return false;
        }
        removeEntryAt(iFindKey);
        return true;
    }

    public final boolean removeKey$kotlin_stdlib(Object obj) {
        checkIsMutable$kotlin_stdlib();
        int iFindKey = findKey(obj);
        if (iFindKey < 0) {
            return false;
        }
        removeEntryAt(iFindKey);
        return true;
    }

    public final boolean removeValue$kotlin_stdlib(Object obj) {
        checkIsMutable$kotlin_stdlib();
        int iFindValue = findValue(obj);
        if (iFindValue < 0) {
            return false;
        }
        removeEntryAt(iFindValue);
        return true;
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder((size() * 3) + 2);
        sb.append("{");
        b bVarEntriesIterator$kotlin_stdlib = entriesIterator$kotlin_stdlib();
        int i10 = 0;
        while (bVarEntriesIterator$kotlin_stdlib.hasNext()) {
            if (i10 > 0) {
                sb.append(", ");
            }
            bVarEntriesIterator$kotlin_stdlib.j(sb);
            i10++;
        }
        sb.append("}");
        String string = sb.toString();
        r.d(string, "toString(...)");
        return string;
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<Object> values() {
        return getValues();
    }

    public final f valuesIterator$kotlin_stdlib() {
        return new f(this);
    }

    public c() {
        this(8);
    }

    public c(int i10) {
        this(o8.b.a(i10), null, new int[i10], new int[Companion.c(i10)], 2, 0);
    }
}
