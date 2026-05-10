package kotlinx.coroutines.internal;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: loaded from: classes2.dex */
public class m0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f13280b = AtomicIntegerFieldUpdater.newUpdater(m0.class, "_size$volatile");
    private volatile /* synthetic */ int _size$volatile;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private n0[] f13281a;

    private final n0[] g() {
        n0[] n0VarArr = this.f13281a;
        if (n0VarArr == null) {
            n0[] n0VarArr2 = new n0[4];
            this.f13281a = n0VarArr2;
            return n0VarArr2;
        }
        if (c() < n0VarArr.length) {
            return n0VarArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(n0VarArr, c() * 2);
        kotlin.jvm.internal.r.d(objArrCopyOf, "copyOf(...)");
        n0[] n0VarArr3 = (n0[]) objArrCopyOf;
        this.f13281a = n0VarArr3;
        return n0VarArr3;
    }

    private final void k(int i10) {
        f13280b.set(this, i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void l(int r6) {
        /*
            r5 = this;
        L0:
            int r0 = r6 * 2
            int r1 = r0 + 1
            int r2 = r5.c()
            if (r1 < r2) goto Lb
            return
        Lb:
            kotlinx.coroutines.internal.n0[] r2 = r5.f13281a
            kotlin.jvm.internal.r.b(r2)
            int r0 = r0 + 2
            int r3 = r5.c()
            if (r0 >= r3) goto L2b
            r3 = r2[r0]
            kotlin.jvm.internal.r.b(r3)
            java.lang.Comparable r3 = (java.lang.Comparable) r3
            r4 = r2[r1]
            kotlin.jvm.internal.r.b(r4)
            int r3 = r3.compareTo(r4)
            if (r3 >= 0) goto L2b
            goto L2c
        L2b:
            r0 = r1
        L2c:
            r1 = r2[r6]
            kotlin.jvm.internal.r.b(r1)
            java.lang.Comparable r1 = (java.lang.Comparable) r1
            r2 = r2[r0]
            kotlin.jvm.internal.r.b(r2)
            int r1 = r1.compareTo(r2)
            if (r1 > 0) goto L3f
            return
        L3f:
            r5.n(r6, r0)
            r6 = r0
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.m0.l(int):void");
    }

    private final void m(int i10) {
        while (i10 > 0) {
            n0[] n0VarArr = this.f13281a;
            kotlin.jvm.internal.r.b(n0VarArr);
            int i11 = (i10 - 1) / 2;
            n0 n0Var = n0VarArr[i11];
            kotlin.jvm.internal.r.b(n0Var);
            n0 n0Var2 = n0VarArr[i10];
            kotlin.jvm.internal.r.b(n0Var2);
            if (((Comparable) n0Var).compareTo(n0Var2) <= 0) {
                return;
            }
            n(i10, i11);
            i10 = i11;
        }
    }

    private final void n(int i10, int i11) {
        n0[] n0VarArr = this.f13281a;
        kotlin.jvm.internal.r.b(n0VarArr);
        n0 n0Var = n0VarArr[i11];
        kotlin.jvm.internal.r.b(n0Var);
        n0 n0Var2 = n0VarArr[i10];
        kotlin.jvm.internal.r.b(n0Var2);
        n0VarArr[i10] = n0Var;
        n0VarArr[i11] = n0Var2;
        n0Var.b(i10);
        n0Var2.b(i11);
    }

    public final void a(n0 n0Var) {
        n0Var.c(this);
        n0[] n0VarArrG = g();
        int iC = c();
        k(iC + 1);
        n0VarArrG[iC] = n0Var;
        n0Var.b(iC);
        m(iC);
    }

    public final n0 b() {
        n0[] n0VarArr = this.f13281a;
        if (n0VarArr != null) {
            return n0VarArr[0];
        }
        return null;
    }

    public final int c() {
        return f13280b.get(this);
    }

    public final boolean e() {
        return c() == 0;
    }

    public final n0 f() {
        n0 n0VarB;
        synchronized (this) {
            n0VarB = b();
        }
        return n0VarB;
    }

    public final boolean h(n0 n0Var) {
        boolean z10;
        synchronized (this) {
            if (n0Var.f() == null) {
                z10 = false;
            } else {
                i(n0Var.d());
                z10 = true;
            }
        }
        return z10;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final kotlinx.coroutines.internal.n0 i(int r6) {
        /*
            r5 = this;
            kotlinx.coroutines.internal.n0[] r0 = r5.f13281a
            kotlin.jvm.internal.r.b(r0)
            int r1 = r5.c()
            r2 = -1
            int r1 = r1 + r2
            r5.k(r1)
            int r1 = r5.c()
            if (r6 >= r1) goto L3d
            int r1 = r5.c()
            r5.n(r6, r1)
            int r1 = r6 + (-1)
            int r1 = r1 / 2
            if (r6 <= 0) goto L3a
            r3 = r0[r6]
            kotlin.jvm.internal.r.b(r3)
            java.lang.Comparable r3 = (java.lang.Comparable) r3
            r4 = r0[r1]
            kotlin.jvm.internal.r.b(r4)
            int r3 = r3.compareTo(r4)
            if (r3 >= 0) goto L3a
            r5.n(r6, r1)
            r5.m(r1)
            goto L3d
        L3a:
            r5.l(r6)
        L3d:
            int r6 = r5.c()
            r6 = r0[r6]
            kotlin.jvm.internal.r.b(r6)
            r1 = 0
            r6.c(r1)
            r6.b(r2)
            int r5 = r5.c()
            r0[r5] = r1
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.m0.i(int):kotlinx.coroutines.internal.n0");
    }

    public final n0 j() {
        n0 n0VarI;
        synchronized (this) {
            n0VarI = c() > 0 ? i(0) : null;
        }
        return n0VarI;
    }
}
