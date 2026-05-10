package n1;

import com.airbnb.lottie.i0;
import i1.u;

/* JADX INFO: loaded from: classes.dex */
public class t implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f14039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f14040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m1.b f14041c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m1.b f14042d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final m1.b f14043e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f14044f;

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

    public t(String str, a aVar, m1.b bVar, m1.b bVar2, m1.b bVar3, boolean z10) {
        this.f14039a = str;
        this.f14040b = aVar;
        this.f14041c = bVar;
        this.f14042d = bVar2;
        this.f14043e = bVar3;
        this.f14044f = z10;
    }

    @Override // n1.c
    public i1.c a(i0 i0Var, com.airbnb.lottie.j jVar, o1.b bVar) {
        return new u(bVar, this);
    }

    public m1.b b() {
        return this.f14042d;
    }

    public String c() {
        return this.f14039a;
    }

    public m1.b d() {
        return this.f14043e;
    }

    public m1.b e() {
        return this.f14041c;
    }

    public a f() {
        return this.f14040b;
    }

    public boolean g() {
        return this.f14044f;
    }

    public String toString() {
        return "Trim Path: {start: " + this.f14041c + ", end: " + this.f14042d + ", offset: " + this.f14043e + "}";
    }
}
