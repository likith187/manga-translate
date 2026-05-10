package i1;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.i0;
import com.airbnb.lottie.m0;
import j1.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes.dex */
public class p implements e, m, j, a.b, k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Matrix f12486a = new Matrix();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path f12487b = new Path();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i0 f12488c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final o1.b f12489d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f12490e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f12491f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final j1.a f12492g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final j1.a f12493h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final j1.p f12494i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private d f12495j;

    public p(i0 i0Var, o1.b bVar, n1.m mVar) {
        this.f12488c = i0Var;
        this.f12489d = bVar;
        this.f12490e = mVar.c();
        this.f12491f = mVar.f();
        j1.a aVarA = mVar.b().a();
        this.f12492g = aVarA;
        bVar.j(aVarA);
        aVarA.a(this);
        j1.a aVarA2 = mVar.d().a();
        this.f12493h = aVarA2;
        bVar.j(aVarA2);
        aVarA2.a(this);
        j1.p pVarB = mVar.e().b();
        this.f12494i = pVarB;
        pVarB.a(bVar);
        pVarB.b(this);
    }

    @Override // i1.m
    public Path a() {
        Path pathA = this.f12495j.a();
        this.f12487b.reset();
        float fFloatValue = ((Float) this.f12492g.h()).floatValue();
        float fFloatValue2 = ((Float) this.f12493h.h()).floatValue();
        for (int i10 = ((int) fFloatValue) - 1; i10 >= 0; i10--) {
            this.f12486a.set(this.f12494i.g(i10 + fFloatValue2));
            this.f12487b.addPath(pathA, this.f12486a);
        }
        return this.f12487b;
    }

    @Override // i1.e
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        this.f12495j.b(rectF, matrix, z10);
    }

    @Override // j1.a.b
    public void c() {
        this.f12488c.invalidateSelf();
    }

    @Override // i1.c
    public void d(List list, List list2) {
        this.f12495j.d(list, list2);
    }

    @Override // i1.j
    public void e(ListIterator listIterator) {
        if (this.f12495j != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add((c) listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.f12495j = new d(this.f12488c, this.f12489d, "Repeater", this.f12491f, arrayList, null);
    }

    @Override // i1.e
    public void f(Canvas canvas, Matrix matrix, int i10) {
        float fFloatValue = ((Float) this.f12492g.h()).floatValue();
        float fFloatValue2 = ((Float) this.f12493h.h()).floatValue();
        float fFloatValue3 = ((Float) this.f12494i.i().h()).floatValue() / 100.0f;
        float fFloatValue4 = ((Float) this.f12494i.e().h()).floatValue() / 100.0f;
        for (int i11 = ((int) fFloatValue) - 1; i11 >= 0; i11--) {
            this.f12486a.set(matrix);
            float f10 = i11;
            this.f12486a.preConcat(this.f12494i.g(f10 + fFloatValue2));
            this.f12495j.f(canvas, this.f12486a, (int) (i10 * r1.i.i(fFloatValue3, fFloatValue4, f10 / fFloatValue)));
        }
    }

    @Override // l1.f
    public void g(l1.e eVar, int i10, List list, l1.e eVar2) {
        r1.i.k(eVar, i10, list, eVar2, this);
        for (int i11 = 0; i11 < this.f12495j.k().size(); i11++) {
            c cVar = (c) this.f12495j.k().get(i11);
            if (cVar instanceof k) {
                r1.i.k(eVar, i10, list, eVar2, (k) cVar);
            }
        }
    }

    @Override // i1.c
    public String getName() {
        return this.f12490e;
    }

    @Override // l1.f
    public void h(Object obj, s1.c cVar) {
        if (this.f12494i.c(obj, cVar)) {
            return;
        }
        if (obj == m0.f4637u) {
            this.f12492g.o(cVar);
        } else if (obj == m0.f4638v) {
            this.f12493h.o(cVar);
        }
    }
}
