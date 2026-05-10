package o;

import java.util.ArrayList;
import java.util.HashMap;
import o.e;

/* JADX INFO: loaded from: classes.dex */
public class g extends m {
    private e[] H1;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    private int f14248k1 = -1;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private int f14249l1 = -1;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    private int f14250m1 = -1;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    private int f14251n1 = -1;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    private int f14252o1 = -1;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private int f14253p1 = -1;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private float f14254q1 = 0.5f;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private float f14255r1 = 0.5f;

    /* JADX INFO: renamed from: s1, reason: collision with root package name */
    private float f14256s1 = 0.5f;

    /* JADX INFO: renamed from: t1, reason: collision with root package name */
    private float f14257t1 = 0.5f;

    /* JADX INFO: renamed from: u1, reason: collision with root package name */
    private float f14258u1 = 0.5f;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    private float f14259v1 = 0.5f;

    /* JADX INFO: renamed from: w1, reason: collision with root package name */
    private int f14260w1 = 0;

    /* JADX INFO: renamed from: x1, reason: collision with root package name */
    private int f14261x1 = 0;

    /* JADX INFO: renamed from: y1, reason: collision with root package name */
    private int f14262y1 = 2;

    /* JADX INFO: renamed from: z1, reason: collision with root package name */
    private int f14263z1 = 2;
    private int A1 = 0;
    private int B1 = -1;
    private int C1 = 0;
    private ArrayList D1 = new ArrayList();
    private e[] E1 = null;
    private e[] F1 = null;
    private int[] G1 = null;
    private int I1 = 0;

    private class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f14264a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private d f14267d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private d f14268e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private d f14269f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private d f14270g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f14271h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f14272i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f14273j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f14274k;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private int f14280q;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private e f14265b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f14266c = 0;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f14275l = 0;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f14276m = 0;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f14277n = 0;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f14278o = 0;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f14279p = 0;

        a(int i10, d dVar, d dVar2, d dVar3, d dVar4, int i11) {
            this.f14271h = 0;
            this.f14272i = 0;
            this.f14273j = 0;
            this.f14274k = 0;
            this.f14280q = 0;
            this.f14264a = i10;
            this.f14267d = dVar;
            this.f14268e = dVar2;
            this.f14269f = dVar3;
            this.f14270g = dVar4;
            this.f14271h = g.this.E1();
            this.f14272i = g.this.G1();
            this.f14273j = g.this.F1();
            this.f14274k = g.this.D1();
            this.f14280q = i11;
        }

        private void h() {
            this.f14275l = 0;
            this.f14276m = 0;
            this.f14265b = null;
            this.f14266c = 0;
            int i10 = this.f14278o;
            for (int i11 = 0; i11 < i10 && this.f14277n + i11 < g.this.I1; i11++) {
                e eVar = g.this.H1[this.f14277n + i11];
                if (this.f14264a == 0) {
                    int iY = eVar.Y();
                    int i12 = g.this.f14260w1;
                    if (eVar.X() == 8) {
                        i12 = 0;
                    }
                    this.f14275l += iY + i12;
                    int iP2 = g.this.p2(eVar, this.f14280q);
                    if (this.f14265b == null || this.f14266c < iP2) {
                        this.f14265b = eVar;
                        this.f14266c = iP2;
                        this.f14276m = iP2;
                    }
                } else {
                    int iQ2 = g.this.q2(eVar, this.f14280q);
                    int iP22 = g.this.p2(eVar, this.f14280q);
                    int i13 = g.this.f14261x1;
                    if (eVar.X() == 8) {
                        i13 = 0;
                    }
                    this.f14276m += iP22 + i13;
                    if (this.f14265b == null || this.f14266c < iQ2) {
                        this.f14265b = eVar;
                        this.f14266c = iQ2;
                        this.f14275l = iQ2;
                    }
                }
            }
        }

        public void b(e eVar) {
            if (this.f14264a == 0) {
                int iQ2 = g.this.q2(eVar, this.f14280q);
                if (eVar.C() == e.b.MATCH_CONSTRAINT) {
                    this.f14279p++;
                    iQ2 = 0;
                }
                this.f14275l += iQ2 + (eVar.X() != 8 ? g.this.f14260w1 : 0);
                int iP2 = g.this.p2(eVar, this.f14280q);
                if (this.f14265b == null || this.f14266c < iP2) {
                    this.f14265b = eVar;
                    this.f14266c = iP2;
                    this.f14276m = iP2;
                }
            } else {
                int iQ22 = g.this.q2(eVar, this.f14280q);
                int iP22 = g.this.p2(eVar, this.f14280q);
                if (eVar.V() == e.b.MATCH_CONSTRAINT) {
                    this.f14279p++;
                    iP22 = 0;
                }
                this.f14276m += iP22 + (eVar.X() != 8 ? g.this.f14261x1 : 0);
                if (this.f14265b == null || this.f14266c < iQ22) {
                    this.f14265b = eVar;
                    this.f14266c = iQ22;
                    this.f14275l = iQ22;
                }
            }
            this.f14278o++;
        }

        public void c() {
            this.f14266c = 0;
            this.f14265b = null;
            this.f14275l = 0;
            this.f14276m = 0;
            this.f14277n = 0;
            this.f14278o = 0;
            this.f14279p = 0;
        }

        public void d(boolean z10, int i10, boolean z11) {
            e eVar;
            char c10;
            float f10;
            float f11;
            int i11 = this.f14278o;
            for (int i12 = 0; i12 < i11 && this.f14277n + i12 < g.this.I1; i12++) {
                e eVar2 = g.this.H1[this.f14277n + i12];
                if (eVar2 != null) {
                    eVar2.x0();
                }
            }
            if (i11 == 0 || this.f14265b == null) {
                return;
            }
            boolean z12 = z11 && i10 == 0;
            int i13 = -1;
            int i14 = -1;
            for (int i15 = 0; i15 < i11; i15++) {
                int i16 = z10 ? (i11 - 1) - i15 : i15;
                if (this.f14277n + i16 >= g.this.I1) {
                    break;
                }
                e eVar3 = g.this.H1[this.f14277n + i16];
                if (eVar3 != null && eVar3.X() == 0) {
                    if (i13 == -1) {
                        i13 = i15;
                    }
                    i14 = i15;
                }
            }
            e eVar4 = null;
            if (this.f14264a != 0) {
                e eVar5 = this.f14265b;
                eVar5.S0(g.this.f14248k1);
                int i17 = this.f14271h;
                if (i10 > 0) {
                    i17 += g.this.f14260w1;
                }
                if (z10) {
                    eVar5.S.a(this.f14269f, i17);
                    if (z11) {
                        eVar5.Q.a(this.f14267d, this.f14273j);
                    }
                    if (i10 > 0) {
                        this.f14269f.f14163d.Q.a(eVar5.S, 0);
                    }
                } else {
                    eVar5.Q.a(this.f14267d, i17);
                    if (z11) {
                        eVar5.S.a(this.f14269f, this.f14273j);
                    }
                    if (i10 > 0) {
                        this.f14267d.f14163d.S.a(eVar5.Q, 0);
                    }
                }
                for (int i18 = 0; i18 < i11 && this.f14277n + i18 < g.this.I1; i18++) {
                    e eVar6 = g.this.H1[this.f14277n + i18];
                    if (eVar6 != null) {
                        if (i18 == 0) {
                            eVar6.l(eVar6.R, this.f14268e, this.f14272i);
                            int i19 = g.this.f14249l1;
                            float f12 = g.this.f14255r1;
                            if (this.f14277n == 0 && g.this.f14251n1 != -1) {
                                i19 = g.this.f14251n1;
                                f12 = g.this.f14257t1;
                            } else if (z11 && g.this.f14253p1 != -1) {
                                i19 = g.this.f14253p1;
                                f12 = g.this.f14259v1;
                            }
                            eVar6.j1(i19);
                            eVar6.i1(f12);
                        }
                        if (i18 == i11 - 1) {
                            eVar6.l(eVar6.T, this.f14270g, this.f14274k);
                        }
                        if (eVar4 != null) {
                            eVar6.R.a(eVar4.T, g.this.f14261x1);
                            if (i18 == i13) {
                                eVar6.R.u(this.f14272i);
                            }
                            eVar4.T.a(eVar6.R, 0);
                            if (i18 == i14 + 1) {
                                eVar4.T.u(this.f14274k);
                            }
                        }
                        if (eVar6 == eVar5) {
                            eVar4 = eVar6;
                        } else if (z10) {
                            int i20 = g.this.f14262y1;
                            if (i20 == 0) {
                                eVar6.S.a(eVar5.S, 0);
                            } else if (i20 == 1) {
                                eVar6.Q.a(eVar5.Q, 0);
                            } else if (i20 == 2) {
                                eVar6.Q.a(eVar5.Q, 0);
                                eVar6.S.a(eVar5.S, 0);
                            }
                            eVar4 = eVar6;
                        } else {
                            int i21 = g.this.f14262y1;
                            if (i21 == 0) {
                                eVar6.Q.a(eVar5.Q, 0);
                            } else if (i21 == 1) {
                                eVar6.S.a(eVar5.S, 0);
                            } else if (i21 == 2) {
                                if (z12) {
                                    eVar6.Q.a(this.f14267d, this.f14271h);
                                    eVar6.S.a(this.f14269f, this.f14273j);
                                } else {
                                    eVar6.Q.a(eVar5.Q, 0);
                                    eVar6.S.a(eVar5.S, 0);
                                }
                            }
                            eVar4 = eVar6;
                        }
                    }
                }
                return;
            }
            e eVar7 = this.f14265b;
            eVar7.j1(g.this.f14249l1);
            int i22 = this.f14272i;
            if (i10 > 0) {
                i22 += g.this.f14261x1;
            }
            eVar7.R.a(this.f14268e, i22);
            if (z11) {
                eVar7.T.a(this.f14270g, this.f14274k);
            }
            if (i10 > 0) {
                this.f14268e.f14163d.T.a(eVar7.R, 0);
            }
            char c11 = 3;
            if (g.this.f14263z1 != 3 || eVar7.b0()) {
                eVar = eVar7;
            } else {
                for (int i23 = 0; i23 < i11; i23++) {
                    int i24 = z10 ? (i11 - 1) - i23 : i23;
                    if (this.f14277n + i24 >= g.this.I1) {
                        break;
                    }
                    eVar = g.this.H1[this.f14277n + i24];
                    if (eVar.b0()) {
                        break;
                    }
                }
                eVar = eVar7;
            }
            int i25 = 0;
            while (i25 < i11) {
                int i26 = z10 ? (i11 - 1) - i25 : i25;
                if (this.f14277n + i26 >= g.this.I1) {
                    return;
                }
                e eVar8 = g.this.H1[this.f14277n + i26];
                if (eVar8 == null) {
                    eVar8 = eVar4;
                    c10 = c11;
                } else {
                    if (i25 == 0) {
                        eVar8.l(eVar8.Q, this.f14267d, this.f14271h);
                    }
                    if (i26 == 0) {
                        int i27 = g.this.f14248k1;
                        float f13 = g.this.f14254q1;
                        if (z10) {
                            f13 = 1.0f - f13;
                        }
                        if (this.f14277n != 0 || g.this.f14250m1 == -1) {
                            if (z11 && g.this.f14252o1 != -1) {
                                i27 = g.this.f14252o1;
                                if (z10) {
                                    f11 = g.this.f14258u1;
                                    f10 = 1.0f - f11;
                                    f13 = f10;
                                } else {
                                    f10 = g.this.f14258u1;
                                    f13 = f10;
                                }
                            }
                            eVar8.S0(i27);
                            eVar8.R0(f13);
                        } else {
                            i27 = g.this.f14250m1;
                            if (z10) {
                                f11 = g.this.f14256s1;
                                f10 = 1.0f - f11;
                                f13 = f10;
                                eVar8.S0(i27);
                                eVar8.R0(f13);
                            } else {
                                f10 = g.this.f14256s1;
                                f13 = f10;
                                eVar8.S0(i27);
                                eVar8.R0(f13);
                            }
                        }
                    }
                    if (i25 == i11 - 1) {
                        eVar8.l(eVar8.S, this.f14269f, this.f14273j);
                    }
                    if (eVar4 != null) {
                        eVar8.Q.a(eVar4.S, g.this.f14260w1);
                        if (i25 == i13) {
                            eVar8.Q.u(this.f14271h);
                        }
                        eVar4.S.a(eVar8.Q, 0);
                        if (i25 == i14 + 1) {
                            eVar4.S.u(this.f14273j);
                        }
                    }
                    if (eVar8 != eVar7) {
                        c10 = 3;
                        if (g.this.f14263z1 == 3 && eVar.b0() && eVar8 != eVar && eVar8.b0()) {
                            eVar8.U.a(eVar.U, 0);
                        } else {
                            int i28 = g.this.f14263z1;
                            if (i28 == 0) {
                                eVar8.R.a(eVar7.R, 0);
                            } else if (i28 == 1) {
                                eVar8.T.a(eVar7.T, 0);
                            } else if (z12) {
                                eVar8.R.a(this.f14268e, this.f14272i);
                                eVar8.T.a(this.f14270g, this.f14274k);
                            } else {
                                eVar8.R.a(eVar7.R, 0);
                                eVar8.T.a(eVar7.T, 0);
                            }
                        }
                    } else {
                        c10 = 3;
                    }
                }
                i25++;
                c11 = c10;
                eVar4 = eVar8;
            }
        }

        public int e() {
            return this.f14264a == 1 ? this.f14276m - g.this.f14261x1 : this.f14276m;
        }

        public int f() {
            return this.f14264a == 0 ? this.f14275l - g.this.f14260w1 : this.f14275l;
        }

        public void g(int i10) {
            int i11 = this.f14279p;
            if (i11 == 0) {
                return;
            }
            int i12 = this.f14278o;
            int i13 = i10 / i11;
            for (int i14 = 0; i14 < i12 && this.f14277n + i14 < g.this.I1; i14++) {
                e eVar = g.this.H1[this.f14277n + i14];
                if (this.f14264a == 0) {
                    if (eVar != null && eVar.C() == e.b.MATCH_CONSTRAINT && eVar.f14213w == 0) {
                        g.this.I1(eVar, e.b.FIXED, i13, eVar.V(), eVar.z());
                    }
                } else if (eVar != null && eVar.V() == e.b.MATCH_CONSTRAINT && eVar.f14215x == 0) {
                    g.this.I1(eVar, eVar.C(), eVar.Y(), e.b.FIXED, i13);
                }
            }
            h();
        }

        public void i(int i10) {
            this.f14277n = i10;
        }

        public void j(int i10, d dVar, d dVar2, d dVar3, d dVar4, int i11, int i12, int i13, int i14, int i15) {
            this.f14264a = i10;
            this.f14267d = dVar;
            this.f14268e = dVar2;
            this.f14269f = dVar3;
            this.f14270g = dVar4;
            this.f14271h = i11;
            this.f14272i = i12;
            this.f14273j = i13;
            this.f14274k = i14;
            this.f14280q = i15;
        }
    }

    private void o2(boolean z10) {
        e eVar;
        float f10;
        int i10;
        if (this.G1 == null || this.F1 == null || this.E1 == null) {
            return;
        }
        for (int i11 = 0; i11 < this.I1; i11++) {
            this.H1[i11].x0();
        }
        int[] iArr = this.G1;
        int i12 = iArr[0];
        int i13 = iArr[1];
        float f11 = this.f14254q1;
        e eVar2 = null;
        int i14 = 0;
        while (i14 < i12) {
            if (z10) {
                i10 = (i12 - i14) - 1;
                f10 = 1.0f - this.f14254q1;
            } else {
                f10 = f11;
                i10 = i14;
            }
            e eVar3 = this.F1[i10];
            if (eVar3 != null && eVar3.X() != 8) {
                if (i14 == 0) {
                    eVar3.l(eVar3.Q, this.Q, E1());
                    eVar3.S0(this.f14248k1);
                    eVar3.R0(f10);
                }
                if (i14 == i12 - 1) {
                    eVar3.l(eVar3.S, this.S, F1());
                }
                if (i14 > 0 && eVar2 != null) {
                    eVar3.l(eVar3.Q, eVar2.S, this.f14260w1);
                    eVar2.l(eVar2.S, eVar3.Q, 0);
                }
                eVar2 = eVar3;
            }
            i14++;
            f11 = f10;
        }
        for (int i15 = 0; i15 < i13; i15++) {
            e eVar4 = this.E1[i15];
            if (eVar4 != null && eVar4.X() != 8) {
                if (i15 == 0) {
                    eVar4.l(eVar4.R, this.R, G1());
                    eVar4.j1(this.f14249l1);
                    eVar4.i1(this.f14255r1);
                }
                if (i15 == i13 - 1) {
                    eVar4.l(eVar4.T, this.T, D1());
                }
                if (i15 > 0 && eVar2 != null) {
                    eVar4.l(eVar4.R, eVar2.T, this.f14261x1);
                    eVar2.l(eVar2.T, eVar4.R, 0);
                }
                eVar2 = eVar4;
            }
        }
        for (int i16 = 0; i16 < i12; i16++) {
            for (int i17 = 0; i17 < i13; i17++) {
                int i18 = (i17 * i12) + i16;
                if (this.C1 == 1) {
                    i18 = (i16 * i13) + i17;
                }
                e[] eVarArr = this.H1;
                if (i18 < eVarArr.length && (eVar = eVarArr[i18]) != null && eVar.X() != 8) {
                    e eVar5 = this.F1[i16];
                    e eVar6 = this.E1[i17];
                    if (eVar != eVar5) {
                        eVar.l(eVar.Q, eVar5.Q, 0);
                        eVar.l(eVar.S, eVar5.S, 0);
                    }
                    if (eVar != eVar6) {
                        eVar.l(eVar.R, eVar6.R, 0);
                        eVar.l(eVar.T, eVar6.T, 0);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int p2(e eVar, int i10) {
        if (eVar == null) {
            return 0;
        }
        if (eVar.V() == e.b.MATCH_CONSTRAINT) {
            int i11 = eVar.f14215x;
            if (i11 == 0) {
                return 0;
            }
            if (i11 == 2) {
                int i12 = (int) (eVar.E * i10);
                if (i12 != eVar.z()) {
                    eVar.d1(true);
                    I1(eVar, eVar.C(), eVar.Y(), e.b.FIXED, i12);
                }
                return i12;
            }
            if (i11 == 1) {
                return eVar.z();
            }
            if (i11 == 3) {
                return (int) ((eVar.Y() * eVar.f14180f0) + 0.5f);
            }
        }
        return eVar.z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int q2(e eVar, int i10) {
        if (eVar == null) {
            return 0;
        }
        if (eVar.C() == e.b.MATCH_CONSTRAINT) {
            int i11 = eVar.f14213w;
            if (i11 == 0) {
                return 0;
            }
            if (i11 == 2) {
                int i12 = (int) (eVar.B * i10);
                if (i12 != eVar.Y()) {
                    eVar.d1(true);
                    I1(eVar, e.b.FIXED, i12, eVar.V(), eVar.z());
                }
                return i12;
            }
            if (i11 == 1) {
                return eVar.Y();
            }
            if (i11 == 3) {
                return (int) ((eVar.z() * eVar.f14180f0) + 0.5f);
            }
        }
        return eVar.Y();
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x005e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:105:0x010d -> B:42:0x0059). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:106:0x010f -> B:42:0x0059). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:108:0x0115 -> B:42:0x0059). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:109:0x0117 -> B:42:0x0059). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void r2(o.e[] r11, int r12, int r13, int r14, int[] r15) {
        /*
            Method dump skipped, instruction units count: 292
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: o.g.r2(o.e[], int, int, int, int[]):void");
    }

    private void s2(e[] eVarArr, int i10, int i11, int i12, int[] iArr) {
        int i13;
        int i14;
        int i15;
        d dVar;
        int iF1;
        d dVar2;
        int iD1;
        int i16;
        if (i10 == 0) {
            return;
        }
        this.D1.clear();
        a aVar = new a(i11, this.Q, this.R, this.S, this.T, i12);
        this.D1.add(aVar);
        if (i11 == 0) {
            i13 = 0;
            int i17 = 0;
            int i18 = 0;
            while (i18 < i10) {
                e eVar = eVarArr[i18];
                int iQ2 = q2(eVar, i12);
                if (eVar.C() == e.b.MATCH_CONSTRAINT) {
                    i13++;
                }
                int i19 = i13;
                boolean z10 = (i17 == i12 || (this.f14260w1 + i17) + iQ2 > i12) && aVar.f14265b != null;
                if (!z10 && i18 > 0 && (i16 = this.B1) > 0 && i18 % i16 == 0) {
                    z10 = true;
                }
                if (z10) {
                    aVar = new a(i11, this.Q, this.R, this.S, this.T, i12);
                    aVar.i(i18);
                    this.D1.add(aVar);
                } else {
                    if (i18 > 0) {
                        i17 += this.f14260w1 + iQ2;
                    }
                    aVar.b(eVar);
                    i18++;
                    i13 = i19;
                }
                i17 = iQ2;
                aVar.b(eVar);
                i18++;
                i13 = i19;
            }
        } else {
            i13 = 0;
            int i20 = 0;
            int i21 = 0;
            while (i21 < i10) {
                e eVar2 = eVarArr[i21];
                int iP2 = p2(eVar2, i12);
                if (eVar2.V() == e.b.MATCH_CONSTRAINT) {
                    i13++;
                }
                int i22 = i13;
                boolean z11 = (i20 == i12 || (this.f14261x1 + i20) + iP2 > i12) && aVar.f14265b != null;
                if (!z11 && i21 > 0 && (i14 = this.B1) > 0 && i21 % i14 == 0) {
                    z11 = true;
                }
                if (z11) {
                    aVar = new a(i11, this.Q, this.R, this.S, this.T, i12);
                    aVar.i(i21);
                    this.D1.add(aVar);
                } else {
                    if (i21 > 0) {
                        i20 += this.f14261x1 + iP2;
                    }
                    aVar.b(eVar2);
                    i21++;
                    i13 = i22;
                }
                i20 = iP2;
                aVar.b(eVar2);
                i21++;
                i13 = i22;
            }
        }
        int size = this.D1.size();
        d dVar3 = this.Q;
        d dVar4 = this.R;
        d dVar5 = this.S;
        d dVar6 = this.T;
        int iE1 = E1();
        int iG1 = G1();
        int iF12 = F1();
        int iD12 = D1();
        e.b bVarC = C();
        e.b bVar = e.b.WRAP_CONTENT;
        boolean z12 = bVarC == bVar || V() == bVar;
        if (i13 > 0 && z12) {
            for (int i23 = 0; i23 < size; i23++) {
                a aVar2 = (a) this.D1.get(i23);
                if (i11 == 0) {
                    aVar2.g(i12 - aVar2.f());
                } else {
                    aVar2.g(i12 - aVar2.e());
                }
            }
        }
        int i24 = iG1;
        int i25 = iF12;
        int iE = 0;
        int iF = 0;
        int i26 = 0;
        int i27 = iE1;
        d dVar7 = dVar4;
        d dVar8 = dVar3;
        int i28 = iD12;
        while (i26 < size) {
            a aVar3 = (a) this.D1.get(i26);
            if (i11 == 0) {
                if (i26 < size - 1) {
                    dVar2 = ((a) this.D1.get(i26 + 1)).f14265b.R;
                    iD1 = 0;
                } else {
                    dVar2 = this.T;
                    iD1 = D1();
                }
                d dVar9 = aVar3.f14265b.T;
                d dVar10 = dVar8;
                d dVar11 = dVar8;
                int i29 = iE;
                d dVar12 = dVar7;
                int i30 = iF;
                d dVar13 = dVar5;
                d dVar14 = dVar5;
                i15 = i26;
                aVar3.j(i11, dVar10, dVar12, dVar13, dVar2, i27, i24, i25, iD1, i12);
                int iMax = Math.max(i30, aVar3.f());
                iE = i29 + aVar3.e();
                if (i15 > 0) {
                    iE += this.f14261x1;
                }
                dVar8 = dVar11;
                iF = iMax;
                i24 = 0;
                dVar7 = dVar9;
                dVar = dVar14;
                int i31 = iD1;
                dVar6 = dVar2;
                i28 = i31;
            } else {
                d dVar15 = dVar8;
                int i32 = iE;
                int i33 = iF;
                i15 = i26;
                if (i15 < size - 1) {
                    dVar = ((a) this.D1.get(i15 + 1)).f14265b.Q;
                    iF1 = 0;
                } else {
                    dVar = this.S;
                    iF1 = F1();
                }
                d dVar16 = aVar3.f14265b.S;
                aVar3.j(i11, dVar15, dVar7, dVar, dVar6, i27, i24, iF1, i28, i12);
                iF = i33 + aVar3.f();
                int iMax2 = Math.max(i32, aVar3.e());
                if (i15 > 0) {
                    iF += this.f14260w1;
                }
                iE = iMax2;
                i27 = 0;
                i25 = iF1;
                dVar8 = dVar16;
            }
            i26 = i15 + 1;
            dVar5 = dVar;
        }
        iArr[0] = iF;
        iArr[1] = iE;
    }

    private void t2(e[] eVarArr, int i10, int i11, int i12, int[] iArr) {
        int i13;
        int i14;
        int i15;
        d dVar;
        int iF1;
        d dVar2;
        int iD1;
        int i16;
        if (i10 == 0) {
            return;
        }
        this.D1.clear();
        a aVar = new a(i11, this.Q, this.R, this.S, this.T, i12);
        this.D1.add(aVar);
        if (i11 == 0) {
            int i17 = 0;
            i13 = 0;
            int i18 = 0;
            int i19 = 0;
            while (i19 < i10) {
                i17++;
                e eVar = eVarArr[i19];
                int iQ2 = q2(eVar, i12);
                if (eVar.C() == e.b.MATCH_CONSTRAINT) {
                    i13++;
                }
                int i20 = i13;
                boolean z10 = (i18 == i12 || (this.f14260w1 + i18) + iQ2 > i12) && aVar.f14265b != null;
                if (!z10 && i19 > 0 && (i16 = this.B1) > 0 && i17 > i16) {
                    z10 = true;
                }
                if (z10) {
                    aVar = new a(i11, this.Q, this.R, this.S, this.T, i12);
                    aVar.i(i19);
                    this.D1.add(aVar);
                    i18 = iQ2;
                    i17 = 1;
                } else {
                    i18 = i19 > 0 ? i18 + this.f14260w1 + iQ2 : iQ2;
                }
                aVar.b(eVar);
                i19++;
                i13 = i20;
            }
        } else {
            int i21 = 0;
            i13 = 0;
            int i22 = 0;
            int i23 = 0;
            while (i23 < i10) {
                i21++;
                e eVar2 = eVarArr[i23];
                int iP2 = p2(eVar2, i12);
                if (eVar2.V() == e.b.MATCH_CONSTRAINT) {
                    i13++;
                }
                int i24 = i13;
                boolean z11 = (i22 == i12 || (this.f14261x1 + i22) + iP2 > i12) && aVar.f14265b != null;
                if (!z11 && i23 > 0 && (i14 = this.B1) > 0 && i21 > i14) {
                    z11 = true;
                }
                if (z11) {
                    aVar = new a(i11, this.Q, this.R, this.S, this.T, i12);
                    aVar.i(i23);
                    this.D1.add(aVar);
                    i22 = iP2;
                    i21 = 1;
                } else {
                    i22 = i23 > 0 ? i22 + this.f14261x1 + iP2 : iP2;
                }
                aVar.b(eVar2);
                i23++;
                i13 = i24;
            }
        }
        int size = this.D1.size();
        d dVar3 = this.Q;
        d dVar4 = this.R;
        d dVar5 = this.S;
        d dVar6 = this.T;
        int iE1 = E1();
        int iG1 = G1();
        int iF12 = F1();
        int iD12 = D1();
        e.b bVarC = C();
        e.b bVar = e.b.WRAP_CONTENT;
        boolean z12 = bVarC == bVar || V() == bVar;
        if (i13 > 0 && z12) {
            for (int i25 = 0; i25 < size; i25++) {
                a aVar2 = (a) this.D1.get(i25);
                if (i11 == 0) {
                    aVar2.g(i12 - aVar2.f());
                } else {
                    aVar2.g(i12 - aVar2.e());
                }
            }
        }
        int i26 = iG1;
        int i27 = iF12;
        int iE = 0;
        int iF = 0;
        int i28 = 0;
        int i29 = iE1;
        d dVar7 = dVar4;
        d dVar8 = dVar3;
        int i30 = iD12;
        while (i28 < size) {
            a aVar3 = (a) this.D1.get(i28);
            if (i11 == 0) {
                if (i28 < size - 1) {
                    dVar2 = ((a) this.D1.get(i28 + 1)).f14265b.R;
                    iD1 = 0;
                } else {
                    dVar2 = this.T;
                    iD1 = D1();
                }
                d dVar9 = aVar3.f14265b.T;
                d dVar10 = dVar8;
                d dVar11 = dVar8;
                int i31 = iE;
                d dVar12 = dVar7;
                int i32 = iF;
                d dVar13 = dVar5;
                d dVar14 = dVar5;
                i15 = i28;
                aVar3.j(i11, dVar10, dVar12, dVar13, dVar2, i29, i26, i27, iD1, i12);
                int iMax = Math.max(i32, aVar3.f());
                iE = i31 + aVar3.e();
                if (i15 > 0) {
                    iE += this.f14261x1;
                }
                dVar8 = dVar11;
                iF = iMax;
                i26 = 0;
                dVar7 = dVar9;
                dVar = dVar14;
                int i33 = iD1;
                dVar6 = dVar2;
                i30 = i33;
            } else {
                d dVar15 = dVar8;
                int i34 = iE;
                int i35 = iF;
                i15 = i28;
                if (i15 < size - 1) {
                    dVar = ((a) this.D1.get(i15 + 1)).f14265b.Q;
                    iF1 = 0;
                } else {
                    dVar = this.S;
                    iF1 = F1();
                }
                d dVar16 = aVar3.f14265b.S;
                aVar3.j(i11, dVar15, dVar7, dVar, dVar6, i29, i26, iF1, i30, i12);
                iF = i35 + aVar3.f();
                int iMax2 = Math.max(i34, aVar3.e());
                if (i15 > 0) {
                    iF += this.f14260w1;
                }
                iE = iMax2;
                i29 = 0;
                i27 = iF1;
                dVar8 = dVar16;
            }
            i28 = i15 + 1;
            dVar5 = dVar;
        }
        iArr[0] = iF;
        iArr[1] = iE;
    }

    private void u2(e[] eVarArr, int i10, int i11, int i12, int[] iArr) {
        a aVar;
        if (i10 == 0) {
            return;
        }
        if (this.D1.size() == 0) {
            aVar = new a(i11, this.Q, this.R, this.S, this.T, i12);
            this.D1.add(aVar);
        } else {
            a aVar2 = (a) this.D1.get(0);
            aVar2.c();
            aVar = aVar2;
            aVar.j(i11, this.Q, this.R, this.S, this.T, E1(), G1(), F1(), D1(), i12);
        }
        for (int i13 = 0; i13 < i10; i13++) {
            aVar.b(eVarArr[i13]);
        }
        iArr[0] = aVar.f();
        iArr[1] = aVar.e();
    }

    public void A2(float f10) {
        this.f14254q1 = f10;
    }

    public void B2(int i10) {
        this.f14260w1 = i10;
    }

    public void C2(int i10) {
        this.f14248k1 = i10;
    }

    public void D2(float f10) {
        this.f14258u1 = f10;
    }

    public void E2(int i10) {
        this.f14252o1 = i10;
    }

    public void F2(float f10) {
        this.f14259v1 = f10;
    }

    public void G2(int i10) {
        this.f14253p1 = i10;
    }

    @Override // o.m
    public void H1(int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int[] iArr;
        boolean z10;
        if (this.W0 > 0 && !J1()) {
            M1(0, 0);
            L1(false);
            return;
        }
        int iE1 = E1();
        int iF1 = F1();
        int iG1 = G1();
        int iD1 = D1();
        int[] iArr2 = new int[2];
        int i16 = (i11 - iE1) - iF1;
        int i17 = this.C1;
        if (i17 == 1) {
            i16 = (i13 - iG1) - iD1;
        }
        int i18 = i16;
        if (i17 == 0) {
            if (this.f14248k1 == -1) {
                this.f14248k1 = 0;
            }
            if (this.f14249l1 == -1) {
                this.f14249l1 = 0;
            }
        } else {
            if (this.f14248k1 == -1) {
                this.f14248k1 = 0;
            }
            if (this.f14249l1 == -1) {
                this.f14249l1 = 0;
            }
        }
        e[] eVarArr = this.V0;
        int i19 = 0;
        int i20 = 0;
        while (true) {
            i14 = this.W0;
            if (i19 >= i14) {
                break;
            }
            if (this.V0[i19].X() == 8) {
                i20++;
            }
            i19++;
        }
        if (i20 > 0) {
            eVarArr = new e[i14 - i20];
            int i21 = 0;
            for (int i22 = 0; i22 < this.W0; i22++) {
                e eVar = this.V0[i22];
                if (eVar.X() != 8) {
                    eVarArr[i21] = eVar;
                    i21++;
                }
            }
            i15 = i21;
        } else {
            i15 = i14;
        }
        this.H1 = eVarArr;
        this.I1 = i15;
        int i23 = this.A1;
        if (i23 == 0) {
            iArr = iArr2;
            z10 = true;
            u2(eVarArr, i15, this.C1, i18, iArr2);
        } else if (i23 == 1) {
            z10 = true;
            iArr = iArr2;
            s2(eVarArr, i15, this.C1, i18, iArr2);
        } else if (i23 == 2) {
            z10 = true;
            iArr = iArr2;
            r2(eVarArr, i15, this.C1, i18, iArr2);
        } else if (i23 != 3) {
            z10 = true;
            iArr = iArr2;
        } else {
            z10 = true;
            iArr = iArr2;
            t2(eVarArr, i15, this.C1, i18, iArr2);
        }
        int iMin = iArr[0] + iE1 + iF1;
        int iMin2 = iArr[z10 ? 1 : 0] + iG1 + iD1;
        if (i10 == 1073741824) {
            iMin = i11;
        } else if (i10 == Integer.MIN_VALUE) {
            iMin = Math.min(iMin, i11);
        } else if (i10 != 0) {
            iMin = 0;
        }
        if (i12 == 1073741824) {
            iMin2 = i13;
        } else if (i12 == Integer.MIN_VALUE) {
            iMin2 = Math.min(iMin2, i13);
        } else if (i12 != 0) {
            iMin2 = 0;
        }
        M1(iMin, iMin2);
        p1(iMin);
        Q0(iMin2);
        if (this.W0 <= 0) {
            z10 = false;
        }
        L1(z10);
    }

    public void H2(int i10) {
        this.B1 = i10;
    }

    public void I2(int i10) {
        this.C1 = i10;
    }

    public void J2(int i10) {
        this.f14263z1 = i10;
    }

    public void K2(float f10) {
        this.f14255r1 = f10;
    }

    public void L2(int i10) {
        this.f14261x1 = i10;
    }

    public void M2(int i10) {
        this.f14249l1 = i10;
    }

    public void N2(int i10) {
        this.A1 = i10;
    }

    @Override // o.e
    public void g(l.d dVar, boolean z10) {
        super.g(dVar, z10);
        boolean z11 = M() != null && ((f) M()).V1();
        int i10 = this.A1;
        if (i10 != 0) {
            if (i10 == 1) {
                int size = this.D1.size();
                int i11 = 0;
                while (i11 < size) {
                    ((a) this.D1.get(i11)).d(z11, i11, i11 == size + (-1));
                    i11++;
                }
            } else if (i10 == 2) {
                o2(z11);
            } else if (i10 == 3) {
                int size2 = this.D1.size();
                int i12 = 0;
                while (i12 < size2) {
                    ((a) this.D1.get(i12)).d(z11, i12, i12 == size2 + (-1));
                    i12++;
                }
            }
        } else if (this.D1.size() > 0) {
            ((a) this.D1.get(0)).d(z11, 0, true);
        }
        L1(false);
    }

    @Override // o.j, o.e
    public void n(e eVar, HashMap map) {
        super.n(eVar, map);
        g gVar = (g) eVar;
        this.f14248k1 = gVar.f14248k1;
        this.f14249l1 = gVar.f14249l1;
        this.f14250m1 = gVar.f14250m1;
        this.f14251n1 = gVar.f14251n1;
        this.f14252o1 = gVar.f14252o1;
        this.f14253p1 = gVar.f14253p1;
        this.f14254q1 = gVar.f14254q1;
        this.f14255r1 = gVar.f14255r1;
        this.f14256s1 = gVar.f14256s1;
        this.f14257t1 = gVar.f14257t1;
        this.f14258u1 = gVar.f14258u1;
        this.f14259v1 = gVar.f14259v1;
        this.f14260w1 = gVar.f14260w1;
        this.f14261x1 = gVar.f14261x1;
        this.f14262y1 = gVar.f14262y1;
        this.f14263z1 = gVar.f14263z1;
        this.A1 = gVar.A1;
        this.B1 = gVar.B1;
        this.C1 = gVar.C1;
    }

    public void v2(float f10) {
        this.f14256s1 = f10;
    }

    public void w2(int i10) {
        this.f14250m1 = i10;
    }

    public void x2(float f10) {
        this.f14257t1 = f10;
    }

    public void y2(int i10) {
        this.f14251n1 = i10;
    }

    public void z2(int i10) {
        this.f14262y1 = i10;
    }
}
