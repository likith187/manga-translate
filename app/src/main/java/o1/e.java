package o1;

import com.airbnb.lottie.j;
import java.util.List;
import java.util.Locale;
import m1.k;
import m1.l;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f14329a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f14330b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f14331c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f14332d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f14333e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f14334f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f14335g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List f14336h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final l f14337i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f14338j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f14339k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f14340l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final float f14341m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final float f14342n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final float f14343o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final float f14344p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final m1.j f14345q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final k f14346r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final m1.b f14347s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final List f14348t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final b f14349u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final boolean f14350v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final n1.a f14351w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final q1.j f14352x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final n1.h f14353y;

    public enum a {
        PRE_COMP,
        SOLID,
        IMAGE,
        NULL,
        SHAPE,
        TEXT,
        UNKNOWN
    }

    public enum b {
        NONE,
        ADD,
        INVERT,
        LUMA,
        LUMA_INVERTED,
        UNKNOWN
    }

    public e(List list, j jVar, String str, long j10, a aVar, long j11, String str2, List list2, l lVar, int i10, int i11, int i12, float f10, float f11, float f12, float f13, m1.j jVar2, k kVar, List list3, b bVar, m1.b bVar2, boolean z10, n1.a aVar2, q1.j jVar3, n1.h hVar) {
        this.f14329a = list;
        this.f14330b = jVar;
        this.f14331c = str;
        this.f14332d = j10;
        this.f14333e = aVar;
        this.f14334f = j11;
        this.f14335g = str2;
        this.f14336h = list2;
        this.f14337i = lVar;
        this.f14338j = i10;
        this.f14339k = i11;
        this.f14340l = i12;
        this.f14341m = f10;
        this.f14342n = f11;
        this.f14343o = f12;
        this.f14344p = f13;
        this.f14345q = jVar2;
        this.f14346r = kVar;
        this.f14348t = list3;
        this.f14349u = bVar;
        this.f14347s = bVar2;
        this.f14350v = z10;
        this.f14351w = aVar2;
        this.f14352x = jVar3;
        this.f14353y = hVar;
    }

    public n1.h a() {
        return this.f14353y;
    }

    public n1.a b() {
        return this.f14351w;
    }

    j c() {
        return this.f14330b;
    }

    public q1.j d() {
        return this.f14352x;
    }

    public long e() {
        return this.f14332d;
    }

    List f() {
        return this.f14348t;
    }

    public a g() {
        return this.f14333e;
    }

    List h() {
        return this.f14336h;
    }

    b i() {
        return this.f14349u;
    }

    public String j() {
        return this.f14331c;
    }

    long k() {
        return this.f14334f;
    }

    float l() {
        return this.f14344p;
    }

    float m() {
        return this.f14343o;
    }

    public String n() {
        return this.f14335g;
    }

    List o() {
        return this.f14329a;
    }

    int p() {
        return this.f14340l;
    }

    int q() {
        return this.f14339k;
    }

    int r() {
        return this.f14338j;
    }

    float s() {
        return this.f14342n / this.f14330b.e();
    }

    m1.j t() {
        return this.f14345q;
    }

    public String toString() {
        return z("");
    }

    k u() {
        return this.f14346r;
    }

    m1.b v() {
        return this.f14347s;
    }

    float w() {
        return this.f14341m;
    }

    l x() {
        return this.f14337i;
    }

    public boolean y() {
        return this.f14350v;
    }

    public String z(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(j());
        sb.append("\n");
        e eVarT = this.f14330b.t(k());
        if (eVarT != null) {
            sb.append("\t\tParents: ");
            sb.append(eVarT.j());
            e eVarT2 = this.f14330b.t(eVarT.k());
            while (eVarT2 != null) {
                sb.append("->");
                sb.append(eVarT2.j());
                eVarT2 = this.f14330b.t(eVarT2.k());
            }
            sb.append(str);
            sb.append("\n");
        }
        if (!h().isEmpty()) {
            sb.append(str);
            sb.append("\tMasks: ");
            sb.append(h().size());
            sb.append("\n");
        }
        if (r() != 0 && q() != 0) {
            sb.append(str);
            sb.append("\tBackground: ");
            sb.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(r()), Integer.valueOf(q()), Integer.valueOf(p())));
        }
        if (!this.f14329a.isEmpty()) {
            sb.append(str);
            sb.append("\tShapes:\n");
            for (Object obj : this.f14329a) {
                sb.append(str);
                sb.append("\t\t");
                sb.append(obj);
                sb.append("\n");
            }
        }
        return sb.toString();
    }
}
