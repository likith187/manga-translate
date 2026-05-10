package k3;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f12897a = 1;

    public a a(Object obj) {
        this.f12897a = (this.f12897a * 31) + (obj == null ? 0 : obj.hashCode());
        return this;
    }

    public int b() {
        return this.f12897a;
    }

    public final a c(boolean z10) {
        this.f12897a = (this.f12897a * 31) + (z10 ? 1 : 0);
        return this;
    }
}
