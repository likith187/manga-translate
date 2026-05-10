package f6;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f11994a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final char f11995b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final double f11996c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final double f11997d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f11998e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f11999f;

    public e(List list, char c10, double d10, double d11, String str, String str2) {
        this.f11994a = list;
        this.f11995b = c10;
        this.f11996c = d10;
        this.f11997d = d11;
        this.f11998e = str;
        this.f11999f = str2;
    }

    public static int c(char c10, String str, String str2) {
        return (((c10 * 31) + str.hashCode()) * 31) + str2.hashCode();
    }

    public List a() {
        return this.f11994a;
    }

    public double b() {
        return this.f11997d;
    }

    public int hashCode() {
        return c(this.f11995b, this.f11999f, this.f11998e);
    }
}
