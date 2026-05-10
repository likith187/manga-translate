package l1;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f13558a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final char f13559b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final double f13560c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final double f13561d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f13562e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f13563f;

    public d(List list, char c10, double d10, double d11, String str, String str2) {
        this.f13558a = list;
        this.f13559b = c10;
        this.f13560c = d10;
        this.f13561d = d11;
        this.f13562e = str;
        this.f13563f = str2;
    }

    public static int c(char c10, String str, String str2) {
        return (((c10 * 31) + str.hashCode()) * 31) + str2.hashCode();
    }

    public List a() {
        return this.f13558a;
    }

    public double b() {
        return this.f13561d;
    }

    public int hashCode() {
        return c(this.f13559b, this.f13563f, this.f13562e);
    }
}
