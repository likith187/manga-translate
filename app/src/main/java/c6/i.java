package c6;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;

/* JADX INFO: loaded from: classes2.dex */
public class i extends a {
    private final d6.a A;
    private d6.q B;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final String f4366r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final boolean f4367s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final androidx.collection.f f4368t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final androidx.collection.f f4369u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final RectF f4370v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final h6.g f4371w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final int f4372x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final d6.a f4373y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final d6.a f4374z;

    public i(com.oplus.anim.o oVar, i6.b bVar, h6.f fVar) {
        super(oVar, bVar, fVar.b().toPaintCap(), fVar.g().toPaintJoin(), fVar.i(), fVar.k(), fVar.m(), fVar.h(), fVar.c());
        this.f4368t = new androidx.collection.f();
        this.f4369u = new androidx.collection.f();
        this.f4370v = new RectF();
        this.f4366r = fVar.j();
        this.f4371w = fVar.f();
        this.f4367s = fVar.n();
        this.f4372x = (int) (oVar.G().d() / 32.0f);
        d6.a aVarA = fVar.e().a();
        this.f4373y = aVarA;
        aVarA.a(this);
        bVar.j(aVarA);
        d6.a aVarA2 = fVar.l().a();
        this.f4374z = aVarA2;
        aVarA2.a(this);
        bVar.j(aVarA2);
        d6.a aVarA3 = fVar.d().a();
        this.A = aVarA3;
        aVarA3.a(this);
        bVar.j(aVarA3);
    }

    private int[] k(int[] iArr) {
        d6.q qVar = this.B;
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

    private int l() {
        int iRound = Math.round(this.f4374z.f() * this.f4372x);
        int iRound2 = Math.round(this.A.f() * this.f4372x);
        int iRound3 = Math.round(this.f4373y.f() * this.f4372x);
        int i10 = iRound != 0 ? 527 * iRound : 17;
        if (iRound2 != 0) {
            i10 = i10 * 31 * iRound2;
        }
        return iRound3 != 0 ? i10 * 31 * iRound3 : i10;
    }

    private LinearGradient m() {
        long jL = l();
        LinearGradient linearGradient = (LinearGradient) this.f4368t.e(jL);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF pointF = (PointF) this.f4374z.h();
        PointF pointF2 = (PointF) this.A.h();
        h6.d dVar = (h6.d) this.f4373y.h();
        LinearGradient linearGradient2 = new LinearGradient(pointF.x, pointF.y, pointF2.x, pointF2.y, k(dVar.c()), dVar.d(), Shader.TileMode.CLAMP);
        this.f4368t.i(jL, linearGradient2);
        return linearGradient2;
    }

    private RadialGradient n() {
        long jL = l();
        RadialGradient radialGradient = (RadialGradient) this.f4369u.e(jL);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF pointF = (PointF) this.f4374z.h();
        PointF pointF2 = (PointF) this.A.h();
        h6.d dVar = (h6.d) this.f4373y.h();
        int[] iArrK = k(dVar.c());
        float[] fArrD = dVar.d();
        RadialGradient radialGradient2 = new RadialGradient(pointF.x, pointF.y, (float) Math.hypot(pointF2.x - r7, pointF2.y - r8), iArrK, fArrD, Shader.TileMode.CLAMP);
        this.f4369u.i(jL, radialGradient2);
        return radialGradient2;
    }

    @Override // c6.a, c6.e
    public void f(Canvas canvas, Matrix matrix, int i10) {
        if (this.f4367s) {
            return;
        }
        b(this.f4370v, matrix, false);
        Shader shaderM = this.f4371w == h6.g.LINEAR ? m() : n();
        shaderM.setLocalMatrix(matrix);
        this.f4301i.setShader(shaderM);
        super.f(canvas, matrix, i10);
    }

    @Override // c6.c
    public String getName() {
        return this.f4366r;
    }

    @Override // c6.a, f6.g
    public void h(Object obj, m6.b bVar) {
        super.h(obj, bVar);
        if (obj == com.oplus.anim.q.L) {
            d6.q qVar = this.B;
            if (qVar != null) {
                this.f4298f.H(qVar);
            }
            if (bVar == null) {
                this.B = null;
                return;
            }
            d6.q qVar2 = new d6.q(bVar);
            this.B = qVar2;
            qVar2.a(this);
            this.f4298f.j(this.B);
        }
    }
}
