package u2;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static f f15854c = b(40.0d, 7.0d);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public double f15855a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public double f15856b;

    public f(double d10, double d11) {
        this.f15856b = d10;
        this.f15855a = d11;
    }

    public static f a(double d10, double d11) {
        c cVar = new c(d11, d10);
        return b(cVar.f(), cVar.e());
    }

    public static f b(double d10, double d11) {
        return new f(d.d(d10), d.a(d11));
    }
}
