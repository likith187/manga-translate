package kotlin.text;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a0 extends z {
    public static /* synthetic */ String A(String str, char c10, char c11, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return y(str, c10, c11, z10);
    }

    public static /* synthetic */ String B(String str, String str2, String str3, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return z(str, str2, str3, z10);
    }

    public static boolean C(String str, String prefix, int i10, boolean z10) {
        kotlin.jvm.internal.r.e(str, "<this>");
        kotlin.jvm.internal.r.e(prefix, "prefix");
        return !z10 ? str.startsWith(prefix, i10) : r.w(str, i10, prefix, 0, prefix.length(), z10);
    }

    public static boolean D(String str, String prefix, boolean z10) {
        kotlin.jvm.internal.r.e(str, "<this>");
        kotlin.jvm.internal.r.e(prefix, "prefix");
        return !z10 ? str.startsWith(prefix) : r.w(str, 0, prefix, 0, prefix.length(), z10);
    }

    public static /* synthetic */ boolean E(String str, String str2, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return r.C(str, str2, i10, z10);
    }

    public static /* synthetic */ boolean F(String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return r.D(str, str2, z10);
    }

    public static String q(char[] cArr) {
        kotlin.jvm.internal.r.e(cArr, "<this>");
        return new String(cArr);
    }

    public static String r(char[] cArr, int i10, int i11) {
        kotlin.jvm.internal.r.e(cArr, "<this>");
        kotlin.collections.c.Companion.a(i10, i11, cArr.length);
        return new String(cArr, i10, i11 - i10);
    }

    public static String s(byte[] bArr) {
        kotlin.jvm.internal.r.e(bArr, "<this>");
        return new String(bArr, d.f13110a);
    }

    public static final boolean t(String str, String suffix, boolean z10) {
        kotlin.jvm.internal.r.e(str, "<this>");
        kotlin.jvm.internal.r.e(suffix, "suffix");
        return !z10 ? str.endsWith(suffix) : r.w(str, str.length() - suffix.length(), suffix, 0, suffix.length(), true);
    }

    public static /* synthetic */ boolean u(String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return t(str, str2, z10);
    }

    public static boolean v(String str, String str2, boolean z10) {
        return str == null ? str2 == null : !z10 ? str.equals(str2) : str.equalsIgnoreCase(str2);
    }

    public static boolean w(String str, int i10, String other, int i11, int i12, boolean z10) {
        kotlin.jvm.internal.r.e(str, "<this>");
        kotlin.jvm.internal.r.e(other, "other");
        return !z10 ? str.regionMatches(i10, other, i11, i12) : str.regionMatches(z10, i10, other, i11, i12);
    }

    public static String x(CharSequence charSequence, int i10) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + i10 + '.').toString());
        }
        if (i10 == 0) {
            return "";
        }
        int i11 = 1;
        if (i10 == 1) {
            return charSequence.toString();
        }
        int length = charSequence.length();
        if (length == 0) {
            return "";
        }
        if (length == 1) {
            char cCharAt = charSequence.charAt(0);
            char[] cArr = new char[i10];
            for (int i12 = 0; i12 < i10; i12++) {
                cArr[i12] = cCharAt;
            }
            return new String(cArr);
        }
        StringBuilder sb = new StringBuilder(charSequence.length() * i10);
        if (1 <= i10) {
            while (true) {
                sb.append(charSequence);
                if (i11 == i10) {
                    break;
                }
                i11++;
            }
        }
        String string = sb.toString();
        kotlin.jvm.internal.r.b(string);
        return string;
    }

    public static final String y(String str, char c10, char c11, boolean z10) {
        kotlin.jvm.internal.r.e(str, "<this>");
        if (!z10) {
            String strReplace = str.replace(c10, c11);
            kotlin.jvm.internal.r.d(strReplace, "replace(...)");
            return strReplace;
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (c.d(cCharAt, c10, z10)) {
                cCharAt = c11;
            }
            sb.append(cCharAt);
        }
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "toString(...)");
        return string;
    }

    public static final String z(String str, String oldValue, String newValue, boolean z10) {
        kotlin.jvm.internal.r.e(str, "<this>");
        kotlin.jvm.internal.r.e(oldValue, "oldValue");
        kotlin.jvm.internal.r.e(newValue, "newValue");
        int i10 = 0;
        int iS = r.S(str, oldValue, 0, z10);
        if (iS < 0) {
            return str;
        }
        int length = oldValue.length();
        int iC = b9.d.c(length, 1);
        int length2 = (str.length() - length) + newValue.length();
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        do {
            sb.append((CharSequence) str, i10, iS);
            sb.append(newValue);
            i10 = iS + length;
            if (iS >= str.length()) {
                break;
            }
            iS = r.S(str, oldValue, iS + iC, z10);
        } while (iS > 0);
        sb.append((CharSequence) str, i10, str.length());
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "toString(...)");
        return string;
    }
}
