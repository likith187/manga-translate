package i1;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import com.airbnb.lottie.i0;
import com.airbnb.lottie.m0;
import j1.a;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class o implements a.b, k, m {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f12477c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f12478d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final i0 f12479e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final j1.a f12480f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final j1.a f12481g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final j1.a f12482h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f12485k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f12475a = new Path();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RectF f12476b = new RectF();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final b f12483i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private j1.a f12484j = null;

    public o(i0 i0Var, o1.b bVar, n1.l lVar) {
        this.f12477c = lVar.c();
        this.f12478d = lVar.f();
        this.f12479e = i0Var;
        j1.a aVarA = lVar.d().a();
        this.f12480f = aVarA;
        j1.a aVarA2 = lVar.e().a();
        this.f12481g = aVarA2;
        j1.a aVarA3 = lVar.b().a();
        this.f12482h = aVarA3;
        bVar.j(aVarA);
        bVar.j(aVarA2);
        bVar.j(aVarA3);
        aVarA.a(this);
        aVarA2.a(this);
        aVarA3.a(this);
    }

    private void e() {
        this.f12485k = false;
        this.f12479e.invalidateSelf();
    }

    @Override // i1.m
    public Path a() {
        j1.a aVar;
        if (this.f12485k) {
            return this.f12475a;
        }
        this.f12475a.reset();
        if (this.f12478d) {
            this.f12485k = true;
            return this.f12475a;
        }
        PointF pointF = (PointF) this.f12481g.h();
        float f10 = pointF.x / 2.0f;
        float f11 = pointF.y / 2.0f;
        j1.a aVar2 = this.f12482h;
        float fQ = aVar2 == null ? 0.0f : ((j1.d) aVar2).q();
        if (fQ == 0.0f && (aVar = this.f12484j) != null) {
            fQ = Math.min(((Float) aVar.h()).floatValue(), Math.min(f10, f11));
        }
        float fMin = Math.min(f10, f11);
        if (fQ > fMin) {
            fQ = fMin;
        }
        PointF pointF2 = (PointF) this.f12480f.h();
        this.f12475a.moveTo(pointF2.x + f10, (pointF2.y - f11) + fQ);
        this.f12475a.lineTo(pointF2.x + f10, (pointF2.y + f11) - fQ);
        if (fQ > 0.0f) {
            RectF rectF = this.f12476b;
            float f12 = pointF2.x;
            float f13 = fQ * 2.0f;
            float f14 = pointF2.y;
            rectF.set((f12 + f10) - f13, (f14 + f11) - f13, f12 + f10, f14 + f11);
            this.f12475a.arcTo(this.f12476b, 0.0f, 90.0f, false);
        }
        this.f12475a.lineTo((pointF2.x - f10) + fQ, pointF2.y + f11);
        if (fQ > 0.0f) {
            RectF rectF2 = this.f12476b;
            float f15 = pointF2.x;
            float f16 = pointF2.y;
            float f17 = fQ * 2.0f;
            rectF2.set(f15 - f10, (f16 + f11) - f17, (f15 - f10) + f17, f16 + f11);
            this.f12475a.arcTo(this.f12476b, 90.0f, 90.0f, false);
        }
        this.f12475a.lineTo(pointF2.x - f10, (pointF2.y - f11) + fQ);
        if (fQ > 0.0f) {
            RectF rectF3 = this.f12476b;
            float f18 = pointF2.x;
            float f19 = pointF2.y;
            float f20 = fQ * 2.0f;
            rectF3.set(f18 - f10, f19 - f11, (f18 - f10) + f20, (f19 - f11) + f20);
            this.f12475a.arcTo(this.f12476b, 180.0f, 90.0f, false);
        }
        this.f12475a.lineTo((pointF2.x + f10) - fQ, pointF2.y - f11);
        if (fQ > 0.0f) {
            RectF rectF4 = this.f12476b;
            float f21 = pointF2.x;
            float f22 = fQ * 2.0f;
            float f23 = pointF2.y;
            rectF4.set((f21 + f10) - f22, f23 - f11, f21 + f10, (f23 - f11) + f22);
            this.f12475a.arcTo(this.f12476b, 270.0f, 90.0f, false);
        }
        this.f12475a.close();
        this.f12483i.b(this.f12475a);
        this.f12485k = true;
        return this.f12475a;
    }

    @Override // j1.a.b
    public void c() {
        e();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    @Override // i1.c
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
            i1.c r0 = (i1.c) r0
            boolean r1 = r0 instanceof i1.u
            if (r1 == 0) goto L25
            r1 = r0
            i1.u r1 = (i1.u) r1
            n1.t$a r2 = r1.k()
            n1.t$a r3 = n1.t.a.SIMULTANEOUSLY
            if (r2 != r3) goto L25
            i1.b r0 = r4.f12483i
            r0.a(r1)
            r1.e(r4)
            goto L31
        L25:
            boolean r1 = r0 instanceof i1.q
            if (r1 == 0) goto L31
            i1.q r0 = (i1.q) r0
            j1.a r0 = r0.h()
            r4.f12484j = r0
        L31:
            int r6 = r6 + 1
            goto L1
        L34:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: i1.o.d(java.util.List, java.util.List):void");
    }

    @Override // l1.f
    public void g(l1.e eVar, int i10, List list, l1.e eVar2) {
        r1.i.k(eVar, i10, list, eVar2, this);
    }

    @Override // i1.c
    public String getName() {
        return this.f12477c;
    }

    @Override // l1.f
    public void h(Object obj, s1.c cVar) {
        if (obj == m0.f4628l) {
            this.f12481g.o(cVar);
        } else if (obj == m0.f4630n) {
            this.f12480f.o(cVar);
        } else if (obj == m0.f4629m) {
            this.f12482h.o(cVar);
        }
    }
}
