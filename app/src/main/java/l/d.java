package l;

import java.util.Arrays;
import java.util.HashMap;
import l.i;
import o.d;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: s */
    public static boolean f13462s = false;

    /* JADX INFO: renamed from: t */
    public static boolean f13463t = true;

    /* JADX INFO: renamed from: u */
    public static boolean f13464u = true;

    /* JADX INFO: renamed from: v */
    public static boolean f13465v = true;

    /* JADX INFO: renamed from: w */
    public static boolean f13466w = false;

    /* JADX INFO: renamed from: x */
    public static long f13467x;

    /* JADX INFO: renamed from: y */
    public static long f13468y;

    /* JADX INFO: renamed from: e */
    private a f13473e;

    /* JADX INFO: renamed from: o */
    final c f13483o;

    /* JADX INFO: renamed from: r */
    private a f13486r;

    /* JADX INFO: renamed from: a */
    private int f13469a = 1000;

    /* JADX INFO: renamed from: b */
    public boolean f13470b = false;

    /* JADX INFO: renamed from: c */
    int f13471c = 0;

    /* JADX INFO: renamed from: d */
    private HashMap f13472d = null;

    /* JADX INFO: renamed from: f */
    private int f13474f = 32;

    /* JADX INFO: renamed from: g */
    private int f13475g = 32;

    /* JADX INFO: renamed from: i */
    public boolean f13477i = false;

    /* JADX INFO: renamed from: j */
    public boolean f13478j = false;

    /* JADX INFO: renamed from: k */
    private boolean[] f13479k = new boolean[32];

    /* JADX INFO: renamed from: l */
    int f13480l = 1;

    /* JADX INFO: renamed from: m */
    int f13481m = 0;

    /* JADX INFO: renamed from: n */
    private int f13482n = 32;

    /* JADX INFO: renamed from: p */
    private i[] f13484p = new i[1000];

    /* JADX INFO: renamed from: q */
    private int f13485q = 0;

    /* JADX INFO: renamed from: h */
    l.b[] f13476h = new l.b[32];

    interface a {
        i a(d dVar, boolean[] zArr);

        void b(a aVar);

        void c(i iVar);

        void clear();

        i getKey();

        boolean isEmpty();
    }

    static class b extends l.b {
        b(c cVar) {
            this.f13456e = new j(this, cVar);
        }
    }

    public d() {
        D();
        c cVar = new c();
        this.f13483o = cVar;
        this.f13473e = new h(cVar);
        if (f13466w) {
            this.f13486r = new b(cVar);
        } else {
            this.f13486r = new l.b(cVar);
        }
    }

    private int C(a aVar, boolean z10) {
        for (int i10 = 0; i10 < this.f13480l; i10++) {
            this.f13479k[i10] = false;
        }
        boolean z11 = false;
        int i11 = 0;
        while (!z11) {
            i11++;
            if (i11 >= this.f13480l * 2) {
                return i11;
            }
            if (aVar.getKey() != null) {
                this.f13479k[aVar.getKey().f13502c] = true;
            }
            i iVarA = aVar.a(this, this.f13479k);
            if (iVarA != null) {
                boolean[] zArr = this.f13479k;
                int i12 = iVarA.f13502c;
                if (zArr[i12]) {
                    return i11;
                }
                zArr[i12] = true;
            }
            if (iVarA != null) {
                float f10 = Float.MAX_VALUE;
                int i13 = -1;
                for (int i14 = 0; i14 < this.f13481m; i14++) {
                    l.b bVar = this.f13476h[i14];
                    if (bVar.f13452a.f13509m != i.a.UNRESTRICTED && !bVar.f13457f && bVar.t(iVarA)) {
                        float fG = bVar.f13456e.g(iVarA);
                        if (fG < 0.0f) {
                            float f11 = (-bVar.f13453b) / fG;
                            if (f11 < f10) {
                                i13 = i14;
                                f10 = f11;
                            }
                        }
                    }
                }
                if (i13 > -1) {
                    l.b bVar2 = this.f13476h[i13];
                    bVar2.f13452a.f13503f = -1;
                    bVar2.x(iVarA);
                    i iVar = bVar2.f13452a;
                    iVar.f13503f = i13;
                    iVar.h(this, bVar2);
                }
            } else {
                z11 = true;
            }
        }
        return i11;
    }

    private void D() {
        int i10 = 0;
        if (f13466w) {
            while (i10 < this.f13481m) {
                l.b bVar = this.f13476h[i10];
                if (bVar != null) {
                    this.f13483o.f13458a.a(bVar);
                }
                this.f13476h[i10] = null;
                i10++;
            }
            return;
        }
        while (i10 < this.f13481m) {
            l.b bVar2 = this.f13476h[i10];
            if (bVar2 != null) {
                this.f13483o.f13459b.a(bVar2);
            }
            this.f13476h[i10] = null;
            i10++;
        }
    }

    private i a(i.a aVar, String str) {
        i iVar = (i) this.f13483o.f13460c.b();
        if (iVar == null) {
            iVar = new i(aVar, str);
            iVar.g(aVar, str);
        } else {
            iVar.e();
            iVar.g(aVar, str);
        }
        int i10 = this.f13485q;
        int i11 = this.f13469a;
        if (i10 >= i11) {
            int i12 = i11 * 2;
            this.f13469a = i12;
            this.f13484p = (i[]) Arrays.copyOf(this.f13484p, i12);
        }
        i[] iVarArr = this.f13484p;
        int i13 = this.f13485q;
        this.f13485q = i13 + 1;
        iVarArr[i13] = iVar;
        return iVar;
    }

    private void l(l.b bVar) {
        int i10;
        if (f13464u && bVar.f13457f) {
            bVar.f13452a.f(this, bVar.f13453b);
        } else {
            l.b[] bVarArr = this.f13476h;
            int i11 = this.f13481m;
            bVarArr[i11] = bVar;
            i iVar = bVar.f13452a;
            iVar.f13503f = i11;
            this.f13481m = i11 + 1;
            iVar.h(this, bVar);
        }
        if (f13464u && this.f13470b) {
            int i12 = 0;
            while (i12 < this.f13481m) {
                if (this.f13476h[i12] == null) {
                    System.out.println("WTF");
                }
                l.b bVar2 = this.f13476h[i12];
                if (bVar2 != null && bVar2.f13457f) {
                    bVar2.f13452a.f(this, bVar2.f13453b);
                    if (f13466w) {
                        this.f13483o.f13458a.a(bVar2);
                    } else {
                        this.f13483o.f13459b.a(bVar2);
                    }
                    this.f13476h[i12] = null;
                    int i13 = i12 + 1;
                    int i14 = i13;
                    while (true) {
                        i10 = this.f13481m;
                        if (i13 >= i10) {
                            break;
                        }
                        l.b[] bVarArr2 = this.f13476h;
                        int i15 = i13 - 1;
                        l.b bVar3 = bVarArr2[i13];
                        bVarArr2[i15] = bVar3;
                        i iVar2 = bVar3.f13452a;
                        if (iVar2.f13503f == i13) {
                            iVar2.f13503f = i15;
                        }
                        i14 = i13;
                        i13++;
                    }
                    if (i14 < i10) {
                        this.f13476h[i14] = null;
                    }
                    this.f13481m = i10 - 1;
                    i12--;
                }
                i12++;
            }
            this.f13470b = false;
        }
    }

    private void n() {
        for (int i10 = 0; i10 < this.f13481m; i10++) {
            l.b bVar = this.f13476h[i10];
            bVar.f13452a.f13505i = bVar.f13453b;
        }
    }

    public static l.b s(d dVar, i iVar, i iVar2, float f10) {
        return dVar.r().j(iVar, iVar2, f10);
    }

    private int u(a aVar) {
        for (int i10 = 0; i10 < this.f13481m; i10++) {
            l.b bVar = this.f13476h[i10];
            if (bVar.f13452a.f13509m != i.a.UNRESTRICTED && bVar.f13453b < 0.0f) {
                boolean z10 = false;
                int i11 = 0;
                while (!z10) {
                    i11++;
                    float f10 = Float.MAX_VALUE;
                    int i12 = 0;
                    int i13 = -1;
                    int i14 = -1;
                    int i15 = 0;
                    while (true) {
                        if (i12 >= this.f13481m) {
                            break;
                        }
                        l.b bVar2 = this.f13476h[i12];
                        if (bVar2.f13452a.f13509m != i.a.UNRESTRICTED && !bVar2.f13457f && bVar2.f13453b < 0.0f) {
                            int i16 = 9;
                            if (f13465v) {
                                int iD = bVar2.f13456e.d();
                                int i17 = 0;
                                while (i17 < iD) {
                                    i iVarF = bVar2.f13456e.f(i17);
                                    float fG = bVar2.f13456e.g(iVarF);
                                    if (fG > 0.0f) {
                                        int i18 = 0;
                                        while (i18 < i16) {
                                            float f11 = iVarF.f13507k[i18] / fG;
                                            if ((f11 < f10 && i18 == i15) || i18 > i15) {
                                                i15 = i18;
                                                i14 = iVarF.f13502c;
                                                i13 = i12;
                                                f10 = f11;
                                            }
                                            i18++;
                                            i16 = 9;
                                        }
                                    }
                                    i17++;
                                    i16 = 9;
                                }
                            } else {
                                for (int i19 = 1; i19 < this.f13480l; i19++) {
                                    i iVar = this.f13483o.f13461d[i19];
                                    float fG2 = bVar2.f13456e.g(iVar);
                                    if (fG2 > 0.0f) {
                                        for (int i20 = 0; i20 < 9; i20++) {
                                            float f12 = iVar.f13507k[i20] / fG2;
                                            if ((f12 < f10 && i20 == i15) || i20 > i15) {
                                                i13 = i12;
                                                i14 = i19;
                                                i15 = i20;
                                                f10 = f12;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        i12++;
                    }
                    if (i13 != -1) {
                        l.b bVar3 = this.f13476h[i13];
                        bVar3.f13452a.f13503f = -1;
                        bVar3.x(this.f13483o.f13461d[i14]);
                        i iVar2 = bVar3.f13452a;
                        iVar2.f13503f = i13;
                        iVar2.h(this, bVar3);
                    } else {
                        z10 = true;
                    }
                    if (i11 > this.f13480l / 2) {
                        z10 = true;
                    }
                }
                return i11;
            }
        }
        return 0;
    }

    public static e x() {
        return null;
    }

    private void z() {
        int i10 = this.f13474f * 2;
        this.f13474f = i10;
        this.f13476h = (l.b[]) Arrays.copyOf(this.f13476h, i10);
        c cVar = this.f13483o;
        cVar.f13461d = (i[]) Arrays.copyOf(cVar.f13461d, this.f13474f);
        int i11 = this.f13474f;
        this.f13479k = new boolean[i11];
        this.f13475g = i11;
        this.f13482n = i11;
    }

    public void A() {
        if (this.f13473e.isEmpty()) {
            n();
            return;
        }
        if (!this.f13477i && !this.f13478j) {
            B(this.f13473e);
            return;
        }
        for (int i10 = 0; i10 < this.f13481m; i10++) {
            if (!this.f13476h[i10].f13457f) {
                B(this.f13473e);
                return;
            }
        }
        n();
    }

    void B(a aVar) {
        u(aVar);
        C(aVar, false);
        n();
    }

    public void E() {
        c cVar;
        int i10 = 0;
        while (true) {
            cVar = this.f13483o;
            i[] iVarArr = cVar.f13461d;
            if (i10 >= iVarArr.length) {
                break;
            }
            i iVar = iVarArr[i10];
            if (iVar != null) {
                iVar.e();
            }
            i10++;
        }
        cVar.f13460c.c(this.f13484p, this.f13485q);
        this.f13485q = 0;
        Arrays.fill(this.f13483o.f13461d, (Object) null);
        HashMap map = this.f13472d;
        if (map != null) {
            map.clear();
        }
        this.f13471c = 0;
        this.f13473e.clear();
        this.f13480l = 1;
        for (int i11 = 0; i11 < this.f13481m; i11++) {
            l.b bVar = this.f13476h[i11];
            if (bVar != null) {
                bVar.f13454c = false;
            }
        }
        D();
        this.f13481m = 0;
        if (f13466w) {
            this.f13486r = new b(this.f13483o);
        } else {
            this.f13486r = new l.b(this.f13483o);
        }
    }

    public void b(o.e eVar, o.e eVar2, float f10, int i10) {
        d.a aVar = d.a.LEFT;
        i iVarQ = q(eVar.q(aVar));
        d.a aVar2 = d.a.TOP;
        i iVarQ2 = q(eVar.q(aVar2));
        d.a aVar3 = d.a.RIGHT;
        i iVarQ3 = q(eVar.q(aVar3));
        d.a aVar4 = d.a.BOTTOM;
        i iVarQ4 = q(eVar.q(aVar4));
        i iVarQ5 = q(eVar2.q(aVar));
        i iVarQ6 = q(eVar2.q(aVar2));
        i iVarQ7 = q(eVar2.q(aVar3));
        i iVarQ8 = q(eVar2.q(aVar4));
        l.b bVarR = r();
        double d10 = f10;
        double d11 = i10;
        bVarR.q(iVarQ2, iVarQ4, iVarQ6, iVarQ8, (float) (Math.sin(d10) * d11));
        d(bVarR);
        l.b bVarR2 = r();
        bVarR2.q(iVarQ, iVarQ3, iVarQ5, iVarQ7, (float) (Math.cos(d10) * d11));
        d(bVarR2);
    }

    public void c(i iVar, i iVar2, int i10, float f10, i iVar3, i iVar4, int i11, int i12) {
        l.b bVarR = r();
        bVarR.h(iVar, iVar2, i10, f10, iVar3, iVar4, i11);
        if (i12 != 8) {
            bVarR.d(this, i12);
        }
        d(bVarR);
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void d(l.b r6) {
        /*
            r5 = this;
            if (r6 != 0) goto L3
            return
        L3:
            int r0 = r5.f13481m
            r1 = 1
            int r0 = r0 + r1
            int r2 = r5.f13482n
            if (r0 >= r2) goto L12
            int r0 = r5.f13480l
            int r0 = r0 + r1
            int r2 = r5.f13475g
            if (r0 < r2) goto L15
        L12:
            r5.z()
        L15:
            boolean r0 = r6.f13457f
            r2 = 0
            if (r0 != 0) goto L84
            r6.D(r5)
            boolean r0 = r6.isEmpty()
            if (r0 == 0) goto L24
            return
        L24:
            r6.r()
            boolean r0 = r6.f(r5)
            if (r0 == 0) goto L7b
            l.i r0 = r5.p()
            r6.f13452a = r0
            int r3 = r5.f13481m
            r5.l(r6)
            int r4 = r5.f13481m
            int r3 = r3 + r1
            if (r4 != r3) goto L7b
            l.d$a r2 = r5.f13486r
            r2.b(r6)
            l.d$a r2 = r5.f13486r
            r5.C(r2, r1)
            int r2 = r0.f13503f
            r3 = -1
            if (r2 != r3) goto L7c
            l.i r2 = r6.f13452a
            if (r2 != r0) goto L59
            l.i r0 = r6.v(r0)
            if (r0 == 0) goto L59
            r6.x(r0)
        L59:
            boolean r0 = r6.f13457f
            if (r0 != 0) goto L62
            l.i r0 = r6.f13452a
            r0.h(r5, r6)
        L62:
            boolean r0 = l.d.f13466w
            if (r0 == 0) goto L6e
            l.c r0 = r5.f13483o
            l.f r0 = r0.f13458a
            r0.a(r6)
            goto L75
        L6e:
            l.c r0 = r5.f13483o
            l.f r0 = r0.f13459b
            r0.a(r6)
        L75:
            int r0 = r5.f13481m
            int r0 = r0 - r1
            r5.f13481m = r0
            goto L7c
        L7b:
            r1 = r2
        L7c:
            boolean r0 = r6.s()
            if (r0 != 0) goto L83
            return
        L83:
            r2 = r1
        L84:
            if (r2 != 0) goto L89
            r5.l(r6)
        L89:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: l.d.d(l.b):void");
    }

    public l.b e(i iVar, i iVar2, int i10, int i11) {
        if (f13463t && i11 == 8 && iVar2.f13506j && iVar.f13503f == -1) {
            iVar.f(this, iVar2.f13505i + i10);
            return null;
        }
        l.b bVarR = r();
        bVarR.n(iVar, iVar2, i10);
        if (i11 != 8) {
            bVarR.d(this, i11);
        }
        d(bVarR);
        return bVarR;
    }

    public void f(i iVar, int i10) {
        if (f13463t && iVar.f13503f == -1) {
            float f10 = i10;
            iVar.f(this, f10);
            for (int i11 = 0; i11 < this.f13471c + 1; i11++) {
                i iVar2 = this.f13483o.f13461d[i11];
                if (iVar2 != null && iVar2.f13513q && iVar2.f13514r == iVar.f13502c) {
                    iVar2.f(this, iVar2.f13515s + f10);
                }
            }
            return;
        }
        int i12 = iVar.f13503f;
        if (i12 == -1) {
            l.b bVarR = r();
            bVarR.i(iVar, i10);
            d(bVarR);
            return;
        }
        l.b bVar = this.f13476h[i12];
        if (bVar.f13457f) {
            bVar.f13453b = i10;
            return;
        }
        if (bVar.f13456e.d() == 0) {
            bVar.f13457f = true;
            bVar.f13453b = i10;
        } else {
            l.b bVarR2 = r();
            bVarR2.m(iVar, i10);
            d(bVarR2);
        }
    }

    public void g(i iVar, i iVar2, int i10, boolean z10) {
        l.b bVarR = r();
        i iVarT = t();
        iVarT.f13504h = 0;
        bVarR.o(iVar, iVar2, iVarT, i10);
        d(bVarR);
    }

    public void h(i iVar, i iVar2, int i10, int i11) {
        l.b bVarR = r();
        i iVarT = t();
        iVarT.f13504h = 0;
        bVarR.o(iVar, iVar2, iVarT, i10);
        if (i11 != 8) {
            m(bVarR, (int) (bVarR.f13456e.g(iVarT) * (-1.0f)), i11);
        }
        d(bVarR);
    }

    public void i(i iVar, i iVar2, int i10, boolean z10) {
        l.b bVarR = r();
        i iVarT = t();
        iVarT.f13504h = 0;
        bVarR.p(iVar, iVar2, iVarT, i10);
        d(bVarR);
    }

    public void j(i iVar, i iVar2, int i10, int i11) {
        l.b bVarR = r();
        i iVarT = t();
        iVarT.f13504h = 0;
        bVarR.p(iVar, iVar2, iVarT, i10);
        if (i11 != 8) {
            m(bVarR, (int) (bVarR.f13456e.g(iVarT) * (-1.0f)), i11);
        }
        d(bVarR);
    }

    public void k(i iVar, i iVar2, i iVar3, i iVar4, float f10, int i10) {
        l.b bVarR = r();
        bVarR.k(iVar, iVar2, iVar3, iVar4, f10);
        if (i10 != 8) {
            bVarR.d(this, i10);
        }
        d(bVarR);
    }

    void m(l.b bVar, int i10, int i11) {
        bVar.e(o(i11, null), i10);
    }

    public i o(int i10, String str) {
        if (this.f13480l + 1 >= this.f13475g) {
            z();
        }
        i iVarA = a(i.a.ERROR, str);
        int i11 = this.f13471c + 1;
        this.f13471c = i11;
        this.f13480l++;
        iVarA.f13502c = i11;
        iVarA.f13504h = i10;
        this.f13483o.f13461d[i11] = iVarA;
        this.f13473e.c(iVarA);
        return iVarA;
    }

    public i p() {
        if (this.f13480l + 1 >= this.f13475g) {
            z();
        }
        i iVarA = a(i.a.SLACK, null);
        int i10 = this.f13471c + 1;
        this.f13471c = i10;
        this.f13480l++;
        iVarA.f13502c = i10;
        this.f13483o.f13461d[i10] = iVarA;
        return iVarA;
    }

    public i q(Object obj) {
        i iVarI = null;
        if (obj == null) {
            return null;
        }
        if (this.f13480l + 1 >= this.f13475g) {
            z();
        }
        if (obj instanceof o.d) {
            o.d dVar = (o.d) obj;
            iVarI = dVar.i();
            if (iVarI == null) {
                dVar.s(this.f13483o);
                iVarI = dVar.i();
            }
            int i10 = iVarI.f13502c;
            if (i10 == -1 || i10 > this.f13471c || this.f13483o.f13461d[i10] == null) {
                if (i10 != -1) {
                    iVarI.e();
                }
                int i11 = this.f13471c + 1;
                this.f13471c = i11;
                this.f13480l++;
                iVarI.f13502c = i11;
                iVarI.f13509m = i.a.UNRESTRICTED;
                this.f13483o.f13461d[i11] = iVarI;
            }
        }
        return iVarI;
    }

    public l.b r() {
        l.b bVar;
        if (f13466w) {
            bVar = (l.b) this.f13483o.f13458a.b();
            if (bVar == null) {
                bVar = new b(this.f13483o);
                f13468y++;
            } else {
                bVar.y();
            }
        } else {
            bVar = (l.b) this.f13483o.f13459b.b();
            if (bVar == null) {
                bVar = new l.b(this.f13483o);
                f13467x++;
            } else {
                bVar.y();
            }
        }
        i.c();
        return bVar;
    }

    public i t() {
        if (this.f13480l + 1 >= this.f13475g) {
            z();
        }
        i iVarA = a(i.a.SLACK, null);
        int i10 = this.f13471c + 1;
        this.f13471c = i10;
        this.f13480l++;
        iVarA.f13502c = i10;
        this.f13483o.f13461d[i10] = iVarA;
        return iVarA;
    }

    public void v(e eVar) {
    }

    public c w() {
        return this.f13483o;
    }

    public int y(Object obj) {
        i iVarI = ((o.d) obj).i();
        if (iVarI != null) {
            return (int) (iVarI.f13505i + 0.5f);
        }
        return 0;
    }
}
