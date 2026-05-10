package i1;

import android.graphics.Path;
import com.airbnb.lottie.i0;
import com.airbnb.lottie.m0;
import j1.a;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class r implements m, a.b, k {

    /* JADX INFO: renamed from: b */
    private final String f12501b;

    /* JADX INFO: renamed from: c */
    private final boolean f12502c;

    /* JADX INFO: renamed from: d */
    private final i0 f12503d;

    /* JADX INFO: renamed from: e */
    private final j1.m f12504e;

    /* JADX INFO: renamed from: f */
    private boolean f12505f;

    /* JADX INFO: renamed from: a */
    private final Path f12500a = new Path();

    /* JADX INFO: renamed from: g */
    private final b f12506g = new b();

    public r(i0 i0Var, o1.b bVar, n1.r rVar) {
        this.f12501b = rVar.b();
        this.f12502c = rVar.d();
        this.f12503d = i0Var;
        j1.m mVarA = rVar.c().a();
        this.f12504e = mVarA;
        bVar.j(mVarA);
        mVarA.a(this);
    }

    private void e() {
        this.f12505f = false;
        this.f12503d.invalidateSelf();
    }

    @Override // i1.m
    public Path a() {
        if (this.f12505f && !this.f12504e.k()) {
            return this.f12500a;
        }
        this.f12500a.reset();
        if (this.f12502c) {
            this.f12505f = true;
            return this.f12500a;
        }
        Path path = (Path) this.f12504e.h();
        if (path == null) {
            return this.f12500a;
        }
        this.f12500a.set(path);
        this.f12500a.setFillType(Path.FillType.EVEN_ODD);
        this.f12506g.b(this.f12500a);
        this.f12505f = true;
        return this.f12500a;
    }

    @Override // j1.a.b
    public void c() {
        e();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0026  */
    @Override // i1.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void d(java.util.List r6, java.util.List r7) {
        /*
            r5 = this;
            r7 = 0
            r0 = 0
        L2:
            int r1 = r6.size()
            if (r0 >= r1) goto L39
            java.lang.Object r1 = r6.get(r0)
            i1.c r1 = (i1.c) r1
            boolean r2 = r1 instanceof i1.u
            if (r2 == 0) goto L26
            r2 = r1
            i1.u r2 = (i1.u) r2
            n1.t$a r3 = r2.k()
            n1.t$a r4 = n1.t.a.SIMULTANEOUSLY
            if (r3 != r4) goto L26
            i1.b r1 = r5.f12506g
            r1.a(r2)
            r2.e(r5)
            goto L36
        L26:
            boolean r2 = r1 instanceof i1.s
            if (r2 == 0) goto L36
            if (r7 != 0) goto L31
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
        L31:
            i1.s r1 = (i1.s) r1
            r7.add(r1)
        L36:
            int r0 = r0 + 1
            goto L2
        L39:
            j1.m r5 = r5.f12504e
            r5.r(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: i1.r.d(java.util.List, java.util.List):void");
    }

    @Override // l1.f
    public void g(l1.e eVar, int i10, List list, l1.e eVar2) {
        r1.i.k(eVar, i10, list, eVar2, this);
    }

    @Override // i1.c
    public String getName() {
        return this.f12501b;
    }

    @Override // l1.f
    public void h(Object obj, s1.c cVar) {
        if (obj == m0.P) {
            this.f12504e.o(cVar);
        }
    }
}
