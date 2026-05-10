package kotlin.collections;

import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class h extends e {

    /* JADX INFO: renamed from: f */
    public static final a f13024f = new a(null);

    /* JADX INFO: renamed from: h */
    private static final Object[] f13025h = new Object[0];

    /* JADX INFO: renamed from: a */
    private int f13026a;

    /* JADX INFO: renamed from: b */
    private Object[] f13027b = f13025h;

    /* JADX INFO: renamed from: c */
    private int f13028c;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void d(int i10, Collection collection) {
        Iterator it = collection.iterator();
        int length = this.f13027b.length;
        while (i10 < length && it.hasNext()) {
            this.f13027b[i10] = it.next();
            i10++;
        }
        int i11 = this.f13026a;
        for (int i12 = 0; i12 < i11 && it.hasNext(); i12++) {
            this.f13027b[i12] = it.next();
        }
        this.f13028c = size() + collection.size();
    }

    private final void e(int i10) {
        Object[] objArr = new Object[i10];
        Object[] objArr2 = this.f13027b;
        i.k(objArr2, objArr, 0, this.f13026a, objArr2.length);
        Object[] objArr3 = this.f13027b;
        int length = objArr3.length;
        int i11 = this.f13026a;
        i.k(objArr3, objArr, length - i11, 0, i11);
        this.f13026a = 0;
        this.f13027b = objArr;
    }

    private final int f(int i10) {
        return i10 == 0 ? i.G(this.f13027b) : i10 - 1;
    }

    private final void g(int i10) {
        if (i10 < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.f13027b;
        if (i10 <= objArr.length) {
            return;
        }
        if (objArr == f13025h) {
            this.f13027b = new Object[b9.d.c(i10, 10)];
        } else {
            e(c.Companion.e(objArr.length, i10));
        }
    }

    private final int h(int i10) {
        if (i10 == i.G(this.f13027b)) {
            return 0;
        }
        return i10 + 1;
    }

    private final int i(int i10) {
        return i10 < 0 ? i10 + this.f13027b.length : i10;
    }

    private final void j(int i10, int i11) {
        if (i10 < i11) {
            i.q(this.f13027b, null, i10, i11);
            return;
        }
        Object[] objArr = this.f13027b;
        i.q(objArr, null, i10, objArr.length);
        i.q(this.f13027b, null, 0, i11);
    }

    private final int k(int i10) {
        Object[] objArr = this.f13027b;
        return i10 >= objArr.length ? i10 - objArr.length : i10;
    }

    private final void l() {
        ((AbstractList) this).modCount++;
    }

    private final void o(int i10, int i11) {
        int iK = k(this.f13026a + (i10 - 1));
        int iK2 = k(this.f13026a + (i11 - 1));
        while (i10 > 0) {
            int i12 = iK + 1;
            int iMin = Math.min(i10, Math.min(i12, iK2 + 1));
            Object[] objArr = this.f13027b;
            int i13 = iK2 - iMin;
            int i14 = iK - iMin;
            i.k(objArr, objArr, i13 + 1, i14 + 1, i12);
            iK = i(i14);
            iK2 = i(i13);
            i10 -= iMin;
        }
    }

    private final void p(int i10, int i11) {
        int iK = k(this.f13026a + i11);
        int iK2 = k(this.f13026a + i10);
        int size = size();
        while (true) {
            size -= i11;
            if (size <= 0) {
                return;
            }
            Object[] objArr = this.f13027b;
            i11 = Math.min(size, Math.min(objArr.length - iK, objArr.length - iK2));
            Object[] objArr2 = this.f13027b;
            int i12 = iK + i11;
            i.k(objArr2, objArr2, iK2, iK, i12);
            iK = k(i12);
            iK2 = k(iK2 + i11);
        }
    }

    @Override // kotlin.collections.e
    public int a() {
        return this.f13028c;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        addLast(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection elements) {
        kotlin.jvm.internal.r.e(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        l();
        g(size() + elements.size());
        d(k(this.f13026a + size()), elements);
        return true;
    }

    public final void addFirst(Object obj) {
        l();
        g(size() + 1);
        int iF = f(this.f13026a);
        this.f13026a = iF;
        this.f13027b[iF] = obj;
        this.f13028c = size() + 1;
    }

    public final void addLast(Object obj) {
        l();
        g(size() + 1);
        this.f13027b[k(this.f13026a + size())] = obj;
        this.f13028c = size() + 1;
    }

    @Override // kotlin.collections.e
    public Object c(int i10) {
        c.Companion.b(i10, size());
        if (i10 == o.j(this)) {
            return removeLast();
        }
        if (i10 == 0) {
            return removeFirst();
        }
        l();
        int iK = k(this.f13026a + i10);
        Object obj = this.f13027b[iK];
        if (i10 < (size() >> 1)) {
            int i11 = this.f13026a;
            if (iK >= i11) {
                Object[] objArr = this.f13027b;
                i.k(objArr, objArr, i11 + 1, i11, iK);
            } else {
                Object[] objArr2 = this.f13027b;
                i.k(objArr2, objArr2, 1, 0, iK);
                Object[] objArr3 = this.f13027b;
                objArr3[0] = objArr3[objArr3.length - 1];
                int i12 = this.f13026a;
                i.k(objArr3, objArr3, i12 + 1, i12, objArr3.length - 1);
            }
            Object[] objArr4 = this.f13027b;
            int i13 = this.f13026a;
            objArr4[i13] = null;
            this.f13026a = h(i13);
        } else {
            int iK2 = k(this.f13026a + o.j(this));
            if (iK <= iK2) {
                Object[] objArr5 = this.f13027b;
                i.k(objArr5, objArr5, iK, iK + 1, iK2 + 1);
            } else {
                Object[] objArr6 = this.f13027b;
                i.k(objArr6, objArr6, iK, iK + 1, objArr6.length);
                Object[] objArr7 = this.f13027b;
                objArr7[objArr7.length - 1] = objArr7[0];
                i.k(objArr7, objArr7, 0, 1, iK2 + 1);
            }
            this.f13027b[iK2] = null;
        }
        this.f13028c = size() - 1;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        if (!isEmpty()) {
            l();
            j(this.f13026a, k(this.f13026a + size()));
        }
        this.f13026a = 0;
        this.f13028c = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i10) {
        c.Companion.b(i10, size());
        return this.f13027b[k(this.f13026a + i10)];
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        int i10;
        int iK = k(this.f13026a + size());
        int length = this.f13026a;
        if (length < iK) {
            while (length < iK) {
                if (kotlin.jvm.internal.r.a(obj, this.f13027b[length])) {
                    i10 = this.f13026a;
                } else {
                    length++;
                }
            }
            return -1;
        }
        if (length < iK) {
            return -1;
        }
        int length2 = this.f13027b.length;
        while (true) {
            if (length >= length2) {
                for (int i11 = 0; i11 < iK; i11++) {
                    if (kotlin.jvm.internal.r.a(obj, this.f13027b[i11])) {
                        length = i11 + this.f13027b.length;
                        i10 = this.f13026a;
                    }
                }
                return -1;
            }
            if (kotlin.jvm.internal.r.a(obj, this.f13027b[length])) {
                i10 = this.f13026a;
                break;
            }
            length++;
        }
        return length - i10;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        int iG;
        int i10;
        int iK = k(this.f13026a + size());
        int i11 = this.f13026a;
        if (i11 < iK) {
            iG = iK - 1;
            if (i11 <= iG) {
                while (!kotlin.jvm.internal.r.a(obj, this.f13027b[iG])) {
                    if (iG != i11) {
                        iG--;
                    }
                }
                i10 = this.f13026a;
                return iG - i10;
            }
            return -1;
        }
        if (i11 > iK) {
            int i12 = iK - 1;
            while (true) {
                if (-1 >= i12) {
                    iG = i.G(this.f13027b);
                    int i13 = this.f13026a;
                    if (i13 <= iG) {
                        while (!kotlin.jvm.internal.r.a(obj, this.f13027b[iG])) {
                            if (iG != i13) {
                                iG--;
                            }
                        }
                        i10 = this.f13026a;
                    }
                } else {
                    if (kotlin.jvm.internal.r.a(obj, this.f13027b[i12])) {
                        iG = i12 + this.f13027b.length;
                        i10 = this.f13026a;
                        break;
                    }
                    i12--;
                }
            }
            return iG - i10;
        }
        return -1;
    }

    public final Object m() {
        if (isEmpty()) {
            return null;
        }
        return removeFirst();
    }

    public final Object n() {
        if (isEmpty()) {
            return null;
        }
        return removeLast();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection elements) {
        int iK;
        kotlin.jvm.internal.r.e(elements, "elements");
        boolean z10 = false;
        z10 = false;
        z10 = false;
        if (!isEmpty() && this.f13027b.length != 0) {
            int iK2 = k(this.f13026a + size());
            int i10 = this.f13026a;
            if (i10 < iK2) {
                iK = i10;
                while (i10 < iK2) {
                    Object obj = this.f13027b[i10];
                    if (elements.contains(obj)) {
                        z10 = true;
                    } else {
                        this.f13027b[iK] = obj;
                        iK++;
                    }
                    i10++;
                }
                i.q(this.f13027b, null, iK, iK2);
            } else {
                int length = this.f13027b.length;
                boolean z11 = false;
                int i11 = i10;
                while (i10 < length) {
                    Object[] objArr = this.f13027b;
                    Object obj2 = objArr[i10];
                    objArr[i10] = null;
                    if (elements.contains(obj2)) {
                        z11 = true;
                    } else {
                        this.f13027b[i11] = obj2;
                        i11++;
                    }
                    i10++;
                }
                iK = k(i11);
                for (int i12 = 0; i12 < iK2; i12++) {
                    Object[] objArr2 = this.f13027b;
                    Object obj3 = objArr2[i12];
                    objArr2[i12] = null;
                    if (elements.contains(obj3)) {
                        z11 = true;
                    } else {
                        this.f13027b[iK] = obj3;
                        iK = h(iK);
                    }
                }
                z10 = z11;
            }
            if (z10) {
                l();
                this.f13028c = i(iK - this.f13026a);
            }
        }
        return z10;
    }

    public final Object removeFirst() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        l();
        Object[] objArr = this.f13027b;
        int i10 = this.f13026a;
        Object obj = objArr[i10];
        objArr[i10] = null;
        this.f13026a = h(i10);
        this.f13028c = size() - 1;
        return obj;
    }

    public final Object removeLast() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        l();
        int iK = k(this.f13026a + o.j(this));
        Object[] objArr = this.f13027b;
        Object obj = objArr[iK];
        objArr[iK] = null;
        this.f13028c = size() - 1;
        return obj;
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i10, int i11) {
        c.Companion.d(i10, i11, size());
        int i12 = i11 - i10;
        if (i12 == 0) {
            return;
        }
        if (i12 == size()) {
            clear();
            return;
        }
        if (i12 == 1) {
            remove(i10);
            return;
        }
        l();
        if (i10 < size() - i11) {
            o(i10, i11);
            int iK = k(this.f13026a + i12);
            j(this.f13026a, iK);
            this.f13026a = iK;
        } else {
            p(i10, i11);
            int iK2 = k(this.f13026a + size());
            j(i(iK2 - i12), iK2);
        }
        this.f13028c = size() - i12;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection elements) {
        int iK;
        kotlin.jvm.internal.r.e(elements, "elements");
        boolean z10 = false;
        z10 = false;
        z10 = false;
        if (!isEmpty() && this.f13027b.length != 0) {
            int iK2 = k(this.f13026a + size());
            int i10 = this.f13026a;
            if (i10 < iK2) {
                iK = i10;
                while (i10 < iK2) {
                    Object obj = this.f13027b[i10];
                    if (elements.contains(obj)) {
                        this.f13027b[iK] = obj;
                        iK++;
                    } else {
                        z10 = true;
                    }
                    i10++;
                }
                i.q(this.f13027b, null, iK, iK2);
            } else {
                int length = this.f13027b.length;
                boolean z11 = false;
                int i11 = i10;
                while (i10 < length) {
                    Object[] objArr = this.f13027b;
                    Object obj2 = objArr[i10];
                    objArr[i10] = null;
                    if (elements.contains(obj2)) {
                        this.f13027b[i11] = obj2;
                        i11++;
                    } else {
                        z11 = true;
                    }
                    i10++;
                }
                iK = k(i11);
                for (int i12 = 0; i12 < iK2; i12++) {
                    Object[] objArr2 = this.f13027b;
                    Object obj3 = objArr2[i12];
                    objArr2[i12] = null;
                    if (elements.contains(obj3)) {
                        this.f13027b[iK] = obj3;
                        iK = h(iK);
                    } else {
                        z11 = true;
                    }
                }
                z10 = z11;
            }
            if (z10) {
                l();
                this.f13028c = i(iK - this.f13026a);
            }
        }
        return z10;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i10, Object obj) {
        c.Companion.b(i10, size());
        int iK = k(this.f13026a + i10);
        Object[] objArr = this.f13027b;
        Object obj2 = objArr[iK];
        objArr[iK] = obj;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray(Object[] array) {
        kotlin.jvm.internal.r.e(array, "array");
        if (array.length < size()) {
            array = j.a(array, size());
        }
        int iK = k(this.f13026a + size());
        int i10 = this.f13026a;
        if (i10 < iK) {
            i.n(this.f13027b, array, 0, i10, iK, 2, null);
        } else if (!isEmpty()) {
            Object[] objArr = this.f13027b;
            i.k(objArr, array, 0, this.f13026a, objArr.length);
            Object[] objArr2 = this.f13027b;
            i.k(objArr2, array, objArr2.length - this.f13026a, 0, iK);
        }
        return p.c(size(), array);
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i10, Object obj) {
        c.Companion.c(i10, size());
        if (i10 == size()) {
            addLast(obj);
            return;
        }
        if (i10 == 0) {
            addFirst(obj);
            return;
        }
        l();
        g(size() + 1);
        int iK = k(this.f13026a + i10);
        if (i10 < ((size() + 1) >> 1)) {
            int iF = f(iK);
            int iF2 = f(this.f13026a);
            int i11 = this.f13026a;
            if (iF >= i11) {
                Object[] objArr = this.f13027b;
                objArr[iF2] = objArr[i11];
                i.k(objArr, objArr, i11, i11 + 1, iF + 1);
            } else {
                Object[] objArr2 = this.f13027b;
                i.k(objArr2, objArr2, i11 - 1, i11, objArr2.length);
                Object[] objArr3 = this.f13027b;
                objArr3[objArr3.length - 1] = objArr3[0];
                i.k(objArr3, objArr3, 0, 1, iF + 1);
            }
            this.f13027b[iF] = obj;
            this.f13026a = iF2;
        } else {
            int iK2 = k(this.f13026a + size());
            if (iK < iK2) {
                Object[] objArr4 = this.f13027b;
                i.k(objArr4, objArr4, iK + 1, iK, iK2);
            } else {
                Object[] objArr5 = this.f13027b;
                i.k(objArr5, objArr5, 1, 0, iK2);
                Object[] objArr6 = this.f13027b;
                objArr6[0] = objArr6[objArr6.length - 1];
                i.k(objArr6, objArr6, iK + 1, iK, objArr6.length - 1);
            }
            this.f13027b[iK] = obj;
        }
        this.f13028c = size() + 1;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i10, Collection elements) {
        kotlin.jvm.internal.r.e(elements, "elements");
        c.Companion.c(i10, size());
        if (elements.isEmpty()) {
            return false;
        }
        if (i10 == size()) {
            return addAll(elements);
        }
        l();
        g(size() + elements.size());
        int iK = k(this.f13026a + size());
        int iK2 = k(this.f13026a + i10);
        int size = elements.size();
        if (i10 < ((size() + 1) >> 1)) {
            int i11 = this.f13026a;
            int length = i11 - size;
            if (iK2 < i11) {
                Object[] objArr = this.f13027b;
                i.k(objArr, objArr, length, i11, objArr.length);
                if (size >= iK2) {
                    Object[] objArr2 = this.f13027b;
                    i.k(objArr2, objArr2, objArr2.length - size, 0, iK2);
                } else {
                    Object[] objArr3 = this.f13027b;
                    i.k(objArr3, objArr3, objArr3.length - size, 0, size);
                    Object[] objArr4 = this.f13027b;
                    i.k(objArr4, objArr4, 0, size, iK2);
                }
            } else if (length >= 0) {
                Object[] objArr5 = this.f13027b;
                i.k(objArr5, objArr5, length, i11, iK2);
            } else {
                Object[] objArr6 = this.f13027b;
                length += objArr6.length;
                int i12 = iK2 - i11;
                int length2 = objArr6.length - length;
                if (length2 >= i12) {
                    i.k(objArr6, objArr6, length, i11, iK2);
                } else {
                    i.k(objArr6, objArr6, length, i11, i11 + length2);
                    Object[] objArr7 = this.f13027b;
                    i.k(objArr7, objArr7, 0, this.f13026a + length2, iK2);
                }
            }
            this.f13026a = length;
            d(i(iK2 - size), elements);
        } else {
            int i13 = iK2 + size;
            if (iK2 < iK) {
                int i14 = size + iK;
                Object[] objArr8 = this.f13027b;
                if (i14 <= objArr8.length) {
                    i.k(objArr8, objArr8, i13, iK2, iK);
                } else if (i13 >= objArr8.length) {
                    i.k(objArr8, objArr8, i13 - objArr8.length, iK2, iK);
                } else {
                    int length3 = iK - (i14 - objArr8.length);
                    i.k(objArr8, objArr8, 0, length3, iK);
                    Object[] objArr9 = this.f13027b;
                    i.k(objArr9, objArr9, i13, iK2, length3);
                }
            } else {
                Object[] objArr10 = this.f13027b;
                i.k(objArr10, objArr10, size, 0, iK);
                Object[] objArr11 = this.f13027b;
                if (i13 >= objArr11.length) {
                    i.k(objArr11, objArr11, i13 - objArr11.length, iK2, objArr11.length);
                } else {
                    i.k(objArr11, objArr11, 0, objArr11.length - size, objArr11.length);
                    Object[] objArr12 = this.f13027b;
                    i.k(objArr12, objArr12, i13, iK2, objArr12.length - size);
                }
            }
            d(iK2, elements);
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }
}
