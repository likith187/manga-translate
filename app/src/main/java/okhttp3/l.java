package okhttp3;

import com.coui.appcompat.vibrateutil.VibrateUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class l {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a f14915j = new a(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Pattern f14916k = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Pattern f14917l = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Pattern f14918m = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final Pattern f14919n = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f14920a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f14921b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f14922c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f14923d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f14924e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f14925f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f14926g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f14927h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f14928i;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final int a(String str, int i10, int i11, boolean z10) {
            while (i10 < i11) {
                char cCharAt = str.charAt(i10);
                if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || ('0' <= cCharAt && cCharAt < ':') || (('a' <= cCharAt && cCharAt < '{') || (('A' <= cCharAt && cCharAt < '[') || cCharAt == ':'))) == (!z10)) {
                    return i10;
                }
                i10++;
            }
            return i11;
        }

        private final boolean b(String str, String str2) {
            if (kotlin.jvm.internal.r.a(str, str2)) {
                return true;
            }
            return kotlin.text.r.u(str, str2, false, 2, null) && str.charAt((str.length() - str2.length()) - 1) == '.' && !i9.d.i(str);
        }

        private final String f(String str) {
            if (kotlin.text.r.u(str, ".", false, 2, null)) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            String strE = i9.a.e(kotlin.text.r.n0(str, "."));
            if (strE != null) {
                return strE;
            }
            throw new IllegalArgumentException();
        }

        private final long g(String str, int i10, int i11) {
            int iA = a(str, i10, i11, false);
            Matcher matcher = l.f14919n.matcher(str);
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int iW = -1;
            int i15 = -1;
            int i16 = -1;
            while (iA < i11) {
                int iA2 = a(str, iA + 1, i11, true);
                matcher.region(iA, iA2);
                if (i13 == -1 && matcher.usePattern(l.f14919n).matches()) {
                    String strGroup = matcher.group(1);
                    kotlin.jvm.internal.r.d(strGroup, "matcher.group(1)");
                    i13 = Integer.parseInt(strGroup);
                    String strGroup2 = matcher.group(2);
                    kotlin.jvm.internal.r.d(strGroup2, "matcher.group(2)");
                    i15 = Integer.parseInt(strGroup2);
                    String strGroup3 = matcher.group(3);
                    kotlin.jvm.internal.r.d(strGroup3, "matcher.group(3)");
                    i16 = Integer.parseInt(strGroup3);
                } else if (i14 == -1 && matcher.usePattern(l.f14918m).matches()) {
                    String strGroup4 = matcher.group(1);
                    kotlin.jvm.internal.r.d(strGroup4, "matcher.group(1)");
                    i14 = Integer.parseInt(strGroup4);
                } else if (iW == -1 && matcher.usePattern(l.f14917l).matches()) {
                    String strGroup5 = matcher.group(1);
                    kotlin.jvm.internal.r.d(strGroup5, "matcher.group(1)");
                    Locale US = Locale.US;
                    kotlin.jvm.internal.r.d(US, "US");
                    String lowerCase = strGroup5.toLowerCase(US);
                    kotlin.jvm.internal.r.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                    String strPattern = l.f14917l.pattern();
                    kotlin.jvm.internal.r.d(strPattern, "MONTH_PATTERN.pattern()");
                    iW = kotlin.text.r.W(strPattern, lowerCase, 0, false, 6, null) / 4;
                } else if (i12 == -1 && matcher.usePattern(l.f14916k).matches()) {
                    String strGroup6 = matcher.group(1);
                    kotlin.jvm.internal.r.d(strGroup6, "matcher.group(1)");
                    i12 = Integer.parseInt(strGroup6);
                }
                iA = a(str, iA2 + 1, i11, false);
            }
            if (70 <= i12 && i12 < 100) {
                i12 += 1900;
            }
            if (i12 >= 0 && i12 < 70) {
                i12 += VibrateUtils.STRENGTH_MAX_STEP;
            }
            if (i12 < 1601) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (iW == -1) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (1 > i14 || i14 >= 32) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (i13 < 0 || i13 >= 24) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (i15 < 0 || i15 >= 60) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (i16 < 0 || i16 >= 60) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(i9.d.f12672f);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i12);
            gregorianCalendar.set(2, iW - 1);
            gregorianCalendar.set(5, i14);
            gregorianCalendar.set(11, i13);
            gregorianCalendar.set(12, i15);
            gregorianCalendar.set(13, i16);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }

        private final long h(String str) {
            try {
                long j10 = Long.parseLong(str);
                if (j10 <= 0) {
                    return Long.MIN_VALUE;
                }
                return j10;
            } catch (NumberFormatException e10) {
                if (new kotlin.text.n("-?\\d+").matches(str)) {
                    return kotlin.text.r.F(str, "-", false, 2, null) ? Long.MIN_VALUE : Long.MAX_VALUE;
                }
                throw e10;
            }
        }

        public final l c(u url, String setCookie) {
            kotlin.jvm.internal.r.e(url, "url");
            kotlin.jvm.internal.r.e(setCookie, "setCookie");
            return d(System.currentTimeMillis(), url, setCookie);
        }

        /* JADX WARN: Removed duplicated region for block: B:43:0x00d7 A[PHI: r1
          0x00d7: PHI (r1v22 long) = (r1v7 long), (r1v11 long) binds: [B:42:0x00d5, B:53:0x00fd] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final okhttp3.l d(long r26, okhttp3.u r28, java.lang.String r29) {
            /*
                Method dump skipped, instruction units count: 361
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.l.a.d(long, okhttp3.u, java.lang.String):okhttp3.l");
        }

        public final List e(u url, t headers) {
            kotlin.jvm.internal.r.e(url, "url");
            kotlin.jvm.internal.r.e(headers, "headers");
            List listF = headers.f("Set-Cookie");
            int size = listF.size();
            ArrayList arrayList = null;
            for (int i10 = 0; i10 < size; i10++) {
                l lVarC = c(url, (String) listF.get(i10));
                if (lVarC != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(lVarC);
                }
            }
            if (arrayList == null) {
                return kotlin.collections.o.h();
            }
            List listUnmodifiableList = Collections.unmodifiableList(arrayList);
            kotlin.jvm.internal.r.d(listUnmodifiableList, "{\n        Collections.un…ableList(cookies)\n      }");
            return listUnmodifiableList;
        }

        private a() {
        }
    }

    public /* synthetic */ l(String str, String str2, long j10, String str3, String str4, boolean z10, boolean z11, boolean z12, boolean z13, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, j10, str3, str4, z10, z11, z12, z13);
    }

    public final String e() {
        return this.f14920a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof l) {
            l lVar = (l) obj;
            if (kotlin.jvm.internal.r.a(lVar.f14920a, this.f14920a) && kotlin.jvm.internal.r.a(lVar.f14921b, this.f14921b) && lVar.f14922c == this.f14922c && kotlin.jvm.internal.r.a(lVar.f14923d, this.f14923d) && kotlin.jvm.internal.r.a(lVar.f14924e, this.f14924e) && lVar.f14925f == this.f14925f && lVar.f14926g == this.f14926g && lVar.f14927h == this.f14927h && lVar.f14928i == this.f14928i) {
                return true;
            }
        }
        return false;
    }

    public final String f(boolean z10) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f14920a);
        sb.append('=');
        sb.append(this.f14921b);
        if (this.f14927h) {
            if (this.f14922c == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(m9.c.b(new Date(this.f14922c)));
            }
        }
        if (!this.f14928i) {
            sb.append("; domain=");
            if (z10) {
                sb.append(".");
            }
            sb.append(this.f14923d);
        }
        sb.append("; path=");
        sb.append(this.f14924e);
        if (this.f14925f) {
            sb.append("; secure");
        }
        if (this.f14926g) {
            sb.append("; httponly");
        }
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "toString()");
        return string;
    }

    public final String g() {
        return this.f14921b;
    }

    public int hashCode() {
        return ((((((((((((((((527 + this.f14920a.hashCode()) * 31) + this.f14921b.hashCode()) * 31) + Long.hashCode(this.f14922c)) * 31) + this.f14923d.hashCode()) * 31) + this.f14924e.hashCode()) * 31) + Boolean.hashCode(this.f14925f)) * 31) + Boolean.hashCode(this.f14926g)) * 31) + Boolean.hashCode(this.f14927h)) * 31) + Boolean.hashCode(this.f14928i);
    }

    public String toString() {
        return f(false);
    }

    private l(String str, String str2, long j10, String str3, String str4, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f14920a = str;
        this.f14921b = str2;
        this.f14922c = j10;
        this.f14923d = str3;
        this.f14924e = str4;
        this.f14925f = z10;
        this.f14926g = z11;
        this.f14927h = z12;
        this.f14928i = z13;
    }
}
