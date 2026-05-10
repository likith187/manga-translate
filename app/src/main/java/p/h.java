package p;

import java.util.ArrayList;
import o.d;
import o.e;
import p.b;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b.a f15096a = new b.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f15097b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f15098c = 0;

    private static boolean a(int i10, o.e eVar) {
        e.b bVar;
        e.b bVar2;
        e.b bVarC = eVar.C();
        e.b bVarV = eVar.V();
        o.f fVar = eVar.M() != null ? (o.f) eVar.M() : null;
        if (fVar != null) {
            fVar.C();
            e.b bVar3 = e.b.FIXED;
        }
        if (fVar != null) {
            fVar.V();
            e.b bVar4 = e.b.FIXED;
        }
        e.b bVar5 = e.b.FIXED;
        boolean z10 = bVarC == bVar5 || eVar.p0() || bVarC == e.b.WRAP_CONTENT || (bVarC == (bVar2 = e.b.MATCH_CONSTRAINT) && eVar.f14213w == 0 && eVar.f14180f0 == 0.0f && eVar.c0(0)) || (bVarC == bVar2 && eVar.f14213w == 1 && eVar.f0(0, eVar.Y()));
        boolean z11 = bVarV == bVar5 || eVar.q0() || bVarV == e.b.WRAP_CONTENT || (bVarV == (bVar = e.b.MATCH_CONSTRAINT) && eVar.f14215x == 0 && eVar.f14180f0 == 0.0f && eVar.c0(1)) || (bVarV == bVar && eVar.f14215x == 1 && eVar.f0(1, eVar.z()));
        if (eVar.f14180f0 <= 0.0f || !(z10 || z11)) {
            return z10 && z11;
        }
        return true;
    }

    private static void b(int i10, o.e eVar, b.InterfaceC0199b interfaceC0199b, boolean z10) {
        o.d dVar;
        o.d dVar2;
        o.d dVar3;
        o.d dVar4;
        if (eVar.i0()) {
            return;
        }
        boolean z11 = true;
        f15097b++;
        if (!(eVar instanceof o.f) && eVar.o0()) {
            int i11 = i10 + 1;
            if (a(i11, eVar)) {
                o.f.Y1(i11, eVar, interfaceC0199b, new b.a(), b.a.f15059k);
            }
        }
        o.d dVarQ = eVar.q(d.a.LEFT);
        o.d dVarQ2 = eVar.q(d.a.RIGHT);
        int iE = dVarQ.e();
        int iE2 = dVarQ2.e();
        if (dVarQ.d() != null && dVarQ.n()) {
            for (o.d dVar5 : dVarQ.d()) {
                o.e eVar2 = dVar5.f14163d;
                int i12 = i10 + 1;
                boolean zA = a(i12, eVar2);
                if (eVar2.o0() && zA) {
                    o.f.Y1(i12, eVar2, interfaceC0199b, new b.a(), b.a.f15059k);
                }
                boolean z12 = ((dVar5 == eVar2.Q && (dVar4 = eVar2.S.f14165f) != null && dVar4.n()) || (dVar5 == eVar2.S && (dVar3 = eVar2.Q.f14165f) != null && dVar3.n())) ? z11 : false;
                e.b bVarC = eVar2.C();
                e.b bVar = e.b.MATCH_CONSTRAINT;
                if (bVarC != bVar || zA) {
                    if (!eVar2.o0()) {
                        o.d dVar6 = eVar2.Q;
                        if (dVar5 == dVar6 && eVar2.S.f14165f == null) {
                            int iF = dVar6.f() + iE;
                            eVar2.K0(iF, eVar2.Y() + iF);
                            b(i12, eVar2, interfaceC0199b, z10);
                        } else {
                            o.d dVar7 = eVar2.S;
                            if (dVar5 == dVar7 && dVar6.f14165f == null) {
                                int iF2 = iE - dVar7.f();
                                eVar2.K0(iF2 - eVar2.Y(), iF2);
                                b(i12, eVar2, interfaceC0199b, z10);
                            } else if (z12 && !eVar2.k0()) {
                                d(i12, interfaceC0199b, eVar2, z10);
                            }
                        }
                    }
                } else if (eVar2.C() == bVar && eVar2.A >= 0 && eVar2.f14219z >= 0 && ((eVar2.X() == 8 || (eVar2.f14213w == 0 && eVar2.x() == 0.0f)) && !eVar2.k0() && !eVar2.n0() && z12 && !eVar2.k0())) {
                    e(i12, eVar, interfaceC0199b, eVar2, z10);
                }
                z11 = true;
            }
        }
        if (eVar instanceof o.h) {
            return;
        }
        if (dVarQ2.d() != null && dVarQ2.n()) {
            for (o.d dVar8 : dVarQ2.d()) {
                o.e eVar3 = dVar8.f14163d;
                int i13 = i10 + 1;
                boolean zA2 = a(i13, eVar3);
                if (eVar3.o0() && zA2) {
                    o.f.Y1(i13, eVar3, interfaceC0199b, new b.a(), b.a.f15059k);
                }
                boolean z13 = (dVar8 == eVar3.Q && (dVar2 = eVar3.S.f14165f) != null && dVar2.n()) || (dVar8 == eVar3.S && (dVar = eVar3.Q.f14165f) != null && dVar.n());
                e.b bVarC2 = eVar3.C();
                e.b bVar2 = e.b.MATCH_CONSTRAINT;
                if (bVarC2 != bVar2 || zA2) {
                    if (!eVar3.o0()) {
                        o.d dVar9 = eVar3.Q;
                        if (dVar8 == dVar9 && eVar3.S.f14165f == null) {
                            int iF3 = dVar9.f() + iE2;
                            eVar3.K0(iF3, eVar3.Y() + iF3);
                            b(i13, eVar3, interfaceC0199b, z10);
                        } else {
                            o.d dVar10 = eVar3.S;
                            if (dVar8 == dVar10 && dVar9.f14165f == null) {
                                int iF4 = iE2 - dVar10.f();
                                eVar3.K0(iF4 - eVar3.Y(), iF4);
                                b(i13, eVar3, interfaceC0199b, z10);
                            } else if (z13 && !eVar3.k0()) {
                                d(i13, interfaceC0199b, eVar3, z10);
                            }
                        }
                    }
                } else if (eVar3.C() == bVar2 && eVar3.A >= 0 && eVar3.f14219z >= 0 && (eVar3.X() == 8 || (eVar3.f14213w == 0 && eVar3.x() == 0.0f))) {
                    if (!eVar3.k0() && !eVar3.n0() && z13 && !eVar3.k0()) {
                        e(i13, eVar, interfaceC0199b, eVar3, z10);
                    }
                }
            }
        }
        eVar.s0();
    }

    private static void c(int i10, o.a aVar, b.InterfaceC0199b interfaceC0199b, int i11, boolean z10) {
        if (aVar.y1()) {
            if (i11 == 0) {
                b(i10 + 1, aVar, interfaceC0199b, z10);
            } else {
                i(i10 + 1, aVar, interfaceC0199b);
            }
        }
    }

    private static void d(int i10, b.InterfaceC0199b interfaceC0199b, o.e eVar, boolean z10) {
        float fA = eVar.A();
        int iE = eVar.Q.f14165f.e();
        int iE2 = eVar.S.f14165f.e();
        int iF = eVar.Q.f() + iE;
        int iF2 = iE2 - eVar.S.f();
        if (iE == iE2) {
            fA = 0.5f;
        } else {
            iE = iF;
            iE2 = iF2;
        }
        int iY = eVar.Y();
        int i11 = (iE2 - iE) - iY;
        if (iE > iE2) {
            i11 = (iE - iE2) - iY;
        }
        int i12 = ((int) (i11 > 0 ? (fA * i11) + 0.5f : fA * i11)) + iE;
        int i13 = i12 + iY;
        if (iE > iE2) {
            i13 = i12 - iY;
        }
        eVar.K0(i12, i13);
        b(i10 + 1, eVar, interfaceC0199b, z10);
    }

    private static void e(int i10, o.e eVar, b.InterfaceC0199b interfaceC0199b, o.e eVar2, boolean z10) {
        float fA = eVar2.A();
        int iE = eVar2.Q.f14165f.e() + eVar2.Q.f();
        int iE2 = eVar2.S.f14165f.e() - eVar2.S.f();
        if (iE2 >= iE) {
            int iY = eVar2.Y();
            if (eVar2.X() != 8) {
                int i11 = eVar2.f14213w;
                if (i11 == 2) {
                    iY = (int) (eVar2.A() * 0.5f * (eVar instanceof o.f ? eVar.Y() : eVar.M().Y()));
                } else if (i11 == 0) {
                    iY = iE2 - iE;
                }
                iY = Math.max(eVar2.f14219z, iY);
                int i12 = eVar2.A;
                if (i12 > 0) {
                    iY = Math.min(i12, iY);
                }
            }
            int i13 = iE + ((int) ((fA * ((iE2 - iE) - iY)) + 0.5f));
            eVar2.K0(i13, iY + i13);
            b(i10 + 1, eVar2, interfaceC0199b, z10);
        }
    }

    private static void f(int i10, b.InterfaceC0199b interfaceC0199b, o.e eVar) {
        float fT = eVar.T();
        int iE = eVar.R.f14165f.e();
        int iE2 = eVar.T.f14165f.e();
        int iF = eVar.R.f() + iE;
        int iF2 = iE2 - eVar.T.f();
        if (iE == iE2) {
            fT = 0.5f;
        } else {
            iE = iF;
            iE2 = iF2;
        }
        int iZ = eVar.z();
        int i11 = (iE2 - iE) - iZ;
        if (iE > iE2) {
            i11 = (iE - iE2) - iZ;
        }
        int i12 = (int) (i11 > 0 ? (fT * i11) + 0.5f : fT * i11);
        int i13 = iE + i12;
        int i14 = i13 + iZ;
        if (iE > iE2) {
            i13 = iE - i12;
            i14 = i13 - iZ;
        }
        eVar.N0(i13, i14);
        i(i10 + 1, eVar, interfaceC0199b);
    }

    private static void g(int i10, o.e eVar, b.InterfaceC0199b interfaceC0199b, o.e eVar2) {
        float fT = eVar2.T();
        int iE = eVar2.R.f14165f.e() + eVar2.R.f();
        int iE2 = eVar2.T.f14165f.e() - eVar2.T.f();
        if (iE2 >= iE) {
            int iZ = eVar2.z();
            if (eVar2.X() != 8) {
                int i11 = eVar2.f14215x;
                if (i11 == 2) {
                    iZ = (int) (fT * 0.5f * (eVar instanceof o.f ? eVar.z() : eVar.M().z()));
                } else if (i11 == 0) {
                    iZ = iE2 - iE;
                }
                iZ = Math.max(eVar2.C, iZ);
                int i12 = eVar2.D;
                if (i12 > 0) {
                    iZ = Math.min(i12, iZ);
                }
            }
            int i13 = iE + ((int) ((fT * ((iE2 - iE) - iZ)) + 0.5f));
            eVar2.N0(i13, iZ + i13);
            i(i10 + 1, eVar2, interfaceC0199b);
        }
    }

    public static void h(o.f fVar, b.InterfaceC0199b interfaceC0199b) {
        e.b bVarC = fVar.C();
        e.b bVarV = fVar.V();
        f15097b = 0;
        f15098c = 0;
        fVar.y0();
        ArrayList arrayListW1 = fVar.w1();
        int size = arrayListW1.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((o.e) arrayListW1.get(i10)).y0();
        }
        boolean zV1 = fVar.V1();
        if (bVarC == e.b.FIXED) {
            fVar.K0(0, fVar.Y());
        } else {
            fVar.L0(0);
        }
        boolean z10 = false;
        boolean z11 = false;
        for (int i11 = 0; i11 < size; i11++) {
            o.e eVar = (o.e) arrayListW1.get(i11);
            if (eVar instanceof o.h) {
                o.h hVar = (o.h) eVar;
                if (hVar.x1() == 1) {
                    if (hVar.y1() != -1) {
                        hVar.B1(hVar.y1());
                    } else if (hVar.z1() != -1 && fVar.p0()) {
                        hVar.B1(fVar.Y() - hVar.z1());
                    } else if (fVar.p0()) {
                        hVar.B1((int) ((hVar.A1() * fVar.Y()) + 0.5f));
                    }
                    z10 = true;
                }
            } else if ((eVar instanceof o.a) && ((o.a) eVar).C1() == 0) {
                z11 = true;
            }
        }
        if (z10) {
            for (int i12 = 0; i12 < size; i12++) {
                o.e eVar2 = (o.e) arrayListW1.get(i12);
                if (eVar2 instanceof o.h) {
                    o.h hVar2 = (o.h) eVar2;
                    if (hVar2.x1() == 1) {
                        b(0, hVar2, interfaceC0199b, zV1);
                    }
                }
            }
        }
        b(0, fVar, interfaceC0199b, zV1);
        if (z11) {
            for (int i13 = 0; i13 < size; i13++) {
                o.e eVar3 = (o.e) arrayListW1.get(i13);
                if (eVar3 instanceof o.a) {
                    o.a aVar = (o.a) eVar3;
                    if (aVar.C1() == 0) {
                        c(0, aVar, interfaceC0199b, 0, zV1);
                    }
                }
            }
        }
        if (bVarV == e.b.FIXED) {
            fVar.N0(0, fVar.z());
        } else {
            fVar.M0(0);
        }
        boolean z12 = false;
        boolean z13 = false;
        for (int i14 = 0; i14 < size; i14++) {
            o.e eVar4 = (o.e) arrayListW1.get(i14);
            if (eVar4 instanceof o.h) {
                o.h hVar3 = (o.h) eVar4;
                if (hVar3.x1() == 0) {
                    if (hVar3.y1() != -1) {
                        hVar3.B1(hVar3.y1());
                    } else if (hVar3.z1() != -1 && fVar.q0()) {
                        hVar3.B1(fVar.z() - hVar3.z1());
                    } else if (fVar.q0()) {
                        hVar3.B1((int) ((hVar3.A1() * fVar.z()) + 0.5f));
                    }
                    z12 = true;
                }
            } else if ((eVar4 instanceof o.a) && ((o.a) eVar4).C1() == 1) {
                z13 = true;
            }
        }
        if (z12) {
            for (int i15 = 0; i15 < size; i15++) {
                o.e eVar5 = (o.e) arrayListW1.get(i15);
                if (eVar5 instanceof o.h) {
                    o.h hVar4 = (o.h) eVar5;
                    if (hVar4.x1() == 0) {
                        i(1, hVar4, interfaceC0199b);
                    }
                }
            }
        }
        i(0, fVar, interfaceC0199b);
        if (z13) {
            for (int i16 = 0; i16 < size; i16++) {
                o.e eVar6 = (o.e) arrayListW1.get(i16);
                if (eVar6 instanceof o.a) {
                    o.a aVar2 = (o.a) eVar6;
                    if (aVar2.C1() == 1) {
                        c(0, aVar2, interfaceC0199b, 1, zV1);
                    }
                }
            }
        }
        for (int i17 = 0; i17 < size; i17++) {
            o.e eVar7 = (o.e) arrayListW1.get(i17);
            if (eVar7.o0() && a(0, eVar7)) {
                o.f.Y1(0, eVar7, interfaceC0199b, f15096a, b.a.f15059k);
                if (!(eVar7 instanceof o.h)) {
                    b(0, eVar7, interfaceC0199b, zV1);
                    i(0, eVar7, interfaceC0199b);
                } else if (((o.h) eVar7).x1() == 0) {
                    i(0, eVar7, interfaceC0199b);
                } else {
                    b(0, eVar7, interfaceC0199b, zV1);
                }
            }
        }
    }

    private static void i(int i10, o.e eVar, b.InterfaceC0199b interfaceC0199b) {
        o.d dVar;
        o.d dVar2;
        o.d dVar3;
        o.d dVar4;
        if (eVar.r0()) {
            return;
        }
        f15098c++;
        if (!(eVar instanceof o.f) && eVar.o0()) {
            int i11 = i10 + 1;
            if (a(i11, eVar)) {
                o.f.Y1(i11, eVar, interfaceC0199b, new b.a(), b.a.f15059k);
            }
        }
        o.d dVarQ = eVar.q(d.a.TOP);
        o.d dVarQ2 = eVar.q(d.a.BOTTOM);
        int iE = dVarQ.e();
        int iE2 = dVarQ2.e();
        if (dVarQ.d() != null && dVarQ.n()) {
            for (o.d dVar5 : dVarQ.d()) {
                o.e eVar2 = dVar5.f14163d;
                int i12 = i10 + 1;
                boolean zA = a(i12, eVar2);
                if (eVar2.o0() && zA) {
                    o.f.Y1(i12, eVar2, interfaceC0199b, new b.a(), b.a.f15059k);
                }
                boolean z10 = (dVar5 == eVar2.R && (dVar4 = eVar2.T.f14165f) != null && dVar4.n()) || (dVar5 == eVar2.T && (dVar3 = eVar2.R.f14165f) != null && dVar3.n());
                e.b bVarV = eVar2.V();
                e.b bVar = e.b.MATCH_CONSTRAINT;
                if (bVarV != bVar || zA) {
                    if (!eVar2.o0()) {
                        o.d dVar6 = eVar2.R;
                        if (dVar5 == dVar6 && eVar2.T.f14165f == null) {
                            int iF = dVar6.f() + iE;
                            eVar2.N0(iF, eVar2.z() + iF);
                            i(i12, eVar2, interfaceC0199b);
                        } else {
                            o.d dVar7 = eVar2.T;
                            if (dVar5 == dVar7 && dVar6.f14165f == null) {
                                int iF2 = iE - dVar7.f();
                                eVar2.N0(iF2 - eVar2.z(), iF2);
                                i(i12, eVar2, interfaceC0199b);
                            } else if (z10 && !eVar2.m0()) {
                                f(i12, interfaceC0199b, eVar2);
                            }
                        }
                    }
                } else if (eVar2.V() == bVar && eVar2.D >= 0 && eVar2.C >= 0 && (eVar2.X() == 8 || (eVar2.f14215x == 0 && eVar2.x() == 0.0f))) {
                    if (!eVar2.m0() && !eVar2.n0() && z10 && !eVar2.m0()) {
                        g(i12, eVar, interfaceC0199b, eVar2);
                    }
                }
            }
        }
        if (eVar instanceof o.h) {
            return;
        }
        if (dVarQ2.d() != null && dVarQ2.n()) {
            for (o.d dVar8 : dVarQ2.d()) {
                o.e eVar3 = dVar8.f14163d;
                int i13 = i10 + 1;
                boolean zA2 = a(i13, eVar3);
                if (eVar3.o0() && zA2) {
                    o.f.Y1(i13, eVar3, interfaceC0199b, new b.a(), b.a.f15059k);
                }
                boolean z11 = (dVar8 == eVar3.R && (dVar2 = eVar3.T.f14165f) != null && dVar2.n()) || (dVar8 == eVar3.T && (dVar = eVar3.R.f14165f) != null && dVar.n());
                e.b bVarV2 = eVar3.V();
                e.b bVar2 = e.b.MATCH_CONSTRAINT;
                if (bVarV2 != bVar2 || zA2) {
                    if (!eVar3.o0()) {
                        o.d dVar9 = eVar3.R;
                        if (dVar8 == dVar9 && eVar3.T.f14165f == null) {
                            int iF3 = dVar9.f() + iE2;
                            eVar3.N0(iF3, eVar3.z() + iF3);
                            i(i13, eVar3, interfaceC0199b);
                        } else {
                            o.d dVar10 = eVar3.T;
                            if (dVar8 == dVar10 && dVar9.f14165f == null) {
                                int iF4 = iE2 - dVar10.f();
                                eVar3.N0(iF4 - eVar3.z(), iF4);
                                i(i13, eVar3, interfaceC0199b);
                            } else if (z11 && !eVar3.m0()) {
                                f(i13, interfaceC0199b, eVar3);
                            }
                        }
                    }
                } else if (eVar3.V() == bVar2 && eVar3.D >= 0 && eVar3.C >= 0 && (eVar3.X() == 8 || (eVar3.f14215x == 0 && eVar3.x() == 0.0f))) {
                    if (!eVar3.m0() && !eVar3.n0() && z11 && !eVar3.m0()) {
                        g(i13, eVar, interfaceC0199b, eVar3);
                    }
                }
            }
        }
        o.d dVarQ3 = eVar.q(d.a.BASELINE);
        if (dVarQ3.d() != null && dVarQ3.n()) {
            int iE3 = dVarQ3.e();
            for (o.d dVar11 : dVarQ3.d()) {
                o.e eVar4 = dVar11.f14163d;
                int i14 = i10 + 1;
                boolean zA3 = a(i14, eVar4);
                if (eVar4.o0() && zA3) {
                    o.f.Y1(i14, eVar4, interfaceC0199b, new b.a(), b.a.f15059k);
                }
                if (eVar4.V() != e.b.MATCH_CONSTRAINT || zA3) {
                    if (!eVar4.o0() && dVar11 == eVar4.U) {
                        eVar4.J0(dVar11.f() + iE3);
                        i(i14, eVar4, interfaceC0199b);
                    }
                }
            }
        }
        eVar.t0();
    }
}
