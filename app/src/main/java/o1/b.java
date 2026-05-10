package o1;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import com.airbnb.lottie.i0;
import j1.a;
import j1.p;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import n1.i;
import o1.e;
import r1.j;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements i1.e, a.b, l1.f {
    private Paint A;
    float B;
    BlurMaskFilter C;

    /* JADX INFO: renamed from: a */
    private final Path f14300a = new Path();

    /* JADX INFO: renamed from: b */
    private final Matrix f14301b = new Matrix();

    /* JADX INFO: renamed from: c */
    private final Matrix f14302c = new Matrix();

    /* JADX INFO: renamed from: d */
    private final Paint f14303d = new h1.a(1);

    /* JADX INFO: renamed from: e */
    private final Paint f14304e;

    /* JADX INFO: renamed from: f */
    private final Paint f14305f;

    /* JADX INFO: renamed from: g */
    private final Paint f14306g;

    /* JADX INFO: renamed from: h */
    private final Paint f14307h;

    /* JADX INFO: renamed from: i */
    private final RectF f14308i;

    /* JADX INFO: renamed from: j */
    private final RectF f14309j;

    /* JADX INFO: renamed from: k */
    private final RectF f14310k;

    /* JADX INFO: renamed from: l */
    private final RectF f14311l;

    /* JADX INFO: renamed from: m */
    private final RectF f14312m;

    /* JADX INFO: renamed from: n */
    private final String f14313n;

    /* JADX INFO: renamed from: o */
    final Matrix f14314o;

    /* JADX INFO: renamed from: p */
    final i0 f14315p;

    /* JADX INFO: renamed from: q */
    final e f14316q;

    /* JADX INFO: renamed from: r */
    private j1.h f14317r;

    /* JADX INFO: renamed from: s */
    private j1.d f14318s;

    /* JADX INFO: renamed from: t */
    private b f14319t;

    /* JADX INFO: renamed from: u */
    private b f14320u;

    /* JADX INFO: renamed from: v */
    private List f14321v;

    /* JADX INFO: renamed from: w */
    private final List f14322w;

    /* JADX INFO: renamed from: x */
    final p f14323x;

    /* JADX INFO: renamed from: y */
    private boolean f14324y;

    /* JADX INFO: renamed from: z */
    private boolean f14325z;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f14326a;

        /* JADX INFO: renamed from: b */
        static final /* synthetic */ int[] f14327b;

        static {
            int[] iArr = new int[i.a.values().length];
            f14327b = iArr;
            try {
                iArr[i.a.MASK_MODE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14327b[i.a.MASK_MODE_SUBTRACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14327b[i.a.MASK_MODE_INTERSECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14327b[i.a.MASK_MODE_ADD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[e.a.values().length];
            f14326a = iArr2;
            try {
                iArr2[e.a.SHAPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14326a[e.a.PRE_COMP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14326a[e.a.SOLID.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14326a[e.a.IMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14326a[e.a.NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14326a[e.a.TEXT.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14326a[e.a.UNKNOWN.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    b(i0 i0Var, e eVar) {
        PorterDuff.Mode mode = PorterDuff.Mode.DST_IN;
        this.f14304e = new h1.a(1, mode);
        PorterDuff.Mode mode2 = PorterDuff.Mode.DST_OUT;
        this.f14305f = new h1.a(1, mode2);
        h1.a aVar = new h1.a(1);
        this.f14306g = aVar;
        this.f14307h = new h1.a(PorterDuff.Mode.CLEAR);
        this.f14308i = new RectF();
        this.f14309j = new RectF();
        this.f14310k = new RectF();
        this.f14311l = new RectF();
        this.f14312m = new RectF();
        this.f14314o = new Matrix();
        this.f14322w = new ArrayList();
        this.f14324y = true;
        this.B = 0.0f;
        this.f14315p = i0Var;
        this.f14316q = eVar;
        this.f14313n = eVar.j() + "#draw";
        if (eVar.i() == e.b.INVERT) {
            aVar.setXfermode(new PorterDuffXfermode(mode2));
        } else {
            aVar.setXfermode(new PorterDuffXfermode(mode));
        }
        p pVarB = eVar.x().b();
        this.f14323x = pVarB;
        pVarB.b(this);
        if (eVar.h() != null && !eVar.h().isEmpty()) {
            j1.h hVar = new j1.h(eVar.h());
            this.f14317r = hVar;
            Iterator it = hVar.a().iterator();
            while (it.hasNext()) {
                ((j1.a) it.next()).a(this);
            }
            for (j1.a aVar2 : this.f14317r.c()) {
                j(aVar2);
                aVar2.a(this);
            }
        }
        P();
    }

    private void D(RectF rectF, Matrix matrix) {
        this.f14310k.set(0.0f, 0.0f, 0.0f, 0.0f);
        if (B()) {
            int size = this.f14317r.b().size();
            for (int i10 = 0; i10 < size; i10++) {
                n1.i iVar = (n1.i) this.f14317r.b().get(i10);
                Path path = (Path) ((j1.a) this.f14317r.a().get(i10)).h();
                if (path != null) {
                    this.f14300a.set(path);
                    this.f14300a.transform(matrix);
                    int i11 = a.f14327b[iVar.a().ordinal()];
                    if (i11 == 1 || i11 == 2) {
                        return;
                    }
                    if ((i11 == 3 || i11 == 4) && iVar.d()) {
                        return;
                    }
                    this.f14300a.computeBounds(this.f14312m, false);
                    if (i10 == 0) {
                        this.f14310k.set(this.f14312m);
                    } else {
                        RectF rectF2 = this.f14310k;
                        rectF2.set(Math.min(rectF2.left, this.f14312m.left), Math.min(this.f14310k.top, this.f14312m.top), Math.max(this.f14310k.right, this.f14312m.right), Math.max(this.f14310k.bottom, this.f14312m.bottom));
                    }
                }
            }
            if (rectF.intersect(this.f14310k)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private void E(RectF rectF, Matrix matrix) {
        if (C() && this.f14316q.i() != e.b.INVERT) {
            this.f14311l.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.f14319t.b(this.f14311l, matrix, true);
            if (rectF.intersect(this.f14311l)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private void F() {
        this.f14315p.invalidateSelf();
    }

    public /* synthetic */ void G() {
        O(this.f14318s.q() == 1.0f);
    }

    private void H(float f10) {
        this.f14315p.L().n().a(this.f14316q.j(), f10);
    }

    private void O(boolean z10) {
        if (z10 != this.f14324y) {
            this.f14324y = z10;
            F();
        }
    }

    private void P() {
        if (this.f14316q.f().isEmpty()) {
            O(true);
            return;
        }
        j1.d dVar = new j1.d(this.f14316q.f());
        this.f14318s = dVar;
        dVar.m();
        this.f14318s.a(new a.b() { // from class: o1.a
            @Override // j1.a.b
            public final void c() {
                this.f14299a.G();
            }
        });
        O(((Float) this.f14318s.h()).floatValue() == 1.0f);
        j(this.f14318s);
    }

    private void k(Canvas canvas, Matrix matrix, j1.a aVar, j1.a aVar2) {
        this.f14300a.set((Path) aVar.h());
        this.f14300a.transform(matrix);
        this.f14303d.setAlpha((int) (((Integer) aVar2.h()).intValue() * 2.55f));
        canvas.drawPath(this.f14300a, this.f14303d);
    }

    private void l(Canvas canvas, Matrix matrix, j1.a aVar, j1.a aVar2) {
        j.m(canvas, this.f14308i, this.f14304e);
        this.f14300a.set((Path) aVar.h());
        this.f14300a.transform(matrix);
        this.f14303d.setAlpha((int) (((Integer) aVar2.h()).intValue() * 2.55f));
        canvas.drawPath(this.f14300a, this.f14303d);
        canvas.restore();
    }

    private void m(Canvas canvas, Matrix matrix, j1.a aVar, j1.a aVar2) {
        j.m(canvas, this.f14308i, this.f14303d);
        canvas.drawRect(this.f14308i, this.f14303d);
        this.f14300a.set((Path) aVar.h());
        this.f14300a.transform(matrix);
        this.f14303d.setAlpha((int) (((Integer) aVar2.h()).intValue() * 2.55f));
        canvas.drawPath(this.f14300a, this.f14305f);
        canvas.restore();
    }

    private void n(Canvas canvas, Matrix matrix, j1.a aVar, j1.a aVar2) {
        j.m(canvas, this.f14308i, this.f14304e);
        canvas.drawRect(this.f14308i, this.f14303d);
        this.f14305f.setAlpha((int) (((Integer) aVar2.h()).intValue() * 2.55f));
        this.f14300a.set((Path) aVar.h());
        this.f14300a.transform(matrix);
        canvas.drawPath(this.f14300a, this.f14305f);
        canvas.restore();
    }

    private void o(Canvas canvas, Matrix matrix, j1.a aVar, j1.a aVar2) {
        j.m(canvas, this.f14308i, this.f14305f);
        canvas.drawRect(this.f14308i, this.f14303d);
        this.f14305f.setAlpha((int) (((Integer) aVar2.h()).intValue() * 2.55f));
        this.f14300a.set((Path) aVar.h());
        this.f14300a.transform(matrix);
        canvas.drawPath(this.f14300a, this.f14305f);
        canvas.restore();
    }

    private void p(Canvas canvas, Matrix matrix) {
        com.airbnb.lottie.e.b("Layer#saveLayer");
        j.n(canvas, this.f14308i, this.f14304e, 19);
        com.airbnb.lottie.e.c("Layer#saveLayer");
        for (int i10 = 0; i10 < this.f14317r.b().size(); i10++) {
            n1.i iVar = (n1.i) this.f14317r.b().get(i10);
            j1.a aVar = (j1.a) this.f14317r.a().get(i10);
            j1.a aVar2 = (j1.a) this.f14317r.c().get(i10);
            int i11 = a.f14327b[iVar.a().ordinal()];
            if (i11 != 1) {
                if (i11 == 2) {
                    if (i10 == 0) {
                        this.f14303d.setColor(-16777216);
                        this.f14303d.setAlpha(255);
                        canvas.drawRect(this.f14308i, this.f14303d);
                    }
                    if (iVar.d()) {
                        o(canvas, matrix, aVar, aVar2);
                    } else {
                        q(canvas, matrix, aVar);
                    }
                } else if (i11 != 3) {
                    if (i11 == 4) {
                        if (iVar.d()) {
                            m(canvas, matrix, aVar, aVar2);
                        } else {
                            k(canvas, matrix, aVar, aVar2);
                        }
                    }
                } else if (iVar.d()) {
                    n(canvas, matrix, aVar, aVar2);
                } else {
                    l(canvas, matrix, aVar, aVar2);
                }
            } else if (r()) {
                this.f14303d.setAlpha(255);
                canvas.drawRect(this.f14308i, this.f14303d);
            }
        }
        com.airbnb.lottie.e.b("Layer#restoreLayer");
        canvas.restore();
        com.airbnb.lottie.e.c("Layer#restoreLayer");
    }

    private void q(Canvas canvas, Matrix matrix, j1.a aVar) {
        this.f14300a.set((Path) aVar.h());
        this.f14300a.transform(matrix);
        canvas.drawPath(this.f14300a, this.f14305f);
    }

    private boolean r() {
        if (this.f14317r.a().isEmpty()) {
            return false;
        }
        for (int i10 = 0; i10 < this.f14317r.b().size(); i10++) {
            if (((n1.i) this.f14317r.b().get(i10)).a() != i.a.MASK_MODE_NONE) {
                return false;
            }
        }
        return true;
    }

    private void s() {
        if (this.f14321v != null) {
            return;
        }
        if (this.f14320u == null) {
            this.f14321v = Collections.emptyList();
            return;
        }
        this.f14321v = new ArrayList();
        for (b bVar = this.f14320u; bVar != null; bVar = bVar.f14320u) {
            this.f14321v.add(bVar);
        }
    }

    private void t(Canvas canvas) {
        com.airbnb.lottie.e.b("Layer#clearLayer");
        RectF rectF = this.f14308i;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.f14307h);
        com.airbnb.lottie.e.c("Layer#clearLayer");
    }

    static b v(c cVar, e eVar, i0 i0Var, com.airbnb.lottie.j jVar) {
        switch (a.f14326a[eVar.g().ordinal()]) {
            case 1:
                return new g(i0Var, eVar, cVar, jVar);
            case 2:
                return new c(i0Var, eVar, jVar.o(eVar.n()), jVar);
            case 3:
                return new h(i0Var, eVar);
            case 4:
                return new d(i0Var, eVar);
            case 5:
                return new f(i0Var, eVar);
            case 6:
                return new i(i0Var, eVar);
            default:
                r1.d.c("Unknown layer type " + eVar.g());
                return null;
        }
    }

    e A() {
        return this.f14316q;
    }

    boolean B() {
        j1.h hVar = this.f14317r;
        return (hVar == null || hVar.a().isEmpty()) ? false : true;
    }

    boolean C() {
        return this.f14319t != null;
    }

    public void I(j1.a aVar) {
        this.f14322w.remove(aVar);
    }

    void J(l1.e eVar, int i10, List list, l1.e eVar2) {
    }

    void K(b bVar) {
        this.f14319t = bVar;
    }

    void L(boolean z10) {
        if (z10 && this.A == null) {
            this.A = new h1.a();
        }
        this.f14325z = z10;
    }

    void M(b bVar) {
        this.f14320u = bVar;
    }

    void N(float f10) {
        com.airbnb.lottie.e.b("BaseLayer#setProgress");
        com.airbnb.lottie.e.b("BaseLayer#setProgress.transform");
        this.f14323x.j(f10);
        com.airbnb.lottie.e.c("BaseLayer#setProgress.transform");
        if (this.f14317r != null) {
            com.airbnb.lottie.e.b("BaseLayer#setProgress.mask");
            for (int i10 = 0; i10 < this.f14317r.a().size(); i10++) {
                ((j1.a) this.f14317r.a().get(i10)).n(f10);
            }
            com.airbnb.lottie.e.c("BaseLayer#setProgress.mask");
        }
        if (this.f14318s != null) {
            com.airbnb.lottie.e.b("BaseLayer#setProgress.inout");
            this.f14318s.n(f10);
            com.airbnb.lottie.e.c("BaseLayer#setProgress.inout");
        }
        if (this.f14319t != null) {
            com.airbnb.lottie.e.b("BaseLayer#setProgress.matte");
            this.f14319t.N(f10);
            com.airbnb.lottie.e.c("BaseLayer#setProgress.matte");
        }
        com.airbnb.lottie.e.b("BaseLayer#setProgress.animations." + this.f14322w.size());
        for (int i11 = 0; i11 < this.f14322w.size(); i11++) {
            ((j1.a) this.f14322w.get(i11)).n(f10);
        }
        com.airbnb.lottie.e.c("BaseLayer#setProgress.animations." + this.f14322w.size());
        com.airbnb.lottie.e.c("BaseLayer#setProgress");
    }

    @Override // i1.e
    public void b(RectF rectF, Matrix matrix, boolean z10) {
        this.f14308i.set(0.0f, 0.0f, 0.0f, 0.0f);
        s();
        this.f14314o.set(matrix);
        if (z10) {
            List list = this.f14321v;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f14314o.preConcat(((b) this.f14321v.get(size)).f14323x.f());
                }
            } else {
                b bVar = this.f14320u;
                if (bVar != null) {
                    this.f14314o.preConcat(bVar.f14323x.f());
                }
            }
        }
        this.f14314o.preConcat(this.f14323x.f());
    }

    @Override // j1.a.b
    public void c() {
        F();
    }

    @Override // i1.c
    public void d(List list, List list2) {
    }

    @Override // i1.e
    public void f(Canvas canvas, Matrix matrix, int i10) {
        Paint paint;
        Integer num;
        com.airbnb.lottie.e.b(this.f14313n);
        if (!this.f14324y || this.f14316q.y()) {
            com.airbnb.lottie.e.c(this.f14313n);
            return;
        }
        s();
        com.airbnb.lottie.e.b("Layer#parentMatrix");
        this.f14301b.reset();
        this.f14301b.set(matrix);
        for (int size = this.f14321v.size() - 1; size >= 0; size--) {
            this.f14301b.preConcat(((b) this.f14321v.get(size)).f14323x.f());
        }
        com.airbnb.lottie.e.c("Layer#parentMatrix");
        j1.a aVarH = this.f14323x.h();
        int iIntValue = (int) ((((i10 / 255.0f) * ((aVarH == null || (num = (Integer) aVarH.h()) == null) ? 100 : num.intValue())) / 100.0f) * 255.0f);
        if (!C() && !B()) {
            this.f14301b.preConcat(this.f14323x.f());
            com.airbnb.lottie.e.b("Layer#drawLayer");
            u(canvas, this.f14301b, iIntValue);
            com.airbnb.lottie.e.c("Layer#drawLayer");
            H(com.airbnb.lottie.e.c(this.f14313n));
            return;
        }
        com.airbnb.lottie.e.b("Layer#computeBounds");
        b(this.f14308i, this.f14301b, false);
        E(this.f14308i, matrix);
        this.f14301b.preConcat(this.f14323x.f());
        D(this.f14308i, this.f14301b);
        this.f14309j.set(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
        canvas.getMatrix(this.f14302c);
        if (!this.f14302c.isIdentity()) {
            Matrix matrix2 = this.f14302c;
            matrix2.invert(matrix2);
            this.f14302c.mapRect(this.f14309j);
        }
        if (!this.f14308i.intersect(this.f14309j)) {
            this.f14308i.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
        com.airbnb.lottie.e.c("Layer#computeBounds");
        if (this.f14308i.width() >= 1.0f && this.f14308i.height() >= 1.0f) {
            com.airbnb.lottie.e.b("Layer#saveLayer");
            this.f14303d.setAlpha(255);
            j.m(canvas, this.f14308i, this.f14303d);
            com.airbnb.lottie.e.c("Layer#saveLayer");
            t(canvas);
            com.airbnb.lottie.e.b("Layer#drawLayer");
            u(canvas, this.f14301b, iIntValue);
            com.airbnb.lottie.e.c("Layer#drawLayer");
            if (B()) {
                p(canvas, this.f14301b);
            }
            if (C()) {
                com.airbnb.lottie.e.b("Layer#drawMatte");
                com.airbnb.lottie.e.b("Layer#saveLayer");
                j.n(canvas, this.f14308i, this.f14306g, 19);
                com.airbnb.lottie.e.c("Layer#saveLayer");
                t(canvas);
                this.f14319t.f(canvas, matrix, iIntValue);
                com.airbnb.lottie.e.b("Layer#restoreLayer");
                canvas.restore();
                com.airbnb.lottie.e.c("Layer#restoreLayer");
                com.airbnb.lottie.e.c("Layer#drawMatte");
            }
            com.airbnb.lottie.e.b("Layer#restoreLayer");
            canvas.restore();
            com.airbnb.lottie.e.c("Layer#restoreLayer");
        }
        if (this.f14325z && (paint = this.A) != null) {
            paint.setStyle(Paint.Style.STROKE);
            this.A.setColor(-251901);
            this.A.setStrokeWidth(4.0f);
            canvas.drawRect(this.f14308i, this.A);
            this.A.setStyle(Paint.Style.FILL);
            this.A.setColor(1357638635);
            canvas.drawRect(this.f14308i, this.A);
        }
        H(com.airbnb.lottie.e.c(this.f14313n));
    }

    @Override // l1.f
    public void g(l1.e eVar, int i10, List list, l1.e eVar2) {
        b bVar = this.f14319t;
        if (bVar != null) {
            l1.e eVarA = eVar2.a(bVar.getName());
            if (eVar.c(this.f14319t.getName(), i10)) {
                list.add(eVarA.i(this.f14319t));
            }
            if (eVar.h(getName(), i10)) {
                this.f14319t.J(eVar, eVar.e(this.f14319t.getName(), i10) + i10, list, eVarA);
            }
        }
        if (eVar.g(getName(), i10)) {
            if (!"__container".equals(getName())) {
                eVar2 = eVar2.a(getName());
                if (eVar.c(getName(), i10)) {
                    list.add(eVar2.i(this));
                }
            }
            if (eVar.h(getName(), i10)) {
                J(eVar, i10 + eVar.e(getName(), i10), list, eVar2);
            }
        }
    }

    @Override // i1.c
    public String getName() {
        return this.f14316q.j();
    }

    @Override // l1.f
    public void h(Object obj, s1.c cVar) {
        this.f14323x.c(obj, cVar);
    }

    public void j(j1.a aVar) {
        if (aVar == null) {
            return;
        }
        this.f14322w.add(aVar);
    }

    abstract void u(Canvas canvas, Matrix matrix, int i10);

    public n1.h w() {
        return this.f14316q.a();
    }

    public n1.a x() {
        return this.f14316q.b();
    }

    public BlurMaskFilter y(float f10) {
        if (this.B == f10) {
            return this.C;
        }
        BlurMaskFilter blurMaskFilter = new BlurMaskFilter(f10 / 2.0f, BlurMaskFilter.Blur.NORMAL);
        this.C = blurMaskFilter;
        this.B = f10;
        return blurMaskFilter;
    }

    public q1.j z() {
        return this.f14316q.d();
    }
}
