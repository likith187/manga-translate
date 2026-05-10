package i1;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import com.airbnb.lottie.i0;
import com.airbnb.lottie.m0;
import j1.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class h implements e, a.b, k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f12419a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f12420b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final o1.b f12421c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.collection.f f12422d = new androidx.collection.f();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.collection.f f12423e = new androidx.collection.f();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Path f12424f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Paint f12425g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final RectF f12426h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List f12427i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final n1.g f12428j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final j1.a f12429k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final j1.a f12430l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final j1.a f12431m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final j1.a f12432n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private j1.a f12433o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private j1.q f12434p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final i0 f12435q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f12436r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private j1.a f12437s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    float f12438t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private j1.c f12439u;

    public h(i0 i0Var, com.airbnb.lottie.j jVar, o1.b bVar, n1.e eVar) {
        Path path = new Path();
        this.f12424f = path;
        this.f12425g = new h1.a(1);
        this.f12426h = new RectF();
        this.f12427i = new ArrayList();
        this.f12438t = 0.0f;
        this.f12421c = bVar;
        this.f12419a = eVar.f();
        this.f12420b = eVar.i();
        this.f12435q = i0Var;
        this.f12428j = eVar.e();
        path.setFillType(eVar.c());
        this.f12436r = (int) (jVar.d() / 32.0f);
        j1.a aVarA = eVar.d().a();
        this.f12429k = aVarA;
        aVarA.a(this);
        bVar.j(aVarA);
        j1.a aVarA2 = eVar.g().a();
        this.f12430l = aVarA2;
        aVarA2.a(this);
        bVar.j(aVarA2);
        j1.a aVarA3 = eVar.h().a();
        this.f12431m = aVarA3;
        aVarA3.a(this);
        bVar.j(aVarA3);
        j1.a aVarA4 = eVar.b().a();
        this.f12432n = aVarA4;
        aVarA4.a(this);
        bVar.j(aVarA4);
        if (bVar.x() != null) {
            j1.a aVarA5 = bVar.x().a().a();
            this.f12437s = aVarA5;
            aVarA5.a(this);
            bVar.j(this.f12437s);
        }
        if (bVar.z() != null) {
            this.f12439u = new j1.c(this, bVar, bVar.z());
        }
    }

    private int[] e(int[] iArr) {
        j1.q qVar = this.f12434p;
        if (qVar != null) {
            Integer[] numArr = (Integer[]) qVar.h();
            int i10 = 0;
            if (iArr.length == numArr.length) {
                while (i10 < iArr.length) {
                    iArr[i10] = numArr[i10].intValue();
                    i10++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i10 < numArr.length) {
                    iArr[i10] = numArr[i10].intValue();
                    i10++;
                }
            }
        }
        return iArr;
    }

    private int j() {
        int iRound = Math.round(this.f12431m.f() * this.f12436r);
        int iRound2 = Math.round(this.f12432n.f() * this.f12436r);
        int iRound3 = Math.round(this.f12429k.f() * this.f12436r);
        int i10 = iRound != 0 ? 527 * iRound : 17;
        if (iRound2 != 0) {
            i10 = i10 * 31 * iRound2;
        }
        return iRound3 != 0 ? i10 * 31 * iRound3 : i10;
    }

    private LinearGradient k() {
        long j10 = j();
        LinearGradient linearGradient = (LinearGradient) this.f12422d.e(j10);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF pointF = (PointF) this.f12431m.h();
        PointF pointF2 = (PointF) this.f12432n.h();
        n1.d dVar = (n1.d) this.f12429k.h();
        LinearGradient linearGradient2 = new LinearGradient(pointF.x, pointF.y, pointF2.x, pointF2.y, e(dVar.d()), dVar.e(), Shader.TileMode.CLAMP);
        this.f12422d.i(j10, linearGradient2);
        return linearGradient2;
    }

    private RadialGradient l() {
        long j10 = j();
        RadialGradient radialGradient = (RadialGradient) this.f12423e.e(j10);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF pointF = (PointF) this.f12431m.h();
        PointF pointF2 = (PointF) this.f12432n.h();
        n1.d dVar = (n1.d) this.f12429k.h();
        int[] iArrE = e(dVar.d());
        float[] fArrE = dVar.e();
        float f10 = pointF.x;
        float f11 = pointF.y;
        float fHypot = (float) Math.hypot(pointF2.x - f10, pointF2.y - f11);
        if (fHypot <= 0.0f) {
            fHypot = 0.001f;
        }
        RadialGradient radialGradient2 = new RadialGradient(f10, f11, fHypot, iArrE, fArrE, Shader.TileMode.CLAMP);
        this.f12423e.i(j10, radialGradient2);
        return radialGradient2;
    }

    @Override // i1.e
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        this.f12424f.reset();
        for (int i10 = 0; i10 < this.f12427i.size(); i10++) {
            this.f12424f.addPath(((m) this.f12427i.get(i10)).a(), matrix);
        }
        this.f12424f.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // j1.a.b
    public void c() {
        this.f12435q.invalidateSelf();
    }

    @Override // i1.c
    public void d(List list, List list2) {
        for (int i10 = 0; i10 < list2.size(); i10++) {
            c cVar = (c) list2.get(i10);
            if (cVar instanceof m) {
                this.f12427i.add((m) cVar);
            }
        }
    }

    @Override // i1.e
    public void f(Canvas canvas, Matrix matrix, int i10) {
        if (this.f12420b) {
            return;
        }
        com.airbnb.lottie.e.b("GradientFillContent#draw");
        this.f12424f.reset();
        for (int i11 = 0; i11 < this.f12427i.size(); i11++) {
            this.f12424f.addPath(((m) this.f12427i.get(i11)).a(), matrix);
        }
        this.f12424f.computeBounds(this.f12426h, false);
        Shader shaderK = this.f12428j == n1.g.LINEAR ? k() : l();
        shaderK.setLocalMatrix(matrix);
        this.f12425g.setShader(shaderK);
        j1.a aVar = this.f12433o;
        if (aVar != null) {
            this.f12425g.setColorFilter((ColorFilter) aVar.h());
        }
        j1.a aVar2 = this.f12437s;
        if (aVar2 != null) {
            float fFloatValue = ((Float) aVar2.h()).floatValue();
            if (fFloatValue == 0.0f) {
                this.f12425g.setMaskFilter(null);
            } else if (fFloatValue != this.f12438t) {
                this.f12425g.setMaskFilter(new BlurMaskFilter(fFloatValue, BlurMaskFilter.Blur.NORMAL));
            }
            this.f12438t = fFloatValue;
        }
        j1.c cVar = this.f12439u;
        if (cVar != null) {
            cVar.a(this.f12425g);
        }
        this.f12425g.setAlpha(r1.i.c((int) ((((i10 / 255.0f) * ((Integer) this.f12430l.h()).intValue()) / 100.0f) * 255.0f), 0, 255));
        canvas.drawPath(this.f12424f, this.f12425g);
        com.airbnb.lottie.e.c("GradientFillContent#draw");
    }

    @Override // l1.f
    public void g(l1.e eVar, int i10, List list, l1.e eVar2) {
        r1.i.k(eVar, i10, list, eVar2, this);
    }

    @Override // i1.c
    public String getName() {
        return this.f12419a;
    }

    @Override // l1.f
    public void h(Object obj, s1.c cVar) {
        j1.c cVar2;
        j1.c cVar3;
        j1.c cVar4;
        j1.c cVar5;
        j1.c cVar6;
        if (obj == m0.f4620d) {
            this.f12430l.o(cVar);
            return;
        }
        if (obj == m0.K) {
            j1.a aVar = this.f12433o;
            if (aVar != null) {
                this.f12421c.I(aVar);
            }
            if (cVar == null) {
                this.f12433o = null;
                return;
            }
            j1.q qVar = new j1.q(cVar);
            this.f12433o = qVar;
            qVar.a(this);
            this.f12421c.j(this.f12433o);
            return;
        }
        if (obj == m0.L) {
            j1.q qVar2 = this.f12434p;
            if (qVar2 != null) {
                this.f12421c.I(qVar2);
            }
            if (cVar == null) {
                this.f12434p = null;
                return;
            }
            this.f12422d.a();
            this.f12423e.a();
            j1.q qVar3 = new j1.q(cVar);
            this.f12434p = qVar3;
            qVar3.a(this);
            this.f12421c.j(this.f12434p);
            return;
        }
        if (obj == m0.f4626j) {
            j1.a aVar2 = this.f12437s;
            if (aVar2 != null) {
                aVar2.o(cVar);
                return;
            }
            j1.q qVar4 = new j1.q(cVar);
            this.f12437s = qVar4;
            qVar4.a(this);
            this.f12421c.j(this.f12437s);
            return;
        }
        if (obj == m0.f4621e && (cVar6 = this.f12439u) != null) {
            cVar6.b(cVar);
            return;
        }
        if (obj == m0.G && (cVar5 = this.f12439u) != null) {
            cVar5.f(cVar);
            return;
        }
        if (obj == m0.H && (cVar4 = this.f12439u) != null) {
            cVar4.d(cVar);
            return;
        }
        if (obj == m0.I && (cVar3 = this.f12439u) != null) {
            cVar3.e(cVar);
        } else {
            if (obj != m0.J || (cVar2 = this.f12439u) == null) {
                return;
            }
            cVar2.g(cVar);
        }
    }
}
