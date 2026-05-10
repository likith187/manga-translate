package i1;

import android.graphics.PointF;
import com.airbnb.lottie.i0;
import j1.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class q implements s, a.b {

    /* JADX INFO: renamed from: a */
    private final i0 f12496a;

    /* JADX INFO: renamed from: b */
    private final String f12497b;

    /* JADX INFO: renamed from: c */
    private final j1.a f12498c;

    /* JADX INFO: renamed from: d */
    private n1.o f12499d;

    public q(i0 i0Var, o1.b bVar, n1.n nVar) {
        this.f12496a = i0Var;
        this.f12497b = nVar.c();
        j1.a aVarA = nVar.b().a();
        this.f12498c = aVarA;
        bVar.j(aVarA);
        aVarA.a(this);
    }

    private static int e(int i10, int i11) {
        int i12 = i10 / i11;
        return ((i10 ^ i11) >= 0 || i11 * i12 == i10) ? i12 : i12 - 1;
    }

    private static int g(int i10, int i11) {
        return i10 - (e(i10, i11) * i11);
    }

    private n1.o j(n1.o oVar) {
        List listA = oVar.a();
        boolean zD = oVar.d();
        int size = listA.size() - 1;
        int i10 = 0;
        while (size >= 0) {
            l1.a aVar = (l1.a) listA.get(size);
            l1.a aVar2 = (l1.a) listA.get(g(size - 1, listA.size()));
            PointF pointFC = (size != 0 || zD) ? aVar2.c() : oVar.b();
            i10 = (((size != 0 || zD) ? aVar2.b() : pointFC).equals(pointFC) && aVar.a().equals(pointFC) && !(!oVar.d() && (size == 0 || size == listA.size() - 1))) ? i10 + 2 : i10 + 1;
            size--;
        }
        n1.o oVar2 = this.f12499d;
        if (oVar2 == null || oVar2.a().size() != i10) {
            ArrayList arrayList = new ArrayList(i10);
            for (int i11 = 0; i11 < i10; i11++) {
                arrayList.add(new l1.a());
            }
            this.f12499d = new n1.o(new PointF(0.0f, 0.0f), false, arrayList);
        }
        this.f12499d.e(zD);
        return this.f12499d;
    }

    @Override // j1.a.b
    public void c() {
        this.f12496a.invalidateSelf();
    }

    @Override // i1.c
    public void d(List list, List list2) {
    }

    public j1.a h() {
        return this.f12498c;
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x009e  */
    @Override // i1.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public n1.o i(n1.o r18) {
        /*
            Method dump skipped, instruction units count: 406
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: i1.q.i(n1.o):n1.o");
    }
}
