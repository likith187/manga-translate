package d6;

import android.graphics.Matrix;
import android.graphics.PointF;
import d6.a;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public class p {

    /* JADX INFO: renamed from: a */
    private final Matrix f11584a = new Matrix();

    /* JADX INFO: renamed from: b */
    private final Matrix f11585b;

    /* JADX INFO: renamed from: c */
    private final Matrix f11586c;

    /* JADX INFO: renamed from: d */
    private final Matrix f11587d;

    /* JADX INFO: renamed from: e */
    private final float[] f11588e;

    /* JADX INFO: renamed from: f */
    private a f11589f;

    /* JADX INFO: renamed from: g */
    private a f11590g;

    /* JADX INFO: renamed from: h */
    private a f11591h;

    /* JADX INFO: renamed from: i */
    private a f11592i;

    /* JADX INFO: renamed from: j */
    private a f11593j;

    /* JADX INFO: renamed from: k */
    private d f11594k;

    /* JADX INFO: renamed from: l */
    private d f11595l;

    /* JADX INFO: renamed from: m */
    private a f11596m;

    /* JADX INFO: renamed from: n */
    private a f11597n;

    public p(g6.l lVar) {
        this.f11589f = lVar.c() == null ? null : lVar.c().a();
        this.f11590g = lVar.f() == null ? null : lVar.f().a();
        this.f11591h = lVar.h() == null ? null : lVar.h().a();
        this.f11592i = lVar.g() == null ? null : lVar.g().a();
        d dVar = lVar.i() == null ? null : (d) lVar.i().a();
        this.f11594k = dVar;
        if (dVar != null) {
            this.f11585b = new Matrix();
            this.f11586c = new Matrix();
            this.f11587d = new Matrix();
            this.f11588e = new float[9];
        } else {
            this.f11585b = null;
            this.f11586c = null;
            this.f11587d = null;
            this.f11588e = null;
        }
        this.f11595l = lVar.j() == null ? null : (d) lVar.j().a();
        if (lVar.e() != null) {
            this.f11593j = lVar.e().a();
        }
        if (lVar.k() != null) {
            this.f11596m = lVar.k().a();
        } else {
            this.f11596m = null;
        }
        if (lVar.d() != null) {
            this.f11597n = lVar.d().a();
        } else {
            this.f11597n = null;
        }
    }

    private void d() {
        for (int i10 = 0; i10 < 9; i10++) {
            this.f11588e[i10] = 0.0f;
        }
    }

    public void a(i6.b bVar) {
        bVar.j(this.f11593j);
        bVar.j(this.f11596m);
        bVar.j(this.f11597n);
        bVar.j(this.f11589f);
        bVar.j(this.f11590g);
        bVar.j(this.f11591h);
        bVar.j(this.f11592i);
        bVar.j(this.f11594k);
        bVar.j(this.f11595l);
    }

    public void b(a.b bVar) {
        a aVar = this.f11593j;
        if (aVar != null) {
            aVar.a(bVar);
        }
        a aVar2 = this.f11596m;
        if (aVar2 != null) {
            aVar2.a(bVar);
        }
        a aVar3 = this.f11597n;
        if (aVar3 != null) {
            aVar3.a(bVar);
        }
        a aVar4 = this.f11589f;
        if (aVar4 != null) {
            aVar4.a(bVar);
        }
        a aVar5 = this.f11590g;
        if (aVar5 != null) {
            aVar5.a(bVar);
        }
        a aVar6 = this.f11591h;
        if (aVar6 != null) {
            aVar6.a(bVar);
        }
        a aVar7 = this.f11592i;
        if (aVar7 != null) {
            aVar7.a(bVar);
        }
        d dVar = this.f11594k;
        if (dVar != null) {
            dVar.a(bVar);
        }
        d dVar2 = this.f11595l;
        if (dVar2 != null) {
            dVar2.a(bVar);
        }
    }

    public boolean c(Object obj, m6.b bVar) {
        if (obj == com.oplus.anim.q.f11111f) {
            a aVar = this.f11589f;
            if (aVar == null) {
                this.f11589f = new q(bVar, new PointF());
                return true;
            }
            aVar.n(bVar);
            return true;
        }
        if (obj == com.oplus.anim.q.f11112g) {
            a aVar2 = this.f11590g;
            if (aVar2 == null) {
                this.f11590g = new q(bVar, new PointF());
                return true;
            }
            aVar2.n(bVar);
            return true;
        }
        if (obj == com.oplus.anim.q.f11113h) {
            a aVar3 = this.f11590g;
            if (aVar3 instanceof n) {
                ((n) aVar3).r(bVar);
                return true;
            }
        }
        if (obj == com.oplus.anim.q.f11114i) {
            a aVar4 = this.f11590g;
            if (aVar4 instanceof n) {
                ((n) aVar4).s(bVar);
                return true;
            }
        }
        if (obj == com.oplus.anim.q.f11120o) {
            a aVar5 = this.f11591h;
            if (aVar5 == null) {
                this.f11591h = new q(bVar, new m6.d());
                return true;
            }
            aVar5.n(bVar);
            return true;
        }
        if (obj == com.oplus.anim.q.f11121p) {
            a aVar6 = this.f11592i;
            if (aVar6 == null) {
                this.f11592i = new q(bVar, Float.valueOf(0.0f));
                return true;
            }
            aVar6.n(bVar);
            return true;
        }
        if (obj == com.oplus.anim.q.f11108c) {
            a aVar7 = this.f11593j;
            if (aVar7 == null) {
                this.f11593j = new q(bVar, 100);
                return true;
            }
            aVar7.n(bVar);
            return true;
        }
        if (obj == com.oplus.anim.q.C) {
            a aVar8 = this.f11596m;
            if (aVar8 == null) {
                this.f11596m = new q(bVar, Float.valueOf(100.0f));
                return true;
            }
            aVar8.n(bVar);
            return true;
        }
        if (obj == com.oplus.anim.q.D) {
            a aVar9 = this.f11597n;
            if (aVar9 == null) {
                this.f11597n = new q(bVar, Float.valueOf(100.0f));
                return true;
            }
            aVar9.n(bVar);
            return true;
        }
        if (obj == com.oplus.anim.q.f11122q) {
            if (this.f11594k == null) {
                this.f11594k = new d(Collections.singletonList(new m6.c(Float.valueOf(0.0f))));
            }
            this.f11594k.n(bVar);
            return true;
        }
        if (obj != com.oplus.anim.q.f11123r) {
            return false;
        }
        if (this.f11595l == null) {
            this.f11595l = new d(Collections.singletonList(new m6.c(Float.valueOf(0.0f))));
        }
        this.f11595l.n(bVar);
        return true;
    }

    public a e() {
        return this.f11597n;
    }

    public Matrix f() {
        PointF pointF;
        PointF pointF2;
        this.f11584a.reset();
        a aVar = this.f11590g;
        if (aVar != null && (pointF2 = (PointF) aVar.h()) != null) {
            float f10 = pointF2.x;
            if (f10 != 0.0f || pointF2.y != 0.0f) {
                this.f11584a.preTranslate(f10, pointF2.y);
            }
        }
        a aVar2 = this.f11592i;
        if (aVar2 != null) {
            float fFloatValue = aVar2 instanceof q ? ((Float) aVar2.h()).floatValue() : ((d) aVar2).p();
            if (fFloatValue != 0.0f) {
                this.f11584a.preRotate(fFloatValue);
            }
        }
        if (this.f11594k != null) {
            float fCos = this.f11595l == null ? 0.0f : (float) Math.cos(Math.toRadians((-r3.p()) + 90.0f));
            float fSin = this.f11595l == null ? 1.0f : (float) Math.sin(Math.toRadians((-r5.p()) + 90.0f));
            float fTan = (float) Math.tan(Math.toRadians(r0.p()));
            d();
            float[] fArr = this.f11588e;
            fArr[0] = fCos;
            fArr[1] = fSin;
            float f11 = -fSin;
            fArr[3] = f11;
            fArr[4] = fCos;
            fArr[8] = 1.0f;
            this.f11585b.setValues(fArr);
            d();
            float[] fArr2 = this.f11588e;
            fArr2[0] = 1.0f;
            fArr2[3] = fTan;
            fArr2[4] = 1.0f;
            fArr2[8] = 1.0f;
            this.f11586c.setValues(fArr2);
            d();
            float[] fArr3 = this.f11588e;
            fArr3[0] = fCos;
            fArr3[1] = f11;
            fArr3[3] = fSin;
            fArr3[4] = fCos;
            fArr3[8] = 1.0f;
            this.f11587d.setValues(fArr3);
            this.f11586c.preConcat(this.f11585b);
            this.f11587d.preConcat(this.f11586c);
            this.f11584a.preConcat(this.f11587d);
        }
        a aVar3 = this.f11591h;
        if (aVar3 != null) {
            m6.d dVar = (m6.d) aVar3.h();
            if (dVar.b() != 1.0f || dVar.c() != 1.0f) {
                this.f11584a.preScale(dVar.b(), dVar.c());
            }
        }
        a aVar4 = this.f11589f;
        if (aVar4 != null && (pointF = (PointF) aVar4.h()) != null) {
            float f12 = pointF.x;
            if (f12 != 0.0f || pointF.y != 0.0f) {
                this.f11584a.preTranslate(-f12, -pointF.y);
            }
        }
        return this.f11584a;
    }

    public Matrix g(float f10) {
        a aVar = this.f11590g;
        PointF pointF = aVar == null ? null : (PointF) aVar.h();
        a aVar2 = this.f11591h;
        m6.d dVar = aVar2 == null ? null : (m6.d) aVar2.h();
        this.f11584a.reset();
        if (pointF != null) {
            this.f11584a.preTranslate(pointF.x * f10, pointF.y * f10);
        }
        if (dVar != null) {
            double d10 = f10;
            this.f11584a.preScale((float) Math.pow(dVar.b(), d10), (float) Math.pow(dVar.c(), d10));
        }
        a aVar3 = this.f11592i;
        if (aVar3 != null) {
            float fFloatValue = ((Float) aVar3.h()).floatValue();
            a aVar4 = this.f11589f;
            PointF pointF2 = aVar4 != null ? (PointF) aVar4.h() : null;
            this.f11584a.preRotate(fFloatValue * f10, pointF2 == null ? 0.0f : pointF2.x, pointF2 != null ? pointF2.y : 0.0f);
        }
        return this.f11584a;
    }

    public a h() {
        return this.f11593j;
    }

    public a i() {
        return this.f11596m;
    }

    public void j(float f10) {
        a aVar = this.f11593j;
        if (aVar != null) {
            aVar.m(f10);
        }
        a aVar2 = this.f11596m;
        if (aVar2 != null) {
            aVar2.m(f10);
        }
        a aVar3 = this.f11597n;
        if (aVar3 != null) {
            aVar3.m(f10);
        }
        a aVar4 = this.f11589f;
        if (aVar4 != null) {
            aVar4.m(f10);
        }
        a aVar5 = this.f11590g;
        if (aVar5 != null) {
            aVar5.m(f10);
        }
        a aVar6 = this.f11591h;
        if (aVar6 != null) {
            aVar6.m(f10);
        }
        a aVar7 = this.f11592i;
        if (aVar7 != null) {
            aVar7.m(f10);
        }
        d dVar = this.f11594k;
        if (dVar != null) {
            dVar.m(f10);
        }
        d dVar2 = this.f11595l;
        if (dVar2 != null) {
            dVar2.m(f10);
        }
    }
}
