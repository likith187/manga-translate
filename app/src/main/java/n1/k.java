package n1;

import com.airbnb.lottie.i0;

/* JADX INFO: loaded from: classes.dex */
public class k implements c {

    /* JADX INFO: renamed from: a */
    private final String f13988a;

    /* JADX INFO: renamed from: b */
    private final a f13989b;

    /* JADX INFO: renamed from: c */
    private final m1.b f13990c;

    /* JADX INFO: renamed from: d */
    private final m1.m f13991d;

    /* JADX INFO: renamed from: e */
    private final m1.b f13992e;

    /* JADX INFO: renamed from: f */
    private final m1.b f13993f;

    /* JADX INFO: renamed from: g */
    private final m1.b f13994g;

    /* JADX INFO: renamed from: h */
    private final m1.b f13995h;

    /* JADX INFO: renamed from: i */
    private final m1.b f13996i;

    /* JADX INFO: renamed from: j */
    private final boolean f13997j;

    /* JADX INFO: renamed from: k */
    private final boolean f13998k;

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

    public k(String str, a aVar, m1.b bVar, m1.m mVar, m1.b bVar2, m1.b bVar3, m1.b bVar4, m1.b bVar5, m1.b bVar6, boolean z10, boolean z11) {
        this.f13988a = str;
        this.f13989b = aVar;
        this.f13990c = bVar;
        this.f13991d = mVar;
        this.f13992e = bVar2;
        this.f13993f = bVar3;
        this.f13994g = bVar4;
        this.f13995h = bVar5;
        this.f13996i = bVar6;
        this.f13997j = z10;
        this.f13998k = z11;
    }

    @Override // n1.c
    public i1.c a(i0 i0Var, com.airbnb.lottie.j jVar, o1.b bVar) {
        return new i1.n(i0Var, bVar, this);
    }

    public m1.b b() {
        return this.f13993f;
    }

    public m1.b c() {
        return this.f13995h;
    }

    public String d() {
        return this.f13988a;
    }

    public m1.b e() {
        return this.f13994g;
    }

    public m1.b f() {
        return this.f13996i;
    }

    public m1.b g() {
        return this.f13990c;
    }

    public m1.m h() {
        return this.f13991d;
    }

    public m1.b i() {
        return this.f13992e;
    }

    public a j() {
        return this.f13989b;
    }

    public boolean k() {
        return this.f13997j;
    }

    public boolean l() {
        return this.f13998k;
    }
}
