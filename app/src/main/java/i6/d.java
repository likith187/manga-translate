package i6;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.oplus.anim.g0;
import com.oplus.anim.o;
import com.oplus.anim.q;

/* JADX INFO: loaded from: classes2.dex */
public class d extends b {
    private final Paint D;
    private final Rect E;
    private final Rect F;
    private final g0 G;
    private d6.a H;
    private d6.a I;

    d(o oVar, e eVar) {
        super(oVar, eVar);
        this.D = new b6.a(3);
        this.E = new Rect();
        this.F = new Rect();
        this.G = oVar.M(eVar.m());
    }

    private Bitmap P() {
        Bitmap bitmap;
        d6.a aVar = this.I;
        if (aVar != null && (bitmap = (Bitmap) aVar.h()) != null) {
            return bitmap;
        }
        Bitmap bitmapE = this.f12610p.E(this.f12611q.m());
        if (bitmapE != null) {
            return bitmapE;
        }
        g0 g0Var = this.G;
        if (g0Var != null) {
            return g0Var.a();
        }
        return null;
    }

    @Override // i6.b, c6.e
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        super.b(rectF, matrix, z10);
        if (this.G != null) {
            float fE = l6.h.e();
            rectF.set(0.0f, 0.0f, this.G.e() * fE, this.G.c() * fE);
            this.f12609o.mapRect(rectF);
        }
    }

    @Override // i6.b, f6.g
    public void h(Object obj, m6.b bVar) {
        super.h(obj, bVar);
        if (obj == q.K) {
            if (bVar == null) {
                this.H = null;
                return;
            } else {
                this.H = new d6.q(bVar);
                return;
            }
        }
        if (obj == q.N) {
            if (bVar == null) {
                this.I = null;
            } else {
                this.I = new d6.q(bVar);
            }
        }
    }

    @Override // i6.b
    public void u(Canvas canvas, Matrix matrix, int i10) {
        Bitmap bitmapP = P();
        if (bitmapP == null || bitmapP.isRecycled() || this.G == null) {
            return;
        }
        float fE = l6.h.e();
        this.D.setAlpha(i10);
        d6.a aVar = this.H;
        if (aVar != null) {
            this.D.setColorFilter((ColorFilter) aVar.h());
        }
        canvas.save();
        canvas.concat(matrix);
        this.E.set(0, 0, bitmapP.getWidth(), bitmapP.getHeight());
        if (this.f12610p.N()) {
            this.F.set(0, 0, (int) (this.G.e() * fE), (int) (this.G.c() * fE));
        } else {
            this.F.set(0, 0, (int) (bitmapP.getWidth() * fE), (int) (bitmapP.getHeight() * fE));
        }
        canvas.drawBitmap(bitmapP, this.E, this.F, this.D);
        canvas.restore();
    }
}
