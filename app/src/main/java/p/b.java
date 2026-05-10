package p;

import java.util.ArrayList;
import o.d;
import o.e;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a */
    private final ArrayList f15056a = new ArrayList();

    /* JADX INFO: renamed from: b */
    private a f15057b = new a();

    /* JADX INFO: renamed from: c */
    private o.f f15058c;

    public static class a {

        /* JADX INFO: renamed from: k */
        public static int f15059k = 0;

        /* JADX INFO: renamed from: l */
        public static int f15060l = 1;

        /* JADX INFO: renamed from: m */
        public static int f15061m = 2;

        /* JADX INFO: renamed from: a */
        public e.b f15062a;

        /* JADX INFO: renamed from: b */
        public e.b f15063b;

        /* JADX INFO: renamed from: c */
        public int f15064c;

        /* JADX INFO: renamed from: d */
        public int f15065d;

        /* JADX INFO: renamed from: e */
        public int f15066e;

        /* JADX INFO: renamed from: f */
        public int f15067f;

        /* JADX INFO: renamed from: g */
        public int f15068g;

        /* JADX INFO: renamed from: h */
        public boolean f15069h;

        /* JADX INFO: renamed from: i */
        public boolean f15070i;

        /* JADX INFO: renamed from: j */
        public int f15071j;
    }

    /* JADX INFO: renamed from: p.b$b */
    public interface InterfaceC0199b {
        void a();

        void b(o.e eVar, a aVar);
    }

    public b(o.f fVar) {
        this.f15058c = fVar;
    }

    private boolean a(InterfaceC0199b interfaceC0199b, o.e eVar, int i10) {
        this.f15057b.f15062a = eVar.C();
        this.f15057b.f15063b = eVar.V();
        this.f15057b.f15064c = eVar.Y();
        this.f15057b.f15065d = eVar.z();
        a aVar = this.f15057b;
        aVar.f15070i = false;
        aVar.f15071j = i10;
        e.b bVar = aVar.f15062a;
        e.b bVar2 = e.b.MATCH_CONSTRAINT;
        boolean z10 = bVar == bVar2;
        boolean z11 = aVar.f15063b == bVar2;
        boolean z12 = z10 && eVar.f14180f0 > 0.0f;
        boolean z13 = z11 && eVar.f14180f0 > 0.0f;
        if (z12 && eVar.f14217y[0] == 4) {
            aVar.f15062a = e.b.FIXED;
        }
        if (z13 && eVar.f14217y[1] == 4) {
            aVar.f15063b = e.b.FIXED;
        }
        interfaceC0199b.b(eVar, aVar);
        eVar.p1(this.f15057b.f15066e);
        eVar.Q0(this.f15057b.f15067f);
        eVar.P0(this.f15057b.f15069h);
        eVar.F0(this.f15057b.f15068g);
        a aVar2 = this.f15057b;
        aVar2.f15071j = a.f15059k;
        return aVar2.f15070i;
    }

    /* JADX WARN: Removed duplicated region for block: B:126:0x0097 A[PHI: r10
      0x0097: PHI (r10v2 boolean) = (r10v1 boolean), (r10v1 boolean), (r10v1 boolean), (r10v4 boolean), (r10v4 boolean) binds: [B:102:0x0061, B:104:0x0067, B:106:0x006b, B:124:0x0094, B:122:0x008d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x00a0 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void b(o.f r13) {
        /*
            r12 = this;
            java.util.ArrayList r0 = r13.V0
            int r0 = r0.size()
            r1 = 64
            boolean r1 = r13.Z1(r1)
            p.b$b r2 = r13.O1()
            r3 = 0
            r4 = r3
        L12:
            if (r4 >= r0) goto La4
            java.util.ArrayList r5 = r13.V0
            java.lang.Object r5 = r5.get(r4)
            o.e r5 = (o.e) r5
            boolean r6 = r5 instanceof o.h
            if (r6 == 0) goto L22
            goto La0
        L22:
            boolean r6 = r5 instanceof o.a
            if (r6 == 0) goto L28
            goto La0
        L28:
            boolean r6 = r5.n0()
            if (r6 == 0) goto L30
            goto La0
        L30:
            if (r1 == 0) goto L47
            p.l r6 = r5.f14177e
            if (r6 == 0) goto L47
            p.n r7 = r5.f14179f
            if (r7 == 0) goto L47
            p.g r6 = r6.f15130e
            boolean r6 = r6.f15092j
            if (r6 == 0) goto L47
            p.g r6 = r7.f15130e
            boolean r6 = r6.f15092j
            if (r6 == 0) goto L47
            goto La0
        L47:
            o.e$b r6 = r5.w(r3)
            r7 = 1
            o.e$b r8 = r5.w(r7)
            o.e$b r9 = o.e.b.MATCH_CONSTRAINT
            if (r6 != r9) goto L60
            int r10 = r5.f14213w
            if (r10 == r7) goto L60
            if (r8 != r9) goto L60
            int r10 = r5.f14215x
            if (r10 == r7) goto L60
            r10 = r7
            goto L61
        L60:
            r10 = r3
        L61:
            if (r10 != 0) goto L97
            boolean r11 = r13.Z1(r7)
            if (r11 == 0) goto L97
            boolean r11 = r5 instanceof o.m
            if (r11 != 0) goto L97
            if (r6 != r9) goto L7c
            int r11 = r5.f14213w
            if (r11 != 0) goto L7c
            if (r8 == r9) goto L7c
            boolean r11 = r5.k0()
            if (r11 != 0) goto L7c
            r10 = r7
        L7c:
            if (r8 != r9) goto L8b
            int r11 = r5.f14215x
            if (r11 != 0) goto L8b
            if (r6 == r9) goto L8b
            boolean r11 = r5.k0()
            if (r11 != 0) goto L8b
            r10 = r7
        L8b:
            if (r6 == r9) goto L8f
            if (r8 != r9) goto L97
        L8f:
            float r6 = r5.f14180f0
            r8 = 0
            int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r6 <= 0) goto L97
            goto L98
        L97:
            r7 = r10
        L98:
            if (r7 == 0) goto L9b
            goto La0
        L9b:
            int r6 = p.b.a.f15059k
            r12.a(r2, r5, r6)
        La0:
            int r4 = r4 + 1
            goto L12
        La4:
            r2.a()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p.b.b(o.f):void");
    }

    private void c(o.f fVar, String str, int i10, int i11, int i12) {
        fVar.getClass();
        int iK = fVar.K();
        int iJ = fVar.J();
        fVar.f1(0);
        fVar.e1(0);
        fVar.p1(i11);
        fVar.Q0(i12);
        fVar.f1(iK);
        fVar.e1(iJ);
        this.f15058c.d2(i10);
        this.f15058c.x1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v17, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r15v19 */
    /* JADX WARN: Type inference failed for: r15v20 */
    /* JADX WARN: Type inference failed for: r15v5, types: [int] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v10 */
    /* JADX WARN: Type inference failed for: r16v13 */
    /* JADX WARN: Type inference failed for: r16v14 */
    /* JADX WARN: Type inference failed for: r16v15 */
    /* JADX WARN: Type inference failed for: r16v16 */
    /* JADX WARN: Type inference failed for: r16v17 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* JADX WARN: Type inference failed for: r16v9 */
    public long d(o.f fVar, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        boolean z10;
        boolean zM1;
        int i19;
        o.f fVar2;
        int i20;
        boolean z11;
        int i21;
        ?? r16;
        int i22;
        int i23;
        int i24;
        int i25;
        b bVar = this;
        InterfaceC0199b interfaceC0199bO1 = fVar.O1();
        int size = fVar.V0.size();
        int iY = fVar.Y();
        int iZ = fVar.z();
        boolean zB = o.k.b(i10, 128);
        int i26 = 1;
        boolean z12 = zB || o.k.b(i10, 64);
        if (z12) {
            for (int i27 = 0; i27 < size; i27++) {
                o.e eVar = (o.e) fVar.V0.get(i27);
                e.b bVarC = eVar.C();
                e.b bVar2 = e.b.MATCH_CONSTRAINT;
                boolean z13 = (bVarC == bVar2) && (eVar.V() == bVar2) && eVar.x() > 0.0f;
                if ((eVar.k0() && z13) || ((eVar.m0() && z13) || (eVar instanceof o.m) || eVar.k0() || eVar.m0())) {
                    z12 = false;
                    break;
                }
            }
        }
        if (z12) {
            boolean z14 = l.d.f13462s;
        }
        boolean z15 = z12 & ((i13 == 1073741824 && i15 == 1073741824) || zB);
        int i28 = 2;
        if (z15) {
            int iMin = Math.min(fVar.I(), i14);
            int iMin2 = Math.min(fVar.H(), i16);
            if (i13 == 1073741824 && fVar.Y() != iMin) {
                fVar.p1(iMin);
                fVar.S1();
            }
            if (i15 == 1073741824 && fVar.z() != iMin2) {
                fVar.Q0(iMin2);
                fVar.S1();
            }
            if (i13 == 1073741824 && i15 == 1073741824) {
                zM1 = fVar.K1(zB);
                i19 = 2;
                z10 = false;
            } else {
                boolean zL1 = fVar.L1(zB);
                z10 = false;
                if (i13 == 1073741824) {
                    zL1 &= fVar.M1(zB, 0);
                    i19 = 1;
                } else {
                    i19 = 0;
                }
                if (i15 == 1073741824) {
                    zM1 = fVar.M1(zB, 1) & zL1;
                    i19++;
                } else {
                    zM1 = zL1;
                }
            }
            if (zM1) {
                fVar.u1(i13 == 1073741824 ? true : z10, i15 == 1073741824 ? true : z10);
            }
        } else {
            z10 = false;
            zM1 = false;
            i19 = 0;
        }
        if (zM1 && i19 == 2) {
            return 0L;
        }
        int iP1 = fVar.P1();
        if (size > 0) {
            b(fVar);
        }
        e(fVar);
        int size2 = bVar.f15056a.size();
        if (size > 0) {
            c(fVar, "First pass", 0, iY, iZ);
        }
        if (size2 > 0) {
            e.b bVarC2 = fVar.C();
            e.b bVar3 = e.b.WRAP_CONTENT;
            boolean z16 = bVarC2 == bVar3 ? true : z10;
            boolean z17 = fVar.V() == bVar3 ? true : z10;
            int iMax = Math.max(fVar.Y(), bVar.f15058c.K());
            int iMax2 = Math.max(fVar.z(), bVar.f15058c.J());
            boolean z18 = z10;
            ?? r162 = z18;
            ?? r15 = z18;
            while (r15 < size2) {
                o.e eVar2 = (o.e) bVar.f15056a.get(r15);
                if (eVar2 instanceof o.m) {
                    int iY2 = eVar2.Y();
                    int iZ2 = eVar2.z();
                    int i29 = (r162 == true ? 1 : 0) | (bVar.a(interfaceC0199bO1, eVar2, a.f15060l) ? 1 : 0);
                    int iY3 = eVar2.Y();
                    i23 = iP1;
                    int iZ3 = eVar2.z();
                    if (iY3 != iY2) {
                        eVar2.p1(iY3);
                        if (z16 && eVar2.O() > iMax) {
                            iMax = Math.max(iMax, eVar2.O() + eVar2.q(d.a.RIGHT).f());
                        }
                        i24 = 1;
                    } else {
                        i24 = i29;
                    }
                    if (iZ3 != iZ2) {
                        eVar2.Q0(iZ3);
                        if (z17 && eVar2.t() > iMax2) {
                            iMax2 = Math.max(iMax2, eVar2.t() + eVar2.q(d.a.BOTTOM).f());
                        }
                        i24 = 1;
                    }
                    r162 = i24 | (((o.m) eVar2).K1() ? 1 : 0);
                    i25 = 1;
                } else {
                    i23 = iP1;
                    i25 = i26;
                }
                iP1 = i23;
                i26 = i25;
                i28 = 2;
                r15 += i25;
                r162 = r162;
            }
            int i30 = iP1;
            int i31 = i28;
            int i32 = 0;
            ?? r163 = r162;
            while (i32 < i31) {
                int i33 = 0;
                ?? r164 = r163;
                while (i33 < size2) {
                    o.e eVar3 = (o.e) bVar.f15056a.get(i33);
                    if (((eVar3 instanceof o.i) && !(eVar3 instanceof o.m)) || (eVar3 instanceof o.h) || eVar3.X() == 8 || ((z15 && eVar3.f14177e.f15130e.f15092j && eVar3.f14179f.f15130e.f15092j) || (eVar3 instanceof o.m))) {
                        z11 = z15;
                        r16 = r164;
                    } else {
                        int iY4 = eVar3.Y();
                        int iZ4 = eVar3.z();
                        int iR = eVar3.r();
                        int i34 = a.f15060l;
                        z11 = z15;
                        if (i32 == 1) {
                            i34 = a.f15061m;
                        }
                        int i35 = (r164 == true ? 1 : 0) | (bVar.a(interfaceC0199bO1, eVar3, i34) ? 1 : 0);
                        int iY5 = eVar3.Y();
                        int iZ5 = eVar3.z();
                        if (iY5 != iY4) {
                            eVar3.p1(iY5);
                            if (z16 && eVar3.O() > iMax) {
                                iMax = Math.max(iMax, eVar3.O() + eVar3.q(d.a.RIGHT).f());
                            }
                            i21 = 1;
                        } else {
                            i21 = i35;
                        }
                        if (iZ5 != iZ4) {
                            eVar3.Q0(iZ5);
                            if (z17 && eVar3.t() > iMax2) {
                                iMax2 = Math.max(iMax2, eVar3.t() + eVar3.q(d.a.BOTTOM).f());
                            }
                            i21 = 1;
                        }
                        if (!eVar3.b0() || iR == eVar3.r()) {
                            r16 = i21;
                        } else {
                            i22 = 1;
                            r16 = 1;
                            i33 += i22;
                            bVar = this;
                            z15 = z11;
                            r164 = r16;
                        }
                    }
                    i22 = 1;
                    i33 += i22;
                    bVar = this;
                    z15 = z11;
                    r164 = r16;
                }
                boolean z19 = z15;
                if (r164 == 0) {
                    break;
                }
                i32++;
                c(fVar, "intermediate pass", i32, iY, iZ);
                i31 = 2;
                r163 = 0;
                bVar = this;
                z15 = z19;
            }
            fVar2 = fVar;
            i20 = i30;
        } else {
            fVar2 = fVar;
            i20 = iP1;
        }
        fVar2.c2(i20);
        return 0L;
    }

    public void e(o.f fVar) {
        this.f15056a.clear();
        int size = fVar.V0.size();
        for (int i10 = 0; i10 < size; i10++) {
            o.e eVar = (o.e) fVar.V0.get(i10);
            e.b bVarC = eVar.C();
            e.b bVar = e.b.MATCH_CONSTRAINT;
            if (bVarC == bVar || eVar.V() == bVar) {
                this.f15056a.add(eVar);
            }
        }
        fVar.S1();
    }
}
