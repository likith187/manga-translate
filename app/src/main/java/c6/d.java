package c6;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import d6.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class d implements e, m, a.b, f6.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint f4313a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RectF f4314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Matrix f4315c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Path f4316d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RectF f4317e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f4318f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f4319g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List f4320h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.oplus.anim.o f4321i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List f4322j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private d6.p f4323k;

    public d(com.oplus.anim.o oVar, i6.b bVar, h6.p pVar, com.oplus.anim.a aVar) {
        this(oVar, bVar, pVar.c(), pVar.d(), e(oVar, aVar, bVar, pVar.b()), j(pVar.b()));
    }

    private static List e(com.oplus.anim.o oVar, com.oplus.anim.a aVar, i6.b bVar, List list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVarA = ((h6.c) list.get(i10)).a(oVar, aVar, bVar);
            if (cVarA != null) {
                arrayList.add(cVarA);
            }
        }
        return arrayList;
    }

    static g6.l j(List list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            h6.c cVar = (h6.c) list.get(i10);
            if (cVar instanceof g6.l) {
                return (g6.l) cVar;
            }
        }
        return null;
    }

    private boolean n() {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f4320h.size(); i11++) {
            if ((this.f4320h.get(i11) instanceof e) && (i10 = i10 + 1) >= 2) {
                return true;
            }
        }
        return false;
    }

    @Override // c6.m
    public Path a() {
        this.f4315c.reset();
        d6.p pVar = this.f4323k;
        if (pVar != null) {
            this.f4315c.set(pVar.f());
        }
        this.f4316d.reset();
        if (this.f4319g) {
            return this.f4316d;
        }
        for (int size = this.f4320h.size() - 1; size >= 0; size--) {
            c cVar = (c) this.f4320h.get(size);
            if (cVar instanceof m) {
                this.f4316d.addPath(((m) cVar).a(), this.f4315c);
            }
        }
        return this.f4316d;
    }

    @Override // c6.e
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        this.f4315c.set(matrix);
        d6.p pVar = this.f4323k;
        if (pVar != null) {
            this.f4315c.preConcat(pVar.f());
        }
        this.f4317e.set(0.0f, 0.0f, 0.0f, 0.0f);
        for (int size = this.f4320h.size() - 1; size >= 0; size--) {
            c cVar = (c) this.f4320h.get(size);
            if (cVar instanceof e) {
                ((e) cVar).b(this.f4317e, this.f4315c, z10);
                rectF.union(this.f4317e);
            }
        }
    }

    @Override // d6.a.b
    public void c() {
        this.f4321i.invalidateSelf();
    }

    @Override // c6.c
    public void d(List list, List list2) {
        ArrayList arrayList = new ArrayList(list.size() + this.f4320h.size());
        arrayList.addAll(list);
        for (int size = this.f4320h.size() - 1; size >= 0; size--) {
            c cVar = (c) this.f4320h.get(size);
            cVar.d(arrayList, this.f4320h.subList(0, size));
            arrayList.add(cVar);
        }
    }

    @Override // c6.e
    public void f(Canvas canvas, Matrix matrix, int i10) {
        if (this.f4319g) {
            return;
        }
        this.f4315c.set(matrix);
        d6.p pVar = this.f4323k;
        if (pVar != null) {
            this.f4315c.preConcat(pVar.f());
            i10 = (int) (((((this.f4323k.h() == null ? 100 : ((Integer) this.f4323k.h().h()).intValue()) / 100.0f) * i10) / 255.0f) * 255.0f);
        }
        boolean z10 = this.f4321i.b0() && n() && i10 != 255;
        if (z10) {
            this.f4314b.set(0.0f, 0.0f, 0.0f, 0.0f);
            b(this.f4314b, this.f4315c, true);
            this.f4313a.setAlpha(i10);
            l6.h.n(canvas, this.f4314b, this.f4313a);
        }
        if (z10) {
            i10 = 255;
        }
        for (int size = this.f4320h.size() - 1; size >= 0; size--) {
            Object obj = this.f4320h.get(size);
            if (obj instanceof e) {
                ((e) obj).f(canvas, this.f4315c, i10);
            }
        }
        if (z10) {
            canvas.restore();
        }
    }

    @Override // c6.c
    public String getName() {
        return this.f4318f;
    }

    @Override // f6.g
    public void h(Object obj, m6.b bVar) {
        d6.p pVar = this.f4323k;
        if (pVar != null) {
            pVar.c(obj, bVar);
        }
    }

    @Override // f6.g
    public void i(f6.f fVar, int i10, List list, f6.f fVar2) {
        if (fVar.g(getName(), i10) || "__container".equals(getName())) {
            if (!"__container".equals(getName())) {
                fVar2 = fVar2.a(getName());
                if (fVar.c(getName(), i10)) {
                    list.add(fVar2.i(this));
                }
            }
            if (fVar.h(getName(), i10)) {
                int iE = i10 + fVar.e(getName(), i10);
                for (int i11 = 0; i11 < this.f4320h.size(); i11++) {
                    c cVar = (c) this.f4320h.get(i11);
                    if (cVar instanceof f6.g) {
                        ((f6.g) cVar).i(fVar, iE, list, fVar2);
                    }
                }
            }
        }
    }

    public List k() {
        return this.f4320h;
    }

    List l() {
        if (this.f4322j == null) {
            this.f4322j = new ArrayList();
            for (int i10 = 0; i10 < this.f4320h.size(); i10++) {
                c cVar = (c) this.f4320h.get(i10);
                if (cVar instanceof m) {
                    this.f4322j.add((m) cVar);
                }
            }
        }
        return this.f4322j;
    }

    Matrix m() {
        d6.p pVar = this.f4323k;
        if (pVar != null) {
            return pVar.f();
        }
        this.f4315c.reset();
        return this.f4315c;
    }

    d(com.oplus.anim.o oVar, i6.b bVar, String str, boolean z10, List list, g6.l lVar) {
        this.f4313a = new b6.a();
        this.f4314b = new RectF();
        this.f4315c = new Matrix();
        this.f4316d = new Path();
        this.f4317e = new RectF();
        this.f4318f = str;
        this.f4321i = oVar;
        this.f4319g = z10;
        this.f4320h = list;
        if (lVar != null) {
            d6.p pVarB = lVar.b();
            this.f4323k = pVarB;
            pVarB.a(bVar);
            this.f4323k.b(this);
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
