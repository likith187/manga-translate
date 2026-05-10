package z;

import android.os.LocaleList;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final f f16582b = a(new Locale[0]);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f16583a;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final Locale[] f16584a = {new Locale("en", "XA"), new Locale("ar", "XB")};

        static Locale a(String str) {
            return Locale.forLanguageTag(str);
        }
    }

    static class b {
        static LocaleList a(Locale... localeArr) {
            return new LocaleList(localeArr);
        }
    }

    private f(g gVar) {
        this.f16583a = gVar;
    }

    public static f a(Locale... localeArr) {
        return h(b.a(localeArr));
    }

    public static f b(String str) {
        if (str == null || str.isEmpty()) {
            return d();
        }
        String[] strArrSplit = str.split(",", -1);
        int length = strArrSplit.length;
        Locale[] localeArr = new Locale[length];
        for (int i10 = 0; i10 < length; i10++) {
            localeArr[i10] = a.a(strArrSplit[i10]);
        }
        return a(localeArr);
    }

    public static f d() {
        return f16582b;
    }

    public static f h(LocaleList localeList) {
        return new f(new h(localeList));
    }

    public Locale c(int i10) {
        return this.f16583a.get(i10);
    }

    public boolean e() {
        return this.f16583a.isEmpty();
    }

    public boolean equals(Object obj) {
        return (obj instanceof f) && this.f16583a.equals(((f) obj).f16583a);
    }

    public int f() {
        return this.f16583a.size();
    }

    public String g() {
        return this.f16583a.a();
    }

    public int hashCode() {
        return this.f16583a.hashCode();
    }

    public String toString() {
        return this.f16583a.toString();
    }
}
