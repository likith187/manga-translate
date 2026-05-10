package o;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import o.d;
import p.p;

/* JADX INFO: loaded from: classes.dex */
public class e {
    public static float U0 = 0.5f;
    int A0;
    int B0;
    boolean C0;
    boolean D0;
    boolean E0;
    public boolean F;
    boolean F0;
    public boolean G;
    boolean G0;
    boolean H0;
    boolean I0;
    int J0;
    int K0;
    boolean L0;
    private boolean M;
    boolean M0;
    public float[] N0;
    protected e[] O0;
    protected e[] P0;
    e Q0;
    e R0;
    public int S0;
    public int T0;
    public d X;
    public d[] Y;
    protected ArrayList Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private boolean[] f14170a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public b[] f14172b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public p.c f14173c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public e f14174c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public p.c f14175d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    int f14176d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    int f14178e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public float f14180f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    protected int f14182g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    protected int f14184h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    protected int f14186i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    int f14188j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    int f14190k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    protected int f14192l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    protected int f14194m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    int f14196n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f14197o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    protected int f14198o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    protected int f14200p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    float f14202q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    float f14204r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private Object f14206s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private int f14208t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private int f14210u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private boolean f14212v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private String f14214w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private String f14216x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    int f14218y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    int f14220z0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f14169a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public p[] f14171b = new p[2];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public p.l f14177e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public p.n f14179f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean[] f14181g = {true, true};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f14183h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f14185i = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f14187j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f14189k = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f14191l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f14193m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public n.a f14195n = new n.a(this);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f14199p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f14201q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f14203r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f14205s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f14207t = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f14209u = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f14211v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f14213w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f14215x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int[] f14217y = new int[2];

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f14219z = 0;
    public int A = 0;
    public float B = 1.0f;
    public int C = 0;
    public int D = 0;
    public float E = 1.0f;
    int H = -1;
    float I = 1.0f;
    private int[] J = {Integer.MAX_VALUE, Integer.MAX_VALUE};
    public float K = Float.NaN;
    private boolean L = false;
    private boolean N = false;
    private int O = 0;
    private int P = 0;
    public d Q = new d(this, d.a.LEFT);
    public d R = new d(this, d.a.TOP);
    public d S = new d(this, d.a.RIGHT);
    public d T = new d(this, d.a.BOTTOM);
    public d U = new d(this, d.a.BASELINE);
    d V = new d(this, d.a.CENTER_X);
    d W = new d(this, d.a.CENTER_Y);

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f14221a;

        static {
            int[] iArr = new int[d.a.values().length];
            f14221a = iArr;
            try {
                iArr[d.a.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14221a[d.a.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14221a[d.a.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14221a[d.a.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14221a[d.a.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14221a[d.a.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14221a[d.a.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14221a[d.a.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14221a[d.a.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public enum b {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public e() {
        d dVar = new d(this, d.a.CENTER);
        this.X = dVar;
        this.Y = new d[]{this.Q, this.S, this.R, this.T, this.U, dVar};
        this.Z = new ArrayList();
        this.f14170a0 = new boolean[2];
        b bVar = b.FIXED;
        this.f14172b0 = new b[]{bVar, bVar};
        this.f14174c0 = null;
        this.f14176d0 = 0;
        this.f14178e0 = 0;
        this.f14180f0 = 0.0f;
        this.f14182g0 = -1;
        this.f14184h0 = 0;
        this.f14186i0 = 0;
        this.f14188j0 = 0;
        this.f14190k0 = 0;
        this.f14192l0 = 0;
        this.f14194m0 = 0;
        this.f14196n0 = 0;
        float f10 = U0;
        this.f14202q0 = f10;
        this.f14204r0 = f10;
        this.f14208t0 = 0;
        this.f14210u0 = 0;
        this.f14212v0 = false;
        this.f14214w0 = null;
        this.f14216x0 = null;
        this.I0 = false;
        this.J0 = 0;
        this.K0 = 0;
        this.N0 = new float[]{-1.0f, -1.0f};
        this.O0 = new e[]{null, null};
        this.P0 = new e[]{null, null};
        this.Q0 = null;
        this.R0 = null;
        this.S0 = -1;
        this.T0 = -1;
        d();
    }

    private void A0(StringBuilder sb, String str, float f10, float f11) {
        if (f10 == f11) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(f10);
        sb.append(",\n");
    }

    private void B0(StringBuilder sb, String str, int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(i10);
        sb.append(",\n");
    }

    private void C0(StringBuilder sb, String str, String str2, String str3) {
        if (str3.equals(str2)) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(str2);
        sb.append(",\n");
    }

    private void D0(StringBuilder sb, String str, float f10, int i10) {
        if (f10 == 0.0f) {
            return;
        }
        sb.append(str);
        sb.append(" :  [");
        sb.append(f10);
        sb.append(",");
        sb.append(i10);
        sb.append("");
        sb.append("],\n");
    }

    private void R(StringBuilder sb, String str, int i10, int i11, int i12, int i13, int i14, int i15, float f10, b bVar, float f11) {
        sb.append(str);
        sb.append(" :  {\n");
        C0(sb, "      behavior", bVar.toString(), b.FIXED.toString());
        B0(sb, "      size", i10, 0);
        B0(sb, "      min", i11, 0);
        B0(sb, "      max", i12, Integer.MAX_VALUE);
        B0(sb, "      matchMin", i14, 0);
        B0(sb, "      matchDef", i15, 0);
        A0(sb, "      matchPercent", f10, 1.0f);
        sb.append("    },\n");
    }

    private void S(StringBuilder sb, String str, d dVar) {
        if (dVar.f14165f == null) {
            return;
        }
        sb.append("    ");
        sb.append(str);
        sb.append(" : [ '");
        sb.append(dVar.f14165f);
        sb.append("'");
        if (dVar.f14167h != Integer.MIN_VALUE || dVar.f14166g != 0) {
            sb.append(",");
            sb.append(dVar.f14166g);
            if (dVar.f14167h != Integer.MIN_VALUE) {
                sb.append(",");
                sb.append(dVar.f14167h);
                sb.append(",");
            }
        }
        sb.append(" ] ,\n");
    }

    private void d() {
        this.Z.add(this.Q);
        this.Z.add(this.R);
        this.Z.add(this.S);
        this.Z.add(this.T);
        this.Z.add(this.V);
        this.Z.add(this.W);
        this.Z.add(this.X);
        this.Z.add(this.U);
    }

    private boolean h0(int i10) {
        d dVar;
        d dVar2;
        int i11 = i10 * 2;
        d[] dVarArr = this.Y;
        d dVar3 = dVarArr[i11];
        d dVar4 = dVar3.f14165f;
        return (dVar4 == null || dVar4.f14165f == dVar3 || (dVar2 = (dVar = dVarArr[i11 + 1]).f14165f) == null || dVar2.f14165f != dVar) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01be A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x03df A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:234:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x03ec  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0439  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0457  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0489  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x04a5  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x04ad  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x04f8  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0509  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x0521  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x055a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:369:0x058e  */
    /* JADX WARN: Removed duplicated region for block: B:380:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void i(l.d r38, boolean r39, boolean r40, boolean r41, boolean r42, l.i r43, l.i r44, o.e.b r45, boolean r46, o.d r47, o.d r48, int r49, int r50, int r51, int r52, float r53, boolean r54, boolean r55, boolean r56, boolean r57, boolean r58, int r59, int r60, int r61, int r62, float r63, boolean r64) {
        /*
            Method dump skipped, instruction units count: 1429
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: o.e.i(l.d, boolean, boolean, boolean, boolean, l.i, l.i, o.e$b, boolean, o.d, o.d, int, int, int, int, float, boolean, boolean, boolean, boolean, boolean, int, int, int, int, float, boolean):void");
    }

    public float A() {
        return this.f14202q0;
    }

    public int B() {
        return this.J0;
    }

    public b C() {
        return this.f14172b0[0];
    }

    public int D() {
        d dVar = this.Q;
        int i10 = dVar != null ? dVar.f14166g : 0;
        d dVar2 = this.S;
        return dVar2 != null ? i10 + dVar2.f14166g : i10;
    }

    public int E() {
        return this.O;
    }

    public void E0(boolean z10) {
        this.f14212v0 = z10;
    }

    public int F() {
        return this.P;
    }

    public void F0(int i10) {
        this.f14196n0 = i10;
        this.L = i10 > 0;
    }

    public int G(int i10) {
        if (i10 == 0) {
            return Y();
        }
        if (i10 == 1) {
            return z();
        }
        return 0;
    }

    public void G0(Object obj) {
        this.f14206s0 = obj;
    }

    public int H() {
        return this.J[1];
    }

    public void H0(String str) {
        this.f14214w0 = str;
    }

    public int I() {
        return this.J[0];
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0086 A[PHI: r0
      0x0086: PHI (r0v2 int) = (r0v1 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int) binds: [B:46:0x0086, B:36:0x007f, B:24:0x0051, B:26:0x0057, B:28:0x0063, B:30:0x0067] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x0086 -> B:40:0x0087). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void I0(java.lang.String r9) {
        /*
            r8 = this;
            r0 = 0
            if (r9 == 0) goto L90
            int r1 = r9.length()
            if (r1 != 0) goto Lb
            goto L90
        Lb:
            int r1 = r9.length()
            r2 = 44
            int r2 = r9.indexOf(r2)
            r3 = 0
            r4 = 1
            r5 = -1
            if (r2 <= 0) goto L39
            int r6 = r1 + (-1)
            if (r2 >= r6) goto L39
            java.lang.String r6 = r9.substring(r3, r2)
            java.lang.String r7 = "W"
            boolean r7 = r6.equalsIgnoreCase(r7)
            if (r7 == 0) goto L2b
            goto L36
        L2b:
            java.lang.String r3 = "H"
            boolean r3 = r6.equalsIgnoreCase(r3)
            if (r3 == 0) goto L35
            r3 = r4
            goto L36
        L35:
            r3 = r5
        L36:
            int r2 = r2 + r4
            r5 = r3
            r3 = r2
        L39:
            r2 = 58
            int r2 = r9.indexOf(r2)
            if (r2 < 0) goto L77
            int r1 = r1 - r4
            if (r2 >= r1) goto L77
            java.lang.String r1 = r9.substring(r3, r2)
            int r2 = r2 + r4
            java.lang.String r9 = r9.substring(r2)
            int r2 = r1.length()
            if (r2 <= 0) goto L86
            int r2 = r9.length()
            if (r2 <= 0) goto L86
            float r1 = java.lang.Float.parseFloat(r1)     // Catch: java.lang.NumberFormatException -> L86
            float r9 = java.lang.Float.parseFloat(r9)     // Catch: java.lang.NumberFormatException -> L86
            int r2 = (r1 > r0 ? 1 : (r1 == r0 ? 0 : -1))
            if (r2 <= 0) goto L86
            int r2 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r2 <= 0) goto L86
            if (r5 != r4) goto L71
            float r9 = r9 / r1
            float r9 = java.lang.Math.abs(r9)     // Catch: java.lang.NumberFormatException -> L86
            goto L87
        L71:
            float r1 = r1 / r9
            float r9 = java.lang.Math.abs(r1)     // Catch: java.lang.NumberFormatException -> L86
            goto L87
        L77:
            java.lang.String r9 = r9.substring(r3)
            int r1 = r9.length()
            if (r1 <= 0) goto L86
            float r9 = java.lang.Float.parseFloat(r9)     // Catch: java.lang.NumberFormatException -> L86
            goto L87
        L86:
            r9 = r0
        L87:
            int r0 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r0 <= 0) goto L8f
            r8.f14180f0 = r9
            r8.f14182g0 = r5
        L8f:
            return
        L90:
            r8.f14180f0 = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: o.e.I0(java.lang.String):void");
    }

    public int J() {
        return this.f14200p0;
    }

    public void J0(int i10) {
        if (this.L) {
            int i11 = i10 - this.f14196n0;
            int i12 = this.f14178e0 + i11;
            this.f14186i0 = i11;
            this.R.t(i11);
            this.T.t(i12);
            this.U.t(i10);
            this.f14201q = true;
        }
    }

    public int K() {
        return this.f14198o0;
    }

    public void K0(int i10, int i11) {
        if (this.f14199p) {
            return;
        }
        this.Q.t(i10);
        this.S.t(i11);
        this.f14184h0 = i10;
        this.f14176d0 = i11 - i10;
        this.f14199p = true;
    }

    public e L(int i10) {
        d dVar;
        d dVar2;
        if (i10 != 0) {
            if (i10 == 1 && (dVar2 = (dVar = this.T).f14165f) != null && dVar2.f14165f == dVar) {
                return dVar2.f14163d;
            }
            return null;
        }
        d dVar3 = this.S;
        d dVar4 = dVar3.f14165f;
        if (dVar4 == null || dVar4.f14165f != dVar3) {
            return null;
        }
        return dVar4.f14163d;
    }

    public void L0(int i10) {
        this.Q.t(i10);
        this.f14184h0 = i10;
    }

    public e M() {
        return this.f14174c0;
    }

    public void M0(int i10) {
        this.R.t(i10);
        this.f14186i0 = i10;
    }

    public e N(int i10) {
        d dVar;
        d dVar2;
        if (i10 != 0) {
            if (i10 == 1 && (dVar2 = (dVar = this.R).f14165f) != null && dVar2.f14165f == dVar) {
                return dVar2.f14163d;
            }
            return null;
        }
        d dVar3 = this.Q;
        d dVar4 = dVar3.f14165f;
        if (dVar4 == null || dVar4.f14165f != dVar3) {
            return null;
        }
        return dVar4.f14163d;
    }

    public void N0(int i10, int i11) {
        if (this.f14201q) {
            return;
        }
        this.R.t(i10);
        this.T.t(i11);
        this.f14186i0 = i10;
        this.f14178e0 = i11 - i10;
        if (this.L) {
            this.U.t(i10 + this.f14196n0);
        }
        this.f14201q = true;
    }

    public int O() {
        return Z() + this.f14176d0;
    }

    public void O0(int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16 = i12 - i10;
        int i17 = i13 - i11;
        this.f14184h0 = i10;
        this.f14186i0 = i11;
        if (this.f14210u0 == 8) {
            this.f14176d0 = 0;
            this.f14178e0 = 0;
            return;
        }
        b[] bVarArr = this.f14172b0;
        b bVar = bVarArr[0];
        b bVar2 = b.FIXED;
        if (bVar == bVar2 && i16 < (i15 = this.f14176d0)) {
            i16 = i15;
        }
        if (bVarArr[1] == bVar2 && i17 < (i14 = this.f14178e0)) {
            i17 = i14;
        }
        this.f14176d0 = i16;
        this.f14178e0 = i17;
        int i18 = this.f14200p0;
        if (i17 < i18) {
            this.f14178e0 = i18;
        }
        int i19 = this.f14198o0;
        if (i16 < i19) {
            this.f14176d0 = i19;
        }
        int i20 = this.A;
        if (i20 > 0 && bVar == b.MATCH_CONSTRAINT) {
            this.f14176d0 = Math.min(this.f14176d0, i20);
        }
        int i21 = this.D;
        if (i21 > 0 && this.f14172b0[1] == b.MATCH_CONSTRAINT) {
            this.f14178e0 = Math.min(this.f14178e0, i21);
        }
        int i22 = this.f14176d0;
        if (i16 != i22) {
            this.f14191l = i22;
        }
        int i23 = this.f14178e0;
        if (i17 != i23) {
            this.f14193m = i23;
        }
    }

    public p P(int i10) {
        if (i10 == 0) {
            return this.f14177e;
        }
        if (i10 == 1) {
            return this.f14179f;
        }
        return null;
    }

    public void P0(boolean z10) {
        this.L = z10;
    }

    public void Q(StringBuilder sb) {
        sb.append("  " + this.f14197o + ":{\n");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("    actualWidth:");
        sb2.append(this.f14176d0);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("    actualHeight:" + this.f14178e0);
        sb.append("\n");
        sb.append("    actualLeft:" + this.f14184h0);
        sb.append("\n");
        sb.append("    actualTop:" + this.f14186i0);
        sb.append("\n");
        S(sb, "left", this.Q);
        S(sb, "top", this.R);
        S(sb, "right", this.S);
        S(sb, "bottom", this.T);
        S(sb, "baseline", this.U);
        S(sb, "centerX", this.V);
        S(sb, "centerY", this.W);
        R(sb, "    width", this.f14176d0, this.f14198o0, this.J[0], this.f14191l, this.f14219z, this.f14213w, this.B, this.f14172b0[0], this.N0[0]);
        R(sb, "    height", this.f14178e0, this.f14200p0, this.J[1], this.f14193m, this.C, this.f14215x, this.E, this.f14172b0[1], this.N0[1]);
        D0(sb, "    dimensionRatio", this.f14180f0, this.f14182g0);
        A0(sb, "    horizontalBias", this.f14202q0, U0);
        A0(sb, "    verticalBias", this.f14204r0, U0);
        B0(sb, "    horizontalChainStyle", this.J0, 0);
        B0(sb, "    verticalChainStyle", this.K0, 0);
        sb.append("  }");
    }

    public void Q0(int i10) {
        this.f14178e0 = i10;
        int i11 = this.f14200p0;
        if (i10 < i11) {
            this.f14178e0 = i11;
        }
    }

    public void R0(float f10) {
        this.f14202q0 = f10;
    }

    public void S0(int i10) {
        this.J0 = i10;
    }

    public float T() {
        return this.f14204r0;
    }

    public void T0(int i10, int i11) {
        this.f14184h0 = i10;
        int i12 = i11 - i10;
        this.f14176d0 = i12;
        int i13 = this.f14198o0;
        if (i12 < i13) {
            this.f14176d0 = i13;
        }
    }

    public int U() {
        return this.K0;
    }

    public void U0(b bVar) {
        this.f14172b0[0] = bVar;
    }

    public b V() {
        return this.f14172b0[1];
    }

    public void V0(int i10, int i11, int i12, float f10) {
        this.f14213w = i10;
        this.f14219z = i11;
        if (i12 == Integer.MAX_VALUE) {
            i12 = 0;
        }
        this.A = i12;
        this.B = f10;
        if (f10 <= 0.0f || f10 >= 1.0f || i10 != 0) {
            return;
        }
        this.f14213w = 2;
    }

    public int W() {
        int i10 = this.Q != null ? this.R.f14166g : 0;
        return this.S != null ? i10 + this.T.f14166g : i10;
    }

    public void W0(float f10) {
        this.N0[0] = f10;
    }

    public int X() {
        return this.f14210u0;
    }

    protected void X0(int i10, boolean z10) {
        this.f14170a0[i10] = z10;
    }

    public int Y() {
        if (this.f14210u0 == 8) {
            return 0;
        }
        return this.f14176d0;
    }

    public void Y0(boolean z10) {
        this.M = z10;
    }

    public int Z() {
        e eVar = this.f14174c0;
        return (eVar == null || !(eVar instanceof f)) ? this.f14184h0 : ((f) eVar).f14224c1 + this.f14184h0;
    }

    public void Z0(boolean z10) {
        this.N = z10;
    }

    public int a0() {
        e eVar = this.f14174c0;
        return (eVar == null || !(eVar instanceof f)) ? this.f14186i0 : ((f) eVar).f14225d1 + this.f14186i0;
    }

    public void a1(int i10, int i11) {
        this.O = i10;
        this.P = i11;
        d1(false);
    }

    public boolean b0() {
        return this.L;
    }

    public void b1(int i10) {
        this.J[1] = i10;
    }

    public boolean c0(int i10) {
        if (i10 == 0) {
            return (this.Q.f14165f != null ? 1 : 0) + (this.S.f14165f != null ? 1 : 0) < 2;
        }
        return ((this.R.f14165f != null ? 1 : 0) + (this.T.f14165f != null ? 1 : 0)) + (this.U.f14165f != null ? 1 : 0) < 2;
    }

    public void c1(int i10) {
        this.J[0] = i10;
    }

    public boolean d0() {
        int size = this.Z.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (((d) this.Z.get(i10)).m()) {
                return true;
            }
        }
        return false;
    }

    public void d1(boolean z10) {
        this.f14185i = z10;
    }

    public void e(f fVar, l.d dVar, HashSet hashSet, int i10, boolean z10) {
        if (z10) {
            if (!hashSet.contains(this)) {
                return;
            }
            k.a(fVar, dVar, this);
            hashSet.remove(this);
            g(dVar, fVar.Z1(64));
        }
        if (i10 == 0) {
            HashSet hashSetD = this.Q.d();
            if (hashSetD != null) {
                Iterator it = hashSetD.iterator();
                while (it.hasNext()) {
                    ((d) it.next()).f14163d.e(fVar, dVar, hashSet, i10, true);
                }
            }
            HashSet hashSetD2 = this.S.d();
            if (hashSetD2 != null) {
                Iterator it2 = hashSetD2.iterator();
                while (it2.hasNext()) {
                    ((d) it2.next()).f14163d.e(fVar, dVar, hashSet, i10, true);
                }
                return;
            }
            return;
        }
        HashSet hashSetD3 = this.R.d();
        if (hashSetD3 != null) {
            Iterator it3 = hashSetD3.iterator();
            while (it3.hasNext()) {
                ((d) it3.next()).f14163d.e(fVar, dVar, hashSet, i10, true);
            }
        }
        HashSet hashSetD4 = this.T.d();
        if (hashSetD4 != null) {
            Iterator it4 = hashSetD4.iterator();
            while (it4.hasNext()) {
                ((d) it4.next()).f14163d.e(fVar, dVar, hashSet, i10, true);
            }
        }
        HashSet hashSetD5 = this.U.d();
        if (hashSetD5 != null) {
            Iterator it5 = hashSetD5.iterator();
            while (it5.hasNext()) {
                ((d) it5.next()).f14163d.e(fVar, dVar, hashSet, i10, true);
            }
        }
    }

    public boolean e0() {
        return (this.f14191l == -1 && this.f14193m == -1) ? false : true;
    }

    public void e1(int i10) {
        if (i10 < 0) {
            this.f14200p0 = 0;
        } else {
            this.f14200p0 = i10;
        }
    }

    boolean f() {
        return (this instanceof m) || (this instanceof h);
    }

    public boolean f0(int i10, int i11) {
        d dVar;
        d dVar2;
        if (i10 == 0) {
            d dVar3 = this.Q.f14165f;
            return dVar3 != null && dVar3.n() && (dVar2 = this.S.f14165f) != null && dVar2.n() && (this.S.f14165f.e() - this.S.f()) - (this.Q.f14165f.e() + this.Q.f()) >= i11;
        }
        d dVar4 = this.R.f14165f;
        return dVar4 != null && dVar4.n() && (dVar = this.T.f14165f) != null && dVar.n() && (this.T.f14165f.e() - this.T.f()) - (this.R.f14165f.e() + this.R.f()) >= i11;
        return false;
    }

    public void f1(int i10) {
        if (i10 < 0) {
            this.f14198o0 = 0;
        } else {
            this.f14198o0 = i10;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:183:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x042c  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0490  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x04a4  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x04a6  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x04a9  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x0544  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0547  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x0588  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x0590  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x05be  */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3, types: [o.e] */
    /* JADX WARN: Type inference failed for: r15v5, types: [o.e] */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r27v1 */
    /* JADX WARN: Type inference failed for: r27v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r27v3 */
    /* JADX WARN: Type inference failed for: r53v0, types: [o.e] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void g(l.d r54, boolean r55) {
        /*
            Method dump skipped, instruction units count: 1508
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: o.e.g(l.d, boolean):void");
    }

    public void g0(d.a aVar, e eVar, d.a aVar2, int i10, int i11) {
        q(aVar).b(eVar.q(aVar2), i10, i11, true);
    }

    public void g1(int i10, int i11) {
        this.f14184h0 = i10;
        this.f14186i0 = i11;
    }

    public boolean h() {
        return this.f14210u0 != 8;
    }

    public void h1(e eVar) {
        this.f14174c0 = eVar;
    }

    public boolean i0() {
        return this.f14203r;
    }

    public void i1(float f10) {
        this.f14204r0 = f10;
    }

    public void j(d.a aVar, e eVar, d.a aVar2) {
        k(aVar, eVar, aVar2, 0);
    }

    public boolean j0(int i10) {
        return this.f14170a0[i10];
    }

    public void j1(int i10) {
        this.K0 = i10;
    }

    public void k(d.a aVar, e eVar, d.a aVar2, int i10) {
        d.a aVar3;
        d.a aVar4;
        boolean z10;
        d.a aVar5 = d.a.CENTER;
        if (aVar == aVar5) {
            if (aVar2 != aVar5) {
                d.a aVar6 = d.a.LEFT;
                if (aVar2 == aVar6 || aVar2 == d.a.RIGHT) {
                    k(aVar6, eVar, aVar2, 0);
                    k(d.a.RIGHT, eVar, aVar2, 0);
                    q(aVar5).a(eVar.q(aVar2), 0);
                    return;
                }
                d.a aVar7 = d.a.TOP;
                if (aVar2 == aVar7 || aVar2 == d.a.BOTTOM) {
                    k(aVar7, eVar, aVar2, 0);
                    k(d.a.BOTTOM, eVar, aVar2, 0);
                    q(aVar5).a(eVar.q(aVar2), 0);
                    return;
                }
                return;
            }
            d.a aVar8 = d.a.LEFT;
            d dVarQ = q(aVar8);
            d.a aVar9 = d.a.RIGHT;
            d dVarQ2 = q(aVar9);
            d.a aVar10 = d.a.TOP;
            d dVarQ3 = q(aVar10);
            d.a aVar11 = d.a.BOTTOM;
            d dVarQ4 = q(aVar11);
            boolean z11 = true;
            if ((dVarQ == null || !dVarQ.o()) && (dVarQ2 == null || !dVarQ2.o())) {
                k(aVar8, eVar, aVar8, 0);
                k(aVar9, eVar, aVar9, 0);
                z10 = true;
            } else {
                z10 = false;
            }
            if ((dVarQ3 == null || !dVarQ3.o()) && (dVarQ4 == null || !dVarQ4.o())) {
                k(aVar10, eVar, aVar10, 0);
                k(aVar11, eVar, aVar11, 0);
            } else {
                z11 = false;
            }
            if (z10 && z11) {
                q(aVar5).a(eVar.q(aVar5), 0);
                return;
            }
            if (z10) {
                d.a aVar12 = d.a.CENTER_X;
                q(aVar12).a(eVar.q(aVar12), 0);
                return;
            } else {
                if (z11) {
                    d.a aVar13 = d.a.CENTER_Y;
                    q(aVar13).a(eVar.q(aVar13), 0);
                    return;
                }
                return;
            }
        }
        d.a aVar14 = d.a.CENTER_X;
        if (aVar == aVar14 && (aVar2 == (aVar4 = d.a.LEFT) || aVar2 == d.a.RIGHT)) {
            d dVarQ5 = q(aVar4);
            d dVarQ6 = eVar.q(aVar2);
            d dVarQ7 = q(d.a.RIGHT);
            dVarQ5.a(dVarQ6, 0);
            dVarQ7.a(dVarQ6, 0);
            q(aVar14).a(dVarQ6, 0);
            return;
        }
        d.a aVar15 = d.a.CENTER_Y;
        if (aVar == aVar15 && (aVar2 == (aVar3 = d.a.TOP) || aVar2 == d.a.BOTTOM)) {
            d dVarQ8 = eVar.q(aVar2);
            q(aVar3).a(dVarQ8, 0);
            q(d.a.BOTTOM).a(dVarQ8, 0);
            q(aVar15).a(dVarQ8, 0);
            return;
        }
        if (aVar == aVar14 && aVar2 == aVar14) {
            d.a aVar16 = d.a.LEFT;
            q(aVar16).a(eVar.q(aVar16), 0);
            d.a aVar17 = d.a.RIGHT;
            q(aVar17).a(eVar.q(aVar17), 0);
            q(aVar14).a(eVar.q(aVar2), 0);
            return;
        }
        if (aVar == aVar15 && aVar2 == aVar15) {
            d.a aVar18 = d.a.TOP;
            q(aVar18).a(eVar.q(aVar18), 0);
            d.a aVar19 = d.a.BOTTOM;
            q(aVar19).a(eVar.q(aVar19), 0);
            q(aVar15).a(eVar.q(aVar2), 0);
            return;
        }
        d dVarQ9 = q(aVar);
        d dVarQ10 = eVar.q(aVar2);
        if (dVarQ9.p(dVarQ10)) {
            d.a aVar20 = d.a.BASELINE;
            if (aVar == aVar20) {
                d dVarQ11 = q(d.a.TOP);
                d dVarQ12 = q(d.a.BOTTOM);
                if (dVarQ11 != null) {
                    dVarQ11.q();
                }
                if (dVarQ12 != null) {
                    dVarQ12.q();
                }
            } else if (aVar == d.a.TOP || aVar == d.a.BOTTOM) {
                d dVarQ13 = q(aVar20);
                if (dVarQ13 != null) {
                    dVarQ13.q();
                }
                d dVarQ14 = q(aVar5);
                if (dVarQ14.j() != dVarQ10) {
                    dVarQ14.q();
                }
                d dVarG = q(aVar).g();
                d dVarQ15 = q(aVar15);
                if (dVarQ15.o()) {
                    dVarG.q();
                    dVarQ15.q();
                }
            } else if (aVar == d.a.LEFT || aVar == d.a.RIGHT) {
                d dVarQ16 = q(aVar5);
                if (dVarQ16.j() != dVarQ10) {
                    dVarQ16.q();
                }
                d dVarG2 = q(aVar).g();
                d dVarQ17 = q(aVar14);
                if (dVarQ17.o()) {
                    dVarG2.q();
                    dVarQ17.q();
                }
            }
            dVarQ9.a(dVarQ10, i10);
        }
    }

    public boolean k0() {
        d dVar = this.Q;
        d dVar2 = dVar.f14165f;
        if (dVar2 != null && dVar2.f14165f == dVar) {
            return true;
        }
        d dVar3 = this.S;
        d dVar4 = dVar3.f14165f;
        return dVar4 != null && dVar4.f14165f == dVar3;
    }

    public void k1(int i10, int i11) {
        this.f14186i0 = i10;
        int i12 = i11 - i10;
        this.f14178e0 = i12;
        int i13 = this.f14200p0;
        if (i12 < i13) {
            this.f14178e0 = i13;
        }
    }

    public void l(d dVar, d dVar2, int i10) {
        if (dVar.h() == this) {
            k(dVar.k(), dVar2.h(), dVar2.k(), i10);
        }
    }

    public boolean l0() {
        return this.M;
    }

    public void l1(b bVar) {
        this.f14172b0[1] = bVar;
    }

    public void m(e eVar, float f10, int i10) {
        d.a aVar = d.a.CENTER;
        g0(aVar, eVar, aVar, i10, 0);
        this.K = f10;
    }

    public boolean m0() {
        d dVar = this.R;
        d dVar2 = dVar.f14165f;
        if (dVar2 != null && dVar2.f14165f == dVar) {
            return true;
        }
        d dVar3 = this.T;
        d dVar4 = dVar3.f14165f;
        return dVar4 != null && dVar4.f14165f == dVar3;
    }

    public void m1(int i10, int i11, int i12, float f10) {
        this.f14215x = i10;
        this.C = i11;
        if (i12 == Integer.MAX_VALUE) {
            i12 = 0;
        }
        this.D = i12;
        this.E = f10;
        if (f10 <= 0.0f || f10 >= 1.0f || i10 != 0) {
            return;
        }
        this.f14215x = 2;
    }

    public void n(e eVar, HashMap map) {
        this.f14207t = eVar.f14207t;
        this.f14209u = eVar.f14209u;
        this.f14213w = eVar.f14213w;
        this.f14215x = eVar.f14215x;
        int[] iArr = this.f14217y;
        int[] iArr2 = eVar.f14217y;
        iArr[0] = iArr2[0];
        iArr[1] = iArr2[1];
        this.f14219z = eVar.f14219z;
        this.A = eVar.A;
        this.C = eVar.C;
        this.D = eVar.D;
        this.E = eVar.E;
        this.F = eVar.F;
        this.G = eVar.G;
        this.H = eVar.H;
        this.I = eVar.I;
        int[] iArr3 = eVar.J;
        this.J = Arrays.copyOf(iArr3, iArr3.length);
        this.K = eVar.K;
        this.L = eVar.L;
        this.M = eVar.M;
        this.Q.q();
        this.R.q();
        this.S.q();
        this.T.q();
        this.U.q();
        this.V.q();
        this.W.q();
        this.X.q();
        this.f14172b0 = (b[]) Arrays.copyOf(this.f14172b0, 2);
        this.f14174c0 = this.f14174c0 == null ? null : (e) map.get(eVar.f14174c0);
        this.f14176d0 = eVar.f14176d0;
        this.f14178e0 = eVar.f14178e0;
        this.f14180f0 = eVar.f14180f0;
        this.f14182g0 = eVar.f14182g0;
        this.f14184h0 = eVar.f14184h0;
        this.f14186i0 = eVar.f14186i0;
        this.f14188j0 = eVar.f14188j0;
        this.f14190k0 = eVar.f14190k0;
        this.f14192l0 = eVar.f14192l0;
        this.f14194m0 = eVar.f14194m0;
        this.f14196n0 = eVar.f14196n0;
        this.f14198o0 = eVar.f14198o0;
        this.f14200p0 = eVar.f14200p0;
        this.f14202q0 = eVar.f14202q0;
        this.f14204r0 = eVar.f14204r0;
        this.f14206s0 = eVar.f14206s0;
        this.f14208t0 = eVar.f14208t0;
        this.f14210u0 = eVar.f14210u0;
        this.f14212v0 = eVar.f14212v0;
        this.f14214w0 = eVar.f14214w0;
        this.f14216x0 = eVar.f14216x0;
        this.f14218y0 = eVar.f14218y0;
        this.f14220z0 = eVar.f14220z0;
        this.A0 = eVar.A0;
        this.B0 = eVar.B0;
        this.C0 = eVar.C0;
        this.D0 = eVar.D0;
        this.E0 = eVar.E0;
        this.F0 = eVar.F0;
        this.G0 = eVar.G0;
        this.H0 = eVar.H0;
        this.J0 = eVar.J0;
        this.K0 = eVar.K0;
        this.L0 = eVar.L0;
        this.M0 = eVar.M0;
        float[] fArr = this.N0;
        float[] fArr2 = eVar.N0;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        e[] eVarArr = this.O0;
        e[] eVarArr2 = eVar.O0;
        eVarArr[0] = eVarArr2[0];
        eVarArr[1] = eVarArr2[1];
        e[] eVarArr3 = this.P0;
        e[] eVarArr4 = eVar.P0;
        eVarArr3[0] = eVarArr4[0];
        eVarArr3[1] = eVarArr4[1];
        e eVar2 = eVar.Q0;
        this.Q0 = eVar2 == null ? null : (e) map.get(eVar2);
        e eVar3 = eVar.R0;
        this.R0 = eVar3 != null ? (e) map.get(eVar3) : null;
    }

    public boolean n0() {
        return this.N;
    }

    public void n1(float f10) {
        this.N0[1] = f10;
    }

    public void o(l.d dVar) {
        dVar.q(this.Q);
        dVar.q(this.R);
        dVar.q(this.S);
        dVar.q(this.T);
        if (this.f14196n0 > 0) {
            dVar.q(this.U);
        }
    }

    public boolean o0() {
        return this.f14185i && this.f14210u0 != 8;
    }

    public void o1(int i10) {
        this.f14210u0 = i10;
    }

    public void p() {
        if (this.f14177e == null) {
            this.f14177e = new p.l(this);
        }
        if (this.f14179f == null) {
            this.f14179f = new p.n(this);
        }
    }

    public boolean p0() {
        return this.f14199p || (this.Q.n() && this.S.n());
    }

    public void p1(int i10) {
        this.f14176d0 = i10;
        int i11 = this.f14198o0;
        if (i10 < i11) {
            this.f14176d0 = i11;
        }
    }

    public d q(d.a aVar) {
        switch (a.f14221a[aVar.ordinal()]) {
            case 1:
                return this.Q;
            case 2:
                return this.R;
            case 3:
                return this.S;
            case 4:
                return this.T;
            case 5:
                return this.U;
            case 6:
                return this.X;
            case 7:
                return this.V;
            case 8:
                return this.W;
            case 9:
                return null;
            default:
                throw new AssertionError(aVar.name());
        }
    }

    public boolean q0() {
        return this.f14201q || (this.R.n() && this.T.n());
    }

    public void q1(int i10) {
        if (i10 < 0 || i10 > 3) {
            return;
        }
        this.f14211v = i10;
    }

    public int r() {
        return this.f14196n0;
    }

    public boolean r0() {
        return this.f14205s;
    }

    public void r1(int i10) {
        this.f14184h0 = i10;
    }

    public float s(int i10) {
        if (i10 == 0) {
            return this.f14202q0;
        }
        if (i10 == 1) {
            return this.f14204r0;
        }
        return -1.0f;
    }

    public void s0() {
        this.f14203r = true;
    }

    public void s1(int i10) {
        this.f14186i0 = i10;
    }

    public int t() {
        return a0() + this.f14178e0;
    }

    public void t0() {
        this.f14205s = true;
    }

    public void t1(boolean z10, boolean z11, boolean z12, boolean z13) {
        if (this.H == -1) {
            if (z12 && !z13) {
                this.H = 0;
            } else if (!z12 && z13) {
                this.H = 1;
                if (this.f14182g0 == -1) {
                    this.I = 1.0f / this.I;
                }
            }
        }
        if (this.H == 0 && (!this.R.o() || !this.T.o())) {
            this.H = 1;
        } else if (this.H == 1 && (!this.Q.o() || !this.S.o())) {
            this.H = 0;
        }
        if (this.H == -1 && (!this.R.o() || !this.T.o() || !this.Q.o() || !this.S.o())) {
            if (this.R.o() && this.T.o()) {
                this.H = 0;
            } else if (this.Q.o() && this.S.o()) {
                this.I = 1.0f / this.I;
                this.H = 1;
            }
        }
        if (this.H == -1) {
            int i10 = this.f14219z;
            if (i10 > 0 && this.C == 0) {
                this.H = 0;
            } else {
                if (i10 != 0 || this.C <= 0) {
                    return;
                }
                this.I = 1.0f / this.I;
                this.H = 1;
            }
        }
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (this.f14216x0 != null) {
            str = "type: " + this.f14216x0 + " ";
        } else {
            str = "";
        }
        sb.append(str);
        if (this.f14214w0 != null) {
            str2 = "id: " + this.f14214w0 + " ";
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.f14184h0);
        sb.append(", ");
        sb.append(this.f14186i0);
        sb.append(") - (");
        sb.append(this.f14176d0);
        sb.append(" x ");
        sb.append(this.f14178e0);
        sb.append(")");
        return sb.toString();
    }

    public Object u() {
        return this.f14206s0;
    }

    public boolean u0() {
        b[] bVarArr = this.f14172b0;
        b bVar = bVarArr[0];
        b bVar2 = b.MATCH_CONSTRAINT;
        return bVar == bVar2 && bVarArr[1] == bVar2;
    }

    public void u1(boolean z10, boolean z11) {
        int i10;
        int i11;
        boolean zK = z10 & this.f14177e.k();
        boolean zK2 = z11 & this.f14179f.k();
        p.l lVar = this.f14177e;
        int i12 = lVar.f15133h.f15089g;
        p.n nVar = this.f14179f;
        int i13 = nVar.f15133h.f15089g;
        int i14 = lVar.f15134i.f15089g;
        int i15 = nVar.f15134i.f15089g;
        int i16 = i15 - i13;
        if (i14 - i12 < 0 || i16 < 0 || i12 == Integer.MIN_VALUE || i12 == Integer.MAX_VALUE || i13 == Integer.MIN_VALUE || i13 == Integer.MAX_VALUE || i14 == Integer.MIN_VALUE || i14 == Integer.MAX_VALUE || i15 == Integer.MIN_VALUE || i15 == Integer.MAX_VALUE) {
            i14 = 0;
            i12 = 0;
            i15 = 0;
            i13 = 0;
        }
        int i17 = i14 - i12;
        int i18 = i15 - i13;
        if (zK) {
            this.f14184h0 = i12;
        }
        if (zK2) {
            this.f14186i0 = i13;
        }
        if (this.f14210u0 == 8) {
            this.f14176d0 = 0;
            this.f14178e0 = 0;
            return;
        }
        if (zK) {
            if (this.f14172b0[0] == b.FIXED && i17 < (i11 = this.f14176d0)) {
                i17 = i11;
            }
            this.f14176d0 = i17;
            int i19 = this.f14198o0;
            if (i17 < i19) {
                this.f14176d0 = i19;
            }
        }
        if (zK2) {
            if (this.f14172b0[1] == b.FIXED && i18 < (i10 = this.f14178e0)) {
                i18 = i10;
            }
            this.f14178e0 = i18;
            int i20 = this.f14200p0;
            if (i18 < i20) {
                this.f14178e0 = i20;
            }
        }
    }

    public String v() {
        return this.f14214w0;
    }

    public void v0() {
        this.Q.q();
        this.R.q();
        this.S.q();
        this.T.q();
        this.U.q();
        this.V.q();
        this.W.q();
        this.X.q();
        this.f14174c0 = null;
        this.K = Float.NaN;
        this.f14176d0 = 0;
        this.f14178e0 = 0;
        this.f14180f0 = 0.0f;
        this.f14182g0 = -1;
        this.f14184h0 = 0;
        this.f14186i0 = 0;
        this.f14192l0 = 0;
        this.f14194m0 = 0;
        this.f14196n0 = 0;
        this.f14198o0 = 0;
        this.f14200p0 = 0;
        float f10 = U0;
        this.f14202q0 = f10;
        this.f14204r0 = f10;
        b[] bVarArr = this.f14172b0;
        b bVar = b.FIXED;
        bVarArr[0] = bVar;
        bVarArr[1] = bVar;
        this.f14206s0 = null;
        this.f14208t0 = 0;
        this.f14210u0 = 0;
        this.f14216x0 = null;
        this.G0 = false;
        this.H0 = false;
        this.J0 = 0;
        this.K0 = 0;
        this.L0 = false;
        this.M0 = false;
        float[] fArr = this.N0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.f14207t = -1;
        this.f14209u = -1;
        int[] iArr = this.J;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.f14213w = 0;
        this.f14215x = 0;
        this.B = 1.0f;
        this.E = 1.0f;
        this.A = Integer.MAX_VALUE;
        this.D = Integer.MAX_VALUE;
        this.f14219z = 0;
        this.C = 0;
        this.f14183h = false;
        this.H = -1;
        this.I = 1.0f;
        this.I0 = false;
        boolean[] zArr = this.f14181g;
        zArr[0] = true;
        zArr[1] = true;
        this.N = false;
        boolean[] zArr2 = this.f14170a0;
        zArr2[0] = false;
        zArr2[1] = false;
        this.f14185i = true;
        int[] iArr2 = this.f14217y;
        iArr2[0] = 0;
        iArr2[1] = 0;
        this.f14191l = -1;
        this.f14193m = -1;
    }

    public void v1(l.d dVar, boolean z10) {
        p.n nVar;
        p.l lVar;
        int iY = dVar.y(this.Q);
        int iY2 = dVar.y(this.R);
        int iY3 = dVar.y(this.S);
        int iY4 = dVar.y(this.T);
        if (z10 && (lVar = this.f14177e) != null) {
            p.f fVar = lVar.f15133h;
            if (fVar.f15092j) {
                p.f fVar2 = lVar.f15134i;
                if (fVar2.f15092j) {
                    iY = fVar.f15089g;
                    iY3 = fVar2.f15089g;
                }
            }
        }
        if (z10 && (nVar = this.f14179f) != null) {
            p.f fVar3 = nVar.f15133h;
            if (fVar3.f15092j) {
                p.f fVar4 = nVar.f15134i;
                if (fVar4.f15092j) {
                    iY2 = fVar3.f15089g;
                    iY4 = fVar4.f15089g;
                }
            }
        }
        int i10 = iY4 - iY2;
        if (iY3 - iY < 0 || i10 < 0 || iY == Integer.MIN_VALUE || iY == Integer.MAX_VALUE || iY2 == Integer.MIN_VALUE || iY2 == Integer.MAX_VALUE || iY3 == Integer.MIN_VALUE || iY3 == Integer.MAX_VALUE || iY4 == Integer.MIN_VALUE || iY4 == Integer.MAX_VALUE) {
            iY = 0;
            iY4 = 0;
            iY2 = 0;
            iY3 = 0;
        }
        O0(iY, iY2, iY3, iY4);
    }

    public b w(int i10) {
        if (i10 == 0) {
            return C();
        }
        if (i10 == 1) {
            return V();
        }
        return null;
    }

    public void w0() {
        x0();
        i1(U0);
        R0(U0);
    }

    public float x() {
        return this.f14180f0;
    }

    public void x0() {
        e eVarM = M();
        if (eVarM != null && (eVarM instanceof f) && ((f) M()).R1()) {
            return;
        }
        int size = this.Z.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((d) this.Z.get(i10)).q();
        }
    }

    public int y() {
        return this.f14182g0;
    }

    public void y0() {
        this.f14199p = false;
        this.f14201q = false;
        this.f14203r = false;
        this.f14205s = false;
        int size = this.Z.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((d) this.Z.get(i10)).r();
        }
    }

    public int z() {
        if (this.f14210u0 == 8) {
            return 0;
        }
        return this.f14178e0;
    }

    public void z0(l.c cVar) {
        this.Q.s(cVar);
        this.R.s(cVar);
        this.S.s(cVar);
        this.T.s(cVar);
        this.U.s(cVar);
        this.X.s(cVar);
        this.V.s(cVar);
        this.W.s(cVar);
    }
}
