package i6;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.oplus.anim.o;
import h6.p;
import java.util.Collections;
import java.util.List;
import k6.j;

/* JADX INFO: loaded from: classes2.dex */
public class g extends b {
    private final c6.d D;
    private final c E;

    g(o oVar, e eVar, c cVar, com.oplus.anim.a aVar) {
        super(oVar, eVar);
        this.E = cVar;
        c6.d dVar = new c6.d(oVar, this, new p("__container", eVar.n(), false), aVar);
        this.D = dVar;
        dVar.d(Collections.emptyList(), Collections.emptyList());
    }

    @Override // i6.b
    protected void I(f6.f fVar, int i10, List list, f6.f fVar2) {
        this.D.i(fVar, i10, list, fVar2);
    }

    @Override // i6.b, c6.e
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        super.b(rectF, matrix, z10);
        this.D.b(rectF, this.f12609o, z10);
    }

    @Override // i6.b
    void u(Canvas canvas, Matrix matrix, int i10) {
        this.D.f(canvas, matrix, i10);
    }

    @Override // i6.b
    public h6.a w() {
        h6.a aVarW = super.w();
        return aVarW != null ? aVarW : this.E.w();
    }

    @Override // i6.b
    public j y() {
        j jVarY = super.y();
        return jVarY != null ? jVarY : this.E.y();
    }
}
