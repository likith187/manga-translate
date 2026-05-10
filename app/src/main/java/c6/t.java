package c6;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;

/* JADX INFO: loaded from: classes2.dex */
public class t extends a {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final i6.b f4430r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final String f4431s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final boolean f4432t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final d6.a f4433u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private d6.a f4434v;

    public t(com.oplus.anim.o oVar, i6.b bVar, h6.r rVar) {
        super(oVar, bVar, rVar.b().toPaintCap(), rVar.e().toPaintJoin(), rVar.g(), rVar.i(), rVar.j(), rVar.f(), rVar.d());
        this.f4430r = bVar;
        this.f4431s = rVar.h();
        this.f4432t = rVar.k();
        d6.a aVarA = rVar.c().a();
        this.f4433u = aVarA;
        aVarA.a(this);
        bVar.j(aVarA);
    }

    @Override // c6.a, c6.e
    public void f(Canvas canvas, Matrix matrix, int i10) {
        if (this.f4432t) {
            return;
        }
        this.f4301i.setColor(((d6.b) this.f4433u).p());
        d6.a aVar = this.f4434v;
        if (aVar != null) {
            this.f4301i.setColorFilter((ColorFilter) aVar.h());
        }
        super.f(canvas, matrix, i10);
    }

    @Override // c6.c
    public String getName() {
        return this.f4431s;
    }

    @Override // c6.a, f6.g
    public void h(Object obj, m6.b bVar) {
        super.h(obj, bVar);
        if (obj == com.oplus.anim.q.f11107b) {
            this.f4433u.n(bVar);
            return;
        }
        if (obj == com.oplus.anim.q.K) {
            d6.a aVar = this.f4434v;
            if (aVar != null) {
                this.f4430r.H(aVar);
            }
            if (bVar == null) {
                this.f4434v = null;
                return;
            }
            d6.q qVar = new d6.q(bVar);
            this.f4434v = qVar;
            qVar.a(this);
            this.f4430r.j(this.f4433u);
        }
    }
}
