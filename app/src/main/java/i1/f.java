package i1;

import android.graphics.Path;
import android.graphics.PointF;
import com.airbnb.lottie.i0;
import com.airbnb.lottie.m0;
import j1.a;
import java.util.List;
import n1.t;

/* JADX INFO: loaded from: classes.dex */
public class f implements m, a.b, k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f12399b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i0 f12400c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j1.a f12401d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final j1.a f12402e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final n1.b f12403f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f12405h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f12398a = new Path();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b f12404g = new b();

    public f(i0 i0Var, o1.b bVar, n1.b bVar2) {
        this.f12399b = bVar2.b();
        this.f12400c = i0Var;
        j1.a aVarA = bVar2.d().a();
        this.f12401d = aVarA;
        j1.a aVarA2 = bVar2.c().a();
        this.f12402e = aVarA2;
        this.f12403f = bVar2;
        bVar.j(aVarA);
        bVar.j(aVarA2);
        aVarA.a(this);
        aVarA2.a(this);
    }

    private void e() {
        this.f12405h = false;
        this.f12400c.invalidateSelf();
    }

    @Override // i1.m
    public Path a() {
        if (this.f12405h) {
            return this.f12398a;
        }
        this.f12398a.reset();
        if (this.f12403f.e()) {
            this.f12405h = true;
            return this.f12398a;
        }
        PointF pointF = (PointF) this.f12401d.h();
        float f10 = pointF.x / 2.0f;
        float f11 = pointF.y / 2.0f;
        float f12 = f10 * 0.55228f;
        float f13 = 0.55228f * f11;
        this.f12398a.reset();
        if (this.f12403f.f()) {
            float f14 = -f11;
            this.f12398a.moveTo(0.0f, f14);
            float f15 = 0.0f - f12;
            float f16 = -f10;
            float f17 = 0.0f - f13;
            this.f12398a.cubicTo(f15, f14, f16, f17, f16, 0.0f);
            float f18 = f13 + 0.0f;
            this.f12398a.cubicTo(f16, f18, f15, f11, 0.0f, f11);
            float f19 = f12 + 0.0f;
            this.f12398a.cubicTo(f19, f11, f10, f18, f10, 0.0f);
            this.f12398a.cubicTo(f10, f17, f19, f14, 0.0f, f14);
        } else {
            float f20 = -f11;
            this.f12398a.moveTo(0.0f, f20);
            float f21 = f12 + 0.0f;
            float f22 = 0.0f - f13;
            this.f12398a.cubicTo(f21, f20, f10, f22, f10, 0.0f);
            float f23 = f13 + 0.0f;
            this.f12398a.cubicTo(f10, f23, f21, f11, 0.0f, f11);
            float f24 = 0.0f - f12;
            float f25 = -f10;
            this.f12398a.cubicTo(f24, f11, f25, f23, f25, 0.0f);
            this.f12398a.cubicTo(f25, f22, f24, f20, 0.0f, f20);
        }
        PointF pointF2 = (PointF) this.f12402e.h();
        this.f12398a.offset(pointF2.x, pointF2.y);
        this.f12398a.close();
        this.f12404g.b(this.f12398a);
        this.f12405h = true;
        return this.f12398a;
    }

    @Override // j1.a.b
    public void c() {
        e();
    }

    @Override // i1.c
    public void d(List list, List list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVar = (c) list.get(i10);
            if (cVar instanceof u) {
                u uVar = (u) cVar;
                if (uVar.k() == t.a.SIMULTANEOUSLY) {
                    this.f12404g.a(uVar);
                    uVar.e(this);
                }
            }
        }
    }

    @Override // l1.f
    public void g(l1.e eVar, int i10, List list, l1.e eVar2) {
        r1.i.k(eVar, i10, list, eVar2, this);
    }

    @Override // i1.c
    public String getName() {
        return this.f12399b;
    }

    @Override // l1.f
    public void h(Object obj, s1.c cVar) {
        if (obj == m0.f4627k) {
            this.f12401d.o(cVar);
        } else if (obj == m0.f4630n) {
            this.f12402e.o(cVar);
        }
    }
}
