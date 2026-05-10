package okhttp3;

import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public final class u {

    /* JADX INFO: renamed from: k */
    public static final b f14959k = new b(null);

    /* JADX INFO: renamed from: l */
    private static final char[] f14960l = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: a */
    private final String f14961a;

    /* JADX INFO: renamed from: b */
    private final String f14962b;

    /* JADX INFO: renamed from: c */
    private final String f14963c;

    /* JADX INFO: renamed from: d */
    private final String f14964d;

    /* JADX INFO: renamed from: e */
    private final int f14965e;

    /* JADX INFO: renamed from: f */
    private final List f14966f;

    /* JADX INFO: renamed from: g */
    private final List f14967g;

    /* JADX INFO: renamed from: h */
    private final String f14968h;

    /* JADX INFO: renamed from: i */
    private final String f14969i;

    /* JADX INFO: renamed from: j */
    private final boolean f14970j;

    public static final class a {

        /* JADX INFO: renamed from: i */
        public static final C0198a f14971i = new C0198a(null);

        /* JADX INFO: renamed from: a */
        private String f14972a;

        /* JADX INFO: renamed from: d */
        private String f14975d;

        /* JADX INFO: renamed from: f */
        private final List f14977f;

        /* JADX INFO: renamed from: g */
        private List f14978g;

        /* JADX INFO: renamed from: h */
        private String f14979h;

        /* JADX INFO: renamed from: b */
        private String f14973b = "";

        /* JADX INFO: renamed from: c */
        private String f14974c = "";

        /* JADX INFO: renamed from: e */
        private int f14976e = -1;

        /* JADX INFO: renamed from: okhttp3.u$a$a */
        public static final class C0198a {
            public /* synthetic */ C0198a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final int e(String str, int i10, int i11) {
                try {
                    int i12 = Integer.parseInt(b.b(u.f14959k, str, i10, i11, "", false, false, false, false, null, 248, null));
                    if (1 > i12 || i12 >= 65536) {
                        return -1;
                    }
                    return i12;
                } catch (NumberFormatException unused) {
                    return -1;
                }
            }

            public final int f(String str, int i10, int i11) {
                while (i10 < i11) {
                    char cCharAt = str.charAt(i10);
                    if (cCharAt == '[') {
                        do {
                            i10++;
                            if (i10 < i11) {
                            }
                        } while (str.charAt(i10) != ']');
                    } else if (cCharAt == ':') {
                        return i10;
                    }
                    i10++;
                }
                return i11;
            }

            public final int g(String str, int i10, int i11) {
                if (i11 - i10 < 2) {
                    return -1;
                }
                char cCharAt = str.charAt(i10);
                if ((kotlin.jvm.internal.r.f(cCharAt, 97) < 0 || kotlin.jvm.internal.r.f(cCharAt, 122) > 0) && (kotlin.jvm.internal.r.f(cCharAt, 65) < 0 || kotlin.jvm.internal.r.f(cCharAt, 90) > 0)) {
                    return -1;
                }
                while (true) {
                    i10++;
                    if (i10 >= i11) {
                        return -1;
                    }
                    char cCharAt2 = str.charAt(i10);
                    if ('a' > cCharAt2 || cCharAt2 >= '{') {
                        if ('A' > cCharAt2 || cCharAt2 >= '[') {
                            if ('0' > cCharAt2 || cCharAt2 >= ':') {
                                if (cCharAt2 != '+' && cCharAt2 != '-' && cCharAt2 != '.') {
                                    if (cCharAt2 == ':') {
                                        return i10;
                                    }
                                    return -1;
                                }
                            }
                        }
                    }
                }
            }

            public final int h(String str, int i10, int i11) {
                int i12 = 0;
                while (i10 < i11) {
                    char cCharAt = str.charAt(i10);
                    if (cCharAt != '\\' && cCharAt != '/') {
                        break;
                    }
                    i12++;
                    i10++;
                }
                return i12;
            }

            private C0198a() {
            }
        }

        public a() {
            ArrayList arrayList = new ArrayList();
            this.f14977f = arrayList;
            arrayList.add("");
        }

        private final int c() {
            int i10 = this.f14976e;
            if (i10 != -1) {
                return i10;
            }
            b bVar = u.f14959k;
            String str = this.f14972a;
            kotlin.jvm.internal.r.b(str);
            return bVar.c(str);
        }

        private final boolean g(String str) {
            return kotlin.jvm.internal.r.a(str, ".") || kotlin.text.r.v(str, "%2e", true);
        }

        private final boolean h(String str) {
            return kotlin.jvm.internal.r.a(str, "..") || kotlin.text.r.v(str, "%2e.", true) || kotlin.text.r.v(str, ".%2e", true) || kotlin.text.r.v(str, "%2e%2e", true);
        }

        private final void k() {
            if (((String) this.f14977f.remove(r0.size() - 1)).length() != 0 || this.f14977f.isEmpty()) {
                this.f14977f.add("");
            } else {
                this.f14977f.set(r2.size() - 1, "");
            }
        }

        private final void m(String str, int i10, int i11, boolean z10, boolean z11) {
            String strB = b.b(u.f14959k, str, i10, i11, " \"<>^`{}|/\\?#", z11, false, false, false, null, 240, null);
            if (g(strB)) {
                return;
            }
            if (h(strB)) {
                k();
                return;
            }
            if (((CharSequence) this.f14977f.get(r2.size() - 1)).length() == 0) {
                this.f14977f.set(r2.size() - 1, strB);
            } else {
                this.f14977f.add(strB);
            }
            if (z10) {
                this.f14977f.add("");
            }
        }

        private final void o(String str, int i10, int i11) {
            if (i10 == i11) {
                return;
            }
            char cCharAt = str.charAt(i10);
            if (cCharAt == '/' || cCharAt == '\\') {
                this.f14977f.clear();
                this.f14977f.add("");
                i10++;
            } else {
                List list = this.f14977f;
                list.set(list.size() - 1, "");
            }
            while (true) {
                int i12 = i10;
                while (i12 < i11) {
                    i10 = i9.d.p(str, "/\\", i12, i11);
                    boolean z10 = i10 < i11;
                    m(str, i12, i10, z10, true);
                    if (z10) {
                        i12 = i10 + 1;
                    }
                }
                return;
            }
        }

        public final a a(String name, String str) {
            kotlin.jvm.internal.r.e(name, "name");
            if (this.f14978g == null) {
                this.f14978g = new ArrayList();
            }
            List list = this.f14978g;
            kotlin.jvm.internal.r.b(list);
            b bVar = u.f14959k;
            list.add(b.b(bVar, name, 0, 0, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, false, null, 219, null));
            List list2 = this.f14978g;
            kotlin.jvm.internal.r.b(list2);
            list2.add(str != null ? b.b(bVar, str, 0, 0, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, false, null, 219, null) : null);
            return this;
        }

        public final u b() {
            ArrayList arrayList;
            String str = this.f14972a;
            if (str == null) {
                throw new IllegalStateException("scheme == null");
            }
            b bVar = u.f14959k;
            String strH = b.h(bVar, this.f14973b, 0, 0, false, 7, null);
            String strH2 = b.h(bVar, this.f14974c, 0, 0, false, 7, null);
            String str2 = this.f14975d;
            if (str2 == null) {
                throw new IllegalStateException("host == null");
            }
            int iC = c();
            List list = this.f14977f;
            ArrayList arrayList2 = new ArrayList(kotlin.collections.o.r(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList2.add(b.h(u.f14959k, (String) it.next(), 0, 0, false, 7, null));
            }
            List<String> list2 = this.f14978g;
            if (list2 != null) {
                ArrayList arrayList3 = new ArrayList(kotlin.collections.o.r(list2, 10));
                for (String str3 : list2) {
                    arrayList3.add(str3 != null ? b.h(u.f14959k, str3, 0, 0, true, 3, null) : null);
                }
                arrayList = arrayList3;
            } else {
                arrayList = null;
            }
            String str4 = this.f14979h;
            return new u(str, strH, strH2, str2, iC, arrayList2, arrayList, str4 != null ? b.h(u.f14959k, str4, 0, 0, false, 7, null) : null, toString());
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final okhttp3.u.a d(java.lang.String r14) {
            /*
                r13 = this;
                if (r14 == 0) goto L1d
                okhttp3.u$b r12 = okhttp3.u.f14959k
                r10 = 211(0xd3, float:2.96E-43)
                r11 = 0
                r2 = 0
                r3 = 0
                java.lang.String r4 = " \"'<>#"
                r5 = 1
                r6 = 0
                r7 = 1
                r8 = 0
                r9 = 0
                r0 = r12
                r1 = r14
                java.lang.String r14 = okhttp3.u.b.b(r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
                if (r14 == 0) goto L1d
                java.util.List r14 = r12.j(r14)
                goto L1e
            L1d:
                r14 = 0
            L1e:
                r13.f14978g = r14
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.u.a.d(java.lang.String):okhttp3.u$a");
        }

        public final List e() {
            return this.f14977f;
        }

        public final a f(String host) {
            kotlin.jvm.internal.r.e(host, "host");
            String strE = i9.a.e(b.h(u.f14959k, host, 0, 0, false, 7, null));
            if (strE != null) {
                this.f14975d = strE;
                return this;
            }
            throw new IllegalArgumentException("unexpected host: " + host);
        }

        public final a i(u uVar, String str) {
            int iP;
            int i10;
            int i11;
            boolean z10;
            int i12;
            boolean z11;
            String input = str;
            kotlin.jvm.internal.r.e(input, "input");
            int iZ = i9.d.z(input, 0, 0, 3, null);
            int iB = i9.d.B(input, iZ, 0, 2, null);
            C0198a c0198a = f14971i;
            int iG = c0198a.g(input, iZ, iB);
            boolean z12 = true;
            byte b10 = -1;
            if (iG != -1) {
                if (kotlin.text.r.C(input, "https:", iZ, true)) {
                    this.f14972a = "https";
                    iZ += 6;
                } else {
                    if (!kotlin.text.r.C(input, "http:", iZ, true)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Expected URL scheme 'http' or 'https' but was '");
                        String strSubstring = input.substring(0, iG);
                        kotlin.jvm.internal.r.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                        sb.append(strSubstring);
                        sb.append('\'');
                        throw new IllegalArgumentException(sb.toString());
                    }
                    this.f14972a = "http";
                    iZ += 5;
                }
            } else {
                if (uVar == null) {
                    if (str.length() > 6) {
                        input = kotlin.text.r.W0(input, 6) + "...";
                    }
                    throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but no scheme was found for " + input);
                }
                this.f14972a = uVar.q();
            }
            int iH = c0198a.h(input, iZ, iB);
            byte b11 = 63;
            byte b12 = 35;
            if (iH >= 2 || uVar == null || !kotlin.jvm.internal.r.a(uVar.q(), this.f14972a)) {
                boolean z13 = false;
                boolean z14 = false;
                int i13 = iZ + iH;
                while (true) {
                    iP = i9.d.p(input, "@/\\?#", i13, iB);
                    byte bCharAt = iP != iB ? input.charAt(iP) : b10;
                    if (bCharAt == b10 || bCharAt == b12 || bCharAt == 47 || bCharAt == 92 || bCharAt == b11) {
                        break;
                    }
                    if (bCharAt == 64) {
                        if (z13) {
                            i11 = iP;
                            z10 = z12;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(this.f14974c);
                            sb2.append("%40");
                            i12 = iB;
                            sb2.append(b.b(u.f14959k, str, i13, i11, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null));
                            this.f14974c = sb2.toString();
                        } else {
                            int iO = i9.d.o(input, ':', i13, iP);
                            b bVar = u.f14959k;
                            z10 = z12;
                            String strB = b.b(bVar, str, i13, iO, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                            if (z14) {
                                strB = this.f14973b + "%40" + strB;
                            }
                            this.f14973b = strB;
                            if (iO != iP) {
                                i11 = iP;
                                this.f14974c = b.b(bVar, str, iO + 1, iP, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                                z11 = z10;
                            } else {
                                i11 = iP;
                                z11 = z13;
                            }
                            z13 = z11;
                            i12 = iB;
                            z14 = z10;
                        }
                        i13 = i11 + 1;
                        z12 = z10;
                        iB = i12;
                        b12 = 35;
                        b11 = 63;
                        b10 = -1;
                    }
                }
                i10 = iB;
                C0198a c0198a2 = f14971i;
                int iF = c0198a2.f(input, i13, iP);
                int i14 = iF + 1;
                if (i14 < iP) {
                    this.f14975d = i9.a.e(b.h(u.f14959k, str, i13, iF, false, 4, null));
                    int iE = c0198a2.e(input, i14, iP);
                    this.f14976e = iE;
                    if (iE == -1) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Invalid URL port: \"");
                        String strSubstring2 = input.substring(i14, iP);
                        kotlin.jvm.internal.r.d(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                        sb3.append(strSubstring2);
                        sb3.append(AbstractJsonLexerKt.STRING);
                        throw new IllegalArgumentException(sb3.toString().toString());
                    }
                } else {
                    b bVar2 = u.f14959k;
                    this.f14975d = i9.a.e(b.h(bVar2, str, i13, iF, false, 4, null));
                    String str2 = this.f14972a;
                    kotlin.jvm.internal.r.b(str2);
                    this.f14976e = bVar2.c(str2);
                }
                if (this.f14975d == null) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("Invalid URL host: \"");
                    String strSubstring3 = input.substring(i13, iF);
                    kotlin.jvm.internal.r.d(strSubstring3, "this as java.lang.String…ing(startIndex, endIndex)");
                    sb4.append(strSubstring3);
                    sb4.append(AbstractJsonLexerKt.STRING);
                    throw new IllegalArgumentException(sb4.toString().toString());
                }
                iZ = iP;
            } else {
                this.f14973b = uVar.g();
                this.f14974c = uVar.c();
                this.f14975d = uVar.h();
                this.f14976e = uVar.m();
                this.f14977f.clear();
                this.f14977f.addAll(uVar.e());
                if (iZ == iB || input.charAt(iZ) == '#') {
                    d(uVar.f());
                }
                i10 = iB;
            }
            int i15 = i10;
            int iP2 = i9.d.p(input, "?#", iZ, i15);
            o(input, iZ, iP2);
            if (iP2 < i15 && input.charAt(iP2) == '?') {
                int iO2 = i9.d.o(input, '#', iP2, i15);
                b bVar3 = u.f14959k;
                this.f14978g = bVar3.j(b.b(bVar3, str, iP2 + 1, iO2, " \"'<>#", true, false, true, false, null, 208, null));
                iP2 = iO2;
            }
            if (iP2 < i15 && input.charAt(iP2) == '#') {
                this.f14979h = b.b(u.f14959k, str, iP2 + 1, i15, "", true, false, false, true, null, 176, null);
            }
            return this;
        }

        public final a j(String password) {
            kotlin.jvm.internal.r.e(password, "password");
            this.f14974c = b.b(u.f14959k, password, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251, null);
            return this;
        }

        public final a l(int i10) {
            if (1 <= i10 && i10 < 65536) {
                this.f14976e = i10;
                return this;
            }
            throw new IllegalArgumentException(("unexpected port: " + i10).toString());
        }

        public final a n() {
            String str = this.f14975d;
            this.f14975d = str != null ? new kotlin.text.n("[\"<>^`{|}]").replace(str, "") : null;
            int size = this.f14977f.size();
            for (int i10 = 0; i10 < size; i10++) {
                List list = this.f14977f;
                list.set(i10, b.b(u.f14959k, (String) list.get(i10), 0, 0, "[]", true, true, false, false, null, 227, null));
            }
            List list2 = this.f14978g;
            if (list2 != null) {
                int size2 = list2.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    String str2 = (String) list2.get(i11);
                    list2.set(i11, str2 != null ? b.b(u.f14959k, str2, 0, 0, "\\^`{|}", true, true, true, false, null, 195, null) : null);
                }
            }
            String str3 = this.f14979h;
            this.f14979h = str3 != null ? b.b(u.f14959k, str3, 0, 0, " \"#<>\\^`{|}", true, true, false, true, null, 163, null) : null;
            return this;
        }

        public final a p(String scheme) {
            kotlin.jvm.internal.r.e(scheme, "scheme");
            if (kotlin.text.r.v(scheme, "http", true)) {
                this.f14972a = "http";
            } else {
                if (!kotlin.text.r.v(scheme, "https", true)) {
                    throw new IllegalArgumentException("unexpected scheme: " + scheme);
                }
                this.f14972a = "https";
            }
            return this;
        }

        public final void q(String str) {
            this.f14979h = str;
        }

        public final void r(String str) {
            kotlin.jvm.internal.r.e(str, "<set-?>");
            this.f14974c = str;
        }

        public final void s(String str) {
            kotlin.jvm.internal.r.e(str, "<set-?>");
            this.f14973b = str;
        }

        public final void t(String str) {
            this.f14975d = str;
        }

        /* JADX WARN: Removed duplicated region for block: B:67:0x0085  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.String toString() {
            /*
                r6 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = r6.f14972a
                if (r1 == 0) goto L12
                r0.append(r1)
                java.lang.String r1 = "://"
                r0.append(r1)
                goto L17
            L12:
                java.lang.String r1 = "//"
                r0.append(r1)
            L17:
                java.lang.String r1 = r6.f14973b
                int r1 = r1.length()
                r2 = 58
                if (r1 <= 0) goto L22
                goto L2a
            L22:
                java.lang.String r1 = r6.f14974c
                int r1 = r1.length()
                if (r1 <= 0) goto L44
            L2a:
                java.lang.String r1 = r6.f14973b
                r0.append(r1)
                java.lang.String r1 = r6.f14974c
                int r1 = r1.length()
                if (r1 <= 0) goto L3f
                r0.append(r2)
                java.lang.String r1 = r6.f14974c
                r0.append(r1)
            L3f:
                r1 = 64
                r0.append(r1)
            L44:
                java.lang.String r1 = r6.f14975d
                if (r1 == 0) goto L69
                kotlin.jvm.internal.r.b(r1)
                r3 = 2
                r4 = 0
                r5 = 0
                boolean r1 = kotlin.text.r.J(r1, r2, r5, r3, r4)
                if (r1 == 0) goto L64
                r1 = 91
                r0.append(r1)
                java.lang.String r1 = r6.f14975d
                r0.append(r1)
                r1 = 93
                r0.append(r1)
                goto L69
            L64:
                java.lang.String r1 = r6.f14975d
                r0.append(r1)
            L69:
                int r1 = r6.f14976e
                r3 = -1
                if (r1 != r3) goto L72
                java.lang.String r1 = r6.f14972a
                if (r1 == 0) goto L8b
            L72:
                int r1 = r6.c()
                java.lang.String r3 = r6.f14972a
                if (r3 == 0) goto L85
                okhttp3.u$b r4 = okhttp3.u.f14959k
                kotlin.jvm.internal.r.b(r3)
                int r3 = r4.c(r3)
                if (r1 == r3) goto L8b
            L85:
                r0.append(r2)
                r0.append(r1)
            L8b:
                okhttp3.u$b r1 = okhttp3.u.f14959k
                java.util.List r2 = r6.f14977f
                r1.i(r2, r0)
                java.util.List r2 = r6.f14978g
                if (r2 == 0) goto La3
                r2 = 63
                r0.append(r2)
                java.util.List r2 = r6.f14978g
                kotlin.jvm.internal.r.b(r2)
                r1.k(r2, r0)
            La3:
                java.lang.String r1 = r6.f14979h
                if (r1 == 0) goto Lb1
                r1 = 35
                r0.append(r1)
                java.lang.String r6 = r6.f14979h
                r0.append(r6)
            Lb1:
                java.lang.String r6 = r0.toString()
                java.lang.String r0 = "StringBuilder().apply(builderAction).toString()"
                kotlin.jvm.internal.r.d(r6, r0)
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.u.a.toString():java.lang.String");
        }

        public final void u(int i10) {
            this.f14976e = i10;
        }

        public final void v(String str) {
            this.f14972a = str;
        }

        public final a w(String username) {
            kotlin.jvm.internal.r.e(username, "username");
            this.f14973b = b.b(u.f14959k, username, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251, null);
            return this;
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ String b(b bVar, String str, int i10, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset, int i12, Object obj) {
            return bVar.a(str, (i12 & 1) != 0 ? 0 : i10, (i12 & 2) != 0 ? str.length() : i11, str2, (i12 & 8) != 0 ? false : z10, (i12 & 16) != 0 ? false : z11, (i12 & 32) != 0 ? false : z12, (i12 & 64) != 0 ? false : z13, (i12 & 128) != 0 ? null : charset);
        }

        private final boolean e(String str, int i10, int i11) {
            int i12 = i10 + 2;
            return i12 < i11 && str.charAt(i10) == '%' && i9.d.G(str.charAt(i10 + 1)) != -1 && i9.d.G(str.charAt(i12)) != -1;
        }

        public static /* synthetic */ String h(b bVar, String str, int i10, int i11, boolean z10, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                i10 = 0;
            }
            if ((i12 & 2) != 0) {
                i11 = str.length();
            }
            if ((i12 & 4) != 0) {
                z10 = false;
            }
            return bVar.g(str, i10, i11, z10);
        }

        /* JADX WARN: Removed duplicated region for block: B:100:0x0069  */
        /* JADX WARN: Removed duplicated region for block: B:103:0x0071  */
        /* JADX WARN: Removed duplicated region for block: B:109:0x008a  */
        /* JADX WARN: Removed duplicated region for block: B:112:0x0093 A[LOOP:1: B:110:0x008d->B:112:0x0093, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:99:0x0067  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private final void l(t9.d r15, java.lang.String r16, int r17, int r18, java.lang.String r19, boolean r20, boolean r21, boolean r22, boolean r23, java.nio.charset.Charset r24) throws java.io.EOFException {
            /*
                r14 = this;
                r0 = r15
                r1 = r16
                r2 = r18
                r3 = r24
                r4 = 0
                r5 = r17
                r6 = r4
            Lb:
                if (r5 >= r2) goto Lbc
                int r7 = r1.codePointAt(r5)
                if (r20 == 0) goto L28
                r8 = 9
                if (r7 == r8) goto L23
                r8 = 10
                if (r7 == r8) goto L23
                r8 = 12
                if (r7 == r8) goto L23
                r8 = 13
                if (r7 != r8) goto L28
            L23:
                r8 = r14
                r12 = r19
                goto Lb5
            L28:
                r8 = 43
                if (r7 != r8) goto L39
                if (r22 == 0) goto L39
                if (r20 == 0) goto L33
                java.lang.String r8 = "+"
                goto L35
            L33:
                java.lang.String r8 = "%2B"
            L35:
                r15.u0(r8)
                goto L23
            L39:
                r8 = 32
                r9 = 37
                if (r7 < r8) goto L4a
                r8 = 127(0x7f, float:1.78E-43)
                if (r7 == r8) goto L4a
                r8 = 128(0x80, float:1.8E-43)
                if (r7 < r8) goto L4e
                if (r23 == 0) goto L4a
                goto L4e
            L4a:
                r8 = r14
                r12 = r19
                goto L6f
            L4e:
                char r8 = (char) r7
                r10 = 0
                r11 = 2
                r12 = r19
                boolean r8 = kotlin.text.r.J(r12, r8, r10, r11, r4)
                if (r8 != 0) goto L69
                if (r7 != r9) goto L67
                if (r20 == 0) goto L69
                if (r21 == 0) goto L67
                r8 = r14
                boolean r10 = r14.e(r1, r5, r2)
                if (r10 != 0) goto L6b
                goto L6f
            L67:
                r8 = r14
                goto L6b
            L69:
                r8 = r14
                goto L6f
            L6b:
                r15.V0(r7)
                goto Lb5
            L6f:
                if (r6 != 0) goto L76
                t9.d r6 = new t9.d
                r6.<init>()
            L76:
                if (r3 == 0) goto L8a
                java.nio.charset.Charset r10 = java.nio.charset.StandardCharsets.UTF_8
                boolean r10 = kotlin.jvm.internal.r.a(r3, r10)
                if (r10 == 0) goto L81
                goto L8a
            L81:
                int r10 = java.lang.Character.charCount(r7)
                int r10 = r10 + r5
                r6.S0(r1, r5, r10, r3)
                goto L8d
            L8a:
                r6.V0(r7)
            L8d:
                boolean r10 = r6.S()
                if (r10 != 0) goto Lb5
                byte r10 = r6.C0()
                r11 = r10 & 255(0xff, float:3.57E-43)
                r15.T(r9)
                char[] r13 = okhttp3.u.a()
                int r11 = r11 >> 4
                r11 = r11 & 15
                char r11 = r13[r11]
                r15.T(r11)
                char[] r11 = okhttp3.u.a()
                r10 = r10 & 15
                char r10 = r11[r10]
                r15.T(r10)
                goto L8d
            Lb5:
                int r7 = java.lang.Character.charCount(r7)
                int r5 = r5 + r7
                goto Lb
            Lbc:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.u.b.l(t9.d, java.lang.String, int, int, java.lang.String, boolean, boolean, boolean, boolean, java.nio.charset.Charset):void");
        }

        private final void m(t9.d dVar, String str, int i10, int i11, boolean z10) {
            int i12;
            while (i10 < i11) {
                int iCodePointAt = str.codePointAt(i10);
                if (iCodePointAt == 37 && (i12 = i10 + 2) < i11) {
                    int iG = i9.d.G(str.charAt(i10 + 1));
                    int iG2 = i9.d.G(str.charAt(i12));
                    if (iG == -1 || iG2 == -1) {
                        dVar.V0(iCodePointAt);
                        i10 += Character.charCount(iCodePointAt);
                    } else {
                        dVar.T((iG << 4) + iG2);
                        i10 = i12 + Character.charCount(iCodePointAt);
                    }
                } else if (iCodePointAt == 43 && z10) {
                    dVar.T(32);
                    i10++;
                } else {
                    dVar.V0(iCodePointAt);
                    i10 += Character.charCount(iCodePointAt);
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:64:0x0040  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.String a(java.lang.String r13, int r14, int r15, java.lang.String r16, boolean r17, boolean r18, boolean r19, boolean r20, java.nio.charset.Charset r21) throws java.io.EOFException {
            /*
                r12 = this;
                r2 = r13
                r4 = r15
                r5 = r16
                java.lang.String r0 = "<this>"
                kotlin.jvm.internal.r.e(r13, r0)
                java.lang.String r0 = "encodeSet"
                kotlin.jvm.internal.r.e(r5, r0)
                r3 = r14
            Lf:
                if (r3 >= r4) goto L6f
                int r0 = r13.codePointAt(r3)
                r1 = 32
                if (r0 < r1) goto L24
                r1 = 127(0x7f, float:1.78E-43)
                if (r0 == r1) goto L24
                r1 = 128(0x80, float:1.8E-43)
                if (r0 < r1) goto L26
                if (r20 == 0) goto L24
                goto L26
            L24:
                r1 = r12
                goto L4e
            L26:
                char r1 = (char) r0
                r6 = 2
                r7 = 0
                r8 = 0
                boolean r1 = kotlin.text.r.J(r5, r1, r8, r6, r7)
                if (r1 != 0) goto L24
                r1 = 37
                if (r0 != r1) goto L40
                if (r17 == 0) goto L24
                if (r18 == 0) goto L40
                r1 = r12
                boolean r6 = r12.e(r13, r3, r15)
                if (r6 == 0) goto L4e
                goto L41
            L40:
                r1 = r12
            L41:
                r6 = 43
                if (r0 != r6) goto L48
                if (r19 == 0) goto L48
                goto L4e
            L48:
                int r0 = java.lang.Character.charCount(r0)
                int r3 = r3 + r0
                goto Lf
            L4e:
                t9.d r11 = new t9.d
                r11.<init>()
                r0 = r14
                r11.r(r13, r14, r3)
                r0 = r12
                r1 = r11
                r2 = r13
                r4 = r15
                r5 = r16
                r6 = r17
                r7 = r18
                r8 = r19
                r9 = r20
                r10 = r21
                r0.l(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
                java.lang.String r0 = r11.D0()
                return r0
            L6f:
                r0 = r14
                java.lang.String r0 = r13.substring(r14, r15)
                java.lang.String r1 = "this as java.lang.String…ing(startIndex, endIndex)"
                kotlin.jvm.internal.r.d(r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.u.b.a(java.lang.String, int, int, java.lang.String, boolean, boolean, boolean, boolean, java.nio.charset.Charset):java.lang.String");
        }

        public final int c(String scheme) {
            kotlin.jvm.internal.r.e(scheme, "scheme");
            if (kotlin.jvm.internal.r.a(scheme, "http")) {
                return 80;
            }
            return kotlin.jvm.internal.r.a(scheme, "https") ? 443 : -1;
        }

        public final u d(String str) {
            kotlin.jvm.internal.r.e(str, "<this>");
            return new a().i(null, str).b();
        }

        public final u f(String str) {
            kotlin.jvm.internal.r.e(str, "<this>");
            try {
                return d(str);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        public final String g(String str, int i10, int i11, boolean z10) {
            kotlin.jvm.internal.r.e(str, "<this>");
            for (int i12 = i10; i12 < i11; i12++) {
                char cCharAt = str.charAt(i12);
                if (cCharAt == '%' || (cCharAt == '+' && z10)) {
                    t9.d dVar = new t9.d();
                    dVar.r(str, i10, i12);
                    m(dVar, str, i12, i11, z10);
                    return dVar.D0();
                }
            }
            String strSubstring = str.substring(i10, i11);
            kotlin.jvm.internal.r.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            return strSubstring;
        }

        public final void i(List list, StringBuilder out) {
            kotlin.jvm.internal.r.e(list, "<this>");
            kotlin.jvm.internal.r.e(out, "out");
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                out.append('/');
                out.append((String) list.get(i10));
            }
        }

        public final List j(String str) {
            kotlin.jvm.internal.r.e(str, "<this>");
            ArrayList arrayList = new ArrayList();
            int i10 = 0;
            while (i10 <= str.length()) {
                int iV = kotlin.text.r.V(str, '&', i10, false, 4, null);
                if (iV == -1) {
                    iV = str.length();
                }
                int i11 = iV;
                int iV2 = kotlin.text.r.V(str, '=', i10, false, 4, null);
                if (iV2 == -1 || iV2 > i11) {
                    String strSubstring = str.substring(i10, i11);
                    kotlin.jvm.internal.r.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    arrayList.add(strSubstring);
                    arrayList.add(null);
                } else {
                    String strSubstring2 = str.substring(i10, iV2);
                    kotlin.jvm.internal.r.d(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                    arrayList.add(strSubstring2);
                    String strSubstring3 = str.substring(iV2 + 1, i11);
                    kotlin.jvm.internal.r.d(strSubstring3, "this as java.lang.String…ing(startIndex, endIndex)");
                    arrayList.add(strSubstring3);
                }
                i10 = i11 + 1;
            }
            return arrayList;
        }

        public final void k(List list, StringBuilder out) {
            kotlin.jvm.internal.r.e(list, "<this>");
            kotlin.jvm.internal.r.e(out, "out");
            b9.a aVarK = b9.d.k(b9.d.l(0, list.size()), 2);
            int iA = aVarK.a();
            int iC = aVarK.c();
            int iD = aVarK.d();
            if ((iD <= 0 || iA > iC) && (iD >= 0 || iC > iA)) {
                return;
            }
            while (true) {
                String str = (String) list.get(iA);
                String str2 = (String) list.get(iA + 1);
                if (iA > 0) {
                    out.append('&');
                }
                out.append(str);
                if (str2 != null) {
                    out.append('=');
                    out.append(str2);
                }
                if (iA == iC) {
                    return;
                } else {
                    iA += iD;
                }
            }
        }

        private b() {
        }
    }

    public u(String scheme, String username, String password, String host, int i10, List pathSegments, List list, String str, String url) {
        kotlin.jvm.internal.r.e(scheme, "scheme");
        kotlin.jvm.internal.r.e(username, "username");
        kotlin.jvm.internal.r.e(password, "password");
        kotlin.jvm.internal.r.e(host, "host");
        kotlin.jvm.internal.r.e(pathSegments, "pathSegments");
        kotlin.jvm.internal.r.e(url, "url");
        this.f14961a = scheme;
        this.f14962b = username;
        this.f14963c = password;
        this.f14964d = host;
        this.f14965e = i10;
        this.f14966f = pathSegments;
        this.f14967g = list;
        this.f14968h = str;
        this.f14969i = url;
        this.f14970j = kotlin.jvm.internal.r.a(scheme, "https");
    }

    public static final u l(String str) {
        return f14959k.f(str);
    }

    public final String b() {
        if (this.f14968h == null) {
            return null;
        }
        String strSubstring = this.f14969i.substring(kotlin.text.r.V(this.f14969i, '#', 0, false, 6, null) + 1);
        kotlin.jvm.internal.r.d(strSubstring, "this as java.lang.String).substring(startIndex)");
        return strSubstring;
    }

    public final String c() {
        if (this.f14963c.length() == 0) {
            return "";
        }
        String strSubstring = this.f14969i.substring(kotlin.text.r.V(this.f14969i, ':', this.f14961a.length() + 3, false, 4, null) + 1, kotlin.text.r.V(this.f14969i, '@', 0, false, 6, null));
        kotlin.jvm.internal.r.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final String d() {
        int iV = kotlin.text.r.V(this.f14969i, '/', this.f14961a.length() + 3, false, 4, null);
        String str = this.f14969i;
        String strSubstring = this.f14969i.substring(iV, i9.d.p(str, "?#", iV, str.length()));
        kotlin.jvm.internal.r.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final List e() {
        int iV = kotlin.text.r.V(this.f14969i, '/', this.f14961a.length() + 3, false, 4, null);
        String str = this.f14969i;
        int iP = i9.d.p(str, "?#", iV, str.length());
        ArrayList arrayList = new ArrayList();
        while (iV < iP) {
            int i10 = iV + 1;
            int iO = i9.d.o(this.f14969i, '/', i10, iP);
            String strSubstring = this.f14969i.substring(i10, iO);
            kotlin.jvm.internal.r.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            arrayList.add(strSubstring);
            iV = iO;
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        return (obj instanceof u) && kotlin.jvm.internal.r.a(((u) obj).f14969i, this.f14969i);
    }

    public final String f() {
        if (this.f14967g == null) {
            return null;
        }
        int iV = kotlin.text.r.V(this.f14969i, '?', 0, false, 6, null) + 1;
        String str = this.f14969i;
        String strSubstring = this.f14969i.substring(iV, i9.d.o(str, '#', iV, str.length()));
        kotlin.jvm.internal.r.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final String g() {
        if (this.f14962b.length() == 0) {
            return "";
        }
        int length = this.f14961a.length() + 3;
        String str = this.f14969i;
        String strSubstring = this.f14969i.substring(length, i9.d.p(str, ":@", length, str.length()));
        kotlin.jvm.internal.r.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final String h() {
        return this.f14964d;
    }

    public int hashCode() {
        return this.f14969i.hashCode();
    }

    public final boolean i() {
        return this.f14970j;
    }

    public final a j() {
        a aVar = new a();
        aVar.v(this.f14961a);
        aVar.s(g());
        aVar.r(c());
        aVar.t(this.f14964d);
        aVar.u(this.f14965e != f14959k.c(this.f14961a) ? this.f14965e : -1);
        aVar.e().clear();
        aVar.e().addAll(e());
        aVar.d(f());
        aVar.q(b());
        return aVar;
    }

    public final a k(String link) {
        kotlin.jvm.internal.r.e(link, "link");
        try {
            return new a().i(this, link);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public final int m() {
        return this.f14965e;
    }

    public final String n() {
        if (this.f14967g == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        f14959k.k(this.f14967g, sb);
        return sb.toString();
    }

    public final String o() {
        a aVarK = k("/...");
        kotlin.jvm.internal.r.b(aVarK);
        return aVarK.w("").j("").b().toString();
    }

    public final u p(String link) {
        kotlin.jvm.internal.r.e(link, "link");
        a aVarK = k(link);
        if (aVarK != null) {
            return aVarK.b();
        }
        return null;
    }

    public final String q() {
        return this.f14961a;
    }

    public final URI r() {
        String string = j().n().toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e10) {
            try {
                URI uriCreate = URI.create(new kotlin.text.n("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]").replace(string, ""));
                kotlin.jvm.internal.r.d(uriCreate, "{\n      // Unlikely edge…Unexpected!\n      }\n    }");
                return uriCreate;
            } catch (Exception unused) {
                throw new RuntimeException(e10);
            }
        }
    }

    public final URL s() {
        try {
            return new URL(this.f14969i);
        } catch (MalformedURLException e10) {
            throw new RuntimeException(e10);
        }
    }

    public String toString() {
        return this.f14969i;
    }
}
