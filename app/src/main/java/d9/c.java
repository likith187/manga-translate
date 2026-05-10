package d9;

import d9.a;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.h0;
import kotlin.text.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {
    public static final long i(long j10, int i10) {
        return a.h((j10 << 1) + ((long) i10));
    }

    public static final long j(long j10) {
        return a.h((j10 << 1) + 1);
    }

    public static final long k(long j10) {
        return (-4611686018426L > j10 || j10 >= 4611686018427L) ? j(b9.d.i(j10, -4611686018427387903L, 4611686018427387903L)) : l(n(j10));
    }

    public static final long l(long j10) {
        return a.h(j10 << 1);
    }

    public static final long m(long j10) {
        return (-4611686018426999999L > j10 || j10 >= 4611686018427000000L) ? j(o(j10)) : l(j10);
    }

    public static final long n(long j10) {
        return j10 * ((long) 1000000);
    }

    public static final long o(long j10) {
        return j10 / ((long) 1000000);
    }

    public static final long p(String str, boolean z10) {
        long jA;
        char cCharAt;
        char cCharAt2;
        int i10;
        char cCharAt3;
        int length = str.length();
        if (length == 0) {
            throw new IllegalArgumentException("The string is empty");
        }
        a.C0135a c0135a = a.f11667b;
        long jB = c0135a.b();
        char cCharAt4 = str.charAt(0);
        boolean z11 = true;
        int length2 = (cCharAt4 == '+' || cCharAt4 == '-') ? 1 : 0;
        boolean z12 = length2 > 0;
        boolean z13 = z12 && r.z0(str, '-', false, 2, null);
        if (length <= length2) {
            throw new IllegalArgumentException("No components");
        }
        char c10 = ':';
        char c11 = '0';
        if (str.charAt(length2) == 'P') {
            int i11 = length2 + 1;
            if (i11 == length) {
                throw new IllegalArgumentException();
            }
            d dVar = null;
            boolean z14 = false;
            while (i11 < length) {
                if (str.charAt(i11) != 'T') {
                    int i12 = i11;
                    while (i12 < str.length() && ((c11 <= (cCharAt3 = str.charAt(i12)) && cCharAt3 < c10) || r.J("+-.", cCharAt3, false, 2, null))) {
                        i12++;
                        c10 = ':';
                        c11 = '0';
                    }
                    kotlin.jvm.internal.r.c(str, "null cannot be cast to non-null type java.lang.String");
                    String strSubstring = str.substring(i11, i12);
                    kotlin.jvm.internal.r.d(strSubstring, "substring(...)");
                    if (strSubstring.length() == 0) {
                        throw new IllegalArgumentException();
                    }
                    int length3 = i11 + strSubstring.length();
                    if (length3 < 0 || length3 >= str.length()) {
                        throw new IllegalArgumentException("Missing unit for value " + strSubstring);
                    }
                    char cCharAt5 = str.charAt(length3);
                    int i13 = length3 + 1;
                    d dVarD = f.d(cCharAt5, z14);
                    if (dVar != null && dVar.compareTo(dVarD) <= 0) {
                        throw new IllegalArgumentException("Unexpected order of duration components");
                    }
                    int iV = r.V(strSubstring, '.', 0, false, 6, null);
                    if (dVarD != d.SECONDS || iV <= 0) {
                        i10 = i13;
                        jB = a.A(jB, s(q(strSubstring), dVarD));
                    } else {
                        kotlin.jvm.internal.r.c(strSubstring, "null cannot be cast to non-null type java.lang.String");
                        String strSubstring2 = strSubstring.substring(0, iV);
                        kotlin.jvm.internal.r.d(strSubstring2, "substring(...)");
                        i10 = i13;
                        long jA2 = a.A(jB, s(q(strSubstring2), dVarD));
                        kotlin.jvm.internal.r.c(strSubstring, "null cannot be cast to non-null type java.lang.String");
                        String strSubstring3 = strSubstring.substring(iV);
                        kotlin.jvm.internal.r.d(strSubstring3, "substring(...)");
                        jB = a.A(jA2, r(Double.parseDouble(strSubstring3), dVarD));
                    }
                    i11 = i10;
                    dVar = dVarD;
                    c10 = ':';
                    c11 = '0';
                    z11 = true;
                } else {
                    if (z14 || (i11 = i11 + 1) == length) {
                        throw new IllegalArgumentException();
                    }
                    z14 = z11;
                }
            }
        } else {
            if (z10) {
                throw new IllegalArgumentException();
            }
            String str2 = "Unexpected order of duration components";
            if (r.w(str, length2, "Infinity", 0, Math.max(length - length2, 8), true)) {
                jB = c0135a.a();
            } else {
                boolean z15 = !z12;
                if (z12 && str.charAt(length2) == '(' && r.T0(str) == ')') {
                    length2++;
                    length--;
                    if (length2 == length) {
                        throw new IllegalArgumentException("No components");
                    }
                    jA = jB;
                    z15 = true;
                } else {
                    jA = jB;
                }
                d dVar2 = null;
                boolean z16 = false;
                while (length2 < length) {
                    if (z16 && z15) {
                        while (length2 < str.length() && str.charAt(length2) == ' ') {
                            length2++;
                        }
                    }
                    int i14 = length2;
                    while (i14 < str.length() && (('0' <= (cCharAt2 = str.charAt(i14)) && cCharAt2 < ':') || cCharAt2 == '.')) {
                        i14++;
                    }
                    kotlin.jvm.internal.r.c(str, "null cannot be cast to non-null type java.lang.String");
                    String strSubstring4 = str.substring(length2, i14);
                    kotlin.jvm.internal.r.d(strSubstring4, "substring(...)");
                    if (strSubstring4.length() == 0) {
                        throw new IllegalArgumentException();
                    }
                    int length4 = length2 + strSubstring4.length();
                    int i15 = length4;
                    while (i15 < str.length() && 'a' <= (cCharAt = str.charAt(i15)) && cCharAt < '{') {
                        i15++;
                    }
                    kotlin.jvm.internal.r.c(str, "null cannot be cast to non-null type java.lang.String");
                    String strSubstring5 = str.substring(length4, i15);
                    kotlin.jvm.internal.r.d(strSubstring5, "substring(...)");
                    length2 = length4 + strSubstring5.length();
                    d dVarE = f.e(strSubstring5);
                    if (dVar2 != null && dVar2.compareTo(dVarE) <= 0) {
                        throw new IllegalArgumentException(str2);
                    }
                    String str3 = str2;
                    int iV2 = r.V(strSubstring4, '.', 0, false, 6, null);
                    if (iV2 > 0) {
                        kotlin.jvm.internal.r.c(strSubstring4, "null cannot be cast to non-null type java.lang.String");
                        String strSubstring6 = strSubstring4.substring(0, iV2);
                        kotlin.jvm.internal.r.d(strSubstring6, "substring(...)");
                        long jA3 = a.A(jA, s(Long.parseLong(strSubstring6), dVarE));
                        kotlin.jvm.internal.r.c(strSubstring4, "null cannot be cast to non-null type java.lang.String");
                        String strSubstring7 = strSubstring4.substring(iV2);
                        kotlin.jvm.internal.r.d(strSubstring7, "substring(...)");
                        jA = a.A(jA3, r(Double.parseDouble(strSubstring7), dVarE));
                        length2 = length2;
                        if (length2 < length) {
                            throw new IllegalArgumentException("Fractional component must be last");
                        }
                    } else {
                        jA = a.A(jA, s(Long.parseLong(strSubstring4), dVarE));
                    }
                    str2 = str3;
                    dVar2 = dVarE;
                    z16 = true;
                }
                jB = jA;
            }
        }
        return z13 ? a.E(jB) : jB;
    }

    private static final long q(String str) {
        int length = str.length();
        int i10 = (length <= 0 || !r.J("+-", str.charAt(0), false, 2, null)) ? 0 : 1;
        if (length - i10 > 16) {
            Iterable cVar = new b9.c(i10, r.Q(str));
            if (!(cVar instanceof Collection) || !((Collection) cVar).isEmpty()) {
                Iterator it = cVar.iterator();
                while (it.hasNext()) {
                    char cCharAt = str.charAt(((h0) it).a());
                    if ('0' > cCharAt || cCharAt >= ':') {
                    }
                }
            }
            return str.charAt(0) == '-' ? Long.MIN_VALUE : Long.MAX_VALUE;
        }
        if (r.F(str, "+", false, 2, null)) {
            str = r.R0(str, 1);
        }
        return Long.parseLong(str);
    }

    public static final long r(double d10, d unit) {
        kotlin.jvm.internal.r.e(unit, "unit");
        double dA = e.a(d10, unit, d.NANOSECONDS);
        if (Double.isNaN(dA)) {
            throw new IllegalArgumentException("Duration value cannot be NaN.");
        }
        long jC = y8.a.c(dA);
        return (-4611686018426999999L > jC || jC >= 4611686018427000000L) ? k(y8.a.c(e.a(d10, unit, d.MILLISECONDS))) : l(jC);
    }

    public static final long s(long j10, d unit) {
        kotlin.jvm.internal.r.e(unit, "unit");
        d dVar = d.NANOSECONDS;
        long jC = e.c(4611686018426999999L, dVar, unit);
        return ((-jC) > j10 || j10 > jC) ? j(b9.d.i(e.b(j10, unit, d.MILLISECONDS), -4611686018427387903L, 4611686018427387903L)) : l(e.c(j10, unit, dVar));
    }
}
