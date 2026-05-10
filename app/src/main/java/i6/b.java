package i6;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import com.oplus.anim.k0;
import com.oplus.anim.o;
import d6.a;
import d6.p;
import h6.h;
import i6.e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import k6.j;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b implements c6.e, a.b, f6.g {
    private Paint A;
    float B;
    BlurMaskFilter C;

    /* JADX INFO: renamed from: a */
    private final Path f12595a = new Path();

    /* JADX INFO: renamed from: b */
    private final Matrix f12596b = new Matrix();

    /* JADX INFO: renamed from: c */
    private final Matrix f12597c = new Matrix();

    /* JADX INFO: renamed from: d */
    private final Paint f12598d = new b6.a(1);

    /* JADX INFO: renamed from: e */
    private final Paint f12599e;

    /* JADX INFO: renamed from: f */
    private final Paint f12600f;

    /* JADX INFO: renamed from: g */
    private final Paint f12601g;

    /* JADX INFO: renamed from: h */
    private final Paint f12602h;

    /* JADX INFO: renamed from: i */
    private final RectF f12603i;

    /* JADX INFO: renamed from: j */
    private final RectF f12604j;

    /* JADX INFO: renamed from: k */
    private final RectF f12605k;

    /* JADX INFO: renamed from: l */
    private final RectF f12606l;

    /* JADX INFO: renamed from: m */
    private final RectF f12607m;

    /* JADX INFO: renamed from: n */
    private final String f12608n;

    /* JADX INFO: renamed from: o */
    final Matrix f12609o;

    /* JADX INFO: renamed from: p */
    final o f12610p;

    /* JADX INFO: renamed from: q */
    final e f12611q;

    /* JADX INFO: renamed from: r */
    private d6.h f12612r;

    /* JADX INFO: renamed from: s */
    private d6.d f12613s;

    /* JADX INFO: renamed from: t */
    private b f12614t;

    /* JADX INFO: renamed from: u */
    private b f12615u;

    /* JADX INFO: renamed from: v */
    private List f12616v;

    /* JADX INFO: renamed from: w */
    private final List f12617w;

    /* JADX INFO: renamed from: x */
    final p f12618x;

    /* JADX INFO: renamed from: y */
    private boolean f12619y;

    /* JADX INFO: renamed from: z */
    private boolean f12620z;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f12621a;

        /* JADX INFO: renamed from: b */
        static final /* synthetic */ int[] f12622b;

        static {
            int[] iArr = new int[h.a.values().length];
            f12622b = iArr;
            try {
                iArr[h.a.MASK_MODE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12622b[h.a.MASK_MODE_SUBTRACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12622b[h.a.MASK_MODE_INTERSECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12622b[h.a.MASK_MODE_ADD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[e.a.values().length];
            f12621a = iArr2;
            try {
                iArr2[e.a.SHAPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f12621a[e.a.PRE_COMP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f12621a[e.a.SOLID.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f12621a[e.a.IMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f12621a[e.a.NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f12621a[e.a.TEXT.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f12621a[e.a.UNKNOWN.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    b(o oVar, e eVar) {
        PorterDuff.Mode mode = PorterDuff.Mode.DST_IN;
        this.f12599e = new b6.a(1, mode);
        PorterDuff.Mode mode2 = PorterDuff.Mode.DST_OUT;
        this.f12600f = new b6.a(1, mode2);
        b6.a aVar = new b6.a(1);
        this.f12601g = aVar;
        this.f12602h = new b6.a(PorterDuff.Mode.CLEAR);
        this.f12603i = new RectF();
        this.f12604j = new RectF();
        this.f12605k = new RectF();
        this.f12606l = new RectF();
        this.f12607m = new RectF();
        this.f12609o = new Matrix();
        this.f12617w = new ArrayList();
        this.f12619y = true;
        this.B = 0.0f;
        this.f12610p = oVar;
        this.f12611q = eVar;
        this.f12608n = eVar.i() + "#draw";
        if (eVar.h() == e.b.INVERT) {
            aVar.setXfermode(new PorterDuffXfermode(mode2));
        } else {
            aVar.setXfermode(new PorterDuffXfermode(mode));
        }
        p pVarB = eVar.w().b();
        this.f12618x = pVarB;
        pVarB.b(this);
        if (eVar.g() != null && !eVar.g().isEmpty()) {
            d6.h hVar = new d6.h(eVar.g());
            this.f12612r = hVar;
            Iterator it = hVar.a().iterator();
            while (it.hasNext()) {
                ((d6.a) it.next()).a(this);
            }
            for (d6.a aVar2 : this.f12612r.c()) {
                j(aVar2);
                aVar2.a(this);
            }
        }
        O();
    }

    private void C(RectF rectF, Matrix matrix) {
        this.f12605k.set(0.0f, 0.0f, 0.0f, 0.0f);
        if (A()) {
            int size = this.f12612r.b().size();
            for (int i10 = 0; i10 < size; i10++) {
                h6.h hVar = (h6.h) this.f12612r.b().get(i10);
                Path path = (Path) ((d6.a) this.f12612r.a().get(i10)).h();
                if (path != null) {
                    this.f12595a.set(path);
                    this.f12595a.transform(matrix);
                    int i11 = a.f12622b[hVar.a().ordinal()];
                    if (i11 == 1 || i11 == 2) {
                        return;
                    }
                    if ((i11 == 3 || i11 == 4) && hVar.d()) {
                        return;
                    }
                    this.f12595a.computeBounds(this.f12607m, false);
                    if (i10 == 0) {
                        this.f12605k.set(this.f12607m);
                    } else {
                        RectF rectF2 = this.f12605k;
                        rectF2.set(Math.min(rectF2.left, this.f12607m.left), Math.min(this.f12605k.top, this.f12607m.top), Math.max(this.f12605k.right, this.f12607m.right), Math.max(this.f12605k.bottom, this.f12607m.bottom));
                    }
                }
            }
            if (rectF.intersect(this.f12605k)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private void D(RectF rectF, Matrix matrix) {
        if (B() && this.f12611q.h() != e.b.INVERT) {
            this.f12606l.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.f12614t.b(this.f12606l, matrix, true);
            if (rectF.intersect(this.f12606l)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private void E() {
        this.f12610p.invalidateSelf();
    }

    public /* synthetic */ void F() {
        N(this.f12613s.p() == 1.0f);
    }

    private void G(float f10) {
        this.f12610p.G().n().a(this.f12611q.i(), f10);
    }

    private void N(boolean z10) {
        if (z10 != this.f12619y) {
            this.f12619y = z10;
            E();
        }
    }

    private void O() {
        if (this.f12611q.e().isEmpty()) {
            N(true);
            return;
        }
        d6.d dVar = new d6.d(this.f12611q.e());
        this.f12613s = dVar;
        dVar.l();
        this.f12613s.a(new a.b() { // from class: i6.a
            @Override // d6.a.b
            public final void c() {
                this.f12594a.F();
            }
        });
        N(((Float) this.f12613s.h()).floatValue() == 1.0f);
        j(this.f12613s);
    }

    private void k(Canvas canvas, Matrix matrix, d6.a aVar, d6.a aVar2) {
        this.f12595a.set((Path) aVar.h());
        this.f12595a.transform(matrix);
        this.f12598d.setAlpha((int) (((Integer) aVar2.h()).intValue() * 2.55f));
        canvas.drawPath(this.f12595a, this.f12598d);
    }

    private void l(Canvas canvas, Matrix matrix, d6.a aVar, d6.a aVar2) {
        l6.h.n(canvas, this.f12603i, this.f12599e);
        this.f12595a.set((Path) aVar.h());
        this.f12595a.transform(matrix);
        this.f12598d.setAlpha((int) (((Integer) aVar2.h()).intValue() * 2.55f));
        canvas.drawPath(this.f12595a, this.f12598d);
        canvas.restore();
    }

    private void m(Canvas canvas, Matrix matrix, d6.a aVar, d6.a aVar2) {
        l6.h.n(canvas, this.f12603i, this.f12598d);
        canvas.drawRect(this.f12603i, this.f12598d);
        this.f12595a.set((Path) aVar.h());
        this.f12595a.transform(matrix);
        this.f12598d.setAlpha((int) (((Integer) aVar2.h()).intValue() * 2.55f));
        canvas.drawPath(this.f12595a, this.f12600f);
        canvas.restore();
    }

    private void n(Canvas canvas, Matrix matrix, d6.a aVar, d6.a aVar2) {
        l6.h.n(canvas, this.f12603i, this.f12599e);
        canvas.drawRect(this.f12603i, this.f12598d);
        this.f12600f.setAlpha((int) (((Integer) aVar2.h()).intValue() * 2.55f));
        this.f12595a.set((Path) aVar.h());
        this.f12595a.transform(matrix);
        canvas.drawPath(this.f12595a, this.f12600f);
        canvas.restore();
    }

    private void o(Canvas canvas, Matrix matrix, d6.a aVar, d6.a aVar2) {
        l6.h.n(canvas, this.f12603i, this.f12600f);
        canvas.drawRect(this.f12603i, this.f12598d);
        this.f12600f.setAlpha((int) (((Integer) aVar2.h()).intValue() * 2.55f));
        this.f12595a.set((Path) aVar.h());
        this.f12595a.transform(matrix);
        canvas.drawPath(this.f12595a, this.f12600f);
        canvas.restore();
    }

    private void p(Canvas canvas, Matrix matrix) {
        k0.a("Layer#saveLayer");
        l6.h.o(canvas, this.f12603i, this.f12599e, 19);
        k0.b("Layer#saveLayer");
        for (int i10 = 0; i10 < this.f12612r.b().size(); i10++) {
            h6.h hVar = (h6.h) this.f12612r.b().get(i10);
            d6.a aVar = (d6.a) this.f12612r.a().get(i10);
            d6.a aVar2 = (d6.a) this.f12612r.c().get(i10);
            int i11 = a.f12622b[hVar.a().ordinal()];
            if (i11 != 1) {
                if (i11 == 2) {
                    if (i10 == 0) {
                        this.f12598d.setColor(-16777216);
                        this.f12598d.setAlpha(255);
                        canvas.drawRect(this.f12603i, this.f12598d);
                    }
                    if (hVar.d()) {
                        o(canvas, matrix, aVar, aVar2);
                    } else {
                        q(canvas, matrix, aVar);
                    }
                } else if (i11 != 3) {
                    if (i11 == 4) {
                        if (hVar.d()) {
                            m(canvas, matrix, aVar, aVar2);
                        } else {
                            k(canvas, matrix, aVar, aVar2);
                        }
                    }
                } else if (hVar.d()) {
                    n(canvas, matrix, aVar, aVar2);
                } else {
                    l(canvas, matrix, aVar, aVar2);
                }
            } else if (r()) {
                this.f12598d.setAlpha(255);
                canvas.drawRect(this.f12603i, this.f12598d);
            }
        }
        k0.a("Layer#restoreLayer");
        canvas.restore();
        k0.b("Layer#restoreLayer");
    }

    private void q(Canvas canvas, Matrix matrix, d6.a aVar) {
        this.f12595a.set((Path) aVar.h());
        this.f12595a.transform(matrix);
        canvas.drawPath(this.f12595a, this.f12600f);
    }

    private boolean r() {
        if (this.f12612r.a().isEmpty()) {
            return false;
        }
        for (int i10 = 0; i10 < this.f12612r.b().size(); i10++) {
            if (((h6.h) this.f12612r.b().get(i10)).a() != h.a.MASK_MODE_NONE) {
                return false;
            }
        }
        return true;
    }

    private void s() {
        if (this.f12616v != null) {
            return;
        }
        if (this.f12615u == null) {
            this.f12616v = Collections.emptyList();
            return;
        }
        this.f12616v = new ArrayList();
        for (b bVar = this.f12615u; bVar != null; bVar = bVar.f12615u) {
            this.f12616v.add(bVar);
        }
    }

    private void t(Canvas canvas) {
        k0.a("Layer#clearLayer");
        RectF rectF = this.f12603i;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.f12602h);
        k0.b("Layer#clearLayer");
    }

    static b v(c cVar, e eVar, o oVar, com.oplus.anim.a aVar) {
        switch (a.f12621a[eVar.f().ordinal()]) {
            case 1:
                return new g(oVar, eVar, cVar, aVar);
            case 2:
                return new c(oVar, eVar, aVar.o(eVar.m()), aVar);
            case 3:
                return new h(oVar, eVar);
            case 4:
                return new d(oVar, eVar);
            case 5:
                return new f(oVar, eVar);
            case 6:
                return new i(oVar, eVar);
            default:
                l6.e.c("Unknown layer type " + eVar.f());
                return null;
        }
    }

    boolean A() {
        d6.h hVar = this.f12612r;
        return (hVar == null || hVar.a().isEmpty()) ? false : true;
    }

    boolean B() {
        return this.f12614t != null;
    }

    public void H(d6.a aVar) {
        this.f12617w.remove(aVar);
    }

    void I(f6.f fVar, int i10, List list, f6.f fVar2) {
    }

    void J(b bVar) {
        this.f12614t = bVar;
    }

    void K(boolean z10) {
        if (z10 && this.A == null) {
            this.A = new b6.a();
        }
        this.f12620z = z10;
    }

    void L(b bVar) {
        this.f12615u = bVar;
    }

    void M(float f10) {
        this.f12618x.j(f10);
        if (this.f12612r != null) {
            for (int i10 = 0; i10 < this.f12612r.a().size(); i10++) {
                ((d6.a) this.f12612r.a().get(i10)).m(f10);
            }
        }
        d6.d dVar = this.f12613s;
        if (dVar != null) {
            dVar.m(f10);
        }
        b bVar = this.f12614t;
        if (bVar != null) {
            bVar.M(f10);
        }
        for (int i11 = 0; i11 < this.f12617w.size(); i11++) {
            ((d6.a) this.f12617w.get(i11)).m(f10);
        }
    }

    @Override // c6.e
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        this.f12603i.set(0.0f, 0.0f, 0.0f, 0.0f);
        s();
        this.f12609o.set(matrix);
        if (z10) {
            List list = this.f12616v;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f12609o.preConcat(((b) this.f12616v.get(size)).f12618x.f());
                }
            } else {
                b bVar = this.f12615u;
                if (bVar != null) {
                    this.f12609o.preConcat(bVar.f12618x.f());
                }
            }
        }
        this.f12609o.preConcat(this.f12618x.f());
    }

    @Override // d6.a.b
    public void c() {
        E();
    }

    @Override // c6.c
    public void d(List list, List list2) {
    }

    @Override // c6.e
    public void f(Canvas canvas, Matrix matrix, int i10) {
        Paint paint;
        Integer num;
        k0.a(this.f12608n);
        if (!this.f12619y || this.f12611q.x()) {
            k0.b(this.f12608n);
            return;
        }
        s();
        k0.a("Layer#parentMatrix");
        this.f12596b.reset();
        this.f12596b.set(matrix);
        for (int size = this.f12616v.size() - 1; size >= 0; size--) {
            this.f12596b.preConcat(((b) this.f12616v.get(size)).f12618x.f());
        }
        k0.b("Layer#parentMatrix");
        d6.a aVarH = this.f12618x.h();
        int iIntValue = (int) ((((i10 / 255.0f) * ((aVarH == null || (num = (Integer) aVarH.h()) == null) ? 100 : num.intValue())) / 100.0f) * 255.0f);
        if (!B() && !A()) {
            this.f12596b.preConcat(this.f12618x.f());
            k0.a("Layer#drawLayer");
            u(canvas, this.f12596b, iIntValue);
            k0.b("Layer#drawLayer");
            G(k0.b(this.f12608n));
            return;
        }
        k0.a("Layer#computeBounds");
        b(this.f12603i, this.f12596b, false);
        D(this.f12603i, matrix);
        this.f12596b.preConcat(this.f12618x.f());
        C(this.f12603i, this.f12596b);
        this.f12604j.set(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
        canvas.getMatrix(this.f12597c);
        if (!this.f12597c.isIdentity()) {
            Matrix matrix2 = this.f12597c;
            matrix2.invert(matrix2);
            this.f12597c.mapRect(this.f12604j);
        }
        if (!this.f12603i.intersect(this.f12604j)) {
            this.f12603i.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
        k0.b("Layer#computeBounds");
        if (this.f12603i.width() >= 1.0f && this.f12603i.height() >= 1.0f) {
            k0.a("Layer#saveLayer");
            this.f12598d.setAlpha(255);
            l6.h.n(canvas, this.f12603i, this.f12598d);
            k0.b("Layer#saveLayer");
            t(canvas);
            k0.a("Layer#drawLayer");
            u(canvas, this.f12596b, iIntValue);
            k0.b("Layer#drawLayer");
            if (A()) {
                p(canvas, this.f12596b);
            }
            if (B()) {
                k0.a("Layer#drawMatte");
                k0.a("Layer#saveLayer");
                l6.h.o(canvas, this.f12603i, this.f12601g, 19);
                k0.b("Layer#saveLayer");
                t(canvas);
                this.f12614t.f(canvas, matrix, iIntValue);
                k0.a("Layer#restoreLayer");
                canvas.restore();
                k0.b("Layer#restoreLayer");
                k0.b("Layer#drawMatte");
            }
            k0.a("Layer#restoreLayer");
            canvas.restore();
            k0.b("Layer#restoreLayer");
        }
        if (this.f12620z && (paint = this.A) != null) {
            paint.setStyle(Paint.Style.STROKE);
            this.A.setColor(-251901);
            this.A.setStrokeWidth(4.0f);
            canvas.drawRect(this.f12603i, this.A);
            this.A.setStyle(Paint.Style.FILL);
            this.A.setColor(1357638635);
            canvas.drawRect(this.f12603i, this.A);
        }
        G(k0.b(this.f12608n));
    }

    @Override // c6.c
    public String getName() {
        return this.f12611q.i();
    }

    @Override // f6.g
    public void h(Object obj, m6.b bVar) {
        this.f12618x.c(obj, bVar);
    }

    @Override // f6.g
    public void i(f6.f fVar, int i10, List list, f6.f fVar2) {
        b bVar = this.f12614t;
        if (bVar != null) {
            f6.f fVarA = fVar2.a(bVar.getName());
            if (fVar.c(this.f12614t.getName(), i10)) {
                list.add(fVarA.i(this.f12614t));
            }
            if (fVar.h(getName(), i10)) {
                this.f12614t.I(fVar, fVar.e(this.f12614t.getName(), i10) + i10, list, fVarA);
            }
        }
        if (fVar.g(getName(), i10)) {
            if (!"__container".equals(getName())) {
                fVar2 = fVar2.a(getName());
                if (fVar.c(getName(), i10)) {
                    list.add(fVar2.i(this));
                }
            }
            if (fVar.h(getName(), i10)) {
                I(fVar, i10 + fVar.e(getName(), i10), list, fVar2);
            }
        }
    }

    public void j(d6.a aVar) {
        if (aVar == null) {
            return;
        }
        this.f12617w.add(aVar);
    }

    abstract void u(Canvas canvas, Matrix matrix, int i10);

    public h6.a w() {
        return this.f12611q.a();
    }

    public BlurMaskFilter x(float f10) {
        if (this.B == f10) {
            return this.C;
        }
        BlurMaskFilter blurMaskFilter = new BlurMaskFilter(f10 / 2.0f, BlurMaskFilter.Blur.NORMAL);
        this.C = blurMaskFilter;
        this.B = f10;
        return blurMaskFilter;
    }

    public j y() {
        return this.f12611q.c();
    }

    e z() {
        return this.f12611q;
    }
}
