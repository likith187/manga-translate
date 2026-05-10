package androidx.recyclerview.widget;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Comparator f3371a = new a();

    class a implements Comparator {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(d dVar, d dVar2) {
            return dVar.f3374a - dVar2.f3374a;
        }
    }

    public static abstract class b {
        public abstract boolean a(int i10, int i11);

        public abstract boolean b(int i10, int i11);

        public abstract Object c(int i10, int i11);

        public abstract int d();

        public abstract int e();
    }

    static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int[] f3372a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f3373b;

        c(int i10) {
            int[] iArr = new int[i10];
            this.f3372a = iArr;
            this.f3373b = iArr.length / 2;
        }

        int[] a() {
            return this.f3372a;
        }

        int b(int i10) {
            return this.f3372a[i10 + this.f3373b];
        }

        void c(int i10, int i11) {
            this.f3372a[i10 + this.f3373b] = i11;
        }
    }

    static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f3374a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f3375b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f3376c;

        d(int i10, int i11, int i12) {
            this.f3374a = i10;
            this.f3375b = i11;
            this.f3376c = i12;
        }

        int a() {
            return this.f3374a + this.f3376c;
        }

        int b() {
            return this.f3375b + this.f3376c;
        }
    }

    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f3377a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int[] f3378b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int[] f3379c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final b f3380d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f3381e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f3382f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f3383g;

        e(b bVar, List list, int[] iArr, int[] iArr2, boolean z10) {
            this.f3377a = list;
            this.f3378b = iArr;
            this.f3379c = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 0);
            this.f3380d = bVar;
            this.f3381e = bVar.e();
            this.f3382f = bVar.d();
            this.f3383g = z10;
            a();
            d();
        }

        private void a() {
            d dVar = this.f3377a.isEmpty() ? null : (d) this.f3377a.get(0);
            if (dVar == null || dVar.f3374a != 0 || dVar.f3375b != 0) {
                this.f3377a.add(0, new d(0, 0, 0));
            }
            this.f3377a.add(new d(this.f3381e, this.f3382f, 0));
        }

        private void c(int i10) {
            int size = this.f3377a.size();
            int iB = 0;
            for (int i11 = 0; i11 < size; i11++) {
                d dVar = (d) this.f3377a.get(i11);
                while (iB < dVar.f3375b) {
                    if (this.f3379c[iB] == 0 && this.f3380d.b(i10, iB)) {
                        int i12 = this.f3380d.a(i10, iB) ? 8 : 4;
                        this.f3378b[i10] = (iB << 4) | i12;
                        this.f3379c[iB] = (i10 << 4) | i12;
                        return;
                    }
                    iB++;
                }
                iB = dVar.b();
            }
        }

        private void d() {
            for (d dVar : this.f3377a) {
                for (int i10 = 0; i10 < dVar.f3376c; i10++) {
                    int i11 = dVar.f3374a + i10;
                    int i12 = dVar.f3375b + i10;
                    int i13 = this.f3380d.a(i11, i12) ? 1 : 2;
                    this.f3378b[i11] = (i12 << 4) | i13;
                    this.f3379c[i12] = (i11 << 4) | i13;
                }
            }
            if (this.f3383g) {
                e();
            }
        }

        private void e() {
            int iA = 0;
            for (d dVar : this.f3377a) {
                while (iA < dVar.f3374a) {
                    if (this.f3378b[iA] == 0) {
                        c(iA);
                    }
                    iA++;
                }
                iA = dVar.a();
            }
        }

        private static g f(Collection collection, int i10, boolean z10) {
            g gVar;
            Iterator it = collection.iterator();
            while (true) {
                if (!it.hasNext()) {
                    gVar = null;
                    break;
                }
                gVar = (g) it.next();
                if (gVar.f3384a == i10 && gVar.f3386c == z10) {
                    it.remove();
                    break;
                }
            }
            while (it.hasNext()) {
                g gVar2 = (g) it.next();
                if (z10) {
                    gVar2.f3385b--;
                } else {
                    gVar2.f3385b++;
                }
            }
            return gVar;
        }

        public void b(r rVar) {
            int i10;
            androidx.recyclerview.widget.e eVar = rVar instanceof androidx.recyclerview.widget.e ? (androidx.recyclerview.widget.e) rVar : new androidx.recyclerview.widget.e(rVar);
            int i11 = this.f3381e;
            ArrayDeque arrayDeque = new ArrayDeque();
            int i12 = this.f3381e;
            int i13 = this.f3382f;
            for (int size = this.f3377a.size() - 1; size >= 0; size--) {
                d dVar = (d) this.f3377a.get(size);
                int iA = dVar.a();
                int iB = dVar.b();
                while (true) {
                    if (i12 <= iA) {
                        break;
                    }
                    i12--;
                    int i14 = this.f3378b[i12];
                    if ((i14 & 12) != 0) {
                        int i15 = i14 >> 4;
                        g gVarF = f(arrayDeque, i15, false);
                        if (gVarF != null) {
                            int i16 = (i11 - gVarF.f3385b) - 1;
                            eVar.b(i12, i16);
                            if ((i14 & 4) != 0) {
                                eVar.d(i16, 1, this.f3380d.c(i12, i15));
                            }
                        } else {
                            arrayDeque.add(new g(i12, (i11 - i12) - 1, true));
                        }
                    } else {
                        eVar.a(i12, 1);
                        i11--;
                    }
                }
                while (i13 > iB) {
                    i13--;
                    int i17 = this.f3379c[i13];
                    if ((i17 & 12) != 0) {
                        int i18 = i17 >> 4;
                        g gVarF2 = f(arrayDeque, i18, true);
                        if (gVarF2 == null) {
                            arrayDeque.add(new g(i13, i11 - i12, false));
                        } else {
                            eVar.b((i11 - gVarF2.f3385b) - 1, i12);
                            if ((i17 & 4) != 0) {
                                eVar.d(i12, 1, this.f3380d.c(i18, i13));
                            }
                        }
                    } else {
                        eVar.c(i12, 1);
                        i11++;
                    }
                }
                int i19 = dVar.f3374a;
                int i20 = dVar.f3375b;
                for (i10 = 0; i10 < dVar.f3376c; i10++) {
                    if ((this.f3378b[i19] & 15) == 2) {
                        eVar.d(i19, 1, this.f3380d.c(i19, i20));
                    }
                    i19++;
                    i20++;
                }
                i12 = dVar.f3374a;
                i13 = dVar.f3375b;
            }
            eVar.e();
        }
    }

    public static abstract class f {
        public abstract boolean areContentsTheSame(Object obj, Object obj2);

        public abstract boolean areItemsTheSame(Object obj, Object obj2);

        public Object getChangePayload(Object obj, Object obj2) {
            return null;
        }
    }

    private static class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f3384a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f3385b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f3386c;

        g(int i10, int i11, boolean z10) {
            this.f3384a = i10;
            this.f3385b = i11;
            this.f3386c = z10;
        }
    }

    static class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f3387a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f3388b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f3389c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f3390d;

        public h() {
        }

        int a() {
            return this.f3390d - this.f3389c;
        }

        int b() {
            return this.f3388b - this.f3387a;
        }

        public h(int i10, int i11, int i12, int i13) {
            this.f3387a = i10;
            this.f3388b = i11;
            this.f3389c = i12;
            this.f3390d = i13;
        }
    }

    static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f3391a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f3392b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f3393c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f3394d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f3395e;

        i() {
        }

        int a() {
            return Math.min(this.f3393c - this.f3391a, this.f3394d - this.f3392b);
        }

        boolean b() {
            return this.f3394d - this.f3392b != this.f3393c - this.f3391a;
        }

        boolean c() {
            return this.f3394d - this.f3392b > this.f3393c - this.f3391a;
        }

        d d() {
            if (b()) {
                return this.f3395e ? new d(this.f3391a, this.f3392b, a()) : c() ? new d(this.f3391a, this.f3392b + 1, a()) : new d(this.f3391a + 1, this.f3392b, a());
            }
            int i10 = this.f3391a;
            return new d(i10, this.f3392b, this.f3393c - i10);
        }
    }

    private static i a(h hVar, b bVar, c cVar, c cVar2, int i10) {
        int iB;
        int i11;
        int i12;
        boolean z10 = (hVar.b() - hVar.a()) % 2 == 0;
        int iB2 = hVar.b() - hVar.a();
        int i13 = -i10;
        for (int i14 = i13; i14 <= i10; i14 += 2) {
            if (i14 == i13 || (i14 != i10 && cVar2.b(i14 + 1) < cVar2.b(i14 - 1))) {
                iB = cVar2.b(i14 + 1);
                i11 = iB;
            } else {
                iB = cVar2.b(i14 - 1);
                i11 = iB - 1;
            }
            int i15 = hVar.f3390d - ((hVar.f3388b - i11) - i14);
            int i16 = (i10 == 0 || i11 != iB) ? i15 : i15 + 1;
            while (i11 > hVar.f3387a && i15 > hVar.f3389c && bVar.b(i11 - 1, i15 - 1)) {
                i11--;
                i15--;
            }
            cVar2.c(i14, i11);
            if (z10 && (i12 = iB2 - i14) >= i13 && i12 <= i10 && cVar.b(i12) >= i11) {
                i iVar = new i();
                iVar.f3391a = i11;
                iVar.f3392b = i15;
                iVar.f3393c = iB;
                iVar.f3394d = i16;
                iVar.f3395e = true;
                return iVar;
            }
        }
        return null;
    }

    public static e b(b bVar) {
        return c(bVar, true);
    }

    public static e c(b bVar, boolean z10) {
        int iE = bVar.e();
        int iD = bVar.d();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new h(0, iE, 0, iD));
        int i10 = ((((iE + iD) + 1) / 2) * 2) + 1;
        c cVar = new c(i10);
        c cVar2 = new c(i10);
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            h hVar = (h) arrayList2.remove(arrayList2.size() - 1);
            i iVarE = e(hVar, bVar, cVar, cVar2);
            if (iVarE != null) {
                if (iVarE.a() > 0) {
                    arrayList.add(iVarE.d());
                }
                h hVar2 = arrayList3.isEmpty() ? new h() : (h) arrayList3.remove(arrayList3.size() - 1);
                hVar2.f3387a = hVar.f3387a;
                hVar2.f3389c = hVar.f3389c;
                hVar2.f3388b = iVarE.f3391a;
                hVar2.f3390d = iVarE.f3392b;
                arrayList2.add(hVar2);
                hVar.f3388b = hVar.f3388b;
                hVar.f3390d = hVar.f3390d;
                hVar.f3387a = iVarE.f3393c;
                hVar.f3389c = iVarE.f3394d;
                arrayList2.add(hVar);
            } else {
                arrayList3.add(hVar);
            }
        }
        Collections.sort(arrayList, f3371a);
        return new e(bVar, arrayList, cVar.a(), cVar2.a(), z10);
    }

    private static i d(h hVar, b bVar, c cVar, c cVar2, int i10) {
        int iB;
        int i11;
        int i12;
        boolean z10 = Math.abs(hVar.b() - hVar.a()) % 2 == 1;
        int iB2 = hVar.b() - hVar.a();
        int i13 = -i10;
        for (int i14 = i13; i14 <= i10; i14 += 2) {
            if (i14 == i13 || (i14 != i10 && cVar.b(i14 + 1) > cVar.b(i14 - 1))) {
                iB = cVar.b(i14 + 1);
                i11 = iB;
            } else {
                iB = cVar.b(i14 - 1);
                i11 = iB + 1;
            }
            int i15 = (hVar.f3389c + (i11 - hVar.f3387a)) - i14;
            int i16 = (i10 == 0 || i11 != iB) ? i15 : i15 - 1;
            while (i11 < hVar.f3388b && i15 < hVar.f3390d && bVar.b(i11, i15)) {
                i11++;
                i15++;
            }
            cVar.c(i14, i11);
            if (z10 && (i12 = iB2 - i14) >= i13 + 1 && i12 <= i10 - 1 && cVar2.b(i12) <= i11) {
                i iVar = new i();
                iVar.f3391a = iB;
                iVar.f3392b = i16;
                iVar.f3393c = i11;
                iVar.f3394d = i15;
                iVar.f3395e = false;
                return iVar;
            }
        }
        return null;
    }

    private static i e(h hVar, b bVar, c cVar, c cVar2) {
        if (hVar.b() >= 1 && hVar.a() >= 1) {
            int iB = ((hVar.b() + hVar.a()) + 1) / 2;
            cVar.c(1, hVar.f3387a);
            cVar2.c(1, hVar.f3388b);
            for (int i10 = 0; i10 < iB; i10++) {
                i iVarD = d(hVar, bVar, cVar, cVar2, i10);
                if (iVarD != null) {
                    return iVarD;
                }
                i iVarA = a(hVar, bVar, cVar, cVar2, i10);
                if (iVarA != null) {
                    return iVarA;
                }
            }
        }
        return null;
    }
}
