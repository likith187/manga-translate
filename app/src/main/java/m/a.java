package m;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class a extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final double[] f13674a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    C0179a[] f13675b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f13676c = true;

    /* JADX INFO: renamed from: m.a$a, reason: collision with other inner class name */
    private static class C0179a {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private static double[] f13677s = new double[91];

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        double[] f13678a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        double f13679b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        double f13680c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        double f13681d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        double f13682e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        double f13683f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        double f13684g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        double f13685h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        double f13686i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        double f13687j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        double f13688k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        double f13689l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        double f13690m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        double f13691n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        double f13692o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        double f13693p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        boolean f13694q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        boolean f13695r;

        C0179a(int i10, double d10, double d11, double d12, double d13, double d14, double d15) {
            this.f13695r = false;
            double d16 = d14 - d12;
            double d17 = d15 - d13;
            if (i10 == 1) {
                this.f13694q = true;
            } else if (i10 == 4) {
                this.f13694q = d17 > 0.0d;
            } else if (i10 != 5) {
                this.f13694q = false;
            } else {
                this.f13694q = d17 < 0.0d;
            }
            this.f13680c = d10;
            this.f13681d = d11;
            this.f13686i = 1.0d / (d11 - d10);
            if (3 == i10) {
                this.f13695r = true;
            }
            if (!this.f13695r && Math.abs(d16) >= 0.001d && Math.abs(d17) >= 0.001d) {
                this.f13678a = new double[101];
                boolean z10 = this.f13694q;
                this.f13687j = d16 * ((double) (z10 ? -1 : 1));
                this.f13688k = d17 * ((double) (z10 ? 1 : -1));
                this.f13689l = z10 ? d14 : d12;
                this.f13690m = z10 ? d13 : d15;
                a(d12, d13, d14, d15);
                this.f13691n = this.f13679b * this.f13686i;
                return;
            }
            this.f13695r = true;
            this.f13682e = d12;
            this.f13683f = d14;
            this.f13684g = d13;
            this.f13685h = d15;
            double dHypot = Math.hypot(d17, d16);
            this.f13679b = dHypot;
            this.f13691n = dHypot * this.f13686i;
            double d18 = this.f13681d;
            double d19 = this.f13680c;
            this.f13689l = d16 / (d18 - d19);
            this.f13690m = d17 / (d18 - d19);
        }

        private void a(double d10, double d11, double d12, double d13) {
            double dHypot;
            double d14 = d12 - d10;
            double d15 = d11 - d13;
            int i10 = 0;
            double d16 = 0.0d;
            double d17 = 0.0d;
            double d18 = 0.0d;
            while (true) {
                if (i10 >= f13677s.length) {
                    break;
                }
                double d19 = d16;
                double radians = Math.toRadians((((double) i10) * 90.0d) / ((double) (r15.length - 1)));
                double dSin = Math.sin(radians) * d14;
                double dCos = Math.cos(radians) * d15;
                if (i10 > 0) {
                    dHypot = Math.hypot(dSin - d17, dCos - d18) + d19;
                    f13677s[i10] = dHypot;
                } else {
                    dHypot = d19;
                }
                i10++;
                d18 = dCos;
                d16 = dHypot;
                d17 = dSin;
            }
            double d20 = d16;
            this.f13679b = d20;
            int i11 = 0;
            while (true) {
                double[] dArr = f13677s;
                if (i11 >= dArr.length) {
                    break;
                }
                dArr[i11] = dArr[i11] / d20;
                i11++;
            }
            int i12 = 0;
            while (true) {
                if (i12 >= this.f13678a.length) {
                    return;
                }
                double length = ((double) i12) / ((double) (r1.length - 1));
                int iBinarySearch = Arrays.binarySearch(f13677s, length);
                if (iBinarySearch >= 0) {
                    this.f13678a[i12] = ((double) iBinarySearch) / ((double) (f13677s.length - 1));
                } else if (iBinarySearch == -1) {
                    this.f13678a[i12] = 0.0d;
                } else {
                    int i13 = -iBinarySearch;
                    int i14 = i13 - 2;
                    double[] dArr2 = f13677s;
                    double d21 = dArr2[i14];
                    this.f13678a[i12] = (((double) i14) + ((length - d21) / (dArr2[i13 - 1] - d21))) / ((double) (dArr2.length - 1));
                }
                i12++;
            }
        }

        double b() {
            double d10 = this.f13687j * this.f13693p;
            double dHypot = this.f13691n / Math.hypot(d10, (-this.f13688k) * this.f13692o);
            if (this.f13694q) {
                d10 = -d10;
            }
            return d10 * dHypot;
        }

        double c() {
            double d10 = this.f13687j * this.f13693p;
            double d11 = (-this.f13688k) * this.f13692o;
            double dHypot = this.f13691n / Math.hypot(d10, d11);
            return this.f13694q ? (-d11) * dHypot : d11 * dHypot;
        }

        public double d(double d10) {
            return this.f13689l;
        }

        public double e(double d10) {
            return this.f13690m;
        }

        public double f(double d10) {
            double d11 = (d10 - this.f13680c) * this.f13686i;
            double d12 = this.f13682e;
            return d12 + (d11 * (this.f13683f - d12));
        }

        public double g(double d10) {
            double d11 = (d10 - this.f13680c) * this.f13686i;
            double d12 = this.f13684g;
            return d12 + (d11 * (this.f13685h - d12));
        }

        double h() {
            return this.f13689l + (this.f13687j * this.f13692o);
        }

        double i() {
            return this.f13690m + (this.f13688k * this.f13693p);
        }

        double j(double d10) {
            if (d10 <= 0.0d) {
                return 0.0d;
            }
            if (d10 >= 1.0d) {
                return 1.0d;
            }
            double[] dArr = this.f13678a;
            double length = d10 * ((double) (dArr.length - 1));
            int i10 = (int) length;
            double d11 = length - ((double) i10);
            double d12 = dArr[i10];
            return d12 + (d11 * (dArr[i10 + 1] - d12));
        }

        void k(double d10) {
            double dJ = j((this.f13694q ? this.f13681d - d10 : d10 - this.f13680c) * this.f13686i) * 1.5707963267948966d;
            this.f13692o = Math.sin(dJ);
            this.f13693p = Math.cos(dJ);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002e A[PHI: r9
      0x002e: PHI (r9v1 int) = (r9v0 int), (r9v3 int), (r9v4 int) binds: [B:6:0x001e, B:12:0x0028, B:14:0x002b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public a(int[] r25, double[] r26, double[][] r27) {
        /*
            r24 = this;
            r0 = r24
            r1 = r26
            r24.<init>()
            r2 = 1
            r0.f13676c = r2
            r0.f13674a = r1
            int r3 = r1.length
            int r3 = r3 - r2
            m.a$a[] r3 = new m.a.C0179a[r3]
            r0.f13675b = r3
            r3 = 0
            r5 = r2
            r6 = r5
            r4 = r3
        L16:
            m.a$a[] r7 = r0.f13675b
            int r8 = r7.length
            if (r4 >= r8) goto L58
            r8 = r25[r4]
            r9 = 3
            if (r8 == 0) goto L2e
            if (r8 == r2) goto L37
            r10 = 2
            if (r8 == r10) goto L35
            if (r8 == r9) goto L30
            r9 = 4
            if (r8 == r9) goto L2e
            r9 = 5
            if (r8 == r9) goto L2e
            goto L39
        L2e:
            r6 = r9
            goto L39
        L30:
            if (r5 != r2) goto L37
            goto L35
        L33:
            r6 = r5
            goto L39
        L35:
            r5 = r10
            goto L33
        L37:
            r5 = r2
            goto L33
        L39:
            m.a$a r22 = new m.a$a
            r10 = r1[r4]
            int r23 = r4 + 1
            r12 = r1[r23]
            r8 = r27[r4]
            r14 = r8[r3]
            r16 = r8[r2]
            r8 = r27[r23]
            r18 = r8[r3]
            r20 = r8[r2]
            r8 = r22
            r9 = r6
            r8.<init>(r9, r10, r12, r14, r16, r18, r20)
            r7[r4] = r22
            r4 = r23
            goto L16
        L58:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: m.a.<init>(int[], double[], double[][]):void");
    }

    @Override // m.b
    public double c(double d10, int i10) {
        double dG;
        double dE;
        double dI;
        double dC;
        double dG2;
        double dE2;
        int i11 = 0;
        if (this.f13676c) {
            C0179a[] c0179aArr = this.f13675b;
            C0179a c0179a = c0179aArr[0];
            double d11 = c0179a.f13680c;
            if (d10 < d11) {
                double d12 = d10 - d11;
                if (c0179a.f13695r) {
                    if (i10 == 0) {
                        dG2 = c0179a.f(d11);
                        dE2 = this.f13675b[0].d(d11);
                    } else {
                        dG2 = c0179a.g(d11);
                        dE2 = this.f13675b[0].e(d11);
                    }
                    return dG2 + (d12 * dE2);
                }
                c0179a.k(d11);
                if (i10 == 0) {
                    dI = this.f13675b[0].h();
                    dC = this.f13675b[0].b();
                } else {
                    dI = this.f13675b[0].i();
                    dC = this.f13675b[0].c();
                }
                return dI + (d12 * dC);
            }
            if (d10 > c0179aArr[c0179aArr.length - 1].f13681d) {
                double d13 = c0179aArr[c0179aArr.length - 1].f13681d;
                double d14 = d10 - d13;
                int length = c0179aArr.length - 1;
                if (i10 == 0) {
                    dG = c0179aArr[length].f(d13);
                    dE = this.f13675b[length].d(d13);
                } else {
                    dG = c0179aArr[length].g(d13);
                    dE = this.f13675b[length].e(d13);
                }
                return dG + (d14 * dE);
            }
        } else {
            C0179a[] c0179aArr2 = this.f13675b;
            double d15 = c0179aArr2[0].f13680c;
            if (d10 < d15) {
                d10 = d15;
            } else if (d10 > c0179aArr2[c0179aArr2.length - 1].f13681d) {
                d10 = c0179aArr2[c0179aArr2.length - 1].f13681d;
            }
        }
        while (true) {
            C0179a[] c0179aArr3 = this.f13675b;
            if (i11 >= c0179aArr3.length) {
                return Double.NaN;
            }
            C0179a c0179a2 = c0179aArr3[i11];
            if (d10 <= c0179a2.f13681d) {
                if (c0179a2.f13695r) {
                    return i10 == 0 ? c0179a2.f(d10) : c0179a2.g(d10);
                }
                c0179a2.k(d10);
                return i10 == 0 ? this.f13675b[i11].h() : this.f13675b[i11].i();
            }
            i11++;
        }
    }

    @Override // m.b
    public void d(double d10, double[] dArr) {
        if (this.f13676c) {
            C0179a[] c0179aArr = this.f13675b;
            C0179a c0179a = c0179aArr[0];
            double d11 = c0179a.f13680c;
            if (d10 < d11) {
                double d12 = d10 - d11;
                if (c0179a.f13695r) {
                    dArr[0] = c0179a.f(d11) + (this.f13675b[0].d(d11) * d12);
                    dArr[1] = this.f13675b[0].g(d11) + (d12 * this.f13675b[0].e(d11));
                    return;
                } else {
                    c0179a.k(d11);
                    dArr[0] = this.f13675b[0].h() + (this.f13675b[0].b() * d12);
                    dArr[1] = this.f13675b[0].i() + (d12 * this.f13675b[0].c());
                    return;
                }
            }
            if (d10 > c0179aArr[c0179aArr.length - 1].f13681d) {
                double d13 = c0179aArr[c0179aArr.length - 1].f13681d;
                double d14 = d10 - d13;
                int length = c0179aArr.length - 1;
                C0179a c0179a2 = c0179aArr[length];
                if (c0179a2.f13695r) {
                    dArr[0] = c0179a2.f(d13) + (this.f13675b[length].d(d13) * d14);
                    dArr[1] = this.f13675b[length].g(d13) + (d14 * this.f13675b[length].e(d13));
                    return;
                } else {
                    c0179a2.k(d10);
                    dArr[0] = this.f13675b[length].h() + (this.f13675b[length].b() * d14);
                    dArr[1] = this.f13675b[length].i() + (d14 * this.f13675b[length].c());
                    return;
                }
            }
        } else {
            C0179a[] c0179aArr2 = this.f13675b;
            double d15 = c0179aArr2[0].f13680c;
            if (d10 < d15) {
                d10 = d15;
            }
            if (d10 > c0179aArr2[c0179aArr2.length - 1].f13681d) {
                d10 = c0179aArr2[c0179aArr2.length - 1].f13681d;
            }
        }
        int i10 = 0;
        while (true) {
            C0179a[] c0179aArr3 = this.f13675b;
            if (i10 >= c0179aArr3.length) {
                return;
            }
            C0179a c0179a3 = c0179aArr3[i10];
            if (d10 <= c0179a3.f13681d) {
                if (c0179a3.f13695r) {
                    dArr[0] = c0179a3.f(d10);
                    dArr[1] = this.f13675b[i10].g(d10);
                    return;
                } else {
                    c0179a3.k(d10);
                    dArr[0] = this.f13675b[i10].h();
                    dArr[1] = this.f13675b[i10].i();
                    return;
                }
            }
            i10++;
        }
    }

    @Override // m.b
    public void e(double d10, float[] fArr) {
        if (this.f13676c) {
            C0179a[] c0179aArr = this.f13675b;
            C0179a c0179a = c0179aArr[0];
            double d11 = c0179a.f13680c;
            if (d10 < d11) {
                double d12 = d10 - d11;
                if (c0179a.f13695r) {
                    fArr[0] = (float) (c0179a.f(d11) + (this.f13675b[0].d(d11) * d12));
                    fArr[1] = (float) (this.f13675b[0].g(d11) + (d12 * this.f13675b[0].e(d11)));
                    return;
                } else {
                    c0179a.k(d11);
                    fArr[0] = (float) (this.f13675b[0].h() + (this.f13675b[0].b() * d12));
                    fArr[1] = (float) (this.f13675b[0].i() + (d12 * this.f13675b[0].c()));
                    return;
                }
            }
            if (d10 > c0179aArr[c0179aArr.length - 1].f13681d) {
                double d13 = c0179aArr[c0179aArr.length - 1].f13681d;
                double d14 = d10 - d13;
                int length = c0179aArr.length - 1;
                C0179a c0179a2 = c0179aArr[length];
                if (c0179a2.f13695r) {
                    fArr[0] = (float) (c0179a2.f(d13) + (this.f13675b[length].d(d13) * d14));
                    fArr[1] = (float) (this.f13675b[length].g(d13) + (d14 * this.f13675b[length].e(d13)));
                    return;
                } else {
                    c0179a2.k(d10);
                    fArr[0] = (float) this.f13675b[length].h();
                    fArr[1] = (float) this.f13675b[length].i();
                    return;
                }
            }
        } else {
            C0179a[] c0179aArr2 = this.f13675b;
            double d15 = c0179aArr2[0].f13680c;
            if (d10 < d15) {
                d10 = d15;
            } else if (d10 > c0179aArr2[c0179aArr2.length - 1].f13681d) {
                d10 = c0179aArr2[c0179aArr2.length - 1].f13681d;
            }
        }
        int i10 = 0;
        while (true) {
            C0179a[] c0179aArr3 = this.f13675b;
            if (i10 >= c0179aArr3.length) {
                return;
            }
            C0179a c0179a3 = c0179aArr3[i10];
            if (d10 <= c0179a3.f13681d) {
                if (c0179a3.f13695r) {
                    fArr[0] = (float) c0179a3.f(d10);
                    fArr[1] = (float) this.f13675b[i10].g(d10);
                    return;
                } else {
                    c0179a3.k(d10);
                    fArr[0] = (float) this.f13675b[i10].h();
                    fArr[1] = (float) this.f13675b[i10].i();
                    return;
                }
            }
            i10++;
        }
    }

    @Override // m.b
    public double f(double d10, int i10) {
        C0179a[] c0179aArr = this.f13675b;
        int i11 = 0;
        double d11 = c0179aArr[0].f13680c;
        if (d10 < d11) {
            d10 = d11;
        }
        if (d10 > c0179aArr[c0179aArr.length - 1].f13681d) {
            d10 = c0179aArr[c0179aArr.length - 1].f13681d;
        }
        while (true) {
            C0179a[] c0179aArr2 = this.f13675b;
            if (i11 >= c0179aArr2.length) {
                return Double.NaN;
            }
            C0179a c0179a = c0179aArr2[i11];
            if (d10 <= c0179a.f13681d) {
                if (c0179a.f13695r) {
                    return i10 == 0 ? c0179a.d(d10) : c0179a.e(d10);
                }
                c0179a.k(d10);
                return i10 == 0 ? this.f13675b[i11].b() : this.f13675b[i11].c();
            }
            i11++;
        }
    }

    @Override // m.b
    public void g(double d10, double[] dArr) {
        C0179a[] c0179aArr = this.f13675b;
        double d11 = c0179aArr[0].f13680c;
        if (d10 < d11) {
            d10 = d11;
        } else if (d10 > c0179aArr[c0179aArr.length - 1].f13681d) {
            d10 = c0179aArr[c0179aArr.length - 1].f13681d;
        }
        int i10 = 0;
        while (true) {
            C0179a[] c0179aArr2 = this.f13675b;
            if (i10 >= c0179aArr2.length) {
                return;
            }
            C0179a c0179a = c0179aArr2[i10];
            if (d10 <= c0179a.f13681d) {
                if (c0179a.f13695r) {
                    dArr[0] = c0179a.d(d10);
                    dArr[1] = this.f13675b[i10].e(d10);
                    return;
                } else {
                    c0179a.k(d10);
                    dArr[0] = this.f13675b[i10].b();
                    dArr[1] = this.f13675b[i10].c();
                    return;
                }
            }
            i10++;
        }
    }

    @Override // m.b
    public double[] h() {
        return this.f13674a;
    }
}
