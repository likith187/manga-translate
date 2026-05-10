package h6;

/* JADX INFO: loaded from: classes2.dex */
public class j implements c {

    /* JADX INFO: renamed from: a */
    private final String f12285a;

    /* JADX INFO: renamed from: b */
    private final a f12286b;

    /* JADX INFO: renamed from: c */
    private final g6.b f12287c;

    /* JADX INFO: renamed from: d */
    private final g6.m f12288d;

    /* JADX INFO: renamed from: e */
    private final g6.b f12289e;

    /* JADX INFO: renamed from: f */
    private final g6.b f12290f;

    /* JADX INFO: renamed from: g */
    private final g6.b f12291g;

    /* JADX INFO: renamed from: h */
    private final g6.b f12292h;

    /* JADX INFO: renamed from: i */
    private final g6.b f12293i;

    /* JADX INFO: renamed from: j */
    private final boolean f12294j;

    /* JADX INFO: renamed from: k */
    private final boolean f12295k;

    public enum a {
        STAR(1),
        POLYGON(2);

        private final int value;

        a(int i10) {
            this.value = i10;
        }

        public static a forValue(int i10) {
            for (a aVar : values()) {
                if (aVar.value == i10) {
                    return aVar;
                }
            }
            return null;
        }
    }

    public j(String str, a aVar, g6.b bVar, g6.m mVar, g6.b bVar2, g6.b bVar3, g6.b bVar4, g6.b bVar5, g6.b bVar6, boolean z10, boolean z11) {
        this.f12285a = str;
        this.f12286b = aVar;
        this.f12287c = bVar;
        this.f12288d = mVar;
        this.f12289e = bVar2;
        this.f12290f = bVar3;
        this.f12291g = bVar4;
        this.f12292h = bVar5;
        this.f12293i = bVar6;
        this.f12294j = z10;
        this.f12295k = z11;
    }

    @Override // h6.c
    public c6.c a(com.oplus.anim.o oVar, com.oplus.anim.a aVar, i6.b bVar) {
        return new c6.n(oVar, bVar, this);
    }

    public g6.b b() {
        return this.f12290f;
    }

    public g6.b c() {
        return this.f12292h;
    }

    public String d() {
        return this.f12285a;
    }

    public g6.b e() {
        return this.f12291g;
    }

    public g6.b f() {
        return this.f12293i;
    }

    public g6.b g() {
        return this.f12287c;
    }

    public g6.m h() {
        return this.f12288d;
    }

    public g6.b i() {
        return this.f12289e;
    }

    public a j() {
        return this.f12286b;
    }

    public boolean k() {
        return this.f12294j;
    }

    public boolean l() {
        return this.f12295k;
    }
}
