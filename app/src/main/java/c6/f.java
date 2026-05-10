package c6;

import android.graphics.Path;
import android.graphics.PointF;
import d6.a;
import h6.s;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class f implements m, a.b, k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4325b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.oplus.anim.o f4326c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d6.a f4327d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d6.a f4328e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final h6.b f4329f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f4331h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f4324a = new Path();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b f4330g = new b();

    public f(com.oplus.anim.o oVar, i6.b bVar, h6.b bVar2) {
        this.f4325b = bVar2.b();
        this.f4326c = oVar;
        d6.a aVarA = bVar2.d().a();
        this.f4327d = aVarA;
        d6.a aVarA2 = bVar2.c().a();
        this.f4328e = aVarA2;
        this.f4329f = bVar2;
        bVar.j(aVarA);
        bVar.j(aVarA2);
        aVarA.a(this);
        aVarA2.a(this);
    }

    private void e() {
        this.f4331h = false;
        this.f4326c.invalidateSelf();
    }

    @Override // c6.m
    public Path a() {
        if (this.f4331h) {
            return this.f4324a;
        }
        this.f4324a.reset();
        if (this.f4329f.e()) {
            this.f4331h = true;
            return this.f4324a;
        }
        PointF pointF = (PointF) this.f4327d.h();
        float f10 = pointF.x / 2.0f;
        float f11 = pointF.y / 2.0f;
        float f12 = f10 * 0.55228f;
        float f13 = 0.55228f * f11;
        this.f4324a.reset();
        if (this.f4329f.f()) {
            float f14 = -f11;
            this.f4324a.moveTo(0.0f, f14);
            float f15 = 0.0f - f12;
            float f16 = -f10;
            float f17 = 0.0f - f13;
            this.f4324a.cubicTo(f15, f14, f16, f17, f16, 0.0f);
            float f18 = f13 + 0.0f;
            this.f4324a.cubicTo(f16, f18, f15, f11, 0.0f, f11);
            float f19 = f12 + 0.0f;
            this.f4324a.cubicTo(f19, f11, f10, f18, f10, 0.0f);
            this.f4324a.cubicTo(f10, f17, f19, f14, 0.0f, f14);
        } else {
            float f20 = -f11;
            this.f4324a.moveTo(0.0f, f20);
            float f21 = f12 + 0.0f;
            float f22 = 0.0f - f13;
            this.f4324a.cubicTo(f21, f20, f10, f22, f10, 0.0f);
            float f23 = f13 + 0.0f;
            this.f4324a.cubicTo(f10, f23, f21, f11, 0.0f, f11);
            float f24 = 0.0f - f12;
            float f25 = -f10;
            this.f4324a.cubicTo(f24, f11, f25, f23, f25, 0.0f);
            this.f4324a.cubicTo(f25, f22, f24, f20, 0.0f, f20);
        }
        PointF pointF2 = (PointF) this.f4328e.h();
        this.f4324a.offset(pointF2.x, pointF2.y);
        this.f4324a.close();
        this.f4330g.b(this.f4324a);
        this.f4331h = true;
        return this.f4324a;
    }

    @Override // d6.a.b
    public void c() {
        e();
    }

    @Override // c6.c
    public void d(List list, List list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVar = (c) list.get(i10);
            if (cVar instanceof u) {
                u uVar = (u) cVar;
                if (uVar.k() == s.a.SIMULTANEOUSLY) {
                    this.f4330g.a(uVar);
                    uVar.e(this);
                }
            }
        }
    }

    @Override // c6.c
    public String getName() {
        return this.f4325b;
    }

    @Override // f6.g
    public void h(Object obj, m6.b bVar) {
        if (obj == com.oplus.anim.q.f11116k) {
            this.f4327d.n(bVar);
        } else if (obj == com.oplus.anim.q.f11119n) {
            this.f4328e.n(bVar);
        }
    }

    @Override // f6.g
    public void i(f6.f fVar, int i10, List list, f6.f fVar2) {
        l6.g.k(fVar, i10, list, fVar2, this);
    }
}
