package c6;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import com.oplus.anim.k0;
import d6.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements a.b, k, e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.oplus.anim.o f4297e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final i6.b f4298f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float[] f4300h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final Paint f4301i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final d6.a f4302j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final d6.a f4303k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final List f4304l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final d6.a f4305m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private d6.a f4306n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private d6.a f4307o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    float f4308p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private d6.c f4309q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PathMeasure f4293a = new PathMeasure();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path f4294b = new Path();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Path f4295c = new Path();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final RectF f4296d = new RectF();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List f4299g = new ArrayList();

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f4310a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final u f4311b;

        private b(u uVar) {
            this.f4310a = new ArrayList();
            this.f4311b = uVar;
        }
    }

    a(com.oplus.anim.o oVar, i6.b bVar, Paint.Cap cap, Paint.Join join, float f10, g6.d dVar, g6.b bVar2, List list, g6.b bVar3) {
        b6.a aVar = new b6.a(1);
        this.f4301i = aVar;
        this.f4308p = 0.0f;
        this.f4297e = oVar;
        this.f4298f = bVar;
        aVar.setStyle(Paint.Style.STROKE);
        aVar.setStrokeCap(cap);
        aVar.setStrokeJoin(join);
        aVar.setStrokeMiter(f10);
        this.f4303k = dVar.a();
        this.f4302j = bVar2.a();
        if (bVar3 == null) {
            this.f4305m = null;
        } else {
            this.f4305m = bVar3.a();
        }
        this.f4304l = new ArrayList(list.size());
        this.f4300h = new float[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.f4304l.add(((g6.b) list.get(i10)).a());
        }
        bVar.j(this.f4303k);
        bVar.j(this.f4302j);
        for (int i11 = 0; i11 < this.f4304l.size(); i11++) {
            bVar.j((d6.a) this.f4304l.get(i11));
        }
        d6.a aVar2 = this.f4305m;
        if (aVar2 != null) {
            bVar.j(aVar2);
        }
        this.f4303k.a(this);
        this.f4302j.a(this);
        for (int i12 = 0; i12 < list.size(); i12++) {
            ((d6.a) this.f4304l.get(i12)).a(this);
        }
        d6.a aVar3 = this.f4305m;
        if (aVar3 != null) {
            aVar3.a(this);
        }
        if (bVar.w() != null) {
            d6.a aVarA = bVar.w().a().a();
            this.f4307o = aVarA;
            aVarA.a(this);
            bVar.j(this.f4307o);
        }
        if (bVar.y() != null) {
            this.f4309q = new d6.c(this, bVar, bVar.y());
        }
    }

    private void e(Matrix matrix) {
        k0.a("StrokeContent#applyDashPattern");
        if (this.f4304l.isEmpty()) {
            k0.b("StrokeContent#applyDashPattern");
            return;
        }
        float fG = l6.h.g(matrix);
        for (int i10 = 0; i10 < this.f4304l.size(); i10++) {
            this.f4300h[i10] = ((Float) ((d6.a) this.f4304l.get(i10)).h()).floatValue();
            if (i10 % 2 == 0) {
                float[] fArr = this.f4300h;
                if (fArr[i10] < 1.0f) {
                    fArr[i10] = 1.0f;
                }
            } else {
                float[] fArr2 = this.f4300h;
                if (fArr2[i10] < 0.1f) {
                    fArr2[i10] = 0.1f;
                }
            }
            float[] fArr3 = this.f4300h;
            fArr3[i10] = fArr3[i10] * fG;
        }
        d6.a aVar = this.f4305m;
        this.f4301i.setPathEffect(new DashPathEffect(this.f4300h, aVar == null ? 0.0f : fG * ((Float) aVar.h()).floatValue()));
        k0.b("StrokeContent#applyDashPattern");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x011c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void j(android.graphics.Canvas r17, c6.a.b r18, android.graphics.Matrix r19) {
        /*
            Method dump skipped, instruction units count: 350
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: c6.a.j(android.graphics.Canvas, c6.a$b, android.graphics.Matrix):void");
    }

    @Override // c6.e
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        k0.a("StrokeContent#getBounds");
        this.f4294b.reset();
        for (int i10 = 0; i10 < this.f4299g.size(); i10++) {
            b bVar = (b) this.f4299g.get(i10);
            for (int i11 = 0; i11 < bVar.f4310a.size(); i11++) {
                this.f4294b.addPath(((m) bVar.f4310a.get(i11)).a(), matrix);
            }
        }
        this.f4294b.computeBounds(this.f4296d, false);
        float fP = ((d6.d) this.f4302j).p();
        RectF rectF2 = this.f4296d;
        float f10 = fP / 2.0f;
        rectF2.set(rectF2.left - f10, rectF2.top - f10, rectF2.right + f10, rectF2.bottom + f10);
        rectF.set(this.f4296d);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
        k0.b("StrokeContent#getBounds");
    }

    @Override // d6.a.b
    public void c() {
        this.f4297e.invalidateSelf();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0055  */
    @Override // c6.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void d(java.util.List r8, java.util.List r9) {
        /*
            r7 = this;
            int r0 = r8.size()
            int r0 = r0 + (-1)
            r1 = 0
            r2 = r1
        L8:
            if (r0 < 0) goto L22
            java.lang.Object r3 = r8.get(r0)
            c6.c r3 = (c6.c) r3
            boolean r4 = r3 instanceof c6.u
            if (r4 == 0) goto L1f
            c6.u r3 = (c6.u) r3
            h6.s$a r4 = r3.k()
            h6.s$a r5 = h6.s.a.INDIVIDUALLY
            if (r4 != r5) goto L1f
            r2 = r3
        L1f:
            int r0 = r0 + (-1)
            goto L8
        L22:
            if (r2 == 0) goto L27
            r2.e(r7)
        L27:
            int r8 = r9.size()
            int r8 = r8 + (-1)
            r0 = r1
        L2e:
            if (r8 < 0) goto L6c
            java.lang.Object r3 = r9.get(r8)
            c6.c r3 = (c6.c) r3
            boolean r4 = r3 instanceof c6.u
            if (r4 == 0) goto L55
            r4 = r3
            c6.u r4 = (c6.u) r4
            h6.s$a r5 = r4.k()
            h6.s$a r6 = h6.s.a.INDIVIDUALLY
            if (r5 != r6) goto L55
            if (r0 == 0) goto L4c
            java.util.List r3 = r7.f4299g
            r3.add(r0)
        L4c:
            c6.a$b r0 = new c6.a$b
            r0.<init>(r4)
            r4.e(r7)
            goto L69
        L55:
            boolean r4 = r3 instanceof c6.m
            if (r4 == 0) goto L69
            if (r0 != 0) goto L60
            c6.a$b r0 = new c6.a$b
            r0.<init>(r2)
        L60:
            java.util.List r4 = c6.a.b.a(r0)
            c6.m r3 = (c6.m) r3
            r4.add(r3)
        L69:
            int r8 = r8 + (-1)
            goto L2e
        L6c:
            if (r0 == 0) goto L73
            java.util.List r7 = r7.f4299g
            r7.add(r0)
        L73:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c6.a.d(java.util.List, java.util.List):void");
    }

    @Override // c6.e
    public void f(Canvas canvas, Matrix matrix, int i10) {
        k0.a("StrokeContent#draw");
        if (l6.h.h(matrix)) {
            k0.b("StrokeContent#draw");
            return;
        }
        this.f4301i.setAlpha(l6.g.c((int) ((((i10 / 255.0f) * ((d6.f) this.f4303k).p()) / 100.0f) * 255.0f), 0, 255));
        this.f4301i.setStrokeWidth(((d6.d) this.f4302j).p() * l6.h.g(matrix));
        if (this.f4301i.getStrokeWidth() <= 0.0f) {
            k0.b("StrokeContent#draw");
            return;
        }
        e(matrix);
        d6.a aVar = this.f4306n;
        if (aVar != null) {
            this.f4301i.setColorFilter((ColorFilter) aVar.h());
        }
        d6.a aVar2 = this.f4307o;
        if (aVar2 != null) {
            float fFloatValue = ((Float) aVar2.h()).floatValue();
            if (fFloatValue == 0.0f) {
                this.f4301i.setMaskFilter(null);
            } else if (fFloatValue != this.f4308p) {
                this.f4301i.setMaskFilter(this.f4298f.x(fFloatValue));
            }
            this.f4308p = fFloatValue;
        }
        d6.c cVar = this.f4309q;
        if (cVar != null) {
            cVar.a(this.f4301i);
        }
        for (int i11 = 0; i11 < this.f4299g.size(); i11++) {
            b bVar = (b) this.f4299g.get(i11);
            if (bVar.f4311b != null) {
                j(canvas, bVar, matrix);
            } else {
                k0.a("StrokeContent#buildPath");
                this.f4294b.reset();
                for (int size = bVar.f4310a.size() - 1; size >= 0; size--) {
                    this.f4294b.addPath(((m) bVar.f4310a.get(size)).a(), matrix);
                }
                k0.b("StrokeContent#buildPath");
                k0.a("StrokeContent#drawPath");
                canvas.drawPath(this.f4294b, this.f4301i);
                k0.b("StrokeContent#drawPath");
            }
        }
        k0.b("StrokeContent#draw");
    }

    @Override // f6.g
    public void h(Object obj, m6.b bVar) {
        d6.c cVar;
        d6.c cVar2;
        d6.c cVar3;
        d6.c cVar4;
        d6.c cVar5;
        if (obj == com.oplus.anim.q.f11109d) {
            this.f4303k.n(bVar);
            return;
        }
        if (obj == com.oplus.anim.q.f11124s) {
            this.f4302j.n(bVar);
            return;
        }
        if (obj == com.oplus.anim.q.K) {
            d6.a aVar = this.f4306n;
            if (aVar != null) {
                this.f4298f.H(aVar);
            }
            if (bVar == null) {
                this.f4306n = null;
                return;
            }
            d6.q qVar = new d6.q(bVar);
            this.f4306n = qVar;
            qVar.a(this);
            this.f4298f.j(this.f4306n);
            return;
        }
        if (obj == com.oplus.anim.q.f11115j) {
            d6.a aVar2 = this.f4307o;
            if (aVar2 != null) {
                aVar2.n(bVar);
                return;
            }
            d6.q qVar2 = new d6.q(bVar);
            this.f4307o = qVar2;
            qVar2.a(this);
            this.f4298f.j(this.f4307o);
            return;
        }
        if (obj == com.oplus.anim.q.f11110e && (cVar5 = this.f4309q) != null) {
            cVar5.b(bVar);
            return;
        }
        if (obj == com.oplus.anim.q.G && (cVar4 = this.f4309q) != null) {
            cVar4.f(bVar);
            return;
        }
        if (obj == com.oplus.anim.q.H && (cVar3 = this.f4309q) != null) {
            cVar3.d(bVar);
            return;
        }
        if (obj == com.oplus.anim.q.I && (cVar2 = this.f4309q) != null) {
            cVar2.e(bVar);
        } else {
            if (obj != com.oplus.anim.q.J || (cVar = this.f4309q) == null) {
                return;
            }
            cVar.g(bVar);
        }
    }

    @Override // f6.g
    public void i(f6.f fVar, int i10, List list, f6.f fVar2) {
        l6.g.k(fVar, i10, list, fVar2, this);
    }
}
