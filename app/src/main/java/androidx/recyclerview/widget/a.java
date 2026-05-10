package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.s;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class a implements s.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c0.e f3245a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ArrayList f3246b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ArrayList f3247c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final InterfaceC0038a f3248d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Runnable f3249e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final boolean f3250f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final s f3251g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f3252h;

    /* JADX INFO: renamed from: androidx.recyclerview.widget.a$a, reason: collision with other inner class name */
    interface InterfaceC0038a {
        void a(int i10, int i11);

        void b(b bVar);

        RecyclerView.d0 c(int i10);

        void d(int i10, int i11);

        void e(int i10, int i11);

        void f(int i10, int i11);

        void g(b bVar);

        void h(int i10, int i11, Object obj);
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f3253a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f3254b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Object f3255c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f3256d;

        b(int i10, int i11, int i12, Object obj) {
            this.f3253a = i10;
            this.f3254b = i11;
            this.f3256d = i12;
            this.f3255c = obj;
        }

        String a() {
            int i10 = this.f3253a;
            return i10 != 1 ? i10 != 2 ? i10 != 4 ? i10 != 8 ? "??" : "mv" : "up" : "rm" : "add";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            int i10 = this.f3253a;
            if (i10 != bVar.f3253a) {
                return false;
            }
            if (i10 == 8 && Math.abs(this.f3256d - this.f3254b) == 1 && this.f3256d == bVar.f3254b && this.f3254b == bVar.f3256d) {
                return true;
            }
            if (this.f3256d != bVar.f3256d || this.f3254b != bVar.f3254b) {
                return false;
            }
            Object obj2 = this.f3255c;
            if (obj2 != null) {
                if (!obj2.equals(bVar.f3255c)) {
                    return false;
                }
            } else if (bVar.f3255c != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.f3253a * 31) + this.f3254b) * 31) + this.f3256d;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + a() + ",s:" + this.f3254b + "c:" + this.f3256d + ",p:" + this.f3255c + "]";
        }
    }

    a(InterfaceC0038a interfaceC0038a) {
        this(interfaceC0038a, false);
    }

    private void c(b bVar) {
        v(bVar);
    }

    private void d(b bVar) {
        v(bVar);
    }

    private void f(b bVar) {
        boolean z10;
        byte b10;
        int i10 = bVar.f3254b;
        int i11 = bVar.f3256d + i10;
        byte b11 = -1;
        int i12 = i10;
        int i13 = 0;
        while (i12 < i11) {
            if (this.f3248d.c(i12) != null || h(i12)) {
                if (b11 == 0) {
                    k(b(2, i10, i13, null));
                    z10 = true;
                } else {
                    z10 = false;
                }
                b10 = 1;
            } else {
                if (b11 == 1) {
                    v(b(2, i10, i13, null));
                    z10 = true;
                } else {
                    z10 = false;
                }
                b10 = 0;
            }
            if (z10) {
                i12 -= i13;
                i11 -= i13;
                i13 = 1;
            } else {
                i13++;
            }
            i12++;
            b11 = b10;
        }
        if (i13 != bVar.f3256d) {
            a(bVar);
            bVar = b(2, i10, i13, null);
        }
        if (b11 == 0) {
            k(bVar);
        } else {
            v(bVar);
        }
    }

    private void g(b bVar) {
        int i10 = bVar.f3254b;
        int i11 = bVar.f3256d + i10;
        int i12 = 0;
        byte b10 = -1;
        int i13 = i10;
        while (i10 < i11) {
            if (this.f3248d.c(i10) != null || h(i10)) {
                if (b10 == 0) {
                    k(b(4, i13, i12, bVar.f3255c));
                    i13 = i10;
                    i12 = 0;
                }
                b10 = 1;
            } else {
                if (b10 == 1) {
                    v(b(4, i13, i12, bVar.f3255c));
                    i13 = i10;
                    i12 = 0;
                }
                b10 = 0;
            }
            i12++;
            i10++;
        }
        if (i12 != bVar.f3256d) {
            Object obj = bVar.f3255c;
            a(bVar);
            bVar = b(4, i13, i12, obj);
        }
        if (b10 == 0) {
            k(bVar);
        } else {
            v(bVar);
        }
    }

    private boolean h(int i10) {
        int size = this.f3247c.size();
        for (int i11 = 0; i11 < size; i11++) {
            b bVar = (b) this.f3247c.get(i11);
            int i12 = bVar.f3253a;
            if (i12 == 8) {
                if (n(bVar.f3256d, i11 + 1) == i10) {
                    return true;
                }
            } else if (i12 == 1) {
                int i13 = bVar.f3254b;
                int i14 = bVar.f3256d + i13;
                while (i13 < i14) {
                    if (n(i13, i11 + 1) == i10) {
                        return true;
                    }
                    i13++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    private void k(b bVar) {
        int i10;
        int i11 = bVar.f3253a;
        if (i11 == 1 || i11 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iZ = z(bVar.f3254b, i11);
        int i12 = bVar.f3254b;
        int i13 = bVar.f3253a;
        if (i13 == 2) {
            i10 = 0;
        } else {
            if (i13 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + bVar);
            }
            i10 = 1;
        }
        int i14 = 1;
        for (int i15 = 1; i15 < bVar.f3256d; i15++) {
            int iZ2 = z(bVar.f3254b + (i10 * i15), bVar.f3253a);
            int i16 = bVar.f3253a;
            if (i16 == 2 ? iZ2 != iZ : !(i16 == 4 && iZ2 == iZ + 1)) {
                b bVarB = b(i16, iZ, i14, bVar.f3255c);
                l(bVarB, i12);
                a(bVarB);
                if (bVar.f3253a == 4) {
                    i12 += i14;
                }
                i14 = 1;
                iZ = iZ2;
            } else {
                i14++;
            }
        }
        Object obj = bVar.f3255c;
        a(bVar);
        if (i14 > 0) {
            b bVarB2 = b(bVar.f3253a, iZ, i14, obj);
            l(bVarB2, i12);
            a(bVarB2);
        }
    }

    private void v(b bVar) {
        this.f3247c.add(bVar);
        int i10 = bVar.f3253a;
        if (i10 == 1) {
            this.f3248d.e(bVar.f3254b, bVar.f3256d);
            return;
        }
        if (i10 == 2) {
            this.f3248d.d(bVar.f3254b, bVar.f3256d);
            return;
        }
        if (i10 == 4) {
            this.f3248d.h(bVar.f3254b, bVar.f3256d, bVar.f3255c);
        } else {
            if (i10 == 8) {
                this.f3248d.a(bVar.f3254b, bVar.f3256d);
                return;
            }
            throw new IllegalArgumentException("Unknown update op type for " + bVar);
        }
    }

    private int z(int i10, int i11) {
        int i12;
        int i13;
        for (int size = this.f3247c.size() - 1; size >= 0; size--) {
            b bVar = (b) this.f3247c.get(size);
            int i14 = bVar.f3253a;
            if (i14 == 8) {
                int i15 = bVar.f3254b;
                int i16 = bVar.f3256d;
                if (i15 < i16) {
                    i13 = i15;
                    i12 = i16;
                } else {
                    i12 = i15;
                    i13 = i16;
                }
                if (i10 < i13 || i10 > i12) {
                    if (i10 < i15) {
                        if (i11 == 1) {
                            bVar.f3254b = i15 + 1;
                            bVar.f3256d = i16 + 1;
                        } else if (i11 == 2) {
                            bVar.f3254b = i15 - 1;
                            bVar.f3256d = i16 - 1;
                        }
                    }
                } else if (i13 == i15) {
                    if (i11 == 1) {
                        bVar.f3256d = i16 + 1;
                    } else if (i11 == 2) {
                        bVar.f3256d = i16 - 1;
                    }
                    i10++;
                } else {
                    if (i11 == 1) {
                        bVar.f3254b = i15 + 1;
                    } else if (i11 == 2) {
                        bVar.f3254b = i15 - 1;
                    }
                    i10--;
                }
            } else {
                int i17 = bVar.f3254b;
                if (i17 <= i10) {
                    if (i14 == 1) {
                        i10 -= bVar.f3256d;
                    } else if (i14 == 2) {
                        i10 += bVar.f3256d;
                    }
                } else if (i11 == 1) {
                    bVar.f3254b = i17 + 1;
                } else if (i11 == 2) {
                    bVar.f3254b = i17 - 1;
                }
            }
        }
        for (int size2 = this.f3247c.size() - 1; size2 >= 0; size2--) {
            b bVar2 = (b) this.f3247c.get(size2);
            if (bVar2.f3253a == 8) {
                int i18 = bVar2.f3256d;
                if (i18 == bVar2.f3254b || i18 < 0) {
                    this.f3247c.remove(size2);
                    a(bVar2);
                }
            } else if (bVar2.f3256d <= 0) {
                this.f3247c.remove(size2);
                a(bVar2);
            }
        }
        return i10;
    }

    @Override // androidx.recyclerview.widget.s.a
    public void a(b bVar) {
        if (this.f3250f) {
            return;
        }
        bVar.f3255c = null;
        this.f3245a.a(bVar);
    }

    @Override // androidx.recyclerview.widget.s.a
    public b b(int i10, int i11, int i12, Object obj) {
        b bVar = (b) this.f3245a.b();
        if (bVar == null) {
            return new b(i10, i11, i12, obj);
        }
        bVar.f3253a = i10;
        bVar.f3254b = i11;
        bVar.f3256d = i12;
        bVar.f3255c = obj;
        return bVar;
    }

    public int e(int i10) {
        int size = this.f3246b.size();
        for (int i11 = 0; i11 < size; i11++) {
            b bVar = (b) this.f3246b.get(i11);
            int i12 = bVar.f3253a;
            if (i12 != 1) {
                if (i12 == 2) {
                    int i13 = bVar.f3254b;
                    if (i13 <= i10) {
                        int i14 = bVar.f3256d;
                        if (i13 + i14 > i10) {
                            return -1;
                        }
                        i10 -= i14;
                    } else {
                        continue;
                    }
                } else if (i12 == 8) {
                    int i15 = bVar.f3254b;
                    if (i15 == i10) {
                        i10 = bVar.f3256d;
                    } else {
                        if (i15 < i10) {
                            i10--;
                        }
                        if (bVar.f3256d <= i10) {
                            i10++;
                        }
                    }
                }
            } else if (bVar.f3254b <= i10) {
                i10 += bVar.f3256d;
            }
        }
        return i10;
    }

    void i() {
        int size = this.f3247c.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f3248d.b((b) this.f3247c.get(i10));
        }
        x(this.f3247c);
        this.f3252h = 0;
    }

    void j() {
        i();
        int size = this.f3246b.size();
        for (int i10 = 0; i10 < size; i10++) {
            b bVar = (b) this.f3246b.get(i10);
            int i11 = bVar.f3253a;
            if (i11 == 1) {
                this.f3248d.b(bVar);
                this.f3248d.e(bVar.f3254b, bVar.f3256d);
            } else if (i11 == 2) {
                this.f3248d.b(bVar);
                this.f3248d.f(bVar.f3254b, bVar.f3256d);
            } else if (i11 == 4) {
                this.f3248d.b(bVar);
                this.f3248d.h(bVar.f3254b, bVar.f3256d, bVar.f3255c);
            } else if (i11 == 8) {
                this.f3248d.b(bVar);
                this.f3248d.a(bVar.f3254b, bVar.f3256d);
            }
            Runnable runnable = this.f3249e;
            if (runnable != null) {
                runnable.run();
            }
        }
        x(this.f3246b);
        this.f3252h = 0;
    }

    void l(b bVar, int i10) {
        this.f3248d.g(bVar);
        int i11 = bVar.f3253a;
        if (i11 == 2) {
            this.f3248d.f(i10, bVar.f3256d);
        } else {
            if (i11 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            this.f3248d.h(i10, bVar.f3256d, bVar.f3255c);
        }
    }

    int m(int i10) {
        return n(i10, 0);
    }

    int n(int i10, int i11) {
        int size = this.f3247c.size();
        while (i11 < size) {
            b bVar = (b) this.f3247c.get(i11);
            int i12 = bVar.f3253a;
            if (i12 == 8) {
                int i13 = bVar.f3254b;
                if (i13 == i10) {
                    i10 = bVar.f3256d;
                } else {
                    if (i13 < i10) {
                        i10--;
                    }
                    if (bVar.f3256d <= i10) {
                        i10++;
                    }
                }
            } else {
                int i14 = bVar.f3254b;
                if (i14 > i10) {
                    continue;
                } else if (i12 == 2) {
                    int i15 = bVar.f3256d;
                    if (i10 < i14 + i15) {
                        return -1;
                    }
                    i10 -= i15;
                } else if (i12 == 1) {
                    i10 += bVar.f3256d;
                }
            }
            i11++;
        }
        return i10;
    }

    boolean o(int i10) {
        return (this.f3252h & i10) != 0;
    }

    boolean p() {
        return this.f3246b.size() > 0;
    }

    boolean q() {
        return (this.f3247c.isEmpty() || this.f3246b.isEmpty()) ? false : true;
    }

    boolean r(int i10, int i11, Object obj) {
        if (i11 < 1) {
            return false;
        }
        this.f3246b.add(b(4, i10, i11, obj));
        this.f3252h |= 4;
        return this.f3246b.size() == 1;
    }

    boolean s(int i10, int i11) {
        if (i11 < 1) {
            return false;
        }
        this.f3246b.add(b(1, i10, i11, null));
        this.f3252h |= 1;
        return this.f3246b.size() == 1;
    }

    boolean t(int i10, int i11, int i12) {
        if (i10 == i11) {
            return false;
        }
        if (i12 != 1) {
            throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
        }
        this.f3246b.add(b(8, i10, i11, null));
        this.f3252h |= 8;
        return this.f3246b.size() == 1;
    }

    boolean u(int i10, int i11) {
        if (i11 < 1) {
            return false;
        }
        this.f3246b.add(b(2, i10, i11, null));
        this.f3252h |= 2;
        return this.f3246b.size() == 1;
    }

    void w() {
        this.f3251g.b(this.f3246b);
        int size = this.f3246b.size();
        for (int i10 = 0; i10 < size; i10++) {
            b bVar = (b) this.f3246b.get(i10);
            int i11 = bVar.f3253a;
            if (i11 == 1) {
                c(bVar);
            } else if (i11 == 2) {
                f(bVar);
            } else if (i11 == 4) {
                g(bVar);
            } else if (i11 == 8) {
                d(bVar);
            }
            Runnable runnable = this.f3249e;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.f3246b.clear();
    }

    void x(List list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            a((b) list.get(i10));
        }
        list.clear();
    }

    void y() {
        x(this.f3246b);
        x(this.f3247c);
        this.f3252h = 0;
    }

    a(InterfaceC0038a interfaceC0038a, boolean z10) {
        this.f3245a = new c0.f(30);
        this.f3246b = new ArrayList();
        this.f3247c = new ArrayList();
        this.f3252h = 0;
        this.f3248d = interfaceC0038a;
        this.f3250f = z10;
        this.f3251g = new s(this);
    }
}
