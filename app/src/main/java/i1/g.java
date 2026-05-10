package i1;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.i0;
import com.airbnb.lottie.m0;
import com.coui.appcompat.uiutil.UIUtil;
import j1.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class g implements e, a.b, k {

    /* JADX INFO: renamed from: a */
    private final Path f12406a;

    /* JADX INFO: renamed from: b */
    private final Paint f12407b;

    /* JADX INFO: renamed from: c */
    private final o1.b f12408c;

    /* JADX INFO: renamed from: d */
    private final String f12409d;

    /* JADX INFO: renamed from: e */
    private final boolean f12410e;

    /* JADX INFO: renamed from: f */
    private final List f12411f;

    /* JADX INFO: renamed from: g */
    private final j1.a f12412g;

    /* JADX INFO: renamed from: h */
    private final j1.a f12413h;

    /* JADX INFO: renamed from: i */
    private j1.a f12414i;

    /* JADX INFO: renamed from: j */
    private final i0 f12415j;

    /* JADX INFO: renamed from: k */
    private j1.a f12416k;

    /* JADX INFO: renamed from: l */
    float f12417l;

    /* JADX INFO: renamed from: m */
    private j1.c f12418m;

    public g(i0 i0Var, o1.b bVar, n1.p pVar) {
        Path path = new Path();
        this.f12406a = path;
        h1.a aVar = new h1.a(1);
        this.f12407b = aVar;
        this.f12411f = new ArrayList();
        this.f12408c = bVar;
        this.f12409d = pVar.d();
        this.f12410e = pVar.f();
        this.f12415j = i0Var;
        if (bVar.x() != null) {
            j1.a aVarA = bVar.x().a().a();
            this.f12416k = aVarA;
            aVarA.a(this);
            bVar.j(this.f12416k);
        }
        if (bVar.z() != null) {
            this.f12418m = new j1.c(this, bVar, bVar.z());
        }
        if (pVar.b() == null || pVar.e() == null) {
            this.f12412g = null;
            this.f12413h = null;
            return;
        }
        u.f.b(aVar, bVar.w().toNativeBlendMode());
        path.setFillType(pVar.c());
        j1.a aVarA2 = pVar.b().a();
        this.f12412g = aVarA2;
        aVarA2.a(this);
        bVar.j(aVarA2);
        j1.a aVarA3 = pVar.e().a();
        this.f12413h = aVarA3;
        aVarA3.a(this);
        bVar.j(aVarA3);
    }

    @Override // i1.e
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        this.f12406a.reset();
        for (int i10 = 0; i10 < this.f12411f.size(); i10++) {
            this.f12406a.addPath(((m) this.f12411f.get(i10)).a(), matrix);
        }
        this.f12406a.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // j1.a.b
    public void c() {
        this.f12415j.invalidateSelf();
    }

    @Override // i1.c
    public void d(List list, List list2) {
        for (int i10 = 0; i10 < list2.size(); i10++) {
            c cVar = (c) list2.get(i10);
            if (cVar instanceof m) {
                this.f12411f.add((m) cVar);
            }
        }
    }

    @Override // i1.e
    public void f(Canvas canvas, Matrix matrix, int i10) {
        if (this.f12410e) {
            return;
        }
        com.airbnb.lottie.e.b("FillContent#draw");
        this.f12407b.setColor((r1.i.c((int) ((((i10 / 255.0f) * ((Integer) this.f12413h.h()).intValue()) / 100.0f) * 255.0f), 0, 255) << 24) | (((j1.b) this.f12412g).q() & UIUtil.CONSTANT_COLOR_MASK));
        j1.a aVar = this.f12414i;
        if (aVar != null) {
            this.f12407b.setColorFilter((ColorFilter) aVar.h());
        }
        j1.a aVar2 = this.f12416k;
        if (aVar2 != null) {
            float fFloatValue = ((Float) aVar2.h()).floatValue();
            if (fFloatValue == 0.0f) {
                this.f12407b.setMaskFilter(null);
            } else if (fFloatValue != this.f12417l) {
                this.f12407b.setMaskFilter(this.f12408c.y(fFloatValue));
            }
            this.f12417l = fFloatValue;
        }
        j1.c cVar = this.f12418m;
        if (cVar != null) {
            cVar.a(this.f12407b);
        }
        this.f12406a.reset();
        for (int i11 = 0; i11 < this.f12411f.size(); i11++) {
            this.f12406a.addPath(((m) this.f12411f.get(i11)).a(), matrix);
        }
        canvas.drawPath(this.f12406a, this.f12407b);
        com.airbnb.lottie.e.c("FillContent#draw");
    }

    @Override // l1.f
    public void g(l1.e eVar, int i10, List list, l1.e eVar2) {
        r1.i.k(eVar, i10, list, eVar2, this);
    }

    @Override // i1.c
    public String getName() {
        return this.f12409d;
    }

    @Override // l1.f
    public void h(Object obj, s1.c cVar) {
        j1.c cVar2;
        j1.c cVar3;
        j1.c cVar4;
        j1.c cVar5;
        j1.c cVar6;
        if (obj == m0.f4617a) {
            this.f12412g.o(cVar);
            return;
        }
        if (obj == m0.f4620d) {
            this.f12413h.o(cVar);
            return;
        }
        if (obj == m0.K) {
            j1.a aVar = this.f12414i;
            if (aVar != null) {
                this.f12408c.I(aVar);
            }
            if (cVar == null) {
                this.f12414i = null;
                return;
            }
            j1.q qVar = new j1.q(cVar);
            this.f12414i = qVar;
            qVar.a(this);
            this.f12408c.j(this.f12414i);
            return;
        }
        if (obj == m0.f4626j) {
            j1.a aVar2 = this.f12416k;
            if (aVar2 != null) {
                aVar2.o(cVar);
                return;
            }
            j1.q qVar2 = new j1.q(cVar);
            this.f12416k = qVar2;
            qVar2.a(this);
            this.f12408c.j(this.f12416k);
            return;
        }
        if (obj == m0.f4621e && (cVar6 = this.f12418m) != null) {
            cVar6.b(cVar);
            return;
        }
        if (obj == m0.G && (cVar5 = this.f12418m) != null) {
            cVar5.f(cVar);
            return;
        }
        if (obj == m0.H && (cVar4 = this.f12418m) != null) {
            cVar4.d(cVar);
            return;
        }
        if (obj == m0.I && (cVar3 = this.f12418m) != null) {
            cVar3.e(cVar);
        } else {
            if (obj != m0.J || (cVar2 = this.f12418m) == null) {
                return;
            }
            cVar2.g(cVar);
        }
    }
}
