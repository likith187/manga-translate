package c6;

import android.graphics.Path;
import d6.a;

/* JADX INFO: loaded from: classes2.dex */
public class r implements m, a.b {

    /* JADX INFO: renamed from: b */
    private final String f4424b;

    /* JADX INFO: renamed from: c */
    private final boolean f4425c;

    /* JADX INFO: renamed from: d */
    private final com.oplus.anim.o f4426d;

    /* JADX INFO: renamed from: e */
    private final d6.m f4427e;

    /* JADX INFO: renamed from: f */
    private boolean f4428f;

    /* JADX INFO: renamed from: a */
    private final Path f4423a = new Path();

    /* JADX INFO: renamed from: g */
    private final b f4429g = new b();

    public r(com.oplus.anim.o oVar, i6.b bVar, h6.q qVar) {
        this.f4424b = qVar.b();
        this.f4425c = qVar.d();
        this.f4426d = oVar;
        d6.m mVarA = qVar.c().a();
        this.f4427e = mVarA;
        bVar.j(mVarA);
        mVarA.a(this);
    }

    private void e() {
        this.f4428f = false;
        this.f4426d.invalidateSelf();
    }

    @Override // c6.m
    public Path a() {
        if (this.f4428f) {
            return this.f4423a;
        }
        this.f4423a.reset();
        if (this.f4425c) {
            this.f4428f = true;
            return this.f4423a;
        }
        Path path = (Path) this.f4427e.h();
        if (path == null) {
            return this.f4423a;
        }
        this.f4423a.set(path);
        this.f4423a.setFillType(Path.FillType.EVEN_ODD);
        this.f4429g.b(this.f4423a);
        this.f4428f = true;
        return this.f4423a;
    }

    @Override // d6.a.b
    public void c() {
        e();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0026  */
    @Override // c6.c
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
            c6.c r1 = (c6.c) r1
            boolean r2 = r1 instanceof c6.u
            if (r2 == 0) goto L26
            r2 = r1
            c6.u r2 = (c6.u) r2
            h6.s$a r3 = r2.k()
            h6.s$a r4 = h6.s.a.SIMULTANEOUSLY
            if (r3 != r4) goto L26
            c6.b r1 = r5.f4429g
            r1.a(r2)
            r2.e(r5)
            goto L36
        L26:
            boolean r2 = r1 instanceof c6.s
            if (r2 == 0) goto L36
            if (r7 != 0) goto L31
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
        L31:
            c6.s r1 = (c6.s) r1
            r7.add(r1)
        L36:
            int r0 = r0 + 1
            goto L2
        L39:
            d6.m r5 = r5.f4427e
            r5.q(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c6.r.d(java.util.List, java.util.List):void");
    }
}
