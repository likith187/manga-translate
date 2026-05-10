package i6;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.oplus.anim.o;
import com.oplus.anim.q;

/* JADX INFO: loaded from: classes2.dex */
public class h extends b {
    private final RectF D;
    private final Paint E;
    private final float[] F;
    private final Path G;
    private final e H;
    private d6.a I;

    h(o oVar, e eVar) {
        super(oVar, eVar);
        this.D = new RectF();
        b6.a aVar = new b6.a();
        this.E = aVar;
        this.F = new float[8];
        this.G = new Path();
        this.H = eVar;
        aVar.setAlpha(0);
        aVar.setStyle(Paint.Style.FILL);
        aVar.setColor(eVar.o());
    }

    @Override // i6.b, c6.e
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        super.b(rectF, matrix, z10);
        this.D.set(0.0f, 0.0f, this.H.q(), this.H.p());
        this.f12609o.mapRect(this.D);
        rectF.set(this.D);
    }

    @Override // i6.b, f6.g
    public void h(Object obj, m6.b bVar) {
        super.h(obj, bVar);
        if (obj == q.K) {
            if (bVar == null) {
                this.I = null;
            } else {
                this.I = new d6.q(bVar);
            }
        }
    }

    @Override // i6.b
    public void u(Canvas canvas, Matrix matrix, int i10) {
        int iAlpha = Color.alpha(this.H.o());
        if (iAlpha == 0) {
            return;
        }
        int iIntValue = (int) ((i10 / 255.0f) * (((iAlpha / 255.0f) * (this.f12618x.h() == null ? 100 : ((Integer) this.f12618x.h().h()).intValue())) / 100.0f) * 255.0f);
        this.E.setAlpha(iIntValue);
        d6.a aVar = this.I;
        if (aVar != null) {
            this.E.setColorFilter((ColorFilter) aVar.h());
        }
        if (iIntValue > 0) {
            float[] fArr = this.F;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            fArr[2] = this.H.q();
            float[] fArr2 = this.F;
            fArr2[3] = 0.0f;
            fArr2[4] = this.H.q();
            this.F[5] = this.H.p();
            float[] fArr3 = this.F;
            fArr3[6] = 0.0f;
            fArr3[7] = this.H.p();
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
