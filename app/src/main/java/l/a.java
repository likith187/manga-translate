package l;

import java.util.Arrays;
import l.b;

/* JADX INFO: loaded from: classes.dex */
public class a implements b.a {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static float f13440l = 0.001f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f13442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final c f13443c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f13441a = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f13444d = 8;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private i f13445e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int[] f13446f = new int[8];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int[] f13447g = new int[8];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float[] f13448h = new float[8];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f13449i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f13450j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f13451k = false;

    a(b bVar, c cVar) {
        this.f13442b = bVar;
        this.f13443c = cVar;
    }

    @Override // l.b.a
    public float a(int i10) {
        int i11 = this.f13449i;
        for (int i12 = 0; i11 != -1 && i12 < this.f13441a; i12++) {
            if (i12 == i10) {
                return this.f13448h[i11];
            }
            i11 = this.f13447g[i11];
        }
        return 0.0f;
    }

    @Override // l.b.a
    public float b(b bVar, boolean z10) {
        float fG = g(bVar.f13452a);
        h(bVar.f13452a, z10);
        b.a aVar = bVar.f13456e;
        int iD = aVar.d();
        for (int i10 = 0; i10 < iD; i10++) {
            i iVarF = aVar.f(i10);
            e(iVarF, aVar.g(iVarF) * fG, z10);
        }
        return fG;
    }

    @Override // l.b.a
    public final void c(i iVar, float f10) {
        if (f10 == 0.0f) {
            h(iVar, true);
            return;
        }
        int i10 = this.f13449i;
        if (i10 == -1) {
            this.f13449i = 0;
            this.f13448h[0] = f10;
            this.f13446f[0] = iVar.f13502c;
            this.f13447g[0] = -1;
            iVar.f13512p++;
            iVar.a(this.f13442b);
            this.f13441a++;
            if (this.f13451k) {
                return;
            }
            int i11 = this.f13450j + 1;
            this.f13450j = i11;
            int[] iArr = this.f13446f;
            if (i11 >= iArr.length) {
                this.f13451k = true;
                this.f13450j = iArr.length - 1;
                return;
            }
            return;
        }
        int i12 = -1;
        for (int i13 = 0; i10 != -1 && i13 < this.f13441a; i13++) {
            int i14 = this.f13446f[i10];
            int i15 = iVar.f13502c;
            if (i14 == i15) {
                this.f13448h[i10] = f10;
                return;
            }
            if (i14 < i15) {
                i12 = i10;
            }
            i10 = this.f13447g[i10];
        }
        int length = this.f13450j;
        int i16 = length + 1;
        if (this.f13451k) {
            int[] iArr2 = this.f13446f;
            if (iArr2[length] != -1) {
                length = iArr2.length;
            }
        } else {
            length = i16;
        }
        int[] iArr3 = this.f13446f;
        if (length >= iArr3.length && this.f13441a < iArr3.length) {
            int i17 = 0;
            while (true) {
                int[] iArr4 = this.f13446f;
                if (i17 >= iArr4.length) {
                    break;
                }
                if (iArr4[i17] == -1) {
                    length = i17;
                    break;
                }
                i17++;
            }
        }
        int[] iArr5 = this.f13446f;
        if (length >= iArr5.length) {
            length = iArr5.length;
            int i18 = this.f13444d * 2;
            this.f13444d = i18;
            this.f13451k = false;
            this.f13450j = length - 1;
            this.f13448h = Arrays.copyOf(this.f13448h, i18);
            this.f13446f = Arrays.copyOf(this.f13446f, this.f13444d);
            this.f13447g = Arrays.copyOf(this.f13447g, this.f13444d);
        }
        this.f13446f[length] = iVar.f13502c;
        this.f13448h[length] = f10;
        if (i12 != -1) {
            int[] iArr6 = this.f13447g;
            iArr6[length] = iArr6[i12];
            iArr6[i12] = length;
        } else {
            this.f13447g[length] = this.f13449i;
            this.f13449i = length;
        }
        iVar.f13512p++;
        iVar.a(this.f13442b);
        int i19 = this.f13441a + 1;
        this.f13441a = i19;
        if (!this.f13451k) {
            this.f13450j++;
        }
        int[] iArr7 = this.f13446f;
        if (i19 >= iArr7.length) {
            this.f13451k = true;
        }
        if (this.f13450j >= iArr7.length) {
            this.f13451k = true;
            this.f13450j = iArr7.length - 1;
        }
    }

    @Override // l.b.a
    public final void clear() {
        int i10 = this.f13449i;
        for (int i11 = 0; i10 != -1 && i11 < this.f13441a; i11++) {
            i iVar = this.f13443c.f13461d[this.f13446f[i10]];
            if (iVar != null) {
                iVar.d(this.f13442b);
            }
            i10 = this.f13447g[i10];
        }
        this.f13449i = -1;
        this.f13450j = -1;
        this.f13451k = false;
        this.f13441a = 0;
    }

    @Override // l.b.a
    public int d() {
        return this.f13441a;
    }

    @Override // l.b.a
    public void e(i iVar, float f10, boolean z10) {
        float f11 = f13440l;
        if (f10 <= (-f11) || f10 >= f11) {
            int i10 = this.f13449i;
            if (i10 == -1) {
                this.f13449i = 0;
                this.f13448h[0] = f10;
                this.f13446f[0] = iVar.f13502c;
                this.f13447g[0] = -1;
                iVar.f13512p++;
                iVar.a(this.f13442b);
                this.f13441a++;
                if (this.f13451k) {
                    return;
                }
                int i11 = this.f13450j + 1;
                this.f13450j = i11;
                int[] iArr = this.f13446f;
                if (i11 >= iArr.length) {
                    this.f13451k = true;
                    this.f13450j = iArr.length - 1;
                    return;
                }
                return;
            }
            int i12 = -1;
            for (int i13 = 0; i10 != -1 && i13 < this.f13441a; i13++) {
                int i14 = this.f13446f[i10];
                int i15 = iVar.f13502c;
                if (i14 == i15) {
                    float[] fArr = this.f13448h;
                    float f12 = fArr[i10] + f10;
                    float f13 = f13440l;
                    if (f12 > (-f13) && f12 < f13) {
                        f12 = 0.0f;
                    }
                    fArr[i10] = f12;
                    if (f12 == 0.0f) {
                        if (i10 == this.f13449i) {
                            this.f13449i = this.f13447g[i10];
                        } else {
                            int[] iArr2 = this.f13447g;
                            iArr2[i12] = iArr2[i10];
                        }
                        if (z10) {
                            iVar.d(this.f13442b);
                        }
                        if (this.f13451k) {
                            this.f13450j = i10;
                        }
                        iVar.f13512p--;
                        this.f13441a--;
                        return;
                    }
                    return;
                }
                if (i14 < i15) {
                    i12 = i10;
                }
                i10 = this.f13447g[i10];
            }
            int length = this.f13450j;
            int i16 = length + 1;
            if (this.f13451k) {
                int[] iArr3 = this.f13446f;
                if (iArr3[length] != -1) {
                    length = iArr3.length;
                }
            } else {
                length = i16;
            }
            int[] iArr4 = this.f13446f;
            if (length >= iArr4.length && this.f13441a < iArr4.length) {
                int i17 = 0;
                while (true) {
                    int[] iArr5 = this.f13446f;
                    if (i17 >= iArr5.length) {
                        break;
                    }
                    if (iArr5[i17] == -1) {
                        length = i17;
                        break;
                    }
                    i17++;
                }
            }
            int[] iArr6 = this.f13446f;
            if (length >= iArr6.length) {
                length = iArr6.length;
                int i18 = this.f13444d * 2;
                this.f13444d = i18;
                this.f13451k = false;
                this.f13450j = length - 1;
                this.f13448h = Arrays.copyOf(this.f13448h, i18);
                this.f13446f = Arrays.copyOf(this.f13446f, this.f13444d);
                this.f13447g = Arrays.copyOf(this.f13447g, this.f13444d);
            }
            this.f13446f[length] = iVar.f13502c;
            this.f13448h[length] = f10;
            if (i12 != -1) {
                int[] iArr7 = this.f13447g;
                iArr7[length] = iArr7[i12];
                iArr7[i12] = length;
            } else {
                this.f13447g[length] = this.f13449i;
                this.f13449i = length;
            }
            iVar.f13512p++;
            iVar.a(this.f13442b);
            this.f13441a++;
            if (!this.f13451k) {
                this.f13450j++;
            }
            int i19 = this.f13450j;
            int[] iArr8 = this.f13446f;
            if (i19 >= iArr8.length) {
                this.f13451k = true;
                this.f13450j = iArr8.length - 1;
            }
        }
    }

    @Override // l.b.a
    public i f(int i10) {
        int i11 = this.f13449i;
        for (int i12 = 0; i11 != -1 && i12 < this.f13441a; i12++) {
            if (i12 == i10) {
                return this.f13443c.f13461d[this.f13446f[i11]];
            }
            i11 = this.f13447g[i11];
        }
        return null;
    }

    @Override // l.b.a
    public final float g(i iVar) {
        int i10 = this.f13449i;
        for (int i11 = 0; i10 != -1 && i11 < this.f13441a; i11++) {
            if (this.f13446f[i10] == iVar.f13502c) {
                return this.f13448h[i10];
            }
            i10 = this.f13447g[i10];
        }
        return 0.0f;
    }

    @Override // l.b.a
    public final float h(i iVar, boolean z10) {
        if (this.f13445e == iVar) {
            this.f13445e = null;
        }
        int i10 = this.f13449i;
        if (i10 == -1) {
            return 0.0f;
        }
        int i11 = 0;
        int i12 = -1;
        while (i10 != -1 && i11 < this.f13441a) {
            if (this.f13446f[i10] == iVar.f13502c) {
                if (i10 == this.f13449i) {
                    this.f13449i = this.f13447g[i10];
                } else {
                    int[] iArr = this.f13447g;
                    iArr[i12] = iArr[i10];
                }
                if (z10) {
                    iVar.d(this.f13442b);
                }
                iVar.f13512p--;
                this.f13441a--;
                this.f13446f[i10] = -1;
                if (this.f13451k) {
                    this.f13450j = i10;
                }
                return this.f13448h[i10];
            }
            i11++;
            i12 = i10;
            i10 = this.f13447g[i10];
        }
        return 0.0f;
    }

    @Override // l.b.a
    public boolean i(i iVar) {
        int i10 = this.f13449i;
        if (i10 == -1) {
            return false;
        }
        for (int i11 = 0; i10 != -1 && i11 < this.f13441a; i11++) {
            if (this.f13446f[i10] == iVar.f13502c) {
                return true;
            }
            i10 = this.f13447g[i10];
        }
        return false;
    }

    @Override // l.b.a
    public void j(float f10) {
        int i10 = this.f13449i;
        for (int i11 = 0; i10 != -1 && i11 < this.f13441a; i11++) {
            float[] fArr = this.f13448h;
            fArr[i10] = fArr[i10] / f10;
            i10 = this.f13447g[i10];
        }
    }

    @Override // l.b.a
    public void k() {
        int i10 = this.f13449i;
        for (int i11 = 0; i10 != -1 && i11 < this.f13441a; i11++) {
            float[] fArr = this.f13448h;
            fArr[i10] = fArr[i10] * (-1.0f);
            i10 = this.f13447g[i10];
        }
    }

    public String toString() {
        int i10 = this.f13449i;
        String str = "";
        for (int i11 = 0; i10 != -1 && i11 < this.f13441a; i11++) {
            str = ((str + " -> ") + this.f13448h[i10] + " : ") + this.f13443c.f13461d[this.f13446f[i10]];
            i10 = this.f13447g[i10];
        }
        return str;
    }
}
