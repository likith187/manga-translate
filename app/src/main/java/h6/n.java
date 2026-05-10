package h6;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f12308a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private PointF f12309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f12310c;

    public n(PointF pointF, boolean z10, List list) {
        this.f12309b = pointF;
        this.f12310c = z10;
        this.f12308a = new ArrayList(list);
    }

    public List a() {
        return this.f12308a;
    }

    public PointF b() {
        return this.f12309b;
    }

    public void c(n nVar, n nVar2, float f10) {
        if (this.f12309b == null) {
            this.f12309b = new PointF();
        }
        this.f12310c = nVar.d() || nVar2.d();
        if (nVar.a().size() != nVar2.a().size()) {
            l6.e.c("Curves must have the same number of control points. Shape 1: " + nVar.a().size() + "\tShape 2: " + nVar2.a().size());
        }
        int iMin = Math.min(nVar.a().size(), nVar2.a().size());
        if (this.f12308a.size() < iMin) {
            for (int size = this.f12308a.size(); size < iMin; size++) {
                this.f12308a.add(new f6.a());
            }
        } else if (this.f12308a.size() > iMin) {
            for (int size2 = this.f12308a.size() - 1; size2 >= iMin; size2--) {
                List list = this.f12308a;
                list.remove(list.size() - 1);
            }
        }
        PointF pointFB = nVar.b();
        PointF pointFB2 = nVar2.b();
        f(l6.g.i(pointFB.x, pointFB2.x, f10), l6.g.i(pointFB.y, pointFB2.y, f10));
        for (int size3 = this.f12308a.size() - 1; size3 >= 0; size3--) {
            f6.a aVar = (f6.a) nVar.a().get(size3);
            f6.a aVar2 = (f6.a) nVar2.a().get(size3);
            PointF pointFA = aVar.a();
            PointF pointFB3 = aVar.b();
            PointF pointFC = aVar.c();
            PointF pointFA2 = aVar2.a();
            PointF pointFB4 = aVar2.b();
            PointF pointFC2 = aVar2.c();
            ((f6.a) this.f12308a.get(size3)).d(l6.g.i(pointFA.x, pointFA2.x, f10), l6.g.i(pointFA.y, pointFA2.y, f10));
            ((f6.a) this.f12308a.get(size3)).e(l6.g.i(pointFB3.x, pointFB4.x, f10), l6.g.i(pointFB3.y, pointFB4.y, f10));
            ((f6.a) this.f12308a.get(size3)).f(l6.g.i(pointFC.x, pointFC2.x, f10), l6.g.i(pointFC.y, pointFC2.y, f10));
        }
    }

    public boolean d() {
        return this.f12310c;
    }

    public void e(boolean z10) {
        this.f12310c = z10;
    }

    public void f(float f10, float f11) {
        if (this.f12309b == null) {
            this.f12309b = new PointF();
        }
        this.f12309b.set(f10, f11);
    }

    public String toString() {
        return "ShapeData{numCurves=" + this.f12308a.size() + "closed=" + this.f12310c + AbstractJsonLexerKt.END_OBJ;
    }

    public n() {
        this.f12308a = new ArrayList();
    }
}
