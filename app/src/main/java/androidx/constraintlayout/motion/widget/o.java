package androidx.constraintlayout.motion.widget;

import android.view.View;
import androidx.constraintlayout.widget.c;
import java.util.Arrays;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
class o implements Comparable {

    /* JADX INFO: renamed from: w */
    static String[] f1409w = {"position", "x", "y", "width", "height", "pathRotate"};

    /* JADX INFO: renamed from: a */
    m.c f1410a;

    /* JADX INFO: renamed from: c */
    float f1412c;

    /* JADX INFO: renamed from: f */
    float f1413f;

    /* JADX INFO: renamed from: h */
    float f1414h;

    /* JADX INFO: renamed from: i */
    float f1415i;

    /* JADX INFO: renamed from: j */
    float f1416j;

    /* JADX INFO: renamed from: k */
    float f1417k;

    /* JADX INFO: renamed from: n */
    int f1420n;

    /* JADX INFO: renamed from: o */
    int f1421o;

    /* JADX INFO: renamed from: p */
    float f1422p;

    /* JADX INFO: renamed from: q */
    m f1423q;

    /* JADX INFO: renamed from: r */
    LinkedHashMap f1424r;

    /* JADX INFO: renamed from: s */
    int f1425s;

    /* JADX INFO: renamed from: t */
    int f1426t;

    /* JADX INFO: renamed from: u */
    double[] f1427u;

    /* JADX INFO: renamed from: v */
    double[] f1428v;

    /* JADX INFO: renamed from: b */
    int f1411b = 0;

    /* JADX INFO: renamed from: l */
    float f1418l = Float.NaN;

    /* JADX INFO: renamed from: m */
    float f1419m = Float.NaN;

    o() {
        int i10 = d.f1258f;
        this.f1420n = i10;
        this.f1421o = i10;
        this.f1422p = Float.NaN;
        this.f1423q = null;
        this.f1424r = new LinkedHashMap();
        this.f1425s = 0;
        this.f1427u = new double[18];
        this.f1428v = new double[18];
    }

    private boolean c(float f10, float f11) {
        return (Float.isNaN(f10) || Float.isNaN(f11)) ? Float.isNaN(f10) != Float.isNaN(f11) : Math.abs(f10 - f11) > 1.0E-6f;
    }

    public void a(c.a aVar) {
        this.f1410a = m.c.c(aVar.f1730d.f1795d);
        c.C0012c c0012c = aVar.f1730d;
        this.f1420n = c0012c.f1796e;
        this.f1421o = c0012c.f1793b;
        this.f1418l = c0012c.f1800i;
        this.f1411b = c0012c.f1797f;
        this.f1426t = c0012c.f1794c;
        this.f1419m = aVar.f1729c.f1810e;
        this.f1422p = aVar.f1731e.D;
        for (String str : aVar.f1733g.keySet()) {
            androidx.constraintlayout.widget.a aVar2 = (androidx.constraintlayout.widget.a) aVar.f1733g.get(str);
            if (aVar2 != null && aVar2.g()) {
                this.f1424r.put(str, aVar2);
            }
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: b */
    public int compareTo(o oVar) {
        return Float.compare(this.f1413f, oVar.f1413f);
    }

    void d(o oVar, boolean[] zArr, String[] strArr, boolean z10) {
        boolean zC = c(this.f1414h, oVar.f1414h);
        boolean zC2 = c(this.f1415i, oVar.f1415i);
        zArr[0] = zArr[0] | c(this.f1413f, oVar.f1413f);
        boolean z11 = zC | zC2 | z10;
        zArr[1] = zArr[1] | z11;
        zArr[2] = z11 | zArr[2];
        zArr[3] = zArr[3] | c(this.f1416j, oVar.f1416j);
        zArr[4] = c(this.f1417k, oVar.f1417k) | zArr[4];
    }

    void e(double[] dArr, int[] iArr) {
        float[] fArr = {this.f1413f, this.f1414h, this.f1415i, this.f1416j, this.f1417k, this.f1418l};
        int i10 = 0;
        for (int i11 : iArr) {
            if (i11 < 6) {
                dArr[i10] = fArr[r1];
                i10++;
            }
        }
    }

    void f(double d10, int[] iArr, double[] dArr, float[] fArr, int i10) {
        float f10 = this.f1414h;
        float fCos = this.f1415i;
        float f11 = this.f1416j;
        float f12 = this.f1417k;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            float f13 = (float) dArr[i11];
            int i12 = iArr[i11];
            if (i12 == 1) {
                f10 = f13;
            } else if (i12 == 2) {
                fCos = f13;
            } else if (i12 == 3) {
                f11 = f13;
            } else if (i12 == 4) {
                f12 = f13;
            }
        }
        m mVar = this.f1423q;
        if (mVar != null) {
            float[] fArr2 = new float[2];
            mVar.i(d10, fArr2, new float[2]);
            float f14 = fArr2[0];
            float f15 = fArr2[1];
            double d11 = f10;
            double d12 = fCos;
            float fSin = (float) ((((double) f14) + (Math.sin(d12) * d11)) - ((double) (f11 / 2.0f)));
            fCos = (float) ((((double) f15) - (d11 * Math.cos(d12))) - ((double) (f12 / 2.0f)));
            f10 = fSin;
        }
        fArr[i10] = f10 + (f11 / 2.0f) + 0.0f;
        fArr[i10 + 1] = fCos + (f12 / 2.0f) + 0.0f;
    }

    void g(double d10, int[] iArr, double[] dArr, float[] fArr, double[] dArr2, float[] fArr2) {
        float f10;
        float f11;
        float f12 = this.f1414h;
        float f13 = this.f1415i;
        float f14 = this.f1416j;
        float f15 = this.f1417k;
        float f16 = 0.0f;
        float f17 = 0.0f;
        float f18 = 0.0f;
        float f19 = 0.0f;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f20 = (float) dArr[i10];
            float f21 = (float) dArr2[i10];
            int i11 = iArr[i10];
            if (i11 == 1) {
                f12 = f20;
                f16 = f21;
            } else if (i11 == 2) {
                f13 = f20;
                f18 = f21;
            } else if (i11 == 3) {
                f14 = f20;
                f17 = f21;
            } else if (i11 == 4) {
                f15 = f20;
                f19 = f21;
            }
        }
        float f22 = (f17 / 2.0f) + f16;
        float fCos = (f19 / 2.0f) + f18;
        m mVar = this.f1423q;
        if (mVar != null) {
            float[] fArr3 = new float[2];
            float[] fArr4 = new float[2];
            mVar.i(d10, fArr3, fArr4);
            float f23 = fArr3[0];
            float f24 = fArr3[1];
            float f25 = fArr4[0];
            float f26 = fArr4[1];
            double d11 = f12;
            double d12 = f13;
            f10 = f14;
            float fSin = (float) ((((double) f23) + (Math.sin(d12) * d11)) - ((double) (f14 / 2.0f)));
            float fCos2 = (float) ((((double) f24) - (d11 * Math.cos(d12))) - ((double) (f15 / 2.0f)));
            double d13 = f16;
            double d14 = f18;
            float fSin2 = (float) (((double) f25) + (Math.sin(d12) * d13) + (Math.cos(d12) * d14));
            fCos = (float) ((((double) f26) - (d13 * Math.cos(d12))) + (Math.sin(d12) * d14));
            f12 = fSin;
            f13 = fCos2;
            f22 = fSin2;
            f11 = 2.0f;
        } else {
            f10 = f14;
            f11 = 2.0f;
        }
        fArr[0] = f12 + (f10 / f11) + 0.0f;
        fArr[1] = f13 + (f15 / f11) + 0.0f;
        fArr2[0] = f22;
        fArr2[1] = fCos;
    }

    int h(String str, double[] dArr, int i10) {
        androidx.constraintlayout.widget.a aVar = (androidx.constraintlayout.widget.a) this.f1424r.get(str);
        int i11 = 0;
        if (aVar == null) {
            return 0;
        }
        if (aVar.h() == 1) {
            dArr[i10] = aVar.e();
            return 1;
        }
        int iH = aVar.h();
        aVar.f(new float[iH]);
        while (i11 < iH) {
            dArr[i10] = r1[i11];
            i11++;
            i10++;
        }
        return iH;
    }

    int i(String str) {
        androidx.constraintlayout.widget.a aVar = (androidx.constraintlayout.widget.a) this.f1424r.get(str);
        if (aVar == null) {
            return 0;
        }
        return aVar.h();
    }

    void j(int[] iArr, double[] dArr, float[] fArr, int i10) {
        float f10 = this.f1414h;
        float fCos = this.f1415i;
        float f11 = this.f1416j;
        float f12 = this.f1417k;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            float f13 = (float) dArr[i11];
            int i12 = iArr[i11];
            if (i12 == 1) {
                f10 = f13;
            } else if (i12 == 2) {
                fCos = f13;
            } else if (i12 == 3) {
                f11 = f13;
            } else if (i12 == 4) {
                f12 = f13;
            }
        }
        m mVar = this.f1423q;
        if (mVar != null) {
            float fJ = mVar.j();
            float fK = this.f1423q.k();
            double d10 = f10;
            double d11 = fCos;
            float fSin = (float) ((((double) fJ) + (Math.sin(d11) * d10)) - ((double) (f11 / 2.0f)));
            fCos = (float) ((((double) fK) - (d10 * Math.cos(d11))) - ((double) (f12 / 2.0f)));
            f10 = fSin;
        }
        float f14 = f11 + f10;
        float f15 = f12 + fCos;
        Float.isNaN(Float.NaN);
        Float.isNaN(Float.NaN);
        fArr[i10] = f10 + 0.0f;
        fArr[i10 + 1] = fCos + 0.0f;
        fArr[i10 + 2] = f14 + 0.0f;
        fArr[i10 + 3] = fCos + 0.0f;
        fArr[i10 + 4] = f14 + 0.0f;
        fArr[i10 + 5] = f15 + 0.0f;
        fArr[i10 + 6] = f10 + 0.0f;
        fArr[i10 + 7] = f15 + 0.0f;
    }

    boolean k(String str) {
        return this.f1424r.containsKey(str);
    }

    void l(h hVar, o oVar, o oVar2) {
        float f10 = hVar.f1259a / 100.0f;
        this.f1412c = f10;
        this.f1411b = hVar.f1307j;
        float f11 = Float.isNaN(hVar.f1308k) ? f10 : hVar.f1308k;
        float f12 = Float.isNaN(hVar.f1309l) ? f10 : hVar.f1309l;
        float f13 = oVar2.f1416j;
        float f14 = oVar.f1416j;
        float f15 = f13 - f14;
        float f16 = oVar2.f1417k;
        float f17 = oVar.f1417k;
        float f18 = f16 - f17;
        this.f1413f = this.f1412c;
        float f19 = (f14 / 2.0f) + oVar.f1414h;
        float f20 = oVar.f1415i + (f17 / 2.0f);
        float f21 = oVar2.f1414h + (f13 / 2.0f);
        float f22 = oVar2.f1415i + (f16 / 2.0f);
        if (f19 > f21) {
            f19 = f21;
            f21 = f19;
        }
        if (f20 <= f22) {
            f20 = f22;
            f22 = f20;
        }
        float f23 = f21 - f19;
        float f24 = f20 - f22;
        float f25 = (f15 * f11) / 2.0f;
        this.f1414h = (int) ((r13 + (f23 * f10)) - f25);
        float f26 = (f18 * f12) / 2.0f;
        this.f1415i = (int) ((r1 + (f24 * f10)) - f26);
        this.f1416j = (int) (f14 + r9);
        this.f1417k = (int) (f17 + r12);
        float f27 = Float.isNaN(hVar.f1310m) ? f10 : hVar.f1310m;
        float f28 = Float.isNaN(hVar.f1313p) ? 0.0f : hVar.f1313p;
        if (!Float.isNaN(hVar.f1311n)) {
            f10 = hVar.f1311n;
        }
        float f29 = Float.isNaN(hVar.f1312o) ? 0.0f : hVar.f1312o;
        this.f1425s = 0;
        this.f1414h = (int) (((oVar.f1414h + (f27 * f23)) + (f29 * f24)) - f25);
        this.f1415i = (int) (((oVar.f1415i + (f23 * f28)) + (f24 * f10)) - f26);
        this.f1410a = m.c.c(hVar.f1305h);
        this.f1420n = hVar.f1306i;
    }

    void m(h hVar, o oVar, o oVar2) {
        float f10 = hVar.f1259a / 100.0f;
        this.f1412c = f10;
        this.f1411b = hVar.f1307j;
        float f11 = Float.isNaN(hVar.f1308k) ? f10 : hVar.f1308k;
        float f12 = Float.isNaN(hVar.f1309l) ? f10 : hVar.f1309l;
        float f13 = oVar2.f1416j;
        float f14 = oVar.f1416j;
        float f15 = oVar2.f1417k;
        float f16 = oVar.f1417k;
        this.f1413f = this.f1412c;
        float f17 = oVar.f1414h;
        float f18 = oVar.f1415i;
        float f19 = (oVar2.f1414h + (f13 / 2.0f)) - ((f14 / 2.0f) + f17);
        float f20 = (oVar2.f1415i + (f15 / 2.0f)) - (f18 + (f16 / 2.0f));
        float f21 = ((f13 - f14) * f11) / 2.0f;
        this.f1414h = (int) ((f17 + (f19 * f10)) - f21);
        float f22 = ((f15 - f16) * f12) / 2.0f;
        this.f1415i = (int) ((f18 + (f20 * f10)) - f22);
        this.f1416j = (int) (f14 + r9);
        this.f1417k = (int) (f16 + r12);
        float f23 = Float.isNaN(hVar.f1310m) ? f10 : hVar.f1310m;
        float f24 = Float.isNaN(hVar.f1313p) ? 0.0f : hVar.f1313p;
        if (!Float.isNaN(hVar.f1311n)) {
            f10 = hVar.f1311n;
        }
        float f25 = Float.isNaN(hVar.f1312o) ? 0.0f : hVar.f1312o;
        this.f1425s = 0;
        this.f1414h = (int) (((oVar.f1414h + (f23 * f19)) + (f25 * f20)) - f21);
        this.f1415i = (int) (((oVar.f1415i + (f19 * f24)) + (f20 * f10)) - f22);
        this.f1410a = m.c.c(hVar.f1305h);
        this.f1420n = hVar.f1306i;
    }

    void n(h hVar, o oVar, o oVar2) {
        float f10 = hVar.f1259a / 100.0f;
        this.f1412c = f10;
        this.f1411b = hVar.f1307j;
        float f11 = Float.isNaN(hVar.f1308k) ? f10 : hVar.f1308k;
        float f12 = Float.isNaN(hVar.f1309l) ? f10 : hVar.f1309l;
        float f13 = oVar2.f1416j - oVar.f1416j;
        float f14 = oVar2.f1417k - oVar.f1417k;
        this.f1413f = this.f1412c;
        if (!Float.isNaN(hVar.f1310m)) {
            f10 = hVar.f1310m;
        }
        float f15 = oVar.f1414h;
        float f16 = oVar.f1416j;
        float f17 = oVar.f1415i;
        float f18 = oVar.f1417k;
        float f19 = (oVar2.f1414h + (oVar2.f1416j / 2.0f)) - ((f16 / 2.0f) + f15);
        float f20 = (oVar2.f1415i + (oVar2.f1417k / 2.0f)) - ((f18 / 2.0f) + f17);
        float f21 = f19 * f10;
        float f22 = (f13 * f11) / 2.0f;
        this.f1414h = (int) ((f15 + f21) - f22);
        float f23 = f10 * f20;
        float f24 = (f14 * f12) / 2.0f;
        this.f1415i = (int) ((f17 + f23) - f24);
        this.f1416j = (int) (f16 + r7);
        this.f1417k = (int) (f18 + r8);
        float f25 = Float.isNaN(hVar.f1311n) ? 0.0f : hVar.f1311n;
        this.f1425s = 1;
        float f26 = (int) ((oVar.f1414h + f21) - f22);
        float f27 = (int) ((oVar.f1415i + f23) - f24);
        this.f1414h = f26 + ((-f20) * f25);
        this.f1415i = f27 + (f19 * f25);
        this.f1421o = this.f1421o;
        this.f1410a = m.c.c(hVar.f1305h);
        this.f1420n = hVar.f1306i;
    }

    void o(int i10, int i11, h hVar, o oVar, o oVar2) {
        float fMin;
        float f10;
        float f11 = hVar.f1259a / 100.0f;
        this.f1412c = f11;
        this.f1411b = hVar.f1307j;
        this.f1425s = hVar.f1314q;
        float f12 = Float.isNaN(hVar.f1308k) ? f11 : hVar.f1308k;
        float f13 = Float.isNaN(hVar.f1309l) ? f11 : hVar.f1309l;
        float f14 = oVar2.f1416j;
        float f15 = oVar.f1416j;
        float f16 = oVar2.f1417k;
        float f17 = oVar.f1417k;
        this.f1413f = this.f1412c;
        this.f1416j = (int) (f15 + ((f14 - f15) * f12));
        this.f1417k = (int) (f17 + ((f16 - f17) * f13));
        if (hVar.f1314q != 2) {
            float f18 = Float.isNaN(hVar.f1310m) ? f11 : hVar.f1310m;
            float f19 = oVar2.f1414h;
            float f20 = oVar.f1414h;
            this.f1414h = (f18 * (f19 - f20)) + f20;
            if (!Float.isNaN(hVar.f1311n)) {
                f11 = hVar.f1311n;
            }
            float f21 = oVar2.f1415i;
            float f22 = oVar.f1415i;
            this.f1415i = (f11 * (f21 - f22)) + f22;
        } else {
            if (Float.isNaN(hVar.f1310m)) {
                float f23 = oVar2.f1414h;
                float f24 = oVar.f1414h;
                fMin = ((f23 - f24) * f11) + f24;
            } else {
                fMin = Math.min(f13, f12) * hVar.f1310m;
            }
            this.f1414h = fMin;
            if (Float.isNaN(hVar.f1311n)) {
                float f25 = oVar2.f1415i;
                float f26 = oVar.f1415i;
                f10 = (f11 * (f25 - f26)) + f26;
            } else {
                f10 = hVar.f1311n;
            }
            this.f1415i = f10;
        }
        this.f1421o = oVar.f1421o;
        this.f1410a = m.c.c(hVar.f1305h);
        this.f1420n = hVar.f1306i;
    }

    void p(int i10, int i11, h hVar, o oVar, o oVar2) {
        float f10 = hVar.f1259a / 100.0f;
        this.f1412c = f10;
        this.f1411b = hVar.f1307j;
        float f11 = Float.isNaN(hVar.f1308k) ? f10 : hVar.f1308k;
        float f12 = Float.isNaN(hVar.f1309l) ? f10 : hVar.f1309l;
        float f13 = oVar2.f1416j;
        float f14 = oVar.f1416j;
        float f15 = oVar2.f1417k;
        float f16 = oVar.f1417k;
        this.f1413f = this.f1412c;
        float f17 = oVar.f1414h;
        float f18 = oVar.f1415i;
        float f19 = oVar2.f1414h + (f13 / 2.0f);
        float f20 = oVar2.f1415i + (f15 / 2.0f);
        float f21 = (f13 - f14) * f11;
        this.f1414h = (int) ((f17 + ((f19 - ((f14 / 2.0f) + f17)) * f10)) - (f21 / 2.0f));
        float f22 = (f15 - f16) * f12;
        this.f1415i = (int) ((f18 + ((f20 - (f18 + (f16 / 2.0f))) * f10)) - (f22 / 2.0f));
        this.f1416j = (int) (f14 + f21);
        this.f1417k = (int) (f16 + f22);
        this.f1425s = 2;
        if (!Float.isNaN(hVar.f1310m)) {
            this.f1414h = (int) (hVar.f1310m * (i10 - ((int) this.f1416j)));
        }
        if (!Float.isNaN(hVar.f1311n)) {
            this.f1415i = (int) (hVar.f1311n * (i11 - ((int) this.f1417k)));
        }
        this.f1421o = this.f1421o;
        this.f1410a = m.c.c(hVar.f1305h);
        this.f1420n = hVar.f1306i;
    }

    void q(float f10, float f11, float f12, float f13) {
        this.f1414h = f10;
        this.f1415i = f11;
        this.f1416j = f12;
        this.f1417k = f13;
    }

    void r(float f10, float f11, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f16 = (float) dArr[i10];
            double d10 = dArr2[i10];
            int i11 = iArr[i10];
            if (i11 == 1) {
                f12 = f16;
            } else if (i11 == 2) {
                f14 = f16;
            } else if (i11 == 3) {
                f13 = f16;
            } else if (i11 == 4) {
                f15 = f16;
            }
        }
        float f17 = f12 - ((0.0f * f13) / 2.0f);
        float f18 = f14 - ((0.0f * f15) / 2.0f);
        fArr[0] = (f17 * (1.0f - f10)) + (((f13 * 1.0f) + f17) * f10) + 0.0f;
        fArr[1] = (f18 * (1.0f - f11)) + (((f15 * 1.0f) + f18) * f11) + 0.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void s(float f10, View view, int[] iArr, double[] dArr, double[] dArr2, double[] dArr3, boolean z10) {
        float f11;
        float f12;
        float f13 = this.f1414h;
        float f14 = this.f1415i;
        float f15 = this.f1416j;
        float f16 = this.f1417k;
        if (iArr.length != 0 && this.f1427u.length <= iArr[iArr.length - 1]) {
            int i10 = iArr[iArr.length - 1] + 1;
            this.f1427u = new double[i10];
            this.f1428v = new double[i10];
        }
        Arrays.fill(this.f1427u, Double.NaN);
        for (int i11 = 0; i11 < iArr.length; i11++) {
            double[] dArr4 = this.f1427u;
            int i12 = iArr[i11];
            dArr4[i12] = dArr[i11];
            this.f1428v[i12] = dArr2[i11];
        }
        float f17 = Float.NaN;
        int i13 = 0;
        float f18 = 0.0f;
        float f19 = 0.0f;
        float f20 = 0.0f;
        float f21 = 0.0f;
        while (true) {
            double[] dArr5 = this.f1427u;
            if (i13 >= dArr5.length) {
                break;
            }
            if (Double.isNaN(dArr5[i13]) && (dArr3 == null || dArr3[i13] == 0.0d)) {
                f12 = f17;
            } else {
                double d10 = dArr3 != null ? dArr3[i13] : 0.0d;
                if (!Double.isNaN(this.f1427u[i13])) {
                    d10 = this.f1427u[i13] + d10;
                }
                f12 = f17;
                float f22 = (float) d10;
                float f23 = (float) this.f1428v[i13];
                if (i13 == 1) {
                    f17 = f12;
                    f13 = f22;
                    f18 = f23;
                } else if (i13 == 2) {
                    f17 = f12;
                    f14 = f22;
                    f19 = f23;
                } else if (i13 == 3) {
                    f17 = f12;
                    f15 = f22;
                    f20 = f23;
                } else if (i13 == 4) {
                    f17 = f12;
                    f16 = f22;
                    f21 = f23;
                } else if (i13 == 5) {
                    f17 = f22;
                }
                i13++;
            }
            f17 = f12;
            i13++;
        }
        float f24 = f17;
        m mVar = this.f1423q;
        if (mVar != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            mVar.i(f10, fArr, fArr2);
            float f25 = fArr[0];
            float f26 = fArr[1];
            float f27 = fArr2[0];
            float f28 = fArr2[1];
            double d11 = f13;
            double d12 = f14;
            float fSin = (float) ((((double) f25) + (Math.sin(d12) * d11)) - ((double) (f15 / 2.0f)));
            f11 = f16;
            float fCos = (float) ((((double) f26) - (Math.cos(d12) * d11)) - ((double) (f16 / 2.0f)));
            double d13 = f18;
            double d14 = f19;
            float fSin2 = (float) (((double) f27) + (Math.sin(d12) * d13) + (Math.cos(d12) * d11 * d14));
            float fCos2 = (float) ((((double) f28) - (d13 * Math.cos(d12))) + (d11 * Math.sin(d12) * d14));
            if (dArr2.length >= 2) {
                dArr2[0] = fSin2;
                dArr2[1] = fCos2;
            }
            if (!Float.isNaN(f24)) {
                view.setRotation((float) (((double) f24) + Math.toDegrees(Math.atan2(fCos2, fSin2))));
            }
            f13 = fSin;
            f14 = fCos;
        } else {
            f11 = f16;
            if (!Float.isNaN(f24)) {
                view.setRotation(f24 + ((float) Math.toDegrees(Math.atan2(f19 + (f21 / 2.0f), f18 + (f20 / 2.0f)))) + 0.0f);
            }
        }
        if (view instanceof c) {
            ((c) view).a(f13, f14, f15 + f13, f14 + f11);
            return;
        }
        float f29 = f13 + 0.5f;
        int i14 = (int) f29;
        float f30 = f14 + 0.5f;
        int i15 = (int) f30;
        int i16 = (int) (f29 + f15);
        int i17 = (int) (f30 + f11);
        int i18 = i16 - i14;
        int i19 = i17 - i15;
        if (i18 != view.getMeasuredWidth() || i19 != view.getMeasuredHeight() || z10) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i18, 1073741824), View.MeasureSpec.makeMeasureSpec(i19, 1073741824));
        }
        view.layout(i14, i15, i16, i17);
    }

    public void t(m mVar, o oVar) {
        double d10 = ((this.f1414h + (this.f1416j / 2.0f)) - oVar.f1414h) - (oVar.f1416j / 2.0f);
        double d11 = ((this.f1415i + (this.f1417k / 2.0f)) - oVar.f1415i) - (oVar.f1417k / 2.0f);
        this.f1423q = mVar;
        this.f1414h = (float) Math.hypot(d11, d10);
        if (Float.isNaN(this.f1422p)) {
            this.f1415i = (float) (Math.atan2(d11, d10) + 1.5707963267948966d);
        } else {
            this.f1415i = (float) Math.toRadians(this.f1422p);
        }
    }

    o(int i10, int i11, h hVar, o oVar, o oVar2) {
        int i12 = d.f1258f;
        this.f1420n = i12;
        this.f1421o = i12;
        this.f1422p = Float.NaN;
        this.f1423q = null;
        this.f1424r = new LinkedHashMap();
        this.f1425s = 0;
        this.f1427u = new double[18];
        this.f1428v = new double[18];
        if (oVar.f1421o != d.f1258f) {
            o(i10, i11, hVar, oVar, oVar2);
            return;
        }
        int i13 = hVar.f1314q;
        if (i13 == 1) {
            n(hVar, oVar, oVar2);
            return;
        }
        if (i13 == 2) {
            p(i10, i11, hVar, oVar, oVar2);
        } else if (i13 != 3) {
            m(hVar, oVar, oVar2);
        } else {
            l(hVar, oVar, oVar2);
        }
    }
}
