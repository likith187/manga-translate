package o1;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import com.airbnb.lottie.i0;
import com.airbnb.lottie.j;
import com.airbnb.lottie.m0;
import j1.q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import o1.e;

/* JADX INFO: loaded from: classes.dex */
public class c extends b {
    private j1.a D;
    private final List E;
    private final RectF F;
    private final RectF G;
    private final Paint H;
    private float I;
    private boolean J;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f14328a;

        static {
            int[] iArr = new int[e.b.values().length];
            f14328a = iArr;
            try {
                iArr[e.b.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14328a[e.b.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public c(i0 i0Var, e eVar, List list, j jVar) {
        int i10;
        b bVar;
        super(i0Var, eVar);
        this.E = new ArrayList();
        this.F = new RectF();
        this.G = new RectF();
        this.H = new Paint();
        this.J = true;
        m1.b bVarV = eVar.v();
        if (bVarV != null) {
            j1.a aVarA = bVarV.a();
            this.D = aVarA;
            j(aVarA);
            this.D.a(this);
        } else {
            this.D = null;
        }
        androidx.collection.f fVar = new androidx.collection.f(jVar.k().size());
        int size = list.size() - 1;
        b bVar2 = null;
        while (true) {
            if (size < 0) {
                break;
            }
            e eVar2 = (e) list.get(size);
            b bVarV2 = b.v(this, eVar2, i0Var, jVar);
            if (bVarV2 != null) {
                fVar.i(bVarV2.A().e(), bVarV2);
                if (bVar2 != null) {
                    bVar2.K(bVarV2);
                    bVar2 = null;
                } else {
                    this.E.add(0, bVarV2);
                    int i11 = a.f14328a[eVar2.i().ordinal()];
                    if (i11 == 1 || i11 == 2) {
                        bVar2 = bVarV2;
                    }
                }
            }
            size--;
        }
        for (i10 = 0; i10 < fVar.l(); i10++) {
            b bVar3 = (b) fVar.e(fVar.h(i10));
            if (bVar3 != null && (bVar = (b) fVar.e(bVar3.A().k())) != null) {
                bVar3.M(bVar);
            }
        }
    }

    @Override // o1.b
    protected void J(l1.e eVar, int i10, List list, l1.e eVar2) {
        for (int i11 = 0; i11 < this.E.size(); i11++) {
            ((b) this.E.get(i11)).g(eVar, i10, list, eVar2);
        }
    }

    @Override // o1.b
    public void L(boolean z10) {
        super.L(z10);
        Iterator it = this.E.iterator();
        while (it.hasNext()) {
            ((b) it.next()).L(z10);
        }
    }

    @Override // o1.b
    public void N(float f10) {
        com.airbnb.lottie.e.b("CompositionLayer#setProgress");
        this.I = f10;
        super.N(f10);
        if (this.D != null) {
            f10 = ((((Float) this.D.h()).floatValue() * this.f14316q.c().i()) - this.f14316q.c().p()) / (this.f14315p.L().e() + 0.01f);
        }
        if (this.D == null) {
            f10 -= this.f14316q.s();
        }
        if (this.f14316q.w() != 0.0f && !"__container".equals(this.f14316q.j())) {
            f10 /= this.f14316q.w();
        }
        for (int size = this.E.size() - 1; size >= 0; size--) {
            ((b) this.E.get(size)).N(f10);
        }
        com.airbnb.lottie.e.c("CompositionLayer#setProgress");
    }

    public float Q() {
        return this.I;
    }

    public void R(boolean z10) {
        this.J = z10;
    }

    @Override // o1.b, i1.e
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        super.b(rectF, matrix, z10);
        for (int size = this.E.size() - 1; size >= 0; size--) {
            this.F.set(0.0f, 0.0f, 0.0f, 0.0f);
            ((b) this.E.get(size)).b(this.F, this.f14314o, true);
            rectF.union(this.F);
        }
    }

    @Override // o1.b, l1.f
    public void h(Object obj, s1.c cVar) {
        super.h(obj, cVar);
        if (obj == m0.E) {
            if (cVar == null) {
                j1.a aVar = this.D;
                if (aVar != null) {
                    aVar.o(null);
                    return;
                }
                return;
            }
            q qVar = new q(cVar);
            this.D = qVar;
            qVar.a(this);
            j(this.D);
        }
    }

    @Override // o1.b
    void u(Canvas canvas, Matrix matrix, int i10) {
        com.airbnb.lottie.e.b("CompositionLayer#draw");
        this.G.set(0.0f, 0.0f, this.f14316q.m(), this.f14316q.l());
        matrix.mapRect(this.G);
        boolean z10 = this.f14315p.g0() && this.E.size() > 1 && i10 != 255;
        if (z10) {
            this.H.setAlpha(i10);
            r1.j.m(canvas, this.G, this.H);
        } else {
            canvas.save();
        }
        if (z10) {
            i10 = 255;
        }
        for (int size = this.E.size() - 1; size >= 0; size--) {
            if (((this.J || !"__container".equals(this.f14316q.j())) && !this.G.isEmpty()) ? canvas.clipRect(this.G) : true) {
                ((b) this.E.get(size)).f(canvas, matrix, i10);
            }
        }
        canvas.restore();
        com.airbnb.lottie.e.c("CompositionLayer#draw");
    }
}
