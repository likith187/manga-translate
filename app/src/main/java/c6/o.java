package c6;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import d6.a;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class o implements a.b, k, m {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4400c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f4401d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.oplus.anim.o f4402e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final d6.a f4403f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final d6.a f4404g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final d6.a f4405h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f4408k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f4398a = new Path();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RectF f4399b = new RectF();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final b f4406i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private d6.a f4407j = null;

    public o(com.oplus.anim.o oVar, i6.b bVar, h6.k kVar) {
        this.f4400c = kVar.c();
        this.f4401d = kVar.f();
        this.f4402e = oVar;
        d6.a aVarA = kVar.d().a();
        this.f4403f = aVarA;
        d6.a aVarA2 = kVar.e().a();
        this.f4404g = aVarA2;
        d6.a aVarA3 = kVar.b().a();
        this.f4405h = aVarA3;
        bVar.j(aVarA);
        bVar.j(aVarA2);
        bVar.j(aVarA3);
        aVarA.a(this);
        aVarA2.a(this);
        aVarA3.a(this);
    }

    private void e() {
        this.f4408k = false;
        this.f4402e.invalidateSelf();
    }

    @Override // c6.m
    public Path a() {
        d6.a aVar;
        if (this.f4408k) {
            return this.f4398a;
        }
        this.f4398a.reset();
        if (this.f4401d) {
            this.f4408k = true;
            return this.f4398a;
        }
        PointF pointF = (PointF) this.f4404g.h();
        float f10 = pointF.x / 2.0f;
        float f11 = pointF.y / 2.0f;
        d6.a aVar2 = this.f4405h;
        float fP = aVar2 == null ? 0.0f : ((d6.d) aVar2).p();
        if (fP == 0.0f && (aVar = this.f4407j) != null) {
            fP = Math.min(((Float) aVar.h()).floatValue(), Math.min(f10, f11));
        }
        float fMin = Math.min(f10, f11);
        if (fP > fMin) {
            fP = fMin;
        }
        PointF pointF2 = (PointF) this.f4403f.h();
        this.f4398a.moveTo(pointF2.x + f10, (pointF2.y - f11) + fP);
        this.f4398a.lineTo(pointF2.x + f10, (pointF2.y + f11) - fP);
        if (fP > 0.0f) {
            RectF rectF = this.f4399b;
            float f12 = pointF2.x;
            float f13 = fP * 2.0f;
            float f14 = pointF2.y;
            rectF.set((f12 + f10) - f13, (f14 + f11) - f13, f12 + f10, f14 + f11);
            this.f4398a.arcTo(this.f4399b, 0.0f, 90.0f, false);
        }
        this.f4398a.lineTo((pointF2.x - f10) + fP, pointF2.y + f11);
        if (fP > 0.0f) {
            RectF rectF2 = this.f4399b;
            float f15 = pointF2.x;
            float f16 = pointF2.y;
            float f17 = fP * 2.0f;
            rectF2.set(f15 - f10, (f16 + f11) - f17, (f15 - f10) + f17, f16 + f11);
            this.f4398a.arcTo(this.f4399b, 90.0f, 90.0f, false);
        }
        this.f4398a.lineTo(pointF2.x - f10, (pointF2.y - f11) + fP);
        if (fP > 0.0f) {
            RectF rectF3 = this.f4399b;
            float f18 = pointF2.x;
            float f19 = pointF2.y;
            float f20 = fP * 2.0f;
            rectF3.set(f18 - f10, f19 - f11, (f18 - f10) + f20, (f19 - f11) + f20);
            this.f4398a.arcTo(this.f4399b, 180.0f, 90.0f, false);
        }
        this.f4398a.lineTo((pointF2.x + f10) - fP, pointF2.y - f11);
        if (fP > 0.0f) {
            RectF rectF4 = this.f4399b;
            float f21 = pointF2.x;
            float f22 = fP * 2.0f;
            float f23 = pointF2.y;
            rectF4.set((f21 + f10) - f22, f23 - f11, f21 + f10, (f23 - f11) + f22);
            this.f4398a.arcTo(this.f4399b, 270.0f, 90.0f, false);
        }
        this.f4398a.close();
        this.f4406i.b(this.f4398a);
        this.f4408k = true;
        return this.f4398a;
    }

    @Override // d6.a.b
    public void c() {
        e();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    @Override // c6.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void d(java.util.List r5, java.util.List r6) {
        /*
            r4 = this;
            r6 = 0
        L1:
            int r0 = r5.size()
            if (r6 >= r0) goto L34
            java.lang.Object r0 = r5.get(r6)
            c6.c r0 = (c6.c) r0
            boolean r1 = r0 instanceof c6.u
            if (r1 == 0) goto L25
            r1 = r0
            c6.u r1 = (c6.u) r1
            h6.s$a r2 = r1.k()
            h6.s$a r3 = h6.s.a.SIMULTANEOUSLY
            if (r2 != r3) goto L25
            c6.b r0 = r4.f4406i
            r0.a(r1)
            r1.e(r4)
            goto L31
        L25:
            boolean r1 = r0 instanceof c6.q
            if (r1 == 0) goto L31
            c6.q r0 = (c6.q) r0
            d6.a r0 = r0.i()
            r4.f4407j = r0
        L31:
            int r6 = r6 + 1
            goto L1
        L34:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c6.o.d(java.util.List, java.util.List):void");
    }

    @Override // c6.c
    public String getName() {
        return this.f4400c;
    }

    @Override // f6.g
    public void h(Object obj, m6.b bVar) {
        if (obj == com.oplus.anim.q.f11117l) {
            this.f4404g.n(bVar);
        } else if (obj == com.oplus.anim.q.f11119n) {
            this.f4403f.n(bVar);
        } else if (obj == com.oplus.anim.q.f11118m) {
            this.f4405h.n(bVar);
        }
    }

    @Override // f6.g
    public void i(f6.f fVar, int i10, List list, f6.f fVar2) {
        l6.g.k(fVar, i10, list, fVar2, this);
    }
}
