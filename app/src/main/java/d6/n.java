package d6;

import android.graphics.PointF;
import d6.a;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public class n extends a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final PointF f11574i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final PointF f11575j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final a f11576k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final a f11577l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected m6.b f11578m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected m6.b f11579n;

    public n(a aVar, a aVar2) {
        super(Collections.emptyList());
        this.f11574i = new PointF();
        this.f11575j = new PointF();
        this.f11576k = aVar;
        this.f11577l = aVar2;
        m(f());
    }

    @Override // d6.a
    public void m(float f10) {
        this.f11576k.m(f10);
        this.f11577l.m(f10);
        this.f11574i.set(((Float) this.f11576k.h()).floatValue(), ((Float) this.f11577l.h()).floatValue());
        for (int i10 = 0; i10 < this.f11536a.size(); i10++) {
            ((a.b) this.f11536a.get(i10)).c();
        }
    }

    @Override // d6.a
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public PointF h() {
        return i(null, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // d6.a
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public PointF i(m6.c cVar, float f10) {
        Float f11;
        m6.c cVarB;
        m6.c cVarB2;
        Float f12 = null;
        if (this.f11578m == null || (cVarB2 = this.f11576k.b()) == null) {
            f11 = null;
        } else {
            float fD = this.f11576k.d();
            Float f13 = cVarB2.f13853h;
            m6.b bVar = this.f11578m;
            float f14 = cVarB2.f13852g;
            f11 = (Float) bVar.b(f14, f13 == null ? f14 : f13.floatValue(), (Float) cVarB2.f13847b, (Float) cVarB2.f13848c, f10, f10, fD);
        }
        if (this.f11579n != null && (cVarB = this.f11577l.b()) != null) {
            float fD2 = this.f11577l.d();
            Float f15 = cVarB.f13853h;
            m6.b bVar2 = this.f11579n;
            float f16 = cVarB.f13852g;
            f12 = (Float) bVar2.b(f16, f15 == null ? f16 : f15.floatValue(), (Float) cVarB.f13847b, (Float) cVarB.f13848c, f10, f10, fD2);
        }
        if (f11 == null) {
            this.f11575j.set(this.f11574i.x, 0.0f);
        } else {
            this.f11575j.set(f11.floatValue(), 0.0f);
        }
        if (f12 == null) {
            PointF pointF = this.f11575j;
            pointF.set(pointF.x, this.f11574i.y);
        } else {
            PointF pointF2 = this.f11575j;
            pointF2.set(pointF2.x, f12.floatValue());
        }
        return this.f11575j;
    }

    public void r(m6.b bVar) {
        m6.b bVar2 = this.f11578m;
        if (bVar2 != null) {
            bVar2.c(null);
        }
        this.f11578m = bVar;
        if (bVar != null) {
            bVar.c(this);
        }
    }

    public void s(m6.b bVar) {
        m6.b bVar2 = this.f11579n;
        if (bVar2 != null) {
            bVar2.c(null);
        }
        this.f11579n = bVar;
        if (bVar != null) {
            bVar.c(this);
        }
    }
}
