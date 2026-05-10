package i6;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import com.oplus.anim.k0;
import com.oplus.anim.o;
import com.oplus.anim.q;
import i6.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class c extends b {
    private d6.a D;
    private final List E;
    private final RectF F;
    private final RectF G;
    private final Paint H;
    private boolean I;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f12623a;

        static {
            int[] iArr = new int[e.b.values().length];
            f12623a = iArr;
            try {
                iArr[e.b.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12623a[e.b.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public c(o oVar, e eVar, List list, com.oplus.anim.a aVar) {
        int i10;
        b bVar;
        super(oVar, eVar);
        this.E = new ArrayList();
        this.F = new RectF();
        this.G = new RectF();
        this.H = new Paint();
        this.I = true;
        g6.b bVarU = eVar.u();
        if (bVarU != null) {
            d6.a aVarA = bVarU.a();
            this.D = aVarA;
            j(aVarA);
            this.D.a(this);
        } else {
            this.D = null;
        }
        androidx.collection.f fVar = new androidx.collection.f(aVar.k().size());
        int size = list.size() - 1;
        b bVar2 = null;
        while (true) {
            if (size < 0) {
                break;
            }
            e eVar2 = (e) list.get(size);
            b bVarV = b.v(this, eVar2, oVar, aVar);
            if (bVarV != null) {
                fVar.i(bVarV.z().d(), bVarV);
                if (bVar2 != null) {
                    bVar2.J(bVarV);
                    bVar2 = null;
                } else {
                    this.E.add(0, bVarV);
                    int i11 = a.f12623a[eVar2.h().ordinal()];
                    if (i11 == 1 || i11 == 2) {
                        bVar2 = bVarV;
                    }
                }
            }
            size--;
        }
        for (i10 = 0; i10 < fVar.l(); i10++) {
            b bVar3 = (b) fVar.e(fVar.h(i10));
            if (bVar3 != null && (bVar = (b) fVar.e(bVar3.z().j())) != null) {
                bVar3.L(bVar);
            }
        }
    }

    @Override // i6.b
    protected void I(f6.f fVar, int i10, List list, f6.f fVar2) {
        for (int i11 = 0; i11 < this.E.size(); i11++) {
            ((b) this.E.get(i11)).i(fVar, i10, list, fVar2);
        }
    }

    @Override // i6.b
    public void K(boolean z10) {
        super.K(z10);
        Iterator it = this.E.iterator();
        while (it.hasNext()) {
            ((b) it.next()).K(z10);
        }
    }

    @Override // i6.b
    public void M(float f10) {
        super.M(f10);
        if (this.D != null) {
            f10 = ((((Float) this.D.h()).floatValue() * this.f12611q.b().i()) - this.f12611q.b().p()) / (this.f12610p.G().e() + 0.01f);
        }
        if (this.D == null) {
            f10 -= this.f12611q.r();
        }
        if (this.f12611q.v() != 0.0f && !"__container".equals(this.f12611q.i())) {
            f10 /= this.f12611q.v();
        }
        for (int size = this.E.size() - 1; size >= 0; size--) {
            ((b) this.E.get(size)).M(f10);
        }
    }

    public void P(boolean z10) {
        this.I = z10;
    }

    @Override // i6.b, c6.e
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        super.b(rectF, matrix, z10);
        for (int size = this.E.size() - 1; size >= 0; size--) {
            this.F.set(0.0f, 0.0f, 0.0f, 0.0f);
            ((b) this.E.get(size)).b(this.F, this.f12609o, true);
            rectF.union(this.F);
        }
    }

    @Override // i6.b, f6.g
    public void h(Object obj, m6.b bVar) {
        super.h(obj, bVar);
        if (obj == q.E) {
            if (bVar == null) {
                d6.a aVar = this.D;
                if (aVar != null) {
                    aVar.n(null);
                    return;
                }
                return;
            }
            d6.q qVar = new d6.q(bVar);
            this.D = qVar;
            qVar.a(this);
            j(this.D);
        }
    }

    @Override // i6.b
    void u(Canvas canvas, Matrix matrix, int i10) {
        k0.a("CompositionLayer#draw");
        this.G.set(0.0f, 0.0f, this.f12611q.l(), this.f12611q.k());
        matrix.mapRect(this.G);
        boolean z10 = this.f12610p.b0() && this.E.size() > 1 && i10 != 255;
        if (z10) {
            this.H.setAlpha(i10);
            l6.h.n(canvas, this.G, this.H);
        } else {
            canvas.save();
        }
        if (z10) {
            i10 = 255;
        }
        for (int size = this.E.size() - 1; size >= 0; size--) {
            if (((this.I || !"__container".equals(this.f12611q.i())) && !this.G.isEmpty()) ? canvas.clipRect(this.G) : true) {
                ((b) this.E.get(size)).f(canvas, matrix, i10);
            }
        }
        canvas.restore();
        k0.b("CompositionLayer#draw");
    }
}
