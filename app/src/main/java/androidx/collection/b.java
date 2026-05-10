package androidx.collection;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Collection, Set, x8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int[] f1048a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object[] f1049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1050c;

    private final class a extends e {
        public a() {
            super(b.this.f());
        }

        @Override // androidx.collection.e
        protected Object a(int i10) {
            return b.this.k(i10);
        }

        @Override // androidx.collection.e
        protected void c(int i10) {
            b.this.g(i10);
        }
    }

    public b() {
        this(0, 1, null);
    }

    public final void a(int i10) {
        int iF = f();
        if (d().length < i10) {
            int[] iArrD = d();
            Object[] objArrC = c();
            d.a(this, i10);
            if (f() > 0) {
                kotlin.collections.i.m(iArrD, d(), 0, 0, f(), 6, null);
                kotlin.collections.i.n(objArrC, c(), 0, 0, f(), 6, null);
            }
        }
        if (f() != iF) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(Object obj) {
        int i10;
        int iC;
        int iF = f();
        if (obj == null) {
            iC = d.d(this);
            i10 = 0;
        } else {
            int iHashCode = obj.hashCode();
            i10 = iHashCode;
            iC = d.c(this, obj, iHashCode);
        }
        if (iC >= 0) {
            return false;
        }
        int i11 = ~iC;
        if (iF >= d().length) {
            int i12 = 8;
            if (iF >= 8) {
                i12 = (iF >> 1) + iF;
            } else if (iF < 4) {
                i12 = 4;
            }
            int[] iArrD = d();
            Object[] objArrC = c();
            d.a(this, i12);
            if (iF != f()) {
                throw new ConcurrentModificationException();
            }
            if (!(d().length == 0)) {
                kotlin.collections.i.m(iArrD, d(), 0, 0, iArrD.length, 6, null);
                kotlin.collections.i.n(objArrC, c(), 0, 0, objArrC.length, 6, null);
            }
        }
        if (i11 < iF) {
            int i13 = i11 + 1;
            kotlin.collections.i.i(d(), d(), i13, i11, iF);
            kotlin.collections.i.k(c(), c(), i13, i11, iF);
        }
        if (iF != f() || i11 >= d().length) {
            throw new ConcurrentModificationException();
        }
        d()[i11] = i10;
        c()[i11] = obj;
        j(f() + 1);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection elements) {
        r.e(elements, "elements");
        a(f() + elements.size());
        Iterator it = elements.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    public final Object[] c() {
        return this.f1049b;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        if (f() != 0) {
            i(k.a.f12875a);
            h(k.a.f12877c);
            j(0);
        }
        if (f() != 0) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection elements) {
        r.e(elements, "elements");
        Iterator it = elements.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final int[] d() {
        return this.f1048a;
    }

    public int e() {
        return this.f1050c;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof Set) && size() == ((Set) obj).size()) {
            try {
                int iF = f();
                for (int i10 = 0; i10 < iF; i10++) {
                    if (((Set) obj).contains(k(i10))) {
                    }
                }
                return true;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public final int f() {
        return this.f1050c;
    }

    public final Object g(int i10) {
        int iF = f();
        Object obj = c()[i10];
        if (iF <= 1) {
            clear();
        } else {
            int i11 = iF - 1;
            if (d().length <= 8 || f() >= d().length / 3) {
                if (i10 < i11) {
                    int i12 = i10 + 1;
                    kotlin.collections.i.i(d(), d(), i10, i12, iF);
                    kotlin.collections.i.k(c(), c(), i10, i12, iF);
                }
                c()[i11] = null;
            } else {
                int iF2 = f() > 8 ? f() + (f() >> 1) : 8;
                int[] iArrD = d();
                Object[] objArrC = c();
                d.a(this, iF2);
                if (i10 > 0) {
                    kotlin.collections.i.m(iArrD, d(), 0, 0, i10, 6, null);
                    kotlin.collections.i.n(objArrC, c(), 0, 0, i10, 6, null);
                }
                if (i10 < i11) {
                    int i13 = i10 + 1;
                    kotlin.collections.i.i(iArrD, d(), i10, i13, iF);
                    kotlin.collections.i.k(objArrC, c(), i10, i13, iF);
                }
            }
            if (iF != f()) {
                throw new ConcurrentModificationException();
            }
            j(i11);
        }
        return obj;
    }

    public final void h(Object[] objArr) {
        r.e(objArr, "<set-?>");
        this.f1049b = objArr;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArrD = d();
        int iF = f();
        int i10 = 0;
        for (int i11 = 0; i11 < iF; i11++) {
            i10 += iArrD[i11];
        }
        return i10;
    }

    public final void i(int[] iArr) {
        r.e(iArr, "<set-?>");
        this.f1048a = iArr;
    }

    public final int indexOf(Object obj) {
        return obj == null ? d.d(this) : d.c(this, obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return f() <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        return new a();
    }

    public final void j(int i10) {
        this.f1050c = i10;
    }

    public final Object k(int i10) {
        return c()[i10];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        g(iIndexOf);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection elements) {
        r.e(elements, "elements");
        Iterator it = elements.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection elements) {
        r.e(elements, "elements");
        boolean z10 = false;
        for (int iF = f() - 1; -1 < iF; iF--) {
            if (!o.M(elements, c()[iF])) {
                g(iF);
                z10 = true;
            }
        }
        return z10;
    }

    @Override // java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return e();
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        return kotlin.collections.i.p(this.f1049b, 0, this.f1050c);
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(f() * 14);
        sb.append(AbstractJsonLexerKt.BEGIN_OBJ);
        int iF = f();
        for (int i10 = 0; i10 < iF; i10++) {
            if (i10 > 0) {
                sb.append(", ");
            }
            Object objK = k(i10);
            if (objK != this) {
                sb.append(objK);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append(AbstractJsonLexerKt.END_OBJ);
        String string = sb.toString();
        r.d(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    public b(int i10) {
        this.f1048a = k.a.f12875a;
        this.f1049b = k.a.f12877c;
        if (i10 > 0) {
            d.a(this, i10);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] array) {
        r.e(array, "array");
        Object[] result = c.a(array, this.f1050c);
        kotlin.collections.i.k(this.f1049b, result, 0, 0, this.f1050c);
        r.d(result, "result");
        return result;
    }

    public /* synthetic */ b(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10);
    }
}
