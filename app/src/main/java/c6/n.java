package c6;

import android.graphics.Path;
import android.graphics.PointF;
import d6.a;
import h6.j;
import h6.s;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class n implements m, a.b, k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4383b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.oplus.anim.o f4384c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j.a f4385d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f4386e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f4387f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final d6.a f4388g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final d6.a f4389h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final d6.a f4390i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final d6.a f4391j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final d6.a f4392k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final d6.a f4393l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final d6.a f4394m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f4396o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f4382a = new Path();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final b f4395n = new b();

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f4397a;

        static {
            int[] iArr = new int[j.a.values().length];
            f4397a = iArr;
            try {
                iArr[j.a.STAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4397a[j.a.POLYGON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public n(com.oplus.anim.o oVar, i6.b bVar, h6.j jVar) {
        this.f4384c = oVar;
        this.f4383b = jVar.d();
        j.a aVarJ = jVar.j();
        this.f4385d = aVarJ;
        this.f4386e = jVar.k();
        this.f4387f = jVar.l();
        d6.a aVarA = jVar.g().a();
        this.f4388g = aVarA;
        d6.a aVarA2 = jVar.h().a();
        this.f4389h = aVarA2;
        d6.a aVarA3 = jVar.i().a();
        this.f4390i = aVarA3;
        d6.a aVarA4 = jVar.e().a();
        this.f4392k = aVarA4;
        d6.a aVarA5 = jVar.f().a();
        this.f4394m = aVarA5;
        j.a aVar = j.a.STAR;
        if (aVarJ == aVar) {
            this.f4391j = jVar.b().a();
            this.f4393l = jVar.c().a();
        } else {
            this.f4391j = null;
            this.f4393l = null;
        }
        bVar.j(aVarA);
        bVar.j(aVarA2);
        bVar.j(aVarA3);
        bVar.j(aVarA4);
        bVar.j(aVarA5);
        if (aVarJ == aVar) {
            bVar.j(this.f4391j);
            bVar.j(this.f4393l);
        }
        aVarA.a(this);
        aVarA2.a(this);
        aVarA3.a(this);
        aVarA4.a(this);
        aVarA5.a(this);
        if (aVarJ == aVar) {
            this.f4391j.a(this);
            this.f4393l.a(this);
        }
    }

    private void e() {
        int i10;
        double d10;
        double d11;
        double d12;
        int iFloor = (int) Math.floor(((Float) this.f4388g.h()).floatValue());
        double radians = Math.toRadians((this.f4390i == null ? 0.0d : ((Float) r2.h()).floatValue()) - 90.0d);
        double d13 = iFloor;
        float fFloatValue = ((Float) this.f4394m.h()).floatValue() / 100.0f;
        float fFloatValue2 = ((Float) this.f4392k.h()).floatValue();
        double d14 = fFloatValue2;
        float fCos = (float) (Math.cos(radians) * d14);
        float fSin = (float) (Math.sin(radians) * d14);
        this.f4382a.moveTo(fCos, fSin);
        double d15 = (float) (6.283185307179586d / d13);
        double d16 = radians + d15;
        double dCeil = Math.ceil(d13);
        int i11 = 0;
        while (i11 < dCeil) {
            float fCos2 = (float) (Math.cos(d16) * d14);
            double d17 = dCeil;
            float fSin2 = (float) (d14 * Math.sin(d16));
            if (fFloatValue != 0.0f) {
                d11 = d14;
                i10 = i11;
                d10 = d16;
                double dAtan2 = (float) (Math.atan2(fSin, fCos) - 1.5707963267948966d);
                float fCos3 = (float) Math.cos(dAtan2);
                float fSin3 = (float) Math.sin(dAtan2);
                d12 = d15;
                double dAtan22 = (float) (Math.atan2(fSin2, fCos2) - 1.5707963267948966d);
                float f10 = fFloatValue2 * fFloatValue * 0.25f;
                this.f4382a.cubicTo(fCos - (fCos3 * f10), fSin - (fSin3 * f10), fCos2 + (((float) Math.cos(dAtan22)) * f10), fSin2 + (f10 * ((float) Math.sin(dAtan22))), fCos2, fSin2);
            } else {
                i10 = i11;
                d10 = d16;
                d11 = d14;
                d12 = d15;
                this.f4382a.lineTo(fCos2, fSin2);
            }
            d16 = d10 + d12;
            i11 = i10 + 1;
            fSin = fSin2;
            fCos = fCos2;
            dCeil = d17;
            d14 = d11;
            d15 = d12;
        }
        PointF pointF = (PointF) this.f4389h.h();
        this.f4382a.offset(pointF.x, pointF.y);
        this.f4382a.close();
    }

    private void j() {
        int i10;
        float f10;
        float f11;
        double d10;
        float fSin;
        float f12;
        float f13;
        float f14;
        double d11;
        float f15;
        float f16;
        float f17;
        double d12;
        float fFloatValue = ((Float) this.f4388g.h()).floatValue();
        double radians = Math.toRadians((this.f4390i == null ? 0.0d : ((Float) r2.h()).floatValue()) - 90.0d);
        double d13 = fFloatValue;
        float f18 = (float) (6.283185307179586d / d13);
        if (this.f4387f) {
            f18 *= -1.0f;
        }
        float f19 = f18 / 2.0f;
        float f20 = fFloatValue - ((int) fFloatValue);
        int i11 = (f20 > 0.0f ? 1 : (f20 == 0.0f ? 0 : -1));
        if (i11 != 0) {
            radians += (double) ((1.0f - f20) * f19);
        }
        float fFloatValue2 = ((Float) this.f4392k.h()).floatValue();
        float fFloatValue3 = ((Float) this.f4391j.h()).floatValue();
        d6.a aVar = this.f4393l;
        float fFloatValue4 = aVar != null ? ((Float) aVar.h()).floatValue() / 100.0f : 0.0f;
        d6.a aVar2 = this.f4394m;
        float fFloatValue5 = aVar2 != null ? ((Float) aVar2.h()).floatValue() / 100.0f : 0.0f;
        if (i11 != 0) {
            f12 = ((fFloatValue2 - fFloatValue3) * f20) + fFloatValue3;
            i10 = i11;
            double d14 = f12;
            float fCos = (float) (d14 * Math.cos(radians));
            fSin = (float) (d14 * Math.sin(radians));
            this.f4382a.moveTo(fCos, fSin);
            d10 = radians + ((double) ((f18 * f20) / 2.0f));
            f10 = fCos;
            f11 = f19;
        } else {
            i10 = i11;
            double d15 = fFloatValue2;
            float fCos2 = (float) (Math.cos(radians) * d15);
            float fSin2 = (float) (d15 * Math.sin(radians));
            this.f4382a.moveTo(fCos2, fSin2);
            f10 = fCos2;
            f11 = f19;
            d10 = radians + ((double) f11);
            fSin = fSin2;
            f12 = 0.0f;
        }
        double dCeil = Math.ceil(d13) * 2.0d;
        int i12 = 0;
        float f21 = f11;
        float f22 = f10;
        boolean z10 = false;
        while (true) {
            double d16 = i12;
            if (d16 >= dCeil) {
                PointF pointF = (PointF) this.f4389h.h();
                this.f4382a.offset(pointF.x, pointF.y);
                this.f4382a.close();
                return;
            }
            float f23 = z10 ? fFloatValue2 : fFloatValue3;
            if (f12 == 0.0f || d16 != dCeil - 2.0d) {
                f13 = f18;
                f14 = f21;
            } else {
                f13 = f18;
                f14 = (f18 * f20) / 2.0f;
            }
            if (f12 == 0.0f || d16 != dCeil - 1.0d) {
                d11 = d16;
                f15 = f12;
                f12 = f23;
            } else {
                d11 = d16;
                f15 = f12;
            }
            double d17 = f12;
            double d18 = dCeil;
            float fCos3 = (float) (d17 * Math.cos(d10));
            float fSin3 = (float) (d17 * Math.sin(d10));
            if (fFloatValue4 == 0.0f && fFloatValue5 == 0.0f) {
                this.f4382a.lineTo(fCos3, fSin3);
                d12 = d10;
                f16 = fFloatValue4;
                f17 = fFloatValue5;
            } else {
                f16 = fFloatValue4;
                double dAtan2 = (float) (Math.atan2(fSin, f22) - 1.5707963267948966d);
                float fCos4 = (float) Math.cos(dAtan2);
                float fSin4 = (float) Math.sin(dAtan2);
                f17 = fFloatValue5;
                d12 = d10;
                double dAtan22 = (float) (Math.atan2(fSin3, fCos3) - 1.5707963267948966d);
                float fCos5 = (float) Math.cos(dAtan22);
                float fSin5 = (float) Math.sin(dAtan22);
                float f24 = z10 ? f16 : f17;
                float f25 = z10 ? f17 : f16;
                float f26 = (z10 ? fFloatValue3 : fFloatValue2) * f24 * 0.47829f;
                float f27 = fCos4 * f26;
                float f28 = f26 * fSin4;
                float f29 = (z10 ? fFloatValue2 : fFloatValue3) * f25 * 0.47829f;
                float f30 = fCos5 * f29;
                float f31 = f29 * fSin5;
                if (i10 != 0) {
                    if (i12 == 0) {
                        f27 *= f20;
                        f28 *= f20;
                    } else if (d11 == d18 - 1.0d) {
                        f30 *= f20;
                        f31 *= f20;
                    }
                }
                this.f4382a.cubicTo(f22 - f27, fSin - f28, fCos3 + f30, fSin3 + f31, fCos3, fSin3);
            }
            d10 = d12 + ((double) f14);
            z10 = !z10;
            i12++;
            f22 = fCos3;
            fSin = fSin3;
            fFloatValue5 = f17;
            fFloatValue4 = f16;
            f12 = f15;
            f18 = f13;
            dCeil = d18;
        }
    }

    private void k() {
        this.f4396o = false;
        this.f4384c.invalidateSelf();
    }

    @Override // c6.m
    public Path a() {
        if (this.f4396o) {
            return this.f4382a;
        }
        this.f4382a.reset();
        if (this.f4386e) {
            this.f4396o = true;
            return this.f4382a;
        }
        int i10 = a.f4397a[this.f4385d.ordinal()];
        if (i10 == 1) {
            j();
        } else if (i10 == 2) {
            e();
        }
        this.f4382a.close();
        this.f4395n.b(this.f4382a);
        this.f4396o = true;
        return this.f4382a;
    }

    @Override // d6.a.b
    public void c() {
        k();
    }

    @Override // c6.c
    public void d(List list, List list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVar = (c) list.get(i10);
            if (cVar instanceof u) {
                u uVar = (u) cVar;
                if (uVar.k() == s.a.SIMULTANEOUSLY) {
                    this.f4395n.a(uVar);
                    uVar.e(this);
                }
            }
        }
    }

    @Override // c6.c
    public String getName() {
        return this.f4383b;
    }

    @Override // f6.g
    public void h(Object obj, m6.b bVar) {
        d6.a aVar;
        d6.a aVar2;
        if (obj == com.oplus.anim.q.f11128w) {
            this.f4388g.n(bVar);
            return;
        }
        if (obj == com.oplus.anim.q.f11129x) {
            this.f4390i.n(bVar);
            return;
        }
        if (obj == com.oplus.anim.q.f11119n) {
            this.f4389h.n(bVar);
            return;
        }
        if (obj == com.oplus.anim.q.f11130y && (aVar2 = this.f4391j) != null) {
            aVar2.n(bVar);
            return;
        }
        if (obj == com.oplus.anim.q.f11131z) {
            this.f4392k.n(bVar);
            return;
        }
        if (obj == com.oplus.anim.q.A && (aVar = this.f4393l) != null) {
            aVar.n(bVar);
        } else if (obj == com.oplus.anim.q.B) {
            this.f4394m.n(bVar);
        }
    }

    @Override // f6.g
    public void i(f6.f fVar, int i10, List list, f6.f fVar2) {
        l6.g.k(fVar, i10, list, fVar2, this);
    }
}
