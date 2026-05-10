package o1;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.airbnb.lottie.i0;
import com.airbnb.lottie.j;
import java.util.Collections;
import java.util.List;
import n1.q;

/* JADX INFO: loaded from: classes.dex */
public class g extends b {
    private final i1.d D;
    private final c E;

    g(i0 i0Var, e eVar, c cVar, j jVar) {
        super(i0Var, eVar);
        this.E = cVar;
        i1.d dVar = new i1.d(i0Var, this, new q("__container", eVar.o(), false), jVar);
        this.D = dVar;
        dVar.d(Collections.emptyList(), Collections.emptyList());
    }

    @Override // o1.b
    protected void J(l1.e eVar, int i10, List list, l1.e eVar2) {
        this.D.g(eVar, i10, list, eVar2);
    }

    @Override // o1.b, i1.e
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        super.b(rectF, matrix, z10);
        this.D.b(rectF, this.f14314o, z10);
    }

    @Override // o1.b
    void u(Canvas canvas, Matrix matrix, int i10) {
        this.D.f(canvas, matrix, i10);
    }

    @Override // o1.b
    public n1.a x() {
        n1.a aVarX = super.x();
        return aVarX != null ? aVarX : this.E.x();
    }

    @Override // o1.b
    public q1.j z() {
        q1.j jVarZ = super.z();
        return jVarZ != null ? jVarZ : this.E.z();
    }
}
