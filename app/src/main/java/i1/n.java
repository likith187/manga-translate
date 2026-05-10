package i1;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import com.airbnb.lottie.i0;
import com.airbnb.lottie.m0;
import j1.a;
import java.util.List;
import n1.k;
import n1.t;

/* JADX INFO: loaded from: classes.dex */
public class n implements m, a.b, k {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f12460e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final i0 f12461f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final k.a f12462g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f12463h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f12464i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final j1.a f12465j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final j1.a f12466k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final j1.a f12467l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final j1.a f12468m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final j1.a f12469n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final j1.a f12470o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final j1.a f12471p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f12473r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f12456a = new Path();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path f12457b = new Path();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final PathMeasure f12458c = new PathMeasure();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float[] f12459d = new float[2];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final b f12472q = new b();

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f12474a;

        static {
            int[] iArr = new int[k.a.values().length];
            f12474a = iArr;
            try {
                iArr[k.a.STAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12474a[k.a.POLYGON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public n(i0 i0Var, o1.b bVar, n1.k kVar) {
        this.f12461f = i0Var;
        this.f12460e = kVar.d();
        k.a aVarJ = kVar.j();
        this.f12462g = aVarJ;
        this.f12463h = kVar.k();
        this.f12464i = kVar.l();
        j1.a aVarA = kVar.g().a();
        this.f12465j = aVarA;
        j1.a aVarA2 = kVar.h().a();
        this.f12466k = aVarA2;
        j1.a aVarA3 = kVar.i().a();
        this.f12467l = aVarA3;
        j1.a aVarA4 = kVar.e().a();
        this.f12469n = aVarA4;
        j1.a aVarA5 = kVar.f().a();
        this.f12471p = aVarA5;
        k.a aVar = k.a.STAR;
        if (aVarJ == aVar) {
            this.f12468m = kVar.b().a();
            this.f12470o = kVar.c().a();
        } else {
            this.f12468m = null;
            this.f12470o = null;
        }
        bVar.j(aVarA);
        bVar.j(aVarA2);
        bVar.j(aVarA3);
        bVar.j(aVarA4);
        bVar.j(aVarA5);
        if (aVarJ == aVar) {
            bVar.j(this.f12468m);
            bVar.j(this.f12470o);
        }
        aVarA.a(this);
        aVarA2.a(this);
        aVarA3.a(this);
        aVarA4.a(this);
        aVarA5.a(this);
        if (aVarJ == aVar) {
            this.f12468m.a(this);
            this.f12470o.a(this);
        }
    }

    private void e() {
        double d10;
        float f10;
        n nVar;
        n nVar2 = this;
        int iFloor = (int) Math.floor(((Float) nVar2.f12465j.h()).floatValue());
        double radians = Math.toRadians((nVar2.f12467l == null ? 0.0d : ((Float) r2.h()).floatValue()) - 90.0d);
        double d11 = iFloor;
        float fFloatValue = ((Float) nVar2.f12471p.h()).floatValue() / 100.0f;
        float fFloatValue2 = ((Float) nVar2.f12469n.h()).floatValue();
        double d12 = fFloatValue2;
        float fCos = (float) (Math.cos(radians) * d12);
        float fSin = (float) (Math.sin(radians) * d12);
        nVar2.f12456a.moveTo(fCos, fSin);
        double d13 = (float) (6.283185307179586d / d11);
        double dCeil = Math.ceil(d11);
        double d14 = radians + d13;
        int i10 = 0;
        while (true) {
            double d15 = i10;
            if (d15 >= dCeil) {
                n nVar3 = nVar2;
                PointF pointF = (PointF) nVar3.f12466k.h();
                nVar3.f12456a.offset(pointF.x, pointF.y);
                nVar3.f12456a.close();
                return;
            }
            int i11 = i10;
            float fCos2 = (float) (d12 * Math.cos(d14));
            double d16 = d13;
            float fSin2 = (float) (d12 * Math.sin(d14));
            if (fFloatValue != 0.0f) {
                d10 = d12;
                double dAtan2 = (float) (Math.atan2(fSin, fCos) - 1.5707963267948966d);
                float fCos3 = (float) Math.cos(dAtan2);
                float fSin3 = (float) Math.sin(dAtan2);
                f10 = fSin2;
                double dAtan22 = (float) (Math.atan2(fSin2, fCos2) - 1.5707963267948966d);
                float f11 = fFloatValue2 * fFloatValue * 0.25f;
                float f12 = fCos3 * f11;
                float f13 = fSin3 * f11;
                float fCos4 = ((float) Math.cos(dAtan22)) * f11;
                float fSin4 = f11 * ((float) Math.sin(dAtan22));
                if (d15 == dCeil - 1.0d) {
                    nVar = this;
                    nVar.f12457b.reset();
                    nVar.f12457b.moveTo(fCos, fSin);
                    float f14 = fCos - f12;
                    float f15 = fSin - f13;
                    float f16 = fCos2 + fCos4;
                    float f17 = fSin4 + f10;
                    nVar.f12457b.cubicTo(f14, f15, f16, f17, fCos2, f10);
                    nVar.f12458c.setPath(nVar.f12457b, false);
                    PathMeasure pathMeasure = nVar.f12458c;
                    pathMeasure.getPosTan(pathMeasure.getLength() * 0.9999f, nVar.f12459d, null);
                    Path path = nVar.f12456a;
                    float[] fArr = nVar.f12459d;
                    path.cubicTo(f14, f15, f16, f17, fArr[0], fArr[1]);
                } else {
                    nVar = this;
                    nVar.f12456a.cubicTo(fCos - f12, fSin - f13, fCos2 + fCos4, f10 + fSin4, fCos2, f10);
                }
            } else {
                d10 = d12;
                f10 = fSin2;
                nVar = nVar2;
                if (d15 == dCeil - 1.0d) {
                    fSin = f10;
                    fCos = fCos2;
                    d13 = d16;
                    i10 = i11 + 1;
                    nVar2 = nVar;
                    d12 = d10;
                } else {
                    nVar.f12456a.lineTo(fCos2, f10);
                }
            }
            d14 += d16;
            fSin = f10;
            fCos = fCos2;
            d13 = d16;
            i10 = i11 + 1;
            nVar2 = nVar;
            d12 = d10;
        }
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
        float fFloatValue = ((Float) this.f12465j.h()).floatValue();
        double radians = Math.toRadians((this.f12467l == null ? 0.0d : ((Float) r2.h()).floatValue()) - 90.0d);
        double d13 = fFloatValue;
        float f18 = (float) (6.283185307179586d / d13);
        if (this.f12464i) {
            f18 *= -1.0f;
        }
        float f19 = f18 / 2.0f;
        float f20 = fFloatValue - ((int) fFloatValue);
        int i11 = (f20 > 0.0f ? 1 : (f20 == 0.0f ? 0 : -1));
        if (i11 != 0) {
            radians += (double) ((1.0f - f20) * f19);
        }
        float fFloatValue2 = ((Float) this.f12469n.h()).floatValue();
        float fFloatValue3 = ((Float) this.f12468m.h()).floatValue();
        j1.a aVar = this.f12470o;
        float fFloatValue4 = aVar != null ? ((Float) aVar.h()).floatValue() / 100.0f : 0.0f;
        j1.a aVar2 = this.f12471p;
        float fFloatValue5 = aVar2 != null ? ((Float) aVar2.h()).floatValue() / 100.0f : 0.0f;
        if (i11 != 0) {
            f12 = ((fFloatValue2 - fFloatValue3) * f20) + fFloatValue3;
            i10 = i11;
            double d14 = f12;
            float fCos = (float) (d14 * Math.cos(radians));
            fSin = (float) (d14 * Math.sin(radians));
            this.f12456a.moveTo(fCos, fSin);
            d10 = radians + ((double) ((f18 * f20) / 2.0f));
            f10 = fCos;
            f11 = f19;
        } else {
            i10 = i11;
            double d15 = fFloatValue2;
            float fCos2 = (float) (Math.cos(radians) * d15);
            float fSin2 = (float) (d15 * Math.sin(radians));
            this.f12456a.moveTo(fCos2, fSin2);
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
                PointF pointF = (PointF) this.f12466k.h();
                this.f12456a.offset(pointF.x, pointF.y);
                this.f12456a.close();
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
                this.f12456a.lineTo(fCos3, fSin3);
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
                this.f12456a.cubicTo(f22 - f27, fSin - f28, fCos3 + f30, fSin3 + f31, fCos3, fSin3);
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
        this.f12473r = false;
        this.f12461f.invalidateSelf();
    }

    @Override // i1.m
    public Path a() {
        if (this.f12473r) {
            return this.f12456a;
        }
        this.f12456a.reset();
        if (this.f12463h) {
            this.f12473r = true;
            return this.f12456a;
        }
        int i10 = a.f12474a[this.f12462g.ordinal()];
        if (i10 == 1) {
            j();
        } else if (i10 == 2) {
            e();
        }
        this.f12456a.close();
        this.f12472q.b(this.f12456a);
        this.f12473r = true;
        return this.f12456a;
    }

    @Override // j1.a.b
    public void c() {
        k();
    }

    @Override // i1.c
    public void d(List list, List list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVar = (c) list.get(i10);
            if (cVar instanceof u) {
                u uVar = (u) cVar;
                if (uVar.k() == t.a.SIMULTANEOUSLY) {
                    this.f12472q.a(uVar);
                    uVar.e(this);
                }
            }
        }
    }

    @Override // l1.f
    public void g(l1.e eVar, int i10, List list, l1.e eVar2) {
        r1.i.k(eVar, i10, list, eVar2, this);
    }

    @Override // i1.c
    public String getName() {
        return this.f12460e;
    }

    @Override // l1.f
    public void h(Object obj, s1.c cVar) {
        j1.a aVar;
        j1.a aVar2;
        if (obj == m0.f4639w) {
            this.f12465j.o(cVar);
            return;
        }
        if (obj == m0.f4640x) {
            this.f12467l.o(cVar);
            return;
        }
        if (obj == m0.f4630n) {
            this.f12466k.o(cVar);
            return;
        }
        if (obj == m0.f4641y && (aVar2 = this.f12468m) != null) {
            aVar2.o(cVar);
            return;
        }
        if (obj == m0.f4642z) {
            this.f12469n.o(cVar);
            return;
        }
        if (obj == m0.A && (aVar = this.f12470o) != null) {
            aVar.o(cVar);
        } else if (obj == m0.B) {
            this.f12471p.o(cVar);
        }
    }
}
