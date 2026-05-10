package kotlin.jvm.internal;

/* JADX INFO: loaded from: classes2.dex */
public final class v implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class f13080a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f13081b;

    public v(Class jClass, String moduleName) {
        r.e(jClass, "jClass");
        r.e(moduleName, "moduleName");
        this.f13080a = jClass;
        this.f13081b = moduleName;
    }

    @Override // kotlin.jvm.internal.g
    public Class d() {
        return this.f13080a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof v) && r.a(d(), ((v) obj).d());
    }

    public int hashCode() {
        return d().hashCode();
    }

    public String toString() {
        return d().toString() + " (Kotlin reflection is not available)";
    }
}
