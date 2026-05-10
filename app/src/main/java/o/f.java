package o;

import com.oplus.aiunit.core.ConfigPackage;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import o.e;
import p.b;

/* JADX INFO: loaded from: classes.dex */
public class f extends n {
    private int Y0;

    /* JADX INFO: renamed from: c1 */
    int f14224c1;

    /* JADX INFO: renamed from: d1 */
    int f14225d1;

    /* JADX INFO: renamed from: e1 */
    int f14226e1;

    /* JADX INFO: renamed from: f1 */
    int f14227f1;
    p.b W0 = new p.b(this);
    public p.e X0 = new p.e(this);
    protected b.InterfaceC0199b Z0 = null;

    /* JADX INFO: renamed from: a1 */
    private boolean f14222a1 = false;

    /* JADX INFO: renamed from: b1 */
    protected l.d f14223b1 = new l.d();

    /* JADX INFO: renamed from: g1 */
    public int f14228g1 = 0;

    /* JADX INFO: renamed from: h1 */
    public int f14229h1 = 0;

    /* JADX INFO: renamed from: i1 */
    c[] f14230i1 = new c[4];

    /* JADX INFO: renamed from: j1 */
    c[] f14231j1 = new c[4];

    /* JADX INFO: renamed from: k1 */
    public boolean f14232k1 = false;

    /* JADX INFO: renamed from: l1 */
    public boolean f14233l1 = false;

    /* JADX INFO: renamed from: m1 */
    public boolean f14234m1 = false;

    /* JADX INFO: renamed from: n1 */
    public int f14235n1 = 0;

    /* JADX INFO: renamed from: o1 */
    public int f14236o1 = 0;

    /* JADX INFO: renamed from: p1 */
    private int f14237p1 = 257;

    /* JADX INFO: renamed from: q1 */
    public boolean f14238q1 = false;

    /* JADX INFO: renamed from: r1 */
    private boolean f14239r1 = false;

    /* JADX INFO: renamed from: s1 */
    private boolean f14240s1 = false;

    /* JADX INFO: renamed from: t1 */
    int f14241t1 = 0;

    /* JADX INFO: renamed from: u1 */
    private WeakReference f14242u1 = null;

    /* JADX INFO: renamed from: v1 */
    private WeakReference f14243v1 = null;

    /* JADX INFO: renamed from: w1 */
    private WeakReference f14244w1 = null;

    /* JADX INFO: renamed from: x1 */
    private WeakReference f14245x1 = null;

    /* JADX INFO: renamed from: y1 */
    HashSet f14246y1 = new HashSet();

    /* JADX INFO: renamed from: z1 */
    public b.a f14247z1 = new b.a();

    private void C1(e eVar) {
        int i10 = this.f14228g1 + 1;
        c[] cVarArr = this.f14231j1;
        if (i10 >= cVarArr.length) {
            this.f14231j1 = (c[]) Arrays.copyOf(cVarArr, cVarArr.length * 2);
        }
        this.f14231j1[this.f14228g1] = new c(eVar, 0, V1());
        this.f14228g1++;
    }

    private void F1(d dVar, l.i iVar) {
        this.f14223b1.h(iVar, this.f14223b1.q(dVar), 0, 5);
    }

    private void G1(d dVar, l.i iVar) {
        this.f14223b1.h(this.f14223b1.q(dVar), iVar, 0, 5);
    }

    private void H1(e eVar) {
        int i10 = this.f14229h1 + 1;
        c[] cVarArr = this.f14230i1;
        if (i10 >= cVarArr.length) {
            this.f14230i1 = (c[]) Arrays.copyOf(cVarArr, cVarArr.length * 2);
        }
        this.f14230i1[this.f14229h1] = new c(eVar, 1, V1());
        this.f14229h1++;
    }

    public static boolean Y1(int i10, e eVar, b.InterfaceC0199b interfaceC0199b, b.a aVar, int i11) {
        int i12;
        int i13;
        if (interfaceC0199b == null) {
            return false;
        }
        if (eVar.X() == 8 || (eVar instanceof h) || (eVar instanceof a)) {
            aVar.f15066e = 0;
            aVar.f15067f = 0;
            return false;
        }
        aVar.f15062a = eVar.C();
        aVar.f15063b = eVar.V();
        aVar.f15064c = eVar.Y();
        aVar.f15065d = eVar.z();
        aVar.f15070i = false;
        aVar.f15071j = i11;
        e.b bVar = aVar.f15062a;
        e.b bVar2 = e.b.MATCH_CONSTRAINT;
        boolean z10 = bVar == bVar2;
        boolean z11 = aVar.f15063b == bVar2;
        boolean z12 = z10 && eVar.f14180f0 > 0.0f;
        boolean z13 = z11 && eVar.f14180f0 > 0.0f;
        if (z10 && eVar.c0(0) && eVar.f14213w == 0 && !z12) {
            aVar.f15062a = e.b.WRAP_CONTENT;
            if (z11 && eVar.f14215x == 0) {
                aVar.f15062a = e.b.FIXED;
            }
            z10 = false;
        }
        if (z11 && eVar.c0(1) && eVar.f14215x == 0 && !z13) {
            aVar.f15063b = e.b.WRAP_CONTENT;
            if (z10 && eVar.f14213w == 0) {
                aVar.f15063b = e.b.FIXED;
            }
            z11 = false;
        }
        if (eVar.p0()) {
            aVar.f15062a = e.b.FIXED;
            z10 = false;
        }
        if (eVar.q0()) {
            aVar.f15063b = e.b.FIXED;
            z11 = false;
        }
        if (z12) {
            if (eVar.f14217y[0] == 4) {
                aVar.f15062a = e.b.FIXED;
            } else if (!z11) {
                e.b bVar3 = aVar.f15063b;
                e.b bVar4 = e.b.FIXED;
                if (bVar3 == bVar4) {
                    i13 = aVar.f15065d;
                } else {
                    aVar.f15062a = e.b.WRAP_CONTENT;
                    interfaceC0199b.b(eVar, aVar);
                    i13 = aVar.f15067f;
                }
                aVar.f15062a = bVar4;
                aVar.f15064c = (int) (eVar.x() * i13);
            }
        }
        if (z13) {
            if (eVar.f14217y[1] == 4) {
                aVar.f15063b = e.b.FIXED;
            } else if (!z10) {
                e.b bVar5 = aVar.f15062a;
                e.b bVar6 = e.b.FIXED;
                if (bVar5 == bVar6) {
                    i12 = aVar.f15064c;
                } else {
                    aVar.f15063b = e.b.WRAP_CONTENT;
                    interfaceC0199b.b(eVar, aVar);
                    i12 = aVar.f15066e;
                }
                aVar.f15063b = bVar6;
                if (eVar.y() == -1) {
                    aVar.f15065d = (int) (i12 / eVar.x());
                } else {
                    aVar.f15065d = (int) (eVar.x() * i12);
                }
            }
        }
        interfaceC0199b.b(eVar, aVar);
        eVar.p1(aVar.f15066e);
        eVar.Q0(aVar.f15067f);
        eVar.P0(aVar.f15069h);
        eVar.F0(aVar.f15068g);
        aVar.f15071j = b.a.f15059k;
        return aVar.f15070i;
    }

    private void a2() {
        this.f14228g1 = 0;
        this.f14229h1 = 0;
    }

    void A1(e eVar, int i10) {
        if (i10 == 0) {
            C1(eVar);
        } else if (i10 == 1) {
            H1(eVar);
        }
    }

    public boolean B1(l.d dVar) {
        boolean zZ1 = Z1(64);
        g(dVar, zZ1);
        int size = this.V0.size();
        boolean z10 = false;
        for (int i10 = 0; i10 < size; i10++) {
            e eVar = (e) this.V0.get(i10);
            eVar.X0(0, false);
            eVar.X0(1, false);
            if (eVar instanceof a) {
                z10 = true;
            }
        }
        if (z10) {
            for (int i11 = 0; i11 < size; i11++) {
                e eVar2 = (e) this.V0.get(i11);
                if (eVar2 instanceof a) {
                    ((a) eVar2).D1();
                }
            }
        }
        this.f14246y1.clear();
        for (int i12 = 0; i12 < size; i12++) {
            e eVar3 = (e) this.V0.get(i12);
            if (eVar3.f()) {
                if (eVar3 instanceof m) {
                    this.f14246y1.add(eVar3);
                } else {
                    eVar3.g(dVar, zZ1);
                }
            }
        }
        while (this.f14246y1.size() > 0) {
            int size2 = this.f14246y1.size();
            Iterator it = this.f14246y1.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                m mVar = (m) ((e) it.next());
                if (mVar.A1(this.f14246y1)) {
                    mVar.g(dVar, zZ1);
                    this.f14246y1.remove(mVar);
                    break;
                }
            }
            if (size2 == this.f14246y1.size()) {
                Iterator it2 = this.f14246y1.iterator();
                while (it2.hasNext()) {
                    ((e) it2.next()).g(dVar, zZ1);
                }
                this.f14246y1.clear();
            }
        }
        if (l.d.f13462s) {
            HashSet<e> hashSet = new HashSet();
            for (int i13 = 0; i13 < size; i13++) {
                e eVar4 = (e) this.V0.get(i13);
                if (!eVar4.f()) {
                    hashSet.add(eVar4);
                }
            }
            e(this, dVar, hashSet, C() == e.b.WRAP_CONTENT ? 0 : 1, false);
            for (e eVar5 : hashSet) {
                k.a(this, dVar, eVar5);
                eVar5.g(dVar, zZ1);
            }
        } else {
            for (int i14 = 0; i14 < size; i14++) {
                e eVar6 = (e) this.V0.get(i14);
                if (eVar6 instanceof f) {
                    e.b[] bVarArr = eVar6.f14172b0;
                    e.b bVar = bVarArr[0];
                    e.b bVar2 = bVarArr[1];
                    e.b bVar3 = e.b.WRAP_CONTENT;
                    if (bVar == bVar3) {
                        eVar6.U0(e.b.FIXED);
                    }
                    if (bVar2 == bVar3) {
                        eVar6.l1(e.b.FIXED);
                    }
                    eVar6.g(dVar, zZ1);
                    if (bVar == bVar3) {
                        eVar6.U0(bVar);
                    }
                    if (bVar2 == bVar3) {
                        eVar6.l1(bVar2);
                    }
                } else {
                    k.a(this, dVar, eVar6);
                    if (!eVar6.f()) {
                        eVar6.g(dVar, zZ1);
                    }
                }
            }
        }
        if (this.f14228g1 > 0) {
            b.b(this, dVar, null, 0);
        }
        if (this.f14229h1 > 0) {
            b.b(this, dVar, null, 1);
        }
        return true;
    }

    public void D1(d dVar) {
        WeakReference weakReference = this.f14245x1;
        if (weakReference == null || weakReference.get() == null || dVar.e() > ((d) this.f14245x1.get()).e()) {
            this.f14245x1 = new WeakReference(dVar);
        }
    }

    public void E1(d dVar) {
        WeakReference weakReference = this.f14243v1;
        if (weakReference == null || weakReference.get() == null || dVar.e() > ((d) this.f14243v1.get()).e()) {
            this.f14243v1 = new WeakReference(dVar);
        }
    }

    void I1(d dVar) {
        WeakReference weakReference = this.f14244w1;
        if (weakReference == null || weakReference.get() == null || dVar.e() > ((d) this.f14244w1.get()).e()) {
            this.f14244w1 = new WeakReference(dVar);
        }
    }

    void J1(d dVar) {
        WeakReference weakReference = this.f14242u1;
        if (weakReference == null || weakReference.get() == null || dVar.e() > ((d) this.f14242u1.get()).e()) {
            this.f14242u1 = new WeakReference(dVar);
        }
    }

    public boolean K1(boolean z10) {
        return this.X0.f(z10);
    }

    public boolean L1(boolean z10) {
        return this.X0.g(z10);
    }

    public boolean M1(boolean z10, int i10) {
        return this.X0.h(z10, i10);
    }

    public void N1(l.e eVar) {
        this.f14223b1.v(eVar);
    }

    public b.InterfaceC0199b O1() {
        return this.Z0;
    }

    public int P1() {
        return this.f14237p1;
    }

    @Override // o.e
    public void Q(StringBuilder sb) {
        sb.append(this.f14197o + ":{\n");
        sb.append("  actualWidth:" + this.f14176d0);
        sb.append("\n");
        sb.append("  actualHeight:" + this.f14178e0);
        sb.append("\n");
        Iterator it = w1().iterator();
        while (it.hasNext()) {
            ((e) it.next()).Q(sb);
            sb.append(",\n");
        }
        sb.append("}");
    }

    public l.d Q1() {
        return this.f14223b1;
    }

    public boolean R1() {
        return false;
    }

    public void S1() {
        this.X0.j();
    }

    public void T1() {
        this.X0.k();
    }

    public boolean U1() {
        return this.f14240s1;
    }

    public boolean V1() {
        return this.f14222a1;
    }

    public boolean W1() {
        return this.f14239r1;
    }

    public long X1(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        this.f14224c1 = i17;
        this.f14225d1 = i18;
        return this.W0.d(this, i10, i17, i18, i11, i12, i13, i14, i15, i16);
    }

    public boolean Z1(int i10) {
        return (this.f14237p1 & i10) == i10;
    }

    public void b2(b.InterfaceC0199b interfaceC0199b) {
        this.Z0 = interfaceC0199b;
        this.X0.n(interfaceC0199b);
    }

    public void c2(int i10) {
        this.f14237p1 = i10;
        l.d.f13462s = Z1(ConfigPackage.FRAME_SIZE_1);
    }

    public void d2(int i10) {
        this.Y0 = i10;
    }

    public void e2(boolean z10) {
        this.f14222a1 = z10;
    }

    public boolean f2(l.d dVar, boolean[] zArr) {
        zArr[2] = false;
        boolean zZ1 = Z1(64);
        v1(dVar, zZ1);
        int size = this.V0.size();
        boolean z10 = false;
        for (int i10 = 0; i10 < size; i10++) {
            e eVar = (e) this.V0.get(i10);
            eVar.v1(dVar, zZ1);
            if (eVar.e0()) {
                z10 = true;
            }
        }
        return z10;
    }

    public void g2() {
        this.W0.e(this);
    }

    @Override // o.e
    public void u1(boolean z10, boolean z11) {
        super.u1(z10, z11);
        int size = this.V0.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((e) this.V0.get(i10)).u1(z10, z11);
        }
    }

    @Override // o.n, o.e
    public void v0() {
        this.f14223b1.E();
        this.f14224c1 = 0;
        this.f14226e1 = 0;
        this.f14225d1 = 0;
        this.f14227f1 = 0;
        this.f14238q1 = false;
        super.v0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:331:0x0307 A[PHI: r2 r16
      0x0307: PHI (r2v15 ??) = (r2v14 ??), (r2v19 ??), (r2v19 ??), (r2v19 ??) binds: [B:318:0x02c8, B:326:0x02ed, B:327:0x02ef, B:329:0x02f5] A[DONT_GENERATE, DONT_INLINE]
      0x0307: PHI (r16v4 boolean) = (r16v3 boolean), (r16v5 boolean), (r16v5 boolean), (r16v5 boolean) binds: [B:318:0x02c8, B:326:0x02ed, B:327:0x02ef, B:329:0x02f5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v17 */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v41 */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v6 */
    @Override // o.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void x1() {
        /*
            Method dump skipped, instruction units count: 813
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: o.f.x1():void");
    }
}
