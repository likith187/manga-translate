package c6;

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
import com.oplus.anim.k0;
import d6.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class h implements e, a.b, k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f4346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i6.b f4347c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.collection.f f4348d = new androidx.collection.f();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.collection.f f4349e = new androidx.collection.f();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Path f4350f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Paint f4351g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final RectF f4352h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List f4353i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final h6.g f4354j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final d6.a f4355k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final d6.a f4356l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final d6.a f4357m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final d6.a f4358n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private d6.a f4359o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private d6.q f4360p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final com.oplus.anim.o f4361q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f4362r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private d6.a f4363s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    float f4364t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private d6.c f4365u;

    public h(com.oplus.anim.o oVar, com.oplus.anim.a aVar, i6.b bVar, h6.e eVar) {
        Path path = new Path();
        this.f4350f = path;
        this.f4351g = new b6.a(1);
        this.f4352h = new RectF();
        this.f4353i = new ArrayList();
        this.f4364t = 0.0f;
        this.f4347c = bVar;
        this.f4345a = eVar.f();
        this.f4346b = eVar.i();
        this.f4361q = oVar;
        this.f4354j = eVar.e();
        path.setFillType(eVar.c());
        this.f4362r = (int) (aVar.d() / 32.0f);
        d6.a aVarA = eVar.d().a();
        this.f4355k = aVarA;
        aVarA.a(this);
        bVar.j(aVarA);
        d6.a aVarA2 = eVar.g().a();
        this.f4356l = aVarA2;
        aVarA2.a(this);
        bVar.j(aVarA2);
        d6.a aVarA3 = eVar.h().a();
        this.f4357m = aVarA3;
        aVarA3.a(this);
        bVar.j(aVarA3);
        d6.a aVarA4 = eVar.b().a();
        this.f4358n = aVarA4;
        aVarA4.a(this);
        bVar.j(aVarA4);
        if (bVar.w() != null) {
            d6.a aVarA5 = bVar.w().a().a();
            this.f4363s = aVarA5;
            aVarA5.a(this);
            bVar.j(this.f4363s);
        }
        if (bVar.y() != null) {
            this.f4365u = new d6.c(this, bVar, bVar.y());
        }
    }

    private int[] e(int[] iArr) {
        d6.q qVar = this.f4360p;
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
        int iRound = Math.round(this.f4357m.f() * this.f4362r);
        int iRound2 = Math.round(this.f4358n.f() * this.f4362r);
        int iRound3 = Math.round(this.f4355k.f() * this.f4362r);
        int i10 = iRound != 0 ? 527 * iRound : 17;
        if (iRound2 != 0) {
            i10 = i10 * 31 * iRound2;
        }
        return iRound3 != 0 ? i10 * 31 * iRound3 : i10;
    }

    private LinearGradient k() {
        long j10 = j();
        LinearGradient linearGradient = (LinearGradient) this.f4348d.e(j10);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF pointF = (PointF) this.f4357m.h();
        PointF pointF2 = (PointF) this.f4358n.h();
        h6.d dVar = (h6.d) this.f4355k.h();
        LinearGradient linearGradient2 = new LinearGradient(pointF.x, pointF.y, pointF2.x, pointF2.y, e(dVar.c()), dVar.d(), Shader.TileMode.CLAMP);
        this.f4348d.i(j10, linearGradient2);
        return linearGradient2;
    }

    private RadialGradient l() {
        long j10 = j();
        RadialGradient radialGradient = (RadialGradient) this.f4349e.e(j10);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF pointF = (PointF) this.f4357m.h();
        PointF pointF2 = (PointF) this.f4358n.h();
        h6.d dVar = (h6.d) this.f4355k.h();
        int[] iArrE = e(dVar.c());
        float[] fArrD = dVar.d();
        float f10 = pointF.x;
        float f11 = pointF.y;
        float fHypot = (float) Math.hypot(pointF2.x - f10, pointF2.y - f11);
        if (fHypot <= 0.0f) {
            fHypot = 0.001f;
        }
        RadialGradient radialGradient2 = new RadialGradient(f10, f11, fHypot, iArrE, fArrD, Shader.TileMode.CLAMP);
        this.f4349e.i(j10, radialGradient2);
        return radialGradient2;
    }

    @Override // c6.e
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        this.f4350f.reset();
        for (int i10 = 0; i10 < this.f4353i.size(); i10++) {
            this.f4350f.addPath(((m) this.f4353i.get(i10)).a(), matrix);
        }
        this.f4350f.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // d6.a.b
    public void c() {
        this.f4361q.invalidateSelf();
    }

    @Override // c6.c
    public void d(List list, List list2) {
        for (int i10 = 0; i10 < list2.size(); i10++) {
            c cVar = (c) list2.get(i10);
            if (cVar instanceof m) {
                this.f4353i.add((m) cVar);
            }
        }
    }

    @Override // c6.e
    public void f(Canvas canvas, Matrix matrix, int i10) {
        if (this.f4346b) {
            return;
        }
        k0.a("GradientFillContent#draw");
        this.f4350f.reset();
        for (int i11 = 0; i11 < this.f4353i.size(); i11++) {
            this.f4350f.addPath(((m) this.f4353i.get(i11)).a(), matrix);
        }
        this.f4350f.computeBounds(this.f4352h, false);
        Shader shaderK = this.f4354j == h6.g.LINEAR ? k() : l();
        shaderK.setLocalMatrix(matrix);
        this.f4351g.setShader(shaderK);
        d6.a aVar = this.f4359o;
        if (aVar != null) {
            this.f4351g.setColorFilter((ColorFilter) aVar.h());
        }
        d6.a aVar2 = this.f4363s;
        if (aVar2 != null) {
            float fFloatValue = ((Float) aVar2.h()).floatValue();
            if (fFloatValue == 0.0f) {
                this.f4351g.setMaskFilter(null);
            } else if (fFloatValue != this.f4364t) {
                this.f4351g.setMaskFilter(new BlurMaskFilter(fFloatValue, BlurMaskFilter.Blur.NORMAL));
            }
            this.f4364t = fFloatValue;
        }
        d6.c cVar = this.f4365u;
        if (cVar != null) {
            cVar.a(this.f4351g);
        }
        this.f4351g.setAlpha(l6.g.c((int) ((((i10 / 255.0f) * ((Integer) this.f4356l.h()).intValue()) / 100.0f) * 255.0f), 0, 255));
        canvas.drawPath(this.f4350f, this.f4351g);
        k0.b("GradientFillContent#draw");
    }

    @Override // c6.c
    public String getName() {
        return this.f4345a;
    }

    @Override // f6.g
    public void h(Object obj, m6.b bVar) {
        d6.c cVar;
        d6.c cVar2;
        d6.c cVar3;
        d6.c cVar4;
        d6.c cVar5;
        if (obj == com.oplus.anim.q.f11109d) {
            this.f4356l.n(bVar);
            return;
        }
        if (obj == com.oplus.anim.q.K) {
            d6.a aVar = this.f4359o;
            if (aVar != null) {
                this.f4347c.H(aVar);
            }
            if (bVar == null) {
                this.f4359o = null;
                return;
            }
            d6.q qVar = new d6.q(bVar);
            this.f4359o = qVar;
            qVar.a(this);
            this.f4347c.j(this.f4359o);
            return;
        }
        if (obj == com.oplus.anim.q.L) {
            d6.q qVar2 = this.f4360p;
            if (qVar2 != null) {
                this.f4347c.H(qVar2);
            }
            if (bVar == null) {
                this.f4360p = null;
                return;
            }
            this.f4348d.a();
            this.f4349e.a();
            d6.q qVar3 = new d6.q(bVar);
            this.f4360p = qVar3;
            qVar3.a(this);
            this.f4347c.j(this.f4360p);
            return;
        }
        if (obj == com.oplus.anim.q.f11115j) {
            d6.a aVar2 = this.f4363s;
            if (aVar2 != null) {
                aVar2.n(bVar);
                return;
            }
            d6.q qVar4 = new d6.q(bVar);
            this.f4363s = qVar4;
            qVar4.a(this);
            this.f4347c.j(this.f4363s);
            return;
        }
        if (obj == com.oplus.anim.q.f11110e && (cVar5 = this.f4365u) != null) {
            cVar5.b(bVar);
            return;
        }
        if (obj == com.oplus.anim.q.G && (cVar4 = this.f4365u) != null) {
            cVar4.f(bVar);
            return;
        }
        if (obj == com.oplus.anim.q.H && (cVar3 = this.f4365u) != null) {
            cVar3.d(bVar);
            return;
        }
        if (obj == com.oplus.anim.q.I && (cVar2 = this.f4365u) != null) {
            cVar2.e(bVar);
        } else {
            if (obj != com.oplus.anim.q.J || (cVar = this.f4365u) == null) {
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
