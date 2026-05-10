package i6;

import g6.j;
import g6.k;
import g6.l;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f12624a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.oplus.anim.a f12625b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f12626c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f12627d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f12628e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f12629f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f12630g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List f12631h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final l f12632i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f12633j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f12634k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f12635l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final float f12636m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final float f12637n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final float f12638o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final float f12639p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final j f12640q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final k f12641r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final g6.b f12642s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final List f12643t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final b f12644u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final boolean f12645v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final h6.a f12646w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final k6.j f12647x;

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

    public e(List list, com.oplus.anim.a aVar, String str, long j10, a aVar2, long j11, String str2, List list2, l lVar, int i10, int i11, int i12, float f10, float f11, float f12, float f13, j jVar, k kVar, List list3, b bVar, g6.b bVar2, boolean z10, h6.a aVar3, k6.j jVar2) {
        this.f12624a = list;
        this.f12625b = aVar;
        this.f12626c = str;
        this.f12627d = j10;
        this.f12628e = aVar2;
        this.f12629f = j11;
        this.f12630g = str2;
        this.f12631h = list2;
        this.f12632i = lVar;
        this.f12633j = i10;
        this.f12634k = i11;
        this.f12635l = i12;
        this.f12636m = f10;
        this.f12637n = f11;
        this.f12638o = f12;
        this.f12639p = f13;
        this.f12640q = jVar;
        this.f12641r = kVar;
        this.f12643t = list3;
        this.f12644u = bVar;
        this.f12642s = bVar2;
        this.f12645v = z10;
        this.f12646w = aVar3;
        this.f12647x = jVar2;
    }

    public h6.a a() {
        return this.f12646w;
    }

    com.oplus.anim.a b() {
        return this.f12625b;
    }

    public k6.j c() {
        return this.f12647x;
    }

    public long d() {
        return this.f12627d;
    }

    List e() {
        return this.f12643t;
    }

    public a f() {
        return this.f12628e;
    }

    List g() {
        return this.f12631h;
    }

    b h() {
        return this.f12644u;
    }

    public String i() {
        return this.f12626c;
    }

    long j() {
        return this.f12629f;
    }

    float k() {
        return this.f12639p;
    }

    float l() {
        return this.f12638o;
    }

    public String m() {
        return this.f12630g;
    }

    List n() {
        return this.f12624a;
    }

    int o() {
        return this.f12635l;
    }

    int p() {
        return this.f12634k;
    }

    int q() {
        return this.f12633j;
    }

    float r() {
        return this.f12637n / this.f12625b.e();
    }

    j s() {
        return this.f12640q;
    }

    k t() {
        return this.f12641r;
    }

    public String toString() {
        return y("");
    }

    g6.b u() {
        return this.f12642s;
    }

    float v() {
        return this.f12636m;
    }

    l w() {
        return this.f12632i;
    }

    public boolean x() {
        return this.f12645v;
    }

    public String y(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(i());
        sb.append("\n");
        e eVarT = this.f12625b.t(j());
        if (eVarT != null) {
            sb.append("\t\tParents: ");
            sb.append(eVarT.i());
            e eVarT2 = this.f12625b.t(eVarT.j());
            while (eVarT2 != null) {
                sb.append("->");
                sb.append(eVarT2.i());
                eVarT2 = this.f12625b.t(eVarT2.j());
            }
            sb.append(str);
            sb.append("\n");
        }
        if (!g().isEmpty()) {
            sb.append(str);
            sb.append("\tMasks: ");
            sb.append(g().size());
            sb.append("\n");
        }
        if (q() != 0 && p() != 0) {
            sb.append(str);
            sb.append("\tBackground: ");
            sb.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(q()), Integer.valueOf(p()), Integer.valueOf(o())));
        }
        if (!this.f12624a.isEmpty()) {
            sb.append(str);
            sb.append("\tShapes:\n");
            for (Object obj : this.f12624a) {
                sb.append(str);
                sb.append("\t\t");
                sb.append(obj);
                sb.append("\n");
            }
        }
        return sb.toString();
    }
}
