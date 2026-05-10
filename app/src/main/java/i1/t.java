package i1;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import com.airbnb.lottie.i0;
import com.airbnb.lottie.m0;

/* JADX INFO: loaded from: classes.dex */
public class t extends a {

    /* JADX INFO: renamed from: r */
    private final o1.b f12507r;

    /* JADX INFO: renamed from: s */
    private final String f12508s;

    /* JADX INFO: renamed from: t */
    private final boolean f12509t;

    /* JADX INFO: renamed from: u */
    private final j1.a f12510u;

    /* JADX INFO: renamed from: v */
    private j1.a f12511v;

    public t(i0 i0Var, o1.b bVar, n1.s sVar) {
        super(i0Var, bVar, sVar.b().toPaintCap(), sVar.e().toPaintJoin(), sVar.g(), sVar.i(), sVar.j(), sVar.f(), sVar.d());
        this.f12507r = bVar;
        this.f12508s = sVar.h();
        this.f12509t = sVar.k();
        j1.a aVarA = sVar.c().a();
        this.f12510u = aVarA;
        aVarA.a(this);
        bVar.j(aVarA);
    }

    @Override // i1.a, i1.e
    public void f(Canvas canvas, Matrix matrix, int i10) {
        if (this.f12509t) {
            return;
        }
        this.f12375i.setColor(((j1.b) this.f12510u).q());
        j1.a aVar = this.f12511v;
        if (aVar != null) {
            this.f12375i.setColorFilter((ColorFilter) aVar.h());
        }
        super.f(canvas, matrix, i10);
    }

    @Override // i1.c
    public String getName() {
        return this.f12508s;
    }

    @Override // i1.a, l1.f
    public void h(Object obj, s1.c cVar) {
        super.h(obj, cVar);
        if (obj == m0.f4618b) {
            this.f12510u.o(cVar);
            return;
        }
        if (obj == m0.K) {
            j1.a aVar = this.f12511v;
            if (aVar != null) {
                this.f12507r.I(aVar);
            }
            if (cVar == null) {
                this.f12511v = null;
                return;
            }
            j1.q qVar = new j1.q(cVar);
            this.f12511v = qVar;
            qVar.a(this);
            this.f12507r.j(this.f12510u);
        }
    }
}
