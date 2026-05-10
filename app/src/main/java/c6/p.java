package c6;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import d6.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes2.dex */
public class p implements e, m, j, a.b, k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Matrix f4409a = new Matrix();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path f4410b = new Path();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.oplus.anim.o f4411c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i6.b f4412d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f4413e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f4414f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final d6.a f4415g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final d6.a f4416h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final d6.p f4417i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private d f4418j;

    public p(com.oplus.anim.o oVar, i6.b bVar, h6.l lVar) {
        this.f4411c = oVar;
        this.f4412d = bVar;
        this.f4413e = lVar.c();
        this.f4414f = lVar.f();
        d6.a aVarA = lVar.b().a();
        this.f4415g = aVarA;
        bVar.j(aVarA);
        aVarA.a(this);
        d6.a aVarA2 = lVar.d().a();
        this.f4416h = aVarA2;
        bVar.j(aVarA2);
        aVarA2.a(this);
        d6.p pVarB = lVar.e().b();
        this.f4417i = pVarB;
        pVarB.a(bVar);
        pVarB.b(this);
    }

    @Override // c6.m
    public Path a() {
        Path pathA = this.f4418j.a();
        this.f4410b.reset();
        float fFloatValue = ((Float) this.f4415g.h()).floatValue();
        float fFloatValue2 = ((Float) this.f4416h.h()).floatValue();
        for (int i10 = ((int) fFloatValue) - 1; i10 >= 0; i10--) {
            this.f4409a.set(this.f4417i.g(i10 + fFloatValue2));
            this.f4410b.addPath(pathA, this.f4409a);
        }
        return this.f4410b;
    }

    @Override // c6.e
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        this.f4418j.b(rectF, matrix, z10);
    }

    @Override // d6.a.b
    public void c() {
        this.f4411c.invalidateSelf();
    }

    @Override // c6.c
    public void d(List list, List list2) {
        this.f4418j.d(list, list2);
    }

    @Override // c6.j
    public void e(ListIterator listIterator) {
        if (this.f4418j != null) {
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
        this.f4418j = new d(this.f4411c, this.f4412d, "Repeater", this.f4414f, arrayList, null);
    }

    @Override // c6.e
    public void f(Canvas canvas, Matrix matrix, int i10) {
        float fFloatValue = ((Float) this.f4415g.h()).floatValue();
        float fFloatValue2 = ((Float) this.f4416h.h()).floatValue();
        float fFloatValue3 = ((Float) this.f4417i.i().h()).floatValue() / 100.0f;
        float fFloatValue4 = ((Float) this.f4417i.e().h()).floatValue() / 100.0f;
        for (int i11 = ((int) fFloatValue) - 1; i11 >= 0; i11--) {
            this.f4409a.set(matrix);
            float f10 = i11;
            this.f4409a.preConcat(this.f4417i.g(f10 + fFloatValue2));
            this.f4418j.f(canvas, this.f4409a, (int) (i10 * l6.g.i(fFloatValue3, fFloatValue4, f10 / fFloatValue)));
        }
    }

    @Override // c6.c
    public String getName() {
        return this.f4413e;
    }

    @Override // f6.g
    public void h(Object obj, m6.b bVar) {
        if (this.f4417i.c(obj, bVar)) {
            return;
        }
        if (obj == com.oplus.anim.q.f11126u) {
            this.f4415g.n(bVar);
        } else if (obj == com.oplus.anim.q.f11127v) {
            this.f4416h.n(bVar);
        }
    }

    @Override // f6.g
    public void i(f6.f fVar, int i10, List list, f6.f fVar2) {
        l6.g.k(fVar, i10, list, fVar2, this);
        for (int i11 = 0; i11 < this.f4418j.k().size(); i11++) {
            c cVar = (c) this.f4418j.k().get(i11);
            if (cVar instanceof k) {
                l6.g.k(fVar, i10, list, fVar2, (k) cVar);
            }
        }
    }
}
