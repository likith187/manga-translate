package o1;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.airbnb.lottie.i0;
import com.airbnb.lottie.j0;
import com.airbnb.lottie.m0;
import j1.q;
import r1.j;

/* JADX INFO: loaded from: classes.dex */
public class d extends b {
    private final Paint D;
    private final Rect E;
    private final Rect F;
    private final j0 G;
    private j1.a H;
    private j1.a I;

    d(i0 i0Var, e eVar) {
        super(i0Var, eVar);
        this.D = new h1.a(3);
        this.E = new Rect();
        this.F = new Rect();
        this.G = i0Var.R(eVar.n());
    }

    private Bitmap Q() {
        Bitmap bitmap;
        j1.a aVar = this.I;
        if (aVar != null && (bitmap = (Bitmap) aVar.h()) != null) {
            return bitmap;
        }
        Bitmap bitmapI = this.f14315p.I(this.f14316q.n());
        if (bitmapI != null) {
            return bitmapI;
        }
        j0 j0Var = this.G;
        if (j0Var != null) {
            return j0Var.b();
        }
        return null;
    }

    @Override // o1.b, i1.e
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        super.b(rectF, matrix, z10);
        if (this.G != null) {
            float fE = j.e();
            rectF.set(0.0f, 0.0f, this.G.f() * fE, this.G.d() * fE);
            this.f14314o.mapRect(rectF);
        }
    }

    @Override // o1.b, l1.f
    public void h(Object obj, s1.c cVar) {
        super.h(obj, cVar);
        if (obj == m0.K) {
            if (cVar == null) {
                this.H = null;
                return;
            } else {
                this.H = new q(cVar);
                return;
            }
        }
        if (obj == m0.N) {
            if (cVar == null) {
                this.I = null;
            } else {
                this.I = new q(cVar);
            }
        }
    }

    @Override // o1.b
    public void u(Canvas canvas, Matrix matrix, int i10) {
        Bitmap bitmapQ = Q();
        if (bitmapQ == null || bitmapQ.isRecycled() || this.G == null) {
            return;
        }
        float fE = j.e();
        this.D.setAlpha(i10);
        j1.a aVar = this.H;
        if (aVar != null) {
            this.D.setColorFilter((ColorFilter) aVar.h());
        }
        canvas.save();
        canvas.concat(matrix);
        this.E.set(0, 0, bitmapQ.getWidth(), bitmapQ.getHeight());
        if (this.f14315p.S()) {
            this.F.set(0, 0, (int) (this.G.f() * fE), (int) (this.G.d() * fE));
        } else {
            this.F.set(0, 0, (int) (bitmapQ.getWidth() * fE), (int) (bitmapQ.getHeight() * fE));
        }
        canvas.drawBitmap(bitmapQ, this.E, this.F, this.D);
        canvas.restore();
    }
}
