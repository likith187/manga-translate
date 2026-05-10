package l;

import java.util.Arrays;
import java.util.Comparator;
import l.b;

/* JADX INFO: loaded from: classes.dex */
public class h extends l.b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f13489g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private i[] f13490h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private i[] f13491i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f13492j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    b f13493k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    c f13494l;

    class a implements Comparator {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(i iVar, i iVar2) {
            return iVar.f13502c - iVar2.f13502c;
        }
    }

    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        i f13496a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        h f13497b;

        b(h hVar) {
            this.f13497b = hVar;
        }

        public boolean a(i iVar, float f10) {
            boolean z10 = true;
            if (!this.f13496a.f13500a) {
                for (int i10 = 0; i10 < 9; i10++) {
                    float f11 = iVar.f13508l[i10];
                    if (f11 != 0.0f) {
                        float f12 = f11 * f10;
                        if (Math.abs(f12) < 1.0E-4f) {
                            f12 = 0.0f;
                        }
                        this.f13496a.f13508l[i10] = f12;
                    } else {
                        this.f13496a.f13508l[i10] = 0.0f;
                    }
                }
                return true;
            }
            for (int i11 = 0; i11 < 9; i11++) {
                float[] fArr = this.f13496a.f13508l;
                float f13 = fArr[i11] + (iVar.f13508l[i11] * f10);
                fArr[i11] = f13;
                if (Math.abs(f13) < 1.0E-4f) {
                    this.f13496a.f13508l[i11] = 0.0f;
                } else {
                    z10 = false;
                }
            }
            if (z10) {
                h.this.G(this.f13496a);
            }
            return false;
        }

        public void b(i iVar) {
            this.f13496a = iVar;
        }

        public final boolean c() {
            for (int i10 = 8; i10 >= 0; i10--) {
                float f10 = this.f13496a.f13508l[i10];
                if (f10 > 0.0f) {
                    return false;
                }
                if (f10 < 0.0f) {
                    return true;
                }
            }
            return false;
        }

        public final boolean d(i iVar) {
            for (int i10 = 8; i10 >= 0; i10--) {
                float f10 = iVar.f13508l[i10];
                float f11 = this.f13496a.f13508l[i10];
                if (f11 != f10) {
                    return f11 < f10;
                }
            }
            return false;
        }

        public void e() {
            Arrays.fill(this.f13496a.f13508l, 0.0f);
        }

        public String toString() {
            String str = "[ ";
            if (this.f13496a != null) {
                for (int i10 = 0; i10 < 9; i10++) {
                    str = str + this.f13496a.f13508l[i10] + " ";
                }
            }
            return str + "] " + this.f13496a;
        }
    }

    public h(c cVar) {
        super(cVar);
        this.f13489g = 128;
        this.f13490h = new i[128];
        this.f13491i = new i[128];
        this.f13492j = 0;
        this.f13493k = new b(this);
        this.f13494l = cVar;
    }

    private void F(i iVar) {
        int i10;
        int i11 = this.f13492j + 1;
        i[] iVarArr = this.f13490h;
        if (i11 > iVarArr.length) {
            i[] iVarArr2 = (i[]) Arrays.copyOf(iVarArr, iVarArr.length * 2);
            this.f13490h = iVarArr2;
            this.f13491i = (i[]) Arrays.copyOf(iVarArr2, iVarArr2.length * 2);
        }
        i[] iVarArr3 = this.f13490h;
        int i12 = this.f13492j;
        iVarArr3[i12] = iVar;
        int i13 = i12 + 1;
        this.f13492j = i13;
        if (i13 > 1 && iVarArr3[i12].f13502c > iVar.f13502c) {
            int i14 = 0;
            while (true) {
                i10 = this.f13492j;
                if (i14 >= i10) {
                    break;
                }
                this.f13491i[i14] = this.f13490h[i14];
                i14++;
            }
            Arrays.sort(this.f13491i, 0, i10, new a());
            for (int i15 = 0; i15 < this.f13492j; i15++) {
                this.f13490h[i15] = this.f13491i[i15];
            }
        }
        iVar.f13500a = true;
        iVar.a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G(i iVar) {
        int i10 = 0;
        while (i10 < this.f13492j) {
            if (this.f13490h[i10] == iVar) {
                while (true) {
                    int i11 = this.f13492j;
                    if (i10 >= i11 - 1) {
                        this.f13492j = i11 - 1;
                        iVar.f13500a = false;
                        return;
                    } else {
                        i[] iVarArr = this.f13490h;
                        int i12 = i10 + 1;
                        iVarArr[i10] = iVarArr[i12];
                        i10 = i12;
                    }
                }
            } else {
                i10++;
            }
        }
    }

    @Override // l.b
    public void B(d dVar, l.b bVar, boolean z10) {
        i iVar = bVar.f13452a;
        if (iVar == null) {
            return;
        }
        b.a aVar = bVar.f13456e;
        int iD = aVar.d();
        for (int i10 = 0; i10 < iD; i10++) {
            i iVarF = aVar.f(i10);
            float fA = aVar.a(i10);
            this.f13493k.b(iVarF);
            if (this.f13493k.a(iVar, fA)) {
                F(iVarF);
            }
            this.f13453b += bVar.f13453b * fA;
        }
        G(iVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    @Override // l.b, l.d.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public l.i a(l.d r5, boolean[] r6) {
        /*
            r4 = this;
            r5 = -1
            r0 = 0
            r1 = r5
        L3:
            int r2 = r4.f13492j
            if (r0 >= r2) goto L32
            l.i[] r2 = r4.f13490h
            r2 = r2[r0]
            int r3 = r2.f13502c
            boolean r3 = r6[r3]
            if (r3 == 0) goto L12
            goto L2f
        L12:
            l.h$b r3 = r4.f13493k
            r3.b(r2)
            if (r1 != r5) goto L22
            l.h$b r2 = r4.f13493k
            boolean r2 = r2.c()
            if (r2 == 0) goto L2f
            goto L2e
        L22:
            l.h$b r2 = r4.f13493k
            l.i[] r3 = r4.f13490h
            r3 = r3[r1]
            boolean r2 = r2.d(r3)
            if (r2 == 0) goto L2f
        L2e:
            r1 = r0
        L2f:
            int r0 = r0 + 1
            goto L3
        L32:
            if (r1 != r5) goto L36
            r4 = 0
            return r4
        L36:
            l.i[] r4 = r4.f13490h
            r4 = r4[r1]
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: l.h.a(l.d, boolean[]):l.i");
    }

    @Override // l.b, l.d.a
    public void c(i iVar) {
        this.f13493k.b(iVar);
        this.f13493k.e();
        iVar.f13508l[iVar.f13504h] = 1.0f;
        F(iVar);
    }

    @Override // l.b, l.d.a
    public void clear() {
        this.f13492j = 0;
        this.f13453b = 0.0f;
    }

    @Override // l.b, l.d.a
    public boolean isEmpty() {
        return this.f13492j == 0;
    }

    @Override // l.b
    public String toString() {
        String str = " goal -> (" + this.f13453b + ") : ";
        for (int i10 = 0; i10 < this.f13492j; i10++) {
            this.f13493k.b(this.f13490h[i10]);
            str = str + this.f13493k + " ";
        }
        return str;
    }
}
