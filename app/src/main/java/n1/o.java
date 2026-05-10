package n1;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f14011a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private PointF f14012b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f14013c;

    public o(PointF pointF, boolean z10, List list) {
        this.f14012b = pointF;
        this.f14013c = z10;
        this.f14011a = new ArrayList(list);
    }

    public List a() {
        return this.f14011a;
    }

    public PointF b() {
        return this.f14012b;
    }

    public void c(o oVar, o oVar2, float f10) {
        if (this.f14012b == null) {
            this.f14012b = new PointF();
        }
        this.f14013c = oVar.d() || oVar2.d();
        if (oVar.a().size() != oVar2.a().size()) {
            r1.d.c("Curves must have the same number of control points. Shape 1: " + oVar.a().size() + "\tShape 2: " + oVar2.a().size());
        }
        int iMin = Math.min(oVar.a().size(), oVar2.a().size());
        if (this.f14011a.size() < iMin) {
            for (int size = this.f14011a.size(); size < iMin; size++) {
                this.f14011a.add(new l1.a());
            }
        } else if (this.f14011a.size() > iMin) {
            for (int size2 = this.f14011a.size() - 1; size2 >= iMin; size2--) {
                List list = this.f14011a;
                list.remove(list.size() - 1);
            }
        }
        PointF pointFB = oVar.b();
        PointF pointFB2 = oVar2.b();
        f(r1.i.i(pointFB.x, pointFB2.x, f10), r1.i.i(pointFB.y, pointFB2.y, f10));
        for (int size3 = this.f14011a.size() - 1; size3 >= 0; size3--) {
            l1.a aVar = (l1.a) oVar.a().get(size3);
            l1.a aVar2 = (l1.a) oVar2.a().get(size3);
            PointF pointFA = aVar.a();
            PointF pointFB3 = aVar.b();
            PointF pointFC = aVar.c();
            PointF pointFA2 = aVar2.a();
            PointF pointFB4 = aVar2.b();
            PointF pointFC2 = aVar2.c();
            ((l1.a) this.f14011a.get(size3)).d(r1.i.i(pointFA.x, pointFA2.x, f10), r1.i.i(pointFA.y, pointFA2.y, f10));
            ((l1.a) this.f14011a.get(size3)).e(r1.i.i(pointFB3.x, pointFB4.x, f10), r1.i.i(pointFB3.y, pointFB4.y, f10));
            ((l1.a) this.f14011a.get(size3)).f(r1.i.i(pointFC.x, pointFC2.x, f10), r1.i.i(pointFC.y, pointFC2.y, f10));
        }
    }

    public boolean d() {
        return this.f14013c;
    }

    public void e(boolean z10) {
        this.f14013c = z10;
    }

    public void f(float f10, float f11) {
        if (this.f14012b == null) {
            this.f14012b = new PointF();
        }
        this.f14012b.set(f10, f11);
    }

    public String toString() {
        return "ShapeData{numCurves=" + this.f14011a.size() + "closed=" + this.f14013c + AbstractJsonLexerKt.END_OBJ;
    }

    public o() {
        this.f14011a = new ArrayList();
    }
}
