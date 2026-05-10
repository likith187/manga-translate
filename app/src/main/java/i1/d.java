package i1;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.i0;
import j1.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class d implements e, m, a.b, l1.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint f12387a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RectF f12388b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Matrix f12389c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Path f12390d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RectF f12391e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f12392f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f12393g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List f12394h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final i0 f12395i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List f12396j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private j1.p f12397k;

    public d(i0 i0Var, o1.b bVar, n1.q qVar, com.airbnb.lottie.j jVar) {
        this(i0Var, bVar, qVar.c(), qVar.d(), e(i0Var, jVar, bVar, qVar.b()), j(qVar.b()));
    }

    private static List e(i0 i0Var, com.airbnb.lottie.j jVar, o1.b bVar, List list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVarA = ((n1.c) list.get(i10)).a(i0Var, jVar, bVar);
            if (cVarA != null) {
                arrayList.add(cVarA);
            }
        }
        return arrayList;
    }

    static m1.l j(List list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            n1.c cVar = (n1.c) list.get(i10);
            if (cVar instanceof m1.l) {
                return (m1.l) cVar;
            }
        }
        return null;
    }

    private boolean n() {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f12394h.size(); i11++) {
            if ((this.f12394h.get(i11) instanceof e) && (i10 = i10 + 1) >= 2) {
                return true;
            }
        }
        return false;
    }

    @Override // i1.m
    public Path a() {
        this.f12389c.reset();
        j1.p pVar = this.f12397k;
        if (pVar != null) {
            this.f12389c.set(pVar.f());
        }
        this.f12390d.reset();
        if (this.f12393g) {
            return this.f12390d;
        }
        for (int size = this.f12394h.size() - 1; size >= 0; size--) {
            c cVar = (c) this.f12394h.get(size);
            if (cVar instanceof m) {
                this.f12390d.addPath(((m) cVar).a(), this.f12389c);
            }
        }
        return this.f12390d;
    }

    @Override // i1.e
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        this.f12389c.set(matrix);
        j1.p pVar = this.f12397k;
        if (pVar != null) {
            this.f12389c.preConcat(pVar.f());
        }
        this.f12391e.set(0.0f, 0.0f, 0.0f, 0.0f);
        for (int size = this.f12394h.size() - 1; size >= 0; size--) {
            c cVar = (c) this.f12394h.get(size);
            if (cVar instanceof e) {
                ((e) cVar).b(this.f12391e, this.f12389c, z10);
                rectF.union(this.f12391e);
            }
        }
    }

    @Override // j1.a.b
    public void c() {
        this.f12395i.invalidateSelf();
    }

    @Override // i1.c
    public void d(List list, List list2) {
        ArrayList arrayList = new ArrayList(list.size() + this.f12394h.size());
        arrayList.addAll(list);
        for (int size = this.f12394h.size() - 1; size >= 0; size--) {
            c cVar = (c) this.f12394h.get(size);
            cVar.d(arrayList, this.f12394h.subList(0, size));
            arrayList.add(cVar);
        }
    }

    @Override // i1.e
    public void f(Canvas canvas, Matrix matrix, int i10) {
        if (this.f12393g) {
            return;
        }
        this.f12389c.set(matrix);
        j1.p pVar = this.f12397k;
        if (pVar != null) {
            this.f12389c.preConcat(pVar.f());
            i10 = (int) (((((this.f12397k.h() == null ? 100 : ((Integer) this.f12397k.h().h()).intValue()) / 100.0f) * i10) / 255.0f) * 255.0f);
        }
        boolean z10 = this.f12395i.g0() && n() && i10 != 255;
        if (z10) {
            this.f12388b.set(0.0f, 0.0f, 0.0f, 0.0f);
            b(this.f12388b, this.f12389c, true);
            this.f12387a.setAlpha(i10);
            r1.j.m(canvas, this.f12388b, this.f12387a);
        }
        if (z10) {
            i10 = 255;
        }
        for (int size = this.f12394h.size() - 1; size >= 0; size--) {
            Object obj = this.f12394h.get(size);
            if (obj instanceof e) {
                ((e) obj).f(canvas, this.f12389c, i10);
            }
        }
        if (z10) {
            canvas.restore();
        }
    }

    @Override // l1.f
    public void g(l1.e eVar, int i10, List list, l1.e eVar2) {
        if (eVar.g(getName(), i10) || "__container".equals(getName())) {
            if (!"__container".equals(getName())) {
                eVar2 = eVar2.a(getName());
                if (eVar.c(getName(), i10)) {
                    list.add(eVar2.i(this));
                }
            }
            if (eVar.h(getName(), i10)) {
                int iE = i10 + eVar.e(getName(), i10);
                for (int i11 = 0; i11 < this.f12394h.size(); i11++) {
                    c cVar = (c) this.f12394h.get(i11);
                    if (cVar instanceof l1.f) {
                        ((l1.f) cVar).g(eVar, iE, list, eVar2);
                    }
                }
            }
        }
    }

    @Override // i1.c
    public String getName() {
        return this.f12392f;
    }

    @Override // l1.f
    public void h(Object obj, s1.c cVar) {
        j1.p pVar = this.f12397k;
        if (pVar != null) {
            pVar.c(obj, cVar);
        }
    }

    public List k() {
        return this.f12394h;
    }

    List l() {
        if (this.f12396j == null) {
            this.f12396j = new ArrayList();
            for (int i10 = 0; i10 < this.f12394h.size(); i10++) {
                c cVar = (c) this.f12394h.get(i10);
                if (cVar instanceof m) {
                    this.f12396j.add((m) cVar);
                }
            }
        }
        return this.f12396j;
    }

    Matrix m() {
        j1.p pVar = this.f12397k;
        if (pVar != null) {
            return pVar.f();
        }
        this.f12389c.reset();
        return this.f12389c;
    }

    d(i0 i0Var, o1.b bVar, String str, boolean z10, List list, m1.l lVar) {
        this.f12387a = new h1.a();
        this.f12388b = new RectF();
        this.f12389c = new Matrix();
        this.f12390d = new Path();
        this.f12391e = new RectF();
        this.f12392f = str;
        this.f12395i = i0Var;
        this.f12393g = z10;
        this.f12394h = list;
        if (lVar != null) {
            j1.p pVarB = lVar.b();
            this.f12397k = pVarB;
            pVarB.a(bVar);
            this.f12397k.b(this);
        }
        ArrayList arrayList = new ArrayList();
        for (int size = list.size() - 1; size >= 0; size--) {
            c cVar = (c) list.get(size);
            if (cVar instanceof j) {
                arrayList.add((j) cVar);
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            ((j) arrayList.get(size2)).e(list.listIterator(list.size()));
        }
    }
}
