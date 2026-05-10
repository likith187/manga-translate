package i1;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import com.airbnb.lottie.i0;
import com.airbnb.lottie.m0;

/* JADX INFO: loaded from: classes.dex */
public class i extends a {
    private final j1.a A;
    private j1.q B;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final String f12440r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final boolean f12441s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final androidx.collection.f f12442t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final androidx.collection.f f12443u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final RectF f12444v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final n1.g f12445w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final int f12446x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final j1.a f12447y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final j1.a f12448z;

    public i(i0 i0Var, o1.b bVar, n1.f fVar) {
        super(i0Var, bVar, fVar.b().toPaintCap(), fVar.g().toPaintJoin(), fVar.i(), fVar.k(), fVar.m(), fVar.h(), fVar.c());
        this.f12442t = new androidx.collection.f();
        this.f12443u = new androidx.collection.f();
        this.f12444v = new RectF();
        this.f12440r = fVar.j();
        this.f12445w = fVar.f();
        this.f12441s = fVar.n();
        this.f12446x = (int) (i0Var.L().d() / 32.0f);
        j1.a aVarA = fVar.e().a();
        this.f12447y = aVarA;
        aVarA.a(this);
        bVar.j(aVarA);
        j1.a aVarA2 = fVar.l().a();
        this.f12448z = aVarA2;
        aVarA2.a(this);
        bVar.j(aVarA2);
        j1.a aVarA3 = fVar.d().a();
        this.A = aVarA3;
        aVarA3.a(this);
        bVar.j(aVarA3);
    }

    private int[] k(int[] iArr) {
        j1.q qVar = this.B;
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
        int iRound = Math.round(this.f12448z.f() * this.f12446x);
        int iRound2 = Math.round(this.A.f() * this.f12446x);
        int iRound3 = Math.round(this.f12447y.f() * this.f12446x);
        int i10 = iRound != 0 ? 527 * iRound : 17;
        if (iRound2 != 0) {
            i10 = i10 * 31 * iRound2;
        }
        return iRound3 != 0 ? i10 * 31 * iRound3 : i10;
    }

    private LinearGradient m() {
        long jL = l();
        LinearGradient linearGradient = (LinearGradient) this.f12442t.e(jL);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF pointF = (PointF) this.f12448z.h();
        PointF pointF2 = (PointF) this.A.h();
        n1.d dVar = (n1.d) this.f12447y.h();
        LinearGradient linearGradient2 = new LinearGradient(pointF.x, pointF.y, pointF2.x, pointF2.y, k(dVar.d()), dVar.e(), Shader.TileMode.CLAMP);
        this.f12442t.i(jL, linearGradient2);
        return linearGradient2;
    }

    private RadialGradient n() {
        long jL = l();
        RadialGradient radialGradient = (RadialGradient) this.f12443u.e(jL);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF pointF = (PointF) this.f12448z.h();
        PointF pointF2 = (PointF) this.A.h();
        n1.d dVar = (n1.d) this.f12447y.h();
        int[] iArrK = k(dVar.d());
        float[] fArrE = dVar.e();
        RadialGradient radialGradient2 = new RadialGradient(pointF.x, pointF.y, (float) Math.hypot(pointF2.x - r7, pointF2.y - r8), iArrK, fArrE, Shader.TileMode.CLAMP);
        this.f12443u.i(jL, radialGradient2);
        return radialGradient2;
    }

    @Override // i1.a, i1.e
    public void f(Canvas canvas, Matrix matrix, int i10) {
        if (this.f12441s) {
            return;
        }
        b(this.f12444v, matrix, false);
        Shader shaderM = this.f12445w == n1.g.LINEAR ? m() : n();
        shaderM.setLocalMatrix(matrix);
        this.f12375i.setShader(shaderM);
        super.f(canvas, matrix, i10);
    }

    @Override // i1.c
    public String getName() {
        return this.f12440r;
    }

    @Override // i1.a, l1.f
    public void h(Object obj, s1.c cVar) {
        super.h(obj, cVar);
        if (obj == m0.L) {
            j1.q qVar = this.B;
            if (qVar != null) {
                this.f12372f.I(qVar);
            }
            if (cVar == null) {
                this.B = null;
                return;
            }
            j1.q qVar2 = new j1.q(cVar);
            this.B = qVar2;
            qVar2.a(this);
            this.f12372f.j(this.B);
        }
    }
}
