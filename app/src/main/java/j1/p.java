package j1;

import android.graphics.Matrix;
import android.graphics.PointF;
import com.airbnb.lottie.m0;
import j1.a;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public class p {

    /* JADX INFO: renamed from: a */
    private final Matrix f12731a = new Matrix();

    /* JADX INFO: renamed from: b */
    private final Matrix f12732b;

    /* JADX INFO: renamed from: c */
    private final Matrix f12733c;

    /* JADX INFO: renamed from: d */
    private final Matrix f12734d;

    /* JADX INFO: renamed from: e */
    private final float[] f12735e;

    /* JADX INFO: renamed from: f */
    private a f12736f;

    /* JADX INFO: renamed from: g */
    private a f12737g;

    /* JADX INFO: renamed from: h */
    private a f12738h;

    /* JADX INFO: renamed from: i */
    private a f12739i;

    /* JADX INFO: renamed from: j */
    private a f12740j;

    /* JADX INFO: renamed from: k */
    private d f12741k;

    /* JADX INFO: renamed from: l */
    private d f12742l;

    /* JADX INFO: renamed from: m */
    private a f12743m;

    /* JADX INFO: renamed from: n */
    private a f12744n;

    /* JADX INFO: renamed from: o */
    private final boolean f12745o;

    public p(m1.l lVar) {
        this.f12736f = lVar.c() == null ? null : lVar.c().a();
        this.f12737g = lVar.f() == null ? null : lVar.f().a();
        this.f12738h = lVar.h() == null ? null : lVar.h().a();
        this.f12739i = lVar.g() == null ? null : lVar.g().a();
        this.f12741k = lVar.i() == null ? null : (d) lVar.i().a();
        this.f12745o = lVar.l();
        if (this.f12741k != null) {
            this.f12732b = new Matrix();
            this.f12733c = new Matrix();
            this.f12734d = new Matrix();
            this.f12735e = new float[9];
        } else {
            this.f12732b = null;
            this.f12733c = null;
            this.f12734d = null;
            this.f12735e = null;
        }
        this.f12742l = lVar.j() == null ? null : (d) lVar.j().a();
        if (lVar.e() != null) {
            this.f12740j = lVar.e().a();
        }
        if (lVar.k() != null) {
            this.f12743m = lVar.k().a();
        } else {
            this.f12743m = null;
        }
        if (lVar.d() != null) {
            this.f12744n = lVar.d().a();
        } else {
            this.f12744n = null;
        }
    }

    private void d() {
        for (int i10 = 0; i10 < 9; i10++) {
            this.f12735e[i10] = 0.0f;
        }
    }

    public void a(o1.b bVar) {
        bVar.j(this.f12740j);
        bVar.j(this.f12743m);
        bVar.j(this.f12744n);
        bVar.j(this.f12736f);
        bVar.j(this.f12737g);
        bVar.j(this.f12738h);
        bVar.j(this.f12739i);
        bVar.j(this.f12741k);
        bVar.j(this.f12742l);
    }

    public void b(a.b bVar) {
        a aVar = this.f12740j;
        if (aVar != null) {
            aVar.a(bVar);
        }
        a aVar2 = this.f12743m;
        if (aVar2 != null) {
            aVar2.a(bVar);
        }
        a aVar3 = this.f12744n;
        if (aVar3 != null) {
            aVar3.a(bVar);
        }
        a aVar4 = this.f12736f;
        if (aVar4 != null) {
            aVar4.a(bVar);
        }
        a aVar5 = this.f12737g;
        if (aVar5 != null) {
            aVar5.a(bVar);
        }
        a aVar6 = this.f12738h;
        if (aVar6 != null) {
            aVar6.a(bVar);
        }
        a aVar7 = this.f12739i;
        if (aVar7 != null) {
            aVar7.a(bVar);
        }
        d dVar = this.f12741k;
        if (dVar != null) {
            dVar.a(bVar);
        }
        d dVar2 = this.f12742l;
        if (dVar2 != null) {
            dVar2.a(bVar);
        }
    }

    public boolean c(Object obj, s1.c cVar) {
        if (obj == m0.f4622f) {
            a aVar = this.f12736f;
            if (aVar == null) {
                this.f12736f = new q(cVar, new PointF());
                return true;
            }
            aVar.o(cVar);
            return true;
        }
        if (obj == m0.f4623g) {
            a aVar2 = this.f12737g;
            if (aVar2 == null) {
                this.f12737g = new q(cVar, new PointF());
                return true;
            }
            aVar2.o(cVar);
            return true;
        }
        if (obj == m0.f4624h) {
            a aVar3 = this.f12737g;
            if (aVar3 instanceof n) {
                ((n) aVar3).s(cVar);
                return true;
            }
        }
        if (obj == m0.f4625i) {
            a aVar4 = this.f12737g;
            if (aVar4 instanceof n) {
                ((n) aVar4).t(cVar);
                return true;
            }
        }
        if (obj == m0.f4631o) {
            a aVar5 = this.f12738h;
            if (aVar5 == null) {
                this.f12738h = new q(cVar, new s1.d());
                return true;
            }
            aVar5.o(cVar);
            return true;
        }
        if (obj == m0.f4632p) {
            a aVar6 = this.f12739i;
            if (aVar6 == null) {
                this.f12739i = new q(cVar, Float.valueOf(0.0f));
                return true;
            }
            aVar6.o(cVar);
            return true;
        }
        if (obj == m0.f4619c) {
            a aVar7 = this.f12740j;
            if (aVar7 == null) {
                this.f12740j = new q(cVar, 100);
                return true;
            }
            aVar7.o(cVar);
            return true;
        }
        if (obj == m0.C) {
            a aVar8 = this.f12743m;
            if (aVar8 == null) {
                this.f12743m = new q(cVar, Float.valueOf(100.0f));
                return true;
            }
            aVar8.o(cVar);
            return true;
        }
        if (obj == m0.D) {
            a aVar9 = this.f12744n;
            if (aVar9 == null) {
                this.f12744n = new q(cVar, Float.valueOf(100.0f));
                return true;
            }
            aVar9.o(cVar);
            return true;
        }
        if (obj == m0.f4633q) {
            if (this.f12741k == null) {
                this.f12741k = new d(Collections.singletonList(new s1.a(Float.valueOf(0.0f))));
            }
            this.f12741k.o(cVar);
            return true;
        }
        if (obj != m0.f4634r) {
            return false;
        }
        if (this.f12742l == null) {
            this.f12742l = new d(Collections.singletonList(new s1.a(Float.valueOf(0.0f))));
        }
        this.f12742l.o(cVar);
        return true;
    }

    public a e() {
        return this.f12744n;
    }

    public Matrix f() {
        PointF pointF;
        s1.d dVar;
        PointF pointF2;
        this.f12731a.reset();
        a aVar = this.f12737g;
        if (aVar != null && (pointF2 = (PointF) aVar.h()) != null) {
            float f10 = pointF2.x;
            if (f10 != 0.0f || pointF2.y != 0.0f) {
                this.f12731a.preTranslate(f10, pointF2.y);
            }
        }
        if (!this.f12745o) {
            a aVar2 = this.f12739i;
            if (aVar2 != null) {
                float fFloatValue = aVar2 instanceof q ? ((Float) aVar2.h()).floatValue() : ((d) aVar2).q();
                if (fFloatValue != 0.0f) {
                    this.f12731a.preRotate(fFloatValue);
                }
            }
        } else if (aVar != null) {
            float f11 = aVar.f();
            PointF pointF3 = (PointF) aVar.h();
            float f12 = pointF3.x;
            float f13 = pointF3.y;
            aVar.n(1.0E-4f + f11);
            PointF pointF4 = (PointF) aVar.h();
            aVar.n(f11);
            this.f12731a.preRotate((float) Math.toDegrees(Math.atan2(pointF4.y - f13, pointF4.x - f12)));
        }
        if (this.f12741k != null) {
            float fCos = this.f12742l == null ? 0.0f : (float) Math.cos(Math.toRadians((-r3.q()) + 90.0f));
            float fSin = this.f12742l == null ? 1.0f : (float) Math.sin(Math.toRadians((-r5.q()) + 90.0f));
            float fTan = (float) Math.tan(Math.toRadians(r0.q()));
            d();
            float[] fArr = this.f12735e;
            fArr[0] = fCos;
            fArr[1] = fSin;
            float f14 = -fSin;
            fArr[3] = f14;
            fArr[4] = fCos;
            fArr[8] = 1.0f;
            this.f12732b.setValues(fArr);
            d();
            float[] fArr2 = this.f12735e;
            fArr2[0] = 1.0f;
            fArr2[3] = fTan;
            fArr2[4] = 1.0f;
            fArr2[8] = 1.0f;
            this.f12733c.setValues(fArr2);
            d();
            float[] fArr3 = this.f12735e;
            fArr3[0] = fCos;
            fArr3[1] = f14;
            fArr3[3] = fSin;
            fArr3[4] = fCos;
            fArr3[8] = 1.0f;
            this.f12734d.setValues(fArr3);
            this.f12733c.preConcat(this.f12732b);
            this.f12734d.preConcat(this.f12733c);
            this.f12731a.preConcat(this.f12734d);
        }
        a aVar3 = this.f12738h;
        if (aVar3 != null && (dVar = (s1.d) aVar3.h()) != null && (dVar.b() != 1.0f || dVar.c() != 1.0f)) {
            this.f12731a.preScale(dVar.b(), dVar.c());
        }
        a aVar4 = this.f12736f;
        if (aVar4 != null && (pointF = (PointF) aVar4.h()) != null) {
            float f15 = pointF.x;
            if (f15 != 0.0f || pointF.y != 0.0f) {
                this.f12731a.preTranslate(-f15, -pointF.y);
            }
        }
        return this.f12731a;
    }

    public Matrix g(float f10) {
        a aVar = this.f12737g;
        PointF pointF = aVar == null ? null : (PointF) aVar.h();
        a aVar2 = this.f12738h;
        s1.d dVar = aVar2 == null ? null : (s1.d) aVar2.h();
        this.f12731a.reset();
        if (pointF != null) {
            this.f12731a.preTranslate(pointF.x * f10, pointF.y * f10);
        }
        if (dVar != null) {
            double d10 = f10;
            this.f12731a.preScale((float) Math.pow(dVar.b(), d10), (float) Math.pow(dVar.c(), d10));
        }
        a aVar3 = this.f12739i;
        if (aVar3 != null) {
            float fFloatValue = ((Float) aVar3.h()).floatValue();
            a aVar4 = this.f12736f;
            PointF pointF2 = aVar4 != null ? (PointF) aVar4.h() : null;
            this.f12731a.preRotate(fFloatValue * f10, pointF2 == null ? 0.0f : pointF2.x, pointF2 != null ? pointF2.y : 0.0f);
        }
        return this.f12731a;
    }

    public a h() {
        return this.f12740j;
    }

    public a i() {
        return this.f12743m;
    }

    public void j(float f10) {
        a aVar = this.f12740j;
        if (aVar != null) {
            aVar.n(f10);
        }
        a aVar2 = this.f12743m;
        if (aVar2 != null) {
            aVar2.n(f10);
        }
        a aVar3 = this.f12744n;
        if (aVar3 != null) {
            aVar3.n(f10);
        }
        a aVar4 = this.f12736f;
        if (aVar4 != null) {
            aVar4.n(f10);
        }
        a aVar5 = this.f12737g;
        if (aVar5 != null) {
            aVar5.n(f10);
        }
        a aVar6 = this.f12738h;
        if (aVar6 != null) {
            aVar6.n(f10);
        }
        a aVar7 = this.f12739i;
        if (aVar7 != null) {
            aVar7.n(f10);
        }
        d dVar = this.f12741k;
        if (dVar != null) {
            dVar.n(f10);
        }
        d dVar2 = this.f12742l;
        if (dVar2 != null) {
            dVar2.n(f10);
        }
    }
}
