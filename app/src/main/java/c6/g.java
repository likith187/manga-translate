package c6;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.coui.appcompat.uiutil.UIUtil;
import com.oplus.anim.k0;
import d6.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class g implements e, a.b, k {

    /* JADX INFO: renamed from: a */
    private final Path f4332a;

    /* JADX INFO: renamed from: b */
    private final Paint f4333b;

    /* JADX INFO: renamed from: c */
    private final i6.b f4334c;

    /* JADX INFO: renamed from: d */
    private final String f4335d;

    /* JADX INFO: renamed from: e */
    private final boolean f4336e;

    /* JADX INFO: renamed from: f */
    private final List f4337f;

    /* JADX INFO: renamed from: g */
    private final d6.a f4338g;

    /* JADX INFO: renamed from: h */
    private final d6.a f4339h;

    /* JADX INFO: renamed from: i */
    private d6.a f4340i;

    /* JADX INFO: renamed from: j */
    private final com.oplus.anim.o f4341j;

    /* JADX INFO: renamed from: k */
    private d6.a f4342k;

    /* JADX INFO: renamed from: l */
    float f4343l;

    /* JADX INFO: renamed from: m */
    private d6.c f4344m;

    public g(com.oplus.anim.o oVar, i6.b bVar, h6.o oVar2) {
        Path path = new Path();
        this.f4332a = path;
        this.f4333b = new b6.a(1);
        this.f4337f = new ArrayList();
        this.f4334c = bVar;
        this.f4335d = oVar2.d();
        this.f4336e = oVar2.f();
        this.f4341j = oVar;
        if (bVar.w() != null) {
            d6.a aVarA = bVar.w().a().a();
            this.f4342k = aVarA;
            aVarA.a(this);
            bVar.j(this.f4342k);
        }
        if (bVar.y() != null) {
            this.f4344m = new d6.c(this, bVar, bVar.y());
        }
        if (oVar2.b() == null || oVar2.e() == null) {
            this.f4338g = null;
            this.f4339h = null;
            return;
        }
        path.setFillType(oVar2.c());
        d6.a aVarA2 = oVar2.b().a();
        this.f4338g = aVarA2;
        aVarA2.a(this);
        bVar.j(aVarA2);
        d6.a aVarA3 = oVar2.e().a();
        this.f4339h = aVarA3;
        aVarA3.a(this);
        bVar.j(aVarA3);
    }

    @Override // c6.e
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        this.f4332a.reset();
        for (int i10 = 0; i10 < this.f4337f.size(); i10++) {
            this.f4332a.addPath(((m) this.f4337f.get(i10)).a(), matrix);
        }
        this.f4332a.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // d6.a.b
    public void c() {
        this.f4341j.invalidateSelf();
    }

    @Override // c6.c
    public void d(List list, List list2) {
        for (int i10 = 0; i10 < list2.size(); i10++) {
            c cVar = (c) list2.get(i10);
            if (cVar instanceof m) {
                this.f4337f.add((m) cVar);
            }
        }
    }

    @Override // c6.e
    public void f(Canvas canvas, Matrix matrix, int i10) {
        if (this.f4336e) {
            return;
        }
        k0.a("FillContent#draw");
        this.f4333b.setColor((l6.g.c((int) ((((i10 / 255.0f) * ((Integer) this.f4339h.h()).intValue()) / 100.0f) * 255.0f), 0, 255) << 24) | (((d6.b) this.f4338g).p() & UIUtil.CONSTANT_COLOR_MASK));
        d6.a aVar = this.f4340i;
        if (aVar != null) {
            this.f4333b.setColorFilter((ColorFilter) aVar.h());
        }
        d6.a aVar2 = this.f4342k;
        if (aVar2 != null) {
            float fFloatValue = ((Float) aVar2.h()).floatValue();
            if (fFloatValue == 0.0f) {
                this.f4333b.setMaskFilter(null);
            } else if (fFloatValue != this.f4343l) {
                this.f4333b.setMaskFilter(this.f4334c.x(fFloatValue));
            }
            this.f4343l = fFloatValue;
        }
        d6.c cVar = this.f4344m;
        if (cVar != null) {
            cVar.a(this.f4333b);
        }
        this.f4332a.reset();
        for (int i11 = 0; i11 < this.f4337f.size(); i11++) {
            this.f4332a.addPath(((m) this.f4337f.get(i11)).a(), matrix);
        }
        canvas.drawPath(this.f4332a, this.f4333b);
        k0.b("FillContent#draw");
    }

    @Override // c6.c
    public String getName() {
        return this.f4335d;
    }

    @Override // f6.g
    public void h(Object obj, m6.b bVar) {
        d6.c cVar;
        d6.c cVar2;
        d6.c cVar3;
        d6.c cVar4;
        d6.c cVar5;
        if (obj == com.oplus.anim.q.f11106a) {
            this.f4338g.n(bVar);
            return;
        }
        if (obj == com.oplus.anim.q.f11109d) {
            this.f4339h.n(bVar);
            return;
        }
        if (obj == com.oplus.anim.q.K) {
            d6.a aVar = this.f4340i;
            if (aVar != null) {
                this.f4334c.H(aVar);
            }
            if (bVar == null) {
                this.f4340i = null;
                return;
            }
            d6.q qVar = new d6.q(bVar);
            this.f4340i = qVar;
            qVar.a(this);
            this.f4334c.j(this.f4340i);
            return;
        }
        if (obj == com.oplus.anim.q.f11115j) {
            d6.a aVar2 = this.f4342k;
            if (aVar2 != null) {
                aVar2.n(bVar);
                return;
            }
            d6.q qVar2 = new d6.q(bVar);
            this.f4342k = qVar2;
            qVar2.a(this);
            this.f4334c.j(this.f4342k);
            return;
        }
        if (obj == com.oplus.anim.q.f11110e && (cVar5 = this.f4344m) != null) {
            cVar5.b(bVar);
            return;
        }
        if (obj == com.oplus.anim.q.G && (cVar4 = this.f4344m) != null) {
            cVar4.f(bVar);
            return;
        }
        if (obj == com.oplus.anim.q.H && (cVar3 = this.f4344m) != null) {
            cVar3.d(bVar);
            return;
        }
        if (obj == com.oplus.anim.q.I && (cVar2 = this.f4344m) != null) {
            cVar2.e(bVar);
        } else {
            if (obj != com.oplus.anim.q.J || (cVar = this.f4344m) == null) {
                return;
            }
            cVar.g(bVar);
        }
    }

    @Override // f6.g
    public void i(f6.f fVar, int i10, List list, f6.f fVar2) {
        l6.g.k(fVar, i10, list, fVar2, this);
    }
}
