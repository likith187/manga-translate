package androidx.window.core;

import java.math.BigInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.r;
import n8.j;
import n8.k;

/* JADX INFO: loaded from: classes.dex */
public final class Version implements Comparable<Version> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Companion f4031i = new Companion(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Version f4032j = new Version(0, 0, 0, "");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Version f4033k = new Version(0, 1, 0, "");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Version f4034l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Version f4035m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f4036a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4037b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f4038c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f4039f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final j f4040h;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Version a() {
            return Version.f4033k;
        }

        public final Version b(String str) {
            String strGroup;
            if (str == null || r.Y(str)) {
                return null;
            }
            Matcher matcher = Pattern.compile("(\\d+)(?:\\.(\\d+))(?:\\.(\\d+))(?:-(.+))?").matcher(str);
            if (!matcher.matches() || (strGroup = matcher.group(1)) == null) {
                return null;
            }
            int i10 = Integer.parseInt(strGroup);
            String strGroup2 = matcher.group(2);
            if (strGroup2 == null) {
                return null;
            }
            int i11 = Integer.parseInt(strGroup2);
            String strGroup3 = matcher.group(3);
            if (strGroup3 == null) {
                return null;
            }
            int i12 = Integer.parseInt(strGroup3);
            String description = matcher.group(4) != null ? matcher.group(4) : "";
            kotlin.jvm.internal.r.d(description, "description");
            return new Version(i10, i11, i12, description, null);
        }

        private Companion() {
        }
    }

    static {
        Version version = new Version(1, 0, 0, "");
        f4034l = version;
        f4035m = version;
    }

    public /* synthetic */ Version(int i10, int i11, int i12, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11, i12, str);
    }

    private final BigInteger c() {
        Object value = this.f4040h.getValue();
        kotlin.jvm.internal.r.d(value, "<get-bigInteger>(...)");
        return (BigInteger) value;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public int compareTo(Version other) {
        kotlin.jvm.internal.r.e(other, "other");
        return c().compareTo(other.c());
    }

    public final int d() {
        return this.f4036a;
    }

    public final int e() {
        return this.f4037b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Version)) {
            return false;
        }
        Version version = (Version) obj;
        return this.f4036a == version.f4036a && this.f4037b == version.f4037b && this.f4038c == version.f4038c;
    }

    public final int f() {
        return this.f4038c;
    }

    public int hashCode() {
        return ((((527 + this.f4036a) * 31) + this.f4037b) * 31) + this.f4038c;
    }

    public String toString() {
        String str;
        if (r.Y(this.f4039f)) {
            str = "";
        } else {
            str = '-' + this.f4039f;
        }
        return this.f4036a + '.' + this.f4037b + '.' + this.f4038c + str;
    }

    private Version(int i10, int i11, int i12, String str) {
        this.f4036a = i10;
        this.f4037b = i11;
        this.f4038c = i12;
        this.f4039f = str;
        this.f4040h = k.b(new Version$bigInteger$2(this));
    }
}
