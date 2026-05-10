package c6;

import android.graphics.PointF;
import d6.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class q implements s, a.b {

    /* JADX INFO: renamed from: a */
    private final com.oplus.anim.o f4419a;

    /* JADX INFO: renamed from: b */
    private final String f4420b;

    /* JADX INFO: renamed from: c */
    private final d6.a f4421c;

    /* JADX INFO: renamed from: d */
    private h6.n f4422d;

    public q(com.oplus.anim.o oVar, i6.b bVar, h6.m mVar) {
        this.f4419a = oVar;
        this.f4420b = mVar.c();
        d6.a aVarA = mVar.b().a();
        this.f4421c = aVarA;
        bVar.j(aVarA);
        aVarA.a(this);
    }

    private static int e(int i10, int i11) {
        int i12 = i10 / i11;
        return ((i10 ^ i11) >= 0 || i11 * i12 == i10) ? i12 : i12 - 1;
    }

    private static int h(int i10, int i11) {
        return i10 - (e(i10, i11) * i11);
    }

    private h6.n j(h6.n nVar) {
        List listA = nVar.a();
        boolean zD = nVar.d();
        int size = listA.size() - 1;
        int i10 = 0;
        while (size >= 0) {
            f6.a aVar = (f6.a) listA.get(size);
            f6.a aVar2 = (f6.a) listA.get(h(size - 1, listA.size()));
            PointF pointFC = (size != 0 || zD) ? aVar2.c() : nVar.b();
            i10 = (((size != 0 || zD) ? aVar2.b() : pointFC).equals(pointFC) && aVar.a().equals(pointFC) && !(!nVar.d() && size == 0 && size == listA.size() - 1)) ? i10 + 2 : i10 + 1;
            size--;
        }
        h6.n nVar2 = this.f4422d;
        if (nVar2 == null || nVar2.a().size() != i10) {
            ArrayList arrayList = new ArrayList(i10);
            for (int i11 = 0; i11 < i10; i11++) {
                arrayList.add(new f6.a());
            }
            this.f4422d = new h6.n(new PointF(0.0f, 0.0f), false, arrayList);
        }
        this.f4422d.e(zD);
        return this.f4422d;
    }

    @Override // d6.a.b
    public void c() {
        this.f4419a.invalidateSelf();
    }

    @Override // c6.c
    public void d(List list, List list2) {
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x009f  */
    @Override // c6.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public h6.n g(h6.n r19) {
        /*
            Method dump skipped, instruction units count: 413
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: c6.q.g(h6.n):h6.n");
    }

    public d6.a i() {
        return this.f4421c;
    }
}
