package i1;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import com.airbnb.lottie.i0;
import com.airbnb.lottie.m0;
import j1.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements a.b, k, e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final i0 f12371e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final o1.b f12372f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float[] f12374h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final Paint f12375i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final j1.a f12376j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final j1.a f12377k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final List f12378l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final j1.a f12379m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private j1.a f12380n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private j1.a f12381o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    float f12382p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private j1.c f12383q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PathMeasure f12367a = new PathMeasure();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path f12368b = new Path();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Path f12369c = new Path();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final RectF f12370d = new RectF();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List f12373g = new ArrayList();

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f12384a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final u f12385b;

        private b(u uVar) {
            this.f12384a = new ArrayList();
            this.f12385b = uVar;
        }
    }

    a(i0 i0Var, o1.b bVar, Paint.Cap cap, Paint.Join join, float f10, m1.d dVar, m1.b bVar2, List list, m1.b bVar3) {
        h1.a aVar = new h1.a(1);
        this.f12375i = aVar;
        this.f12382p = 0.0f;
        this.f12371e = i0Var;
        this.f12372f = bVar;
        aVar.setStyle(Paint.Style.STROKE);
        aVar.setStrokeCap(cap);
        aVar.setStrokeJoin(join);
        aVar.setStrokeMiter(f10);
        this.f12377k = dVar.a();
        this.f12376j = bVar2.a();
        if (bVar3 == null) {
            this.f12379m = null;
        } else {
            this.f12379m = bVar3.a();
        }
        this.f12378l = new ArrayList(list.size());
        this.f12374h = new float[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.f12378l.add(((m1.b) list.get(i10)).a());
        }
        bVar.j(this.f12377k);
        bVar.j(this.f12376j);
        for (int i11 = 0; i11 < this.f12378l.size(); i11++) {
            bVar.j((j1.a) this.f12378l.get(i11));
        }
        j1.a aVar2 = this.f12379m;
        if (aVar2 != null) {
            bVar.j(aVar2);
        }
        this.f12377k.a(this);
        this.f12376j.a(this);
        for (int i12 = 0; i12 < list.size(); i12++) {
            ((j1.a) this.f12378l.get(i12)).a(this);
        }
        j1.a aVar3 = this.f12379m;
        if (aVar3 != null) {
            aVar3.a(this);
        }
        if (bVar.x() != null) {
            j1.a aVarA = bVar.x().a().a();
            this.f12381o = aVarA;
            aVarA.a(this);
            bVar.j(this.f12381o);
        }
        if (bVar.z() != null) {
            this.f12383q = new j1.c(this, bVar, bVar.z());
        }
    }

    private void e(Matrix matrix) {
        com.airbnb.lottie.e.b("StrokeContent#applyDashPattern");
        if (this.f12378l.isEmpty()) {
            com.airbnb.lottie.e.c("StrokeContent#applyDashPattern");
            return;
        }
        float fG = r1.j.g(matrix);
        for (int i10 = 0; i10 < this.f12378l.size(); i10++) {
            this.f12374h[i10] = ((Float) ((j1.a) this.f12378l.get(i10)).h()).floatValue();
            if (i10 % 2 == 0) {
                float[] fArr = this.f12374h;
                if (fArr[i10] < 1.0f) {
                    fArr[i10] = 1.0f;
                }
            } else {
                float[] fArr2 = this.f12374h;
                if (fArr2[i10] < 0.1f) {
                    fArr2[i10] = 0.1f;
                }
            }
            float[] fArr3 = this.f12374h;
            fArr3[i10] = fArr3[i10] * fG;
        }
        j1.a aVar = this.f12379m;
        this.f12375i.setPathEffect(new DashPathEffect(this.f12374h, aVar == null ? 0.0f : fG * ((Float) aVar.h()).floatValue()));
        com.airbnb.lottie.e.c("StrokeContent#applyDashPattern");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x011c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void j(android.graphics.Canvas r17, i1.a.b r18, android.graphics.Matrix r19) {
        /*
            Method dump skipped, instruction units count: 350
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: i1.a.j(android.graphics.Canvas, i1.a$b, android.graphics.Matrix):void");
    }

    @Override // i1.e
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        com.airbnb.lottie.e.b("StrokeContent#getBounds");
        this.f12368b.reset();
        for (int i10 = 0; i10 < this.f12373g.size(); i10++) {
            b bVar = (b) this.f12373g.get(i10);
            for (int i11 = 0; i11 < bVar.f12384a.size(); i11++) {
                this.f12368b.addPath(((m) bVar.f12384a.get(i11)).a(), matrix);
            }
        }
        this.f12368b.computeBounds(this.f12370d, false);
        float fQ = ((j1.d) this.f12376j).q();
        RectF rectF2 = this.f12370d;
        float f10 = fQ / 2.0f;
        rectF2.set(rectF2.left - f10, rectF2.top - f10, rectF2.right + f10, rectF2.bottom + f10);
        rectF.set(this.f12370d);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
        com.airbnb.lottie.e.c("StrokeContent#getBounds");
    }

    @Override // j1.a.b
    public void c() {
        this.f12371e.invalidateSelf();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0055  */
    @Override // i1.c
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
            i1.c r3 = (i1.c) r3
            boolean r4 = r3 instanceof i1.u
            if (r4 == 0) goto L1f
            i1.u r3 = (i1.u) r3
            n1.t$a r4 = r3.k()
            n1.t$a r5 = n1.t.a.INDIVIDUALLY
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
            i1.c r3 = (i1.c) r3
            boolean r4 = r3 instanceof i1.u
            if (r4 == 0) goto L55
            r4 = r3
            i1.u r4 = (i1.u) r4
            n1.t$a r5 = r4.k()
            n1.t$a r6 = n1.t.a.INDIVIDUALLY
            if (r5 != r6) goto L55
            if (r0 == 0) goto L4c
            java.util.List r3 = r7.f12373g
            r3.add(r0)
        L4c:
            i1.a$b r0 = new i1.a$b
            r0.<init>(r4)
            r4.e(r7)
            goto L69
        L55:
            boolean r4 = r3 instanceof i1.m
            if (r4 == 0) goto L69
            if (r0 != 0) goto L60
            i1.a$b r0 = new i1.a$b
            r0.<init>(r2)
        L60:
            java.util.List r4 = i1.a.b.a(r0)
            i1.m r3 = (i1.m) r3
            r4.add(r3)
        L69:
            int r8 = r8 + (-1)
            goto L2e
        L6c:
            if (r0 == 0) goto L73
            java.util.List r7 = r7.f12373g
            r7.add(r0)
        L73:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: i1.a.d(java.util.List, java.util.List):void");
    }

    @Override // i1.e
    public void f(Canvas canvas, Matrix matrix, int i10) {
        com.airbnb.lottie.e.b("StrokeContent#draw");
        if (r1.j.h(matrix)) {
            com.airbnb.lottie.e.c("StrokeContent#draw");
            return;
        }
        this.f12375i.setAlpha(r1.i.c((int) ((((i10 / 255.0f) * ((j1.f) this.f12377k).q()) / 100.0f) * 255.0f), 0, 255));
        this.f12375i.setStrokeWidth(((j1.d) this.f12376j).q() * r1.j.g(matrix));
        if (this.f12375i.getStrokeWidth() <= 0.0f) {
            com.airbnb.lottie.e.c("StrokeContent#draw");
            return;
        }
        e(matrix);
        j1.a aVar = this.f12380n;
        if (aVar != null) {
            this.f12375i.setColorFilter((ColorFilter) aVar.h());
        }
        j1.a aVar2 = this.f12381o;
        if (aVar2 != null) {
            float fFloatValue = ((Float) aVar2.h()).floatValue();
            if (fFloatValue == 0.0f) {
                this.f12375i.setMaskFilter(null);
            } else if (fFloatValue != this.f12382p) {
                this.f12375i.setMaskFilter(this.f12372f.y(fFloatValue));
            }
            this.f12382p = fFloatValue;
        }
        j1.c cVar = this.f12383q;
        if (cVar != null) {
            cVar.a(this.f12375i);
        }
        for (int i11 = 0; i11 < this.f12373g.size(); i11++) {
            b bVar = (b) this.f12373g.get(i11);
            if (bVar.f12385b != null) {
                j(canvas, bVar, matrix);
            } else {
                com.airbnb.lottie.e.b("StrokeContent#buildPath");
                this.f12368b.reset();
                for (int size = bVar.f12384a.size() - 1; size >= 0; size--) {
                    this.f12368b.addPath(((m) bVar.f12384a.get(size)).a(), matrix);
                }
                com.airbnb.lottie.e.c("StrokeContent#buildPath");
                com.airbnb.lottie.e.b("StrokeContent#drawPath");
                canvas.drawPath(this.f12368b, this.f12375i);
                com.airbnb.lottie.e.c("StrokeContent#drawPath");
            }
        }
        com.airbnb.lottie.e.c("StrokeContent#draw");
    }

    @Override // l1.f
    public void g(l1.e eVar, int i10, List list, l1.e eVar2) {
        r1.i.k(eVar, i10, list, eVar2, this);
    }

    @Override // l1.f
    public void h(Object obj, s1.c cVar) {
        j1.c cVar2;
        j1.c cVar3;
        j1.c cVar4;
        j1.c cVar5;
        j1.c cVar6;
        if (obj == m0.f4620d) {
            this.f12377k.o(cVar);
            return;
        }
        if (obj == m0.f4635s) {
            this.f12376j.o(cVar);
            return;
        }
        if (obj == m0.K) {
            j1.a aVar = this.f12380n;
            if (aVar != null) {
                this.f12372f.I(aVar);
            }
            if (cVar == null) {
                this.f12380n = null;
                return;
            }
            j1.q qVar = new j1.q(cVar);
            this.f12380n = qVar;
            qVar.a(this);
            this.f12372f.j(this.f12380n);
            return;
        }
        if (obj == m0.f4626j) {
            j1.a aVar2 = this.f12381o;
            if (aVar2 != null) {
                aVar2.o(cVar);
                return;
            }
            j1.q qVar2 = new j1.q(cVar);
            this.f12381o = qVar2;
            qVar2.a(this);
            this.f12372f.j(this.f12381o);
            return;
        }
        if (obj == m0.f4621e && (cVar6 = this.f12383q) != null) {
            cVar6.b(cVar);
            return;
        }
        if (obj == m0.G && (cVar5 = this.f12383q) != null) {
            cVar5.f(cVar);
            return;
        }
        if (obj == m0.H && (cVar4 = this.f12383q) != null) {
            cVar4.d(cVar);
            return;
        }
        if (obj == m0.I && (cVar3 = this.f12383q) != null) {
            cVar3.e(cVar);
        } else {
            if (obj != m0.J || (cVar2 = this.f12383q) == null) {
                return;
            }
            cVar2.g(cVar);
        }
    }
}
