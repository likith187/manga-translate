package o4;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class f14425a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f14426b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f14427c;

    private o(Class cls, int i10, int i11) {
        this.f14425a = (Class) a0.c(cls, "Null dependency anInterface.");
        this.f14426b = i10;
        this.f14427c = i11;
    }

    private static String a(int i10) {
        if (i10 == 0) {
            return "direct";
        }
        if (i10 == 1) {
            return "provider";
        }
        if (i10 == 2) {
            return "deferred";
        }
        throw new AssertionError("Unsupported injection: " + i10);
    }

    public static o g(Class cls) {
        return new o(cls, 1, 0);
    }

    public static o h(Class cls) {
        return new o(cls, 1, 1);
    }

    public static o i(Class cls) {
        return new o(cls, 2, 0);
    }

    public Class b() {
        return this.f14425a;
    }

    public boolean c() {
        return this.f14427c == 2;
    }

    public boolean d() {
        return this.f14427c == 0;
    }

    public boolean e() {
        return this.f14426b == 1;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.f14425a == oVar.f14425a && this.f14426b == oVar.f14426b && this.f14427c == oVar.f14427c;
    }

    public boolean f() {
        return this.f14426b == 2;
    }

    public int hashCode() {
        return this.f14427c ^ ((((this.f14425a.hashCode() ^ 1000003) * 1000003) ^ this.f14426b) * 1000003);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f14425a);
        sb.append(", type=");
        int i10 = this.f14426b;
        sb.append(i10 == 1 ? "required" : i10 == 0 ? "optional" : "set");
        sb.append(", injection=");
        sb.append(a(this.f14427c));
        sb.append("}");
        return sb.toString();
    }
}
