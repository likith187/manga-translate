package l;

import java.util.Arrays;
import l.b;

/* JADX INFO: loaded from: classes.dex */
public class j implements b.a {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static float f13517n = 0.001f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f13518a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f13519b = 16;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f13520c = 16;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int[] f13521d = new int[16];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int[] f13522e = new int[16];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int[] f13523f = new int[16];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    float[] f13524g = new float[16];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int[] f13525h = new int[16];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int[] f13526i = new int[16];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f13527j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f13528k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final b f13529l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected final c f13530m;

    j(b bVar, c cVar) {
        this.f13529l = bVar;
        this.f13530m = cVar;
        clear();
    }

    private void l(i iVar, int i10) {
        int[] iArr;
        int i11 = iVar.f13502c % this.f13520c;
        int[] iArr2 = this.f13521d;
        int i12 = iArr2[i11];
        if (i12 == -1) {
            iArr2[i11] = i10;
        } else {
            while (true) {
                iArr = this.f13522e;
                int i13 = iArr[i12];
                if (i13 == -1) {
                    break;
                } else {
                    i12 = i13;
                }
            }
            iArr[i12] = i10;
        }
        this.f13522e[i10] = -1;
    }

    private void m(int i10, i iVar, float f10) {
        this.f13523f[i10] = iVar.f13502c;
        this.f13524g[i10] = f10;
        this.f13525h[i10] = -1;
        this.f13526i[i10] = -1;
        iVar.a(this.f13529l);
        iVar.f13512p++;
        this.f13527j++;
    }

    private int n() {
        for (int i10 = 0; i10 < this.f13519b; i10++) {
            if (this.f13523f[i10] == -1) {
                return i10;
            }
        }
        return -1;
    }

    private void o() {
        int i10 = this.f13519b * 2;
        this.f13523f = Arrays.copyOf(this.f13523f, i10);
        this.f13524g = Arrays.copyOf(this.f13524g, i10);
        this.f13525h = Arrays.copyOf(this.f13525h, i10);
        this.f13526i = Arrays.copyOf(this.f13526i, i10);
        this.f13522e = Arrays.copyOf(this.f13522e, i10);
        for (int i11 = this.f13519b; i11 < i10; i11++) {
            this.f13523f[i11] = -1;
            this.f13522e[i11] = -1;
        }
        this.f13519b = i10;
    }

    private void q(int i10, i iVar, float f10) {
        int iN = n();
        m(iN, iVar, f10);
        if (i10 != -1) {
            this.f13525h[iN] = i10;
            int[] iArr = this.f13526i;
            iArr[iN] = iArr[i10];
            iArr[i10] = iN;
        } else {
            this.f13525h[iN] = -1;
            if (this.f13527j > 0) {
                this.f13526i[iN] = this.f13528k;
                this.f13528k = iN;
            } else {
                this.f13526i[iN] = -1;
            }
        }
        int i11 = this.f13526i[iN];
        if (i11 != -1) {
            this.f13525h[i11] = iN;
        }
        l(iVar, iN);
    }

    private void r(i iVar) {
        int[] iArr;
        int i10;
        int i11 = iVar.f13502c;
        int i12 = i11 % this.f13520c;
        int[] iArr2 = this.f13521d;
        int i13 = iArr2[i12];
        if (i13 == -1) {
            return;
        }
        if (this.f13523f[i13] == i11) {
            int[] iArr3 = this.f13522e;
            iArr2[i12] = iArr3[i13];
            iArr3[i13] = -1;
            return;
        }
        while (true) {
            iArr = this.f13522e;
            i10 = iArr[i13];
            if (i10 == -1 || this.f13523f[i10] == i11) {
                break;
            } else {
                i13 = i10;
            }
        }
        if (i10 == -1 || this.f13523f[i10] != i11) {
            return;
        }
        iArr[i13] = iArr[i10];
        iArr[i10] = -1;
    }

    @Override // l.b.a
    public float a(int i10) {
        int i11 = this.f13527j;
        int i12 = this.f13528k;
        for (int i13 = 0; i13 < i11; i13++) {
            if (i13 == i10) {
                return this.f13524g[i12];
            }
            i12 = this.f13526i[i12];
            if (i12 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    @Override // l.b.a
    public float b(b bVar, boolean z10) {
        float fG = g(bVar.f13452a);
        h(bVar.f13452a, z10);
        j jVar = (j) bVar.f13456e;
        int iD = jVar.d();
        int i10 = 0;
        int i11 = 0;
        while (i10 < iD) {
            int i12 = jVar.f13523f[i11];
            if (i12 != -1) {
                e(this.f13530m.f13461d[i12], jVar.f13524g[i11] * fG, z10);
                i10++;
            }
            i11++;
        }
        return fG;
    }

    @Override // l.b.a
    public void c(i iVar, float f10) {
        float f11 = f13517n;
        if (f10 > (-f11) && f10 < f11) {
            h(iVar, true);
            return;
        }
        if (this.f13527j == 0) {
            m(0, iVar, f10);
            l(iVar, 0);
            this.f13528k = 0;
            return;
        }
        int iP = p(iVar);
        if (iP != -1) {
            this.f13524g[iP] = f10;
            return;
        }
        if (this.f13527j + 1 >= this.f13519b) {
            o();
        }
        int i10 = this.f13527j;
        int i11 = this.f13528k;
        int i12 = -1;
        for (int i13 = 0; i13 < i10; i13++) {
            int i14 = this.f13523f[i11];
            int i15 = iVar.f13502c;
            if (i14 == i15) {
                this.f13524g[i11] = f10;
                return;
            }
            if (i14 < i15) {
                i12 = i11;
            }
            i11 = this.f13526i[i11];
            if (i11 == -1) {
                break;
            }
        }
        q(i12, iVar, f10);
    }

    @Override // l.b.a
    public void clear() {
        int i10 = this.f13527j;
        for (int i11 = 0; i11 < i10; i11++) {
            i iVarF = f(i11);
            if (iVarF != null) {
                iVarF.d(this.f13529l);
            }
        }
        for (int i12 = 0; i12 < this.f13519b; i12++) {
            this.f13523f[i12] = -1;
            this.f13522e[i12] = -1;
        }
        for (int i13 = 0; i13 < this.f13520c; i13++) {
            this.f13521d[i13] = -1;
        }
        this.f13527j = 0;
        this.f13528k = -1;
    }

    @Override // l.b.a
    public int d() {
        return this.f13527j;
    }

    @Override // l.b.a
    public void e(i iVar, float f10, boolean z10) {
        float f11 = f13517n;
        if (f10 <= (-f11) || f10 >= f11) {
            int iP = p(iVar);
            if (iP == -1) {
                c(iVar, f10);
                return;
            }
            float[] fArr = this.f13524g;
            float f12 = fArr[iP] + f10;
            fArr[iP] = f12;
            float f13 = f13517n;
            if (f12 <= (-f13) || f12 >= f13) {
                return;
            }
            fArr[iP] = 0.0f;
            h(iVar, z10);
        }
    }

    @Override // l.b.a
    public i f(int i10) {
        int i11 = this.f13527j;
        if (i11 == 0) {
            return null;
        }
        int i12 = this.f13528k;
        for (int i13 = 0; i13 < i11; i13++) {
            if (i13 == i10 && i12 != -1) {
                return this.f13530m.f13461d[this.f13523f[i12]];
            }
            i12 = this.f13526i[i12];
            if (i12 == -1) {
                break;
            }
        }
        return null;
    }

    @Override // l.b.a
    public float g(i iVar) {
        int iP = p(iVar);
        if (iP != -1) {
            return this.f13524g[iP];
        }
        return 0.0f;
    }

    @Override // l.b.a
    public float h(i iVar, boolean z10) {
        int iP = p(iVar);
        if (iP == -1) {
            return 0.0f;
        }
        r(iVar);
        float f10 = this.f13524g[iP];
        if (this.f13528k == iP) {
            this.f13528k = this.f13526i[iP];
        }
        this.f13523f[iP] = -1;
        int[] iArr = this.f13525h;
        int i10 = iArr[iP];
        if (i10 != -1) {
            int[] iArr2 = this.f13526i;
            iArr2[i10] = iArr2[iP];
        }
        int i11 = this.f13526i[iP];
        if (i11 != -1) {
            iArr[i11] = iArr[iP];
        }
        this.f13527j--;
        iVar.f13512p--;
        if (z10) {
            iVar.d(this.f13529l);
        }
        return f10;
    }

    @Override // l.b.a
    public boolean i(i iVar) {
        return p(iVar) != -1;
    }

    @Override // l.b.a
    public void j(float f10) {
        int i10 = this.f13527j;
        int i11 = this.f13528k;
        for (int i12 = 0; i12 < i10; i12++) {
            float[] fArr = this.f13524g;
            fArr[i11] = fArr[i11] / f10;
            i11 = this.f13526i[i11];
            if (i11 == -1) {
                return;
            }
        }
    }

    @Override // l.b.a
    public void k() {
        int i10 = this.f13527j;
        int i11 = this.f13528k;
        for (int i12 = 0; i12 < i10; i12++) {
            float[] fArr = this.f13524g;
            fArr[i11] = fArr[i11] * (-1.0f);
            i11 = this.f13526i[i11];
            if (i11 == -1) {
                return;
            }
        }
    }

    public int p(i iVar) {
        if (this.f13527j != 0 && iVar != null) {
            int i10 = iVar.f13502c;
            int i11 = this.f13521d[i10 % this.f13520c];
            if (i11 == -1) {
                return -1;
            }
            if (this.f13523f[i11] == i10) {
                return i11;
            }
            do {
                i11 = this.f13522e[i11];
                if (i11 == -1) {
                    break;
                }
            } while (this.f13523f[i11] != i10);
            if (i11 != -1 && this.f13523f[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }

    public String toString() {
        String str = hashCode() + " { ";
        int i10 = this.f13527j;
        for (int i11 = 0; i11 < i10; i11++) {
            i iVarF = f(i11);
            if (iVarF != null) {
                String str2 = str + iVarF + " = " + a(i11) + " ";
                int iP = p(iVarF);
                String str3 = str2 + "[p: ";
                String str4 = (this.f13525h[iP] != -1 ? str3 + this.f13530m.f13461d[this.f13523f[this.f13525h[iP]]] : str3 + "none") + ", n: ";
                str = (this.f13526i[iP] != -1 ? str4 + this.f13530m.f13461d[this.f13523f[this.f13526i[iP]]] : str4 + "none") + "]";
            }
        }
        return str + " }";
    }
}
