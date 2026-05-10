package h6;

import c6.u;

/* JADX INFO: loaded from: classes2.dex */
public class s implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f12336a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f12337b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g6.b f12338c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final g6.b f12339d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final g6.b f12340e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f12341f;

    public enum a {
        SIMULTANEOUSLY,
        INDIVIDUALLY;

        public static a forId(int i10) {
            if (i10 == 1) {
                return SIMULTANEOUSLY;
            }
            if (i10 == 2) {
                return INDIVIDUALLY;
            }
            throw new IllegalArgumentException("Unknown trim path type " + i10);
        }
    }

    public s(String str, a aVar, g6.b bVar, g6.b bVar2, g6.b bVar3, boolean z10) {
        this.f12336a = str;
        this.f12337b = aVar;
        this.f12338c = bVar;
        this.f12339d = bVar2;
        this.f12340e = bVar3;
        this.f12341f = z10;
    }

    @Override // h6.c
    public c6.c a(com.oplus.anim.o oVar, com.oplus.anim.a aVar, i6.b bVar) {
        return new u(bVar, this);
    }

    public g6.b b() {
        return this.f12339d;
    }

    public String c() {
        return this.f12336a;
    }

    public g6.b d() {
        return this.f12340e;
    }

    public g6.b e() {
        return this.f12338c;
    }

    public a f() {
        return this.f12337b;
    }

    public boolean g() {
        return this.f12341f;
    }

    public String toString() {
        return "Trim Path: {start: " + this.f12338c + ", end: " + this.f12339d + ", offset: " + this.f12340e + "}";
    }
}
