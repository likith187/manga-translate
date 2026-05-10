package d9;

import com.oplus.aiunit.translation.utils.CountryRegionMapper;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements Comparable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C0135a f11667b = new C0135a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f11668c = h(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final long f11669f = c.j(4611686018427387903L);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final long f11670h = c.j(-4611686018427387903L);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f11671a;

    /* JADX INFO: renamed from: d9.a$a, reason: collision with other inner class name */
    public static final class C0135a {
        public /* synthetic */ C0135a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return a.f11669f;
        }

        public final long b() {
            return a.f11668c;
        }

        public final long c(String value) {
            r.e(value, "value");
            try {
                return c.p(value, true);
            } catch (IllegalArgumentException e10) {
                throw new IllegalArgumentException("Invalid ISO duration string format: '" + value + "'.", e10);
            }
        }

        private C0135a() {
        }
    }

    private /* synthetic */ a(long j10) {
        this.f11671a = j10;
    }

    public static final long A(long j10, long j11) {
        if (y(j10)) {
            if (v(j11) || (j11 ^ j10) >= 0) {
                return j10;
            }
            throw new IllegalArgumentException("Summing infinite durations of different signs yields an undefined result.");
        }
        if (y(j11)) {
            return j11;
        }
        if ((((int) j10) & 1) != (((int) j11) & 1)) {
            return w(j10) ? c(j10, t(j10), t(j11)) : c(j10, t(j11), t(j10));
        }
        long jT = t(j10) + t(j11);
        return x(j10) ? c.m(jT) : c.k(jT);
    }

    public static final String B(long j10) {
        StringBuilder sb = new StringBuilder();
        if (z(j10)) {
            sb.append('-');
        }
        sb.append("PT");
        long j11 = j(j10);
        long jM = m(j11);
        int iP = p(j11);
        int iR = r(j11);
        int iQ = q(j11);
        if (y(j10)) {
            jM = 9999999999999L;
        }
        boolean z10 = false;
        boolean z11 = jM != 0;
        boolean z12 = (iR == 0 && iQ == 0) ? false : true;
        if (iP != 0 || (z12 && z11)) {
            z10 = true;
        }
        if (z11) {
            sb.append(jM);
            sb.append('H');
        }
        if (z10) {
            sb.append(iP);
            sb.append('M');
        }
        if (z12 || (!z11 && !z10)) {
            d(j10, sb, iR, iQ, 9, "S", true);
        }
        String string = sb.toString();
        r.d(string, "toString(...)");
        return string;
    }

    public static final long C(long j10, d unit) {
        r.e(unit, "unit");
        if (j10 == f11669f) {
            return Long.MAX_VALUE;
        }
        if (j10 == f11670h) {
            return Long.MIN_VALUE;
        }
        return e.b(t(j10), s(j10), unit);
    }

    public static String D(long j10) {
        if (j10 == 0) {
            return "0s";
        }
        if (j10 == f11669f) {
            return "Infinity";
        }
        if (j10 == f11670h) {
            return "-Infinity";
        }
        boolean z10 = z(j10);
        StringBuilder sb = new StringBuilder();
        if (z10) {
            sb.append('-');
        }
        long j11 = j(j10);
        long jL = l(j11);
        int iK = k(j11);
        int iP = p(j11);
        int iR = r(j11);
        int iQ = q(j11);
        int i10 = 0;
        boolean z11 = jL != 0;
        boolean z12 = iK != 0;
        boolean z13 = iP != 0;
        boolean z14 = (iR == 0 && iQ == 0) ? false : true;
        if (z11) {
            sb.append(jL);
            sb.append('d');
            i10 = 1;
        }
        if (z12 || (z11 && (z13 || z14))) {
            int i11 = i10 + 1;
            if (i10 > 0) {
                sb.append(' ');
            }
            sb.append(iK);
            sb.append('h');
            i10 = i11;
        }
        if (z13 || (z14 && (z12 || z11))) {
            int i12 = i10 + 1;
            if (i10 > 0) {
                sb.append(' ');
            }
            sb.append(iP);
            sb.append('m');
            i10 = i12;
        }
        if (z14) {
            int i13 = i10 + 1;
            if (i10 > 0) {
                sb.append(' ');
            }
            if (iR != 0 || z11 || z12 || z13) {
                d(j10, sb, iR, iQ, 9, "s", false);
            } else if (iQ >= 1000000) {
                d(j10, sb, iQ / 1000000, iQ % 1000000, 6, "ms", false);
            } else if (iQ >= 1000) {
                d(j10, sb, iQ / 1000, iQ % 1000, 3, CountryRegionMapper.Region.NA, false);
            } else {
                sb.append(iQ);
                sb.append("ns");
            }
            i10 = i13;
        }
        if (z10 && i10 > 1) {
            sb.insert(1, '(').append(')');
        }
        String string = sb.toString();
        r.d(string, "toString(...)");
        return string;
    }

    public static final long E(long j10) {
        return c.i(-t(j10), ((int) j10) & 1);
    }

    private static final long c(long j10, long j11, long j12) {
        long jO = c.o(j12);
        long j13 = j11 + jO;
        if (-4611686018426L > j13 || j13 >= 4611686018427L) {
            return c.j(b9.d.i(j13, -4611686018427387903L, 4611686018427387903L));
        }
        return c.l(c.n(j13) + (j12 - c.n(jO)));
    }

    private static final void d(long j10, StringBuilder sb, int i10, int i11, int i12, String str, boolean z10) {
        sb.append(i10);
        if (i11 != 0) {
            sb.append('.');
            String strH0 = kotlin.text.r.h0(String.valueOf(i11), i12, '0');
            int i13 = -1;
            int length = strH0.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i14 = length - 1;
                    if (strH0.charAt(length) != '0') {
                        i13 = length;
                        break;
                    } else if (i14 < 0) {
                        break;
                    } else {
                        length = i14;
                    }
                }
            }
            int i15 = i13 + 1;
            if (z10 || i15 >= 3) {
                sb.append((CharSequence) strH0, 0, ((i13 + 3) / 3) * 3);
                r.d(sb, "append(...)");
            } else {
                sb.append((CharSequence) strH0, 0, i15);
                r.d(sb, "append(...)");
            }
        }
        sb.append(str);
    }

    public static final /* synthetic */ a e(long j10) {
        return new a(j10);
    }

    public static int g(long j10, long j11) {
        long j12 = j10 ^ j11;
        if (j12 < 0 || (((int) j12) & 1) == 0) {
            return r.g(j10, j11);
        }
        int i10 = (((int) j10) & 1) - (((int) j11) & 1);
        return z(j10) ? -i10 : i10;
    }

    public static long h(long j10) {
        if (b.a()) {
            if (x(j10)) {
                long jT = t(j10);
                if (-4611686018426999999L > jT || jT >= 4611686018427000000L) {
                    throw new AssertionError(t(j10) + " ns is out of nanoseconds range");
                }
            } else {
                long jT2 = t(j10);
                if (-4611686018427387903L > jT2 || jT2 >= 4611686018427387904L) {
                    throw new AssertionError(t(j10) + " ms is out of milliseconds range");
                }
                long jT3 = t(j10);
                if (-4611686018426L <= jT3 && jT3 < 4611686018427L) {
                    throw new AssertionError(t(j10) + " ms is denormalized");
                }
            }
        }
        return j10;
    }

    public static boolean i(long j10, Object obj) {
        return (obj instanceof a) && j10 == ((a) obj).F();
    }

    public static final long j(long j10) {
        return z(j10) ? E(j10) : j10;
    }

    public static final int k(long j10) {
        if (y(j10)) {
            return 0;
        }
        return (int) (m(j10) % ((long) 24));
    }

    public static final long l(long j10) {
        return C(j10, d.DAYS);
    }

    public static final long m(long j10) {
        return C(j10, d.HOURS);
    }

    public static final long n(long j10) {
        return C(j10, d.MINUTES);
    }

    public static final long o(long j10) {
        return C(j10, d.SECONDS);
    }

    public static final int p(long j10) {
        if (y(j10)) {
            return 0;
        }
        return (int) (n(j10) % ((long) 60));
    }

    public static final int q(long j10) {
        if (y(j10)) {
            return 0;
        }
        return (int) (w(j10) ? c.n(t(j10) % ((long) 1000)) : t(j10) % ((long) 1000000000));
    }

    public static final int r(long j10) {
        if (y(j10)) {
            return 0;
        }
        return (int) (o(j10) % ((long) 60));
    }

    private static final d s(long j10) {
        return x(j10) ? d.NANOSECONDS : d.MILLISECONDS;
    }

    private static final long t(long j10) {
        return j10 >> 1;
    }

    public static int u(long j10) {
        return Long.hashCode(j10);
    }

    public static final boolean v(long j10) {
        return !y(j10);
    }

    private static final boolean w(long j10) {
        return (((int) j10) & 1) == 1;
    }

    private static final boolean x(long j10) {
        return (((int) j10) & 1) == 0;
    }

    public static final boolean y(long j10) {
        return j10 == f11669f || j10 == f11670h;
    }

    public static final boolean z(long j10) {
        return j10 < 0;
    }

    public final /* synthetic */ long F() {
        return this.f11671a;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return f(((a) obj).F());
    }

    public boolean equals(Object obj) {
        return i(this.f11671a, obj);
    }

    public int f(long j10) {
        return g(this.f11671a, j10);
    }

    public int hashCode() {
        return u(this.f11671a);
    }

    public String toString() {
        return D(this.f11671a);
    }
}
