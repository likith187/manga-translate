package o1;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.i0;
import com.airbnb.lottie.m0;
import j1.q;

/* JADX INFO: loaded from: classes.dex */
public class h extends b {
    private final RectF D;
    private final Paint E;
    private final float[] F;
    private final Path G;
    private final e H;
    private j1.a I;
    private j1.a J;

    h(i0 i0Var, e eVar) {
        super(i0Var, eVar);
        this.D = new RectF();
        h1.a aVar = new h1.a();
        this.E = aVar;
        this.F = new float[8];
        this.G = new Path();
        this.H = eVar;
        aVar.setAlpha(0);
        aVar.setStyle(Paint.Style.FILL);
        aVar.setColor(eVar.p());
    }

    @Override // o1.b, i1.e
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        super.b(rectF, matrix, z10);
        this.D.set(0.0f, 0.0f, this.H.r(), this.H.q());
        this.f14314o.mapRect(this.D);
        rectF.set(this.D);
    }

    @Override // o1.b, l1.f
    public void h(Object obj, s1.c cVar) {
        super.h(obj, cVar);
        if (obj == m0.K) {
            if (cVar == null) {
                this.I = null;
                return;
            } else {
                this.I = new q(cVar);
                return;
            }
        }
        if (obj == m0.f4617a) {
            if (cVar != null) {
                this.J = new q(cVar);
            } else {
                this.J = null;
                this.E.setColor(this.H.p());
            }
        }
    }

    @Override // o1.b
    public void u(Canvas canvas, Matrix matrix, int i10) {
        int iAlpha = Color.alpha(this.H.p());
        if (iAlpha == 0) {
            return;
        }
        j1.a aVar = this.J;
        Integer num = aVar == null ? null : (Integer) aVar.h();
        if (num != null) {
            this.E.setColor(num.intValue());
        } else {
            this.E.setColor(this.H.p());
        }
        int iIntValue = (int) ((i10 / 255.0f) * (((iAlpha / 255.0f) * (this.f14323x.h() == null ? 100 : ((Integer) this.f14323x.h().h()).intValue())) / 100.0f) * 255.0f);
        this.E.setAlpha(iIntValue);
        j1.a aVar2 = this.I;
        if (aVar2 != null) {
            this.E.setColorFilter((ColorFilter) aVar2.h());
        }
        if (iIntValue > 0) {
            float[] fArr = this.F;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            fArr[2] = this.H.r();
            float[] fArr2 = this.F;
            fArr2[3] = 0.0f;
            fArr2[4] = this.H.r();
            this.F[5] = this.H.q();
            float[] fArr3 = this.F;
            fArr3[6] = 0.0f;
            fArr3[7] = this.H.q();
            matrix.mapPoints(this.F);
            this.G.reset();
            Path path = this.G;
            float[] fArr4 = this.F;
            path.moveTo(fArr4[0], fArr4[1]);
            Path path2 = this.G;
            float[] fArr5 = this.F;
            path2.lineTo(fArr5[2], fArr5[3]);
            Path path3 = this.G;
            float[] fArr6 = this.F;
            path3.lineTo(fArr6[4], fArr6[5]);
            Path path4 = this.G;
            float[] fArr7 = this.F;
            path4.lineTo(fArr7[6], fArr7[7]);
            Path path5 = this.G;
            float[] fArr8 = this.F;
            path5.lineTo(fArr8[0], fArr8[1]);
            this.G.close();
            canvas.drawPath(this.G, this.E);
        }
    }
}
