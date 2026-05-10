package kotlin.text;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b0 extends a0 {

    static final class a extends kotlin.jvm.internal.s implements w8.p {
        final /* synthetic */ char[] $delimiters;
        final /* synthetic */ boolean $ignoreCase;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(char[] cArr, boolean z10) {
            super(2);
            this.$delimiters = cArr;
            this.$ignoreCase = z10;
        }

        @Override // w8.p
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return invoke((CharSequence) obj, ((Number) obj2).intValue());
        }

        public final n8.q invoke(CharSequence $receiver, int i10) {
            kotlin.jvm.internal.r.e($receiver, "$this$$receiver");
            int iX = b0.X($receiver, this.$delimiters, i10, this.$ignoreCase);
            if (iX < 0) {
                return null;
            }
            return n8.w.a(Integer.valueOf(iX), 1);
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.p {
        final /* synthetic */ List<String> $delimitersList;
        final /* synthetic */ boolean $ignoreCase;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(List<String> list, boolean z10) {
            super(2);
            this.$delimitersList = list;
            this.$ignoreCase = z10;
        }

        @Override // w8.p
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return invoke((CharSequence) obj, ((Number) obj2).intValue());
        }

        public final n8.q invoke(CharSequence $receiver, int i10) {
            kotlin.jvm.internal.r.e($receiver, "$this$$receiver");
            n8.q qVarP = b0.P($receiver, this.$delimitersList, i10, this.$ignoreCase, false);
            if (qVarP != null) {
                return n8.w.a(qVarP.getFirst(), Integer.valueOf(((String) qVarP.getSecond()).length()));
            }
            return null;
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.l {
        final /* synthetic */ CharSequence $this_splitToSequence;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(CharSequence charSequence) {
            super(1);
            this.$this_splitToSequence = charSequence;
        }

        @Override // w8.l
        public final String invoke(b9.c it) {
            kotlin.jvm.internal.r.e(it, "it");
            return b0.B0(this.$this_splitToSequence, it);
        }
    }

    public static /* synthetic */ boolean A0(CharSequence charSequence, CharSequence charSequence2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return y0(charSequence, charSequence2, z10);
    }

    public static final String B0(CharSequence charSequence, b9.c range) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        kotlin.jvm.internal.r.e(range, "range");
        return charSequence.subSequence(range.h().intValue(), range.g().intValue() + 1).toString();
    }

    public static String C0(String str, char c10, String missingDelimiterValue) {
        kotlin.jvm.internal.r.e(str, "<this>");
        kotlin.jvm.internal.r.e(missingDelimiterValue, "missingDelimiterValue");
        int iV = r.V(str, c10, 0, false, 6, null);
        if (iV == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(iV + 1, str.length());
        kotlin.jvm.internal.r.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static final String D0(String str, String delimiter, String missingDelimiterValue) {
        kotlin.jvm.internal.r.e(str, "<this>");
        kotlin.jvm.internal.r.e(delimiter, "delimiter");
        kotlin.jvm.internal.r.e(missingDelimiterValue, "missingDelimiterValue");
        int iW = r.W(str, delimiter, 0, false, 6, null);
        if (iW == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(iW + delimiter.length(), str.length());
        kotlin.jvm.internal.r.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static /* synthetic */ String E0(String str, char c10, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return r.C0(str, c10, str2);
    }

    public static /* synthetic */ String F0(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return D0(str, str2, str3);
    }

    public static final String G0(String str, char c10, String missingDelimiterValue) {
        kotlin.jvm.internal.r.e(str, "<this>");
        kotlin.jvm.internal.r.e(missingDelimiterValue, "missingDelimiterValue");
        int iB0 = r.b0(str, c10, 0, false, 6, null);
        if (iB0 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(iB0 + 1, str.length());
        kotlin.jvm.internal.r.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static final boolean H(CharSequence charSequence, char c10, boolean z10) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        return r.V(charSequence, c10, 0, z10, 2, null) >= 0;
    }

    public static final String H0(String str, String delimiter, String missingDelimiterValue) {
        kotlin.jvm.internal.r.e(str, "<this>");
        kotlin.jvm.internal.r.e(delimiter, "delimiter");
        kotlin.jvm.internal.r.e(missingDelimiterValue, "missingDelimiterValue");
        int iC0 = r.c0(str, delimiter, 0, false, 6, null);
        if (iC0 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(iC0 + delimiter.length(), str.length());
        kotlin.jvm.internal.r.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static boolean I(CharSequence charSequence, CharSequence other, boolean z10) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        kotlin.jvm.internal.r.e(other, "other");
        if (other instanceof String) {
            if (r.W(charSequence, (String) other, 0, z10, 2, null) < 0) {
                return false;
            }
        } else if (U(charSequence, other, 0, charSequence.length(), z10, false, 16, null) < 0) {
            return false;
        }
        return true;
    }

    public static /* synthetic */ String I0(String str, char c10, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return G0(str, c10, str2);
    }

    public static /* synthetic */ boolean J(CharSequence charSequence, char c10, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return H(charSequence, c10, z10);
    }

    public static /* synthetic */ String J0(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return H0(str, str2, str3);
    }

    public static /* synthetic */ boolean K(CharSequence charSequence, CharSequence charSequence2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return r.I(charSequence, charSequence2, z10);
    }

    public static final String K0(String str, char c10, String missingDelimiterValue) {
        kotlin.jvm.internal.r.e(str, "<this>");
        kotlin.jvm.internal.r.e(missingDelimiterValue, "missingDelimiterValue");
        int iV = r.V(str, c10, 0, false, 6, null);
        if (iV == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(0, iV);
        kotlin.jvm.internal.r.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static final boolean L(CharSequence charSequence, char c10, boolean z10) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        return charSequence.length() > 0 && kotlin.text.c.d(charSequence.charAt(r.Q(charSequence)), c10, z10);
    }

    public static /* synthetic */ String L0(String str, char c10, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return K0(str, c10, str2);
    }

    public static final boolean M(CharSequence charSequence, CharSequence suffix, boolean z10) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        kotlin.jvm.internal.r.e(suffix, "suffix");
        return (!z10 && (charSequence instanceof String) && (suffix instanceof String)) ? r.u((String) charSequence, (String) suffix, false, 2, null) : m0(charSequence, charSequence.length() - suffix.length(), suffix, 0, suffix.length(), z10);
    }

    public static Boolean M0(String str) {
        kotlin.jvm.internal.r.e(str, "<this>");
        if (kotlin.jvm.internal.r.a(str, "true")) {
            return Boolean.TRUE;
        }
        if (kotlin.jvm.internal.r.a(str, "false")) {
            return Boolean.FALSE;
        }
        return null;
    }

    public static /* synthetic */ boolean N(CharSequence charSequence, char c10, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return L(charSequence, c10, z10);
    }

    public static CharSequence N0(CharSequence charSequence) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        int length = charSequence.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean zC = kotlin.text.a.c(charSequence.charAt(!z10 ? i10 : length));
            if (z10) {
                if (!zC) {
                    break;
                }
                length--;
            } else if (zC) {
                i10++;
            } else {
                z10 = true;
            }
        }
        return charSequence.subSequence(i10, length + 1);
    }

    public static /* synthetic */ boolean O(CharSequence charSequence, CharSequence charSequence2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return M(charSequence, charSequence2, z10);
    }

    public static String O0(String str, char... chars) {
        kotlin.jvm.internal.r.e(str, "<this>");
        kotlin.jvm.internal.r.e(chars, "chars");
        int length = str.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean zV = kotlin.collections.i.v(chars, str.charAt(!z10 ? i10 : length));
            if (z10) {
                if (!zV) {
                    break;
                }
                length--;
            } else if (zV) {
                i10++;
            } else {
                z10 = true;
            }
        }
        return str.subSequence(i10, length + 1).toString();
    }

    public static final n8.q P(CharSequence charSequence, Collection collection, int i10, boolean z10, boolean z11) {
        Object next;
        Object next2;
        if (!z10 && collection.size() == 1) {
            String str = (String) kotlin.collections.o.i0(collection);
            int iW = !z11 ? r.W(charSequence, str, i10, false, 4, null) : r.c0(charSequence, str, i10, false, 4, null);
            if (iW < 0) {
                return null;
            }
            return n8.w.a(Integer.valueOf(iW), str);
        }
        b9.a cVar = !z11 ? new b9.c(b9.d.c(i10, 0), charSequence.length()) : b9.d.j(b9.d.e(i10, r.Q(charSequence)), 0);
        if (charSequence instanceof String) {
            int iA = cVar.a();
            int iC = cVar.c();
            int iD = cVar.d();
            if ((iD > 0 && iA <= iC) || (iD < 0 && iC <= iA)) {
                while (true) {
                    Iterator it = collection.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it.next();
                        String str2 = (String) next2;
                        if (r.w(str2, 0, (String) charSequence, iA, str2.length(), z10)) {
                            break;
                        }
                    }
                    String str3 = (String) next2;
                    if (str3 == null) {
                        if (iA == iC) {
                            break;
                        }
                        iA += iD;
                    } else {
                        return n8.w.a(Integer.valueOf(iA), str3);
                    }
                }
            }
        } else {
            int iA2 = cVar.a();
            int iC2 = cVar.c();
            int iD2 = cVar.d();
            if ((iD2 > 0 && iA2 <= iC2) || (iD2 < 0 && iC2 <= iA2)) {
                while (true) {
                    Iterator it2 = collection.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                        String str4 = (String) next;
                        if (m0(str4, 0, charSequence, iA2, str4.length(), z10)) {
                            break;
                        }
                    }
                    String str5 = (String) next;
                    if (str5 == null) {
                        if (iA2 == iC2) {
                            break;
                        }
                        iA2 += iD2;
                    } else {
                        return n8.w.a(Integer.valueOf(iA2), str5);
                    }
                }
            }
        }
        return null;
    }

    public static String P0(String str, char... chars) {
        CharSequence charSequenceSubSequence;
        kotlin.jvm.internal.r.e(str, "<this>");
        kotlin.jvm.internal.r.e(chars, "chars");
        int length = str.length();
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                charSequenceSubSequence = "";
                break;
            }
            if (!kotlin.collections.i.v(chars, str.charAt(i10))) {
                charSequenceSubSequence = str.subSequence(i10, str.length());
                break;
            }
            i10++;
        }
        return charSequenceSubSequence.toString();
    }

    public static int Q(CharSequence charSequence) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static final int R(CharSequence charSequence, char c10, int i10, boolean z10) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        return (z10 || !(charSequence instanceof String)) ? X(charSequence, new char[]{c10}, i10, z10) : ((String) charSequence).indexOf(c10, i10);
    }

    public static int S(CharSequence charSequence, String string, int i10, boolean z10) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        kotlin.jvm.internal.r.e(string, "string");
        return (z10 || !(charSequence instanceof String)) ? U(charSequence, string, i10, charSequence.length(), z10, false, 16, null) : ((String) charSequence).indexOf(string, i10);
    }

    private static final int T(CharSequence charSequence, CharSequence charSequence2, int i10, int i11, boolean z10, boolean z11) {
        b9.a cVar = !z11 ? new b9.c(b9.d.c(i10, 0), b9.d.e(i11, charSequence.length())) : b9.d.j(b9.d.e(i10, r.Q(charSequence)), b9.d.c(i11, 0));
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            int iA = cVar.a();
            int iC = cVar.c();
            int iD = cVar.d();
            if ((iD <= 0 || iA > iC) && (iD >= 0 || iC > iA)) {
                return -1;
            }
            while (!r.w((String) charSequence2, 0, (String) charSequence, iA, charSequence2.length(), z10)) {
                if (iA == iC) {
                    return -1;
                }
                iA += iD;
            }
            return iA;
        }
        int iA2 = cVar.a();
        int iC2 = cVar.c();
        int iD2 = cVar.d();
        if ((iD2 <= 0 || iA2 > iC2) && (iD2 >= 0 || iC2 > iA2)) {
            return -1;
        }
        while (!m0(charSequence2, 0, charSequence, iA2, charSequence2.length(), z10)) {
            if (iA2 == iC2) {
                return -1;
            }
            iA2 += iD2;
        }
        return iA2;
    }

    static /* synthetic */ int U(CharSequence charSequence, CharSequence charSequence2, int i10, int i11, boolean z10, boolean z11, int i12, Object obj) {
        if ((i12 & 16) != 0) {
            z11 = false;
        }
        return T(charSequence, charSequence2, i10, i11, z10, z11);
    }

    public static /* synthetic */ int V(CharSequence charSequence, char c10, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return R(charSequence, c10, i10, z10);
    }

    public static /* synthetic */ int W(CharSequence charSequence, String str, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return r.S(charSequence, str, i10, z10);
    }

    public static final int X(CharSequence charSequence, char[] chars, int i10, boolean z10) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        kotlin.jvm.internal.r.e(chars, "chars");
        if (!z10 && chars.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(kotlin.collections.i.R(chars), i10);
        }
        int iC = b9.d.c(i10, 0);
        int iQ = r.Q(charSequence);
        if (iC > iQ) {
            return -1;
        }
        while (true) {
            char cCharAt = charSequence.charAt(iC);
            for (char c10 : chars) {
                if (kotlin.text.c.d(c10, cCharAt, z10)) {
                    return iC;
                }
            }
            if (iC == iQ) {
                return -1;
            }
            iC++;
        }
    }

    public static boolean Y(CharSequence charSequence) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            if (!kotlin.text.a.c(charSequence.charAt(i10))) {
                return false;
            }
        }
        return true;
    }

    public static final int Z(CharSequence charSequence, char c10, int i10, boolean z10) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        return (z10 || !(charSequence instanceof String)) ? d0(charSequence, new char[]{c10}, i10, z10) : ((String) charSequence).lastIndexOf(c10, i10);
    }

    public static final int a0(CharSequence charSequence, String string, int i10, boolean z10) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        kotlin.jvm.internal.r.e(string, "string");
        return (z10 || !(charSequence instanceof String)) ? T(charSequence, string, i10, 0, z10, true) : ((String) charSequence).lastIndexOf(string, i10);
    }

    public static /* synthetic */ int b0(CharSequence charSequence, char c10, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = r.Q(charSequence);
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return Z(charSequence, c10, i10, z10);
    }

    public static /* synthetic */ int c0(CharSequence charSequence, String str, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = r.Q(charSequence);
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return a0(charSequence, str, i10, z10);
    }

    public static final int d0(CharSequence charSequence, char[] chars, int i10, boolean z10) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        kotlin.jvm.internal.r.e(chars, "chars");
        if (!z10 && chars.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(kotlin.collections.i.R(chars), i10);
        }
        for (int iE = b9.d.e(i10, r.Q(charSequence)); -1 < iE; iE--) {
            char cCharAt = charSequence.charAt(iE);
            for (char c10 : chars) {
                if (kotlin.text.c.d(c10, cCharAt, z10)) {
                    return iE;
                }
            }
        }
        return -1;
    }

    public static final kotlin.sequences.f e0(CharSequence charSequence) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        return w0(charSequence, new String[]{"\r\n", "\n", "\r"}, false, 0, 6, null);
    }

    public static List f0(CharSequence charSequence) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        return kotlin.sequences.i.q(e0(charSequence));
    }

    public static final CharSequence g0(CharSequence charSequence, int i10, char c10) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException("Desired length " + i10 + " is less than zero.");
        }
        if (i10 <= charSequence.length()) {
            return charSequence.subSequence(0, charSequence.length());
        }
        StringBuilder sb = new StringBuilder(i10);
        int length = i10 - charSequence.length();
        int i11 = 1;
        if (1 <= length) {
            while (true) {
                sb.append(c10);
                if (i11 == length) {
                    break;
                }
                i11++;
            }
        }
        sb.append(charSequence);
        return sb;
    }

    public static String h0(String str, int i10, char c10) {
        kotlin.jvm.internal.r.e(str, "<this>");
        return g0(str, i10, c10).toString();
    }

    private static final kotlin.sequences.f i0(CharSequence charSequence, char[] cArr, int i10, boolean z10, int i11) {
        p0(i11);
        return new e(charSequence, i10, i11, new a(cArr, z10));
    }

    private static final kotlin.sequences.f j0(CharSequence charSequence, String[] strArr, int i10, boolean z10, int i11) {
        p0(i11);
        return new e(charSequence, i10, i11, new b(kotlin.collections.i.f(strArr), z10));
    }

    static /* synthetic */ kotlin.sequences.f k0(CharSequence charSequence, char[] cArr, int i10, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        if ((i12 & 8) != 0) {
            i11 = 0;
        }
        return i0(charSequence, cArr, i10, z10, i11);
    }

    static /* synthetic */ kotlin.sequences.f l0(CharSequence charSequence, String[] strArr, int i10, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        if ((i12 & 8) != 0) {
            i11 = 0;
        }
        return j0(charSequence, strArr, i10, z10, i11);
    }

    public static final boolean m0(CharSequence charSequence, int i10, CharSequence other, int i11, int i12, boolean z10) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        kotlin.jvm.internal.r.e(other, "other");
        if (i11 < 0 || i10 < 0 || i10 > charSequence.length() - i12 || i11 > other.length() - i12) {
            return false;
        }
        for (int i13 = 0; i13 < i12; i13++) {
            if (!kotlin.text.c.d(charSequence.charAt(i10 + i13), other.charAt(i11 + i13), z10)) {
                return false;
            }
        }
        return true;
    }

    public static String n0(String str, CharSequence prefix) {
        kotlin.jvm.internal.r.e(str, "<this>");
        kotlin.jvm.internal.r.e(prefix, "prefix");
        if (!A0(str, prefix, false, 2, null)) {
            return str;
        }
        String strSubstring = str.substring(prefix.length());
        kotlin.jvm.internal.r.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String o0(String str, CharSequence suffix) {
        kotlin.jvm.internal.r.e(str, "<this>");
        kotlin.jvm.internal.r.e(suffix, "suffix");
        if (!O(str, suffix, false, 2, null)) {
            return str;
        }
        String strSubstring = str.substring(0, str.length() - suffix.length());
        kotlin.jvm.internal.r.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static final void p0(int i10) {
        if (i10 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i10).toString());
    }

    public static final List q0(CharSequence charSequence, char[] delimiters, boolean z10, int i10) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        kotlin.jvm.internal.r.e(delimiters, "delimiters");
        if (delimiters.length == 1) {
            return s0(charSequence, String.valueOf(delimiters[0]), z10, i10);
        }
        Iterable iterableG = kotlin.sequences.i.g(k0(charSequence, delimiters, 0, z10, i10, 2, null));
        ArrayList arrayList = new ArrayList(kotlin.collections.o.r(iterableG, 10));
        Iterator it = iterableG.iterator();
        while (it.hasNext()) {
            arrayList.add(B0(charSequence, (b9.c) it.next()));
        }
        return arrayList;
    }

    public static final List r0(CharSequence charSequence, String[] delimiters, boolean z10, int i10) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        kotlin.jvm.internal.r.e(delimiters, "delimiters");
        if (delimiters.length == 1) {
            String str = delimiters[0];
            if (str.length() != 0) {
                return s0(charSequence, str, z10, i10);
            }
        }
        Iterable iterableG = kotlin.sequences.i.g(l0(charSequence, delimiters, 0, z10, i10, 2, null));
        ArrayList arrayList = new ArrayList(kotlin.collections.o.r(iterableG, 10));
        Iterator it = iterableG.iterator();
        while (it.hasNext()) {
            arrayList.add(B0(charSequence, (b9.c) it.next()));
        }
        return arrayList;
    }

    private static final List s0(CharSequence charSequence, String str, boolean z10, int i10) {
        p0(i10);
        int length = 0;
        int iS = r.S(charSequence, str, 0, z10);
        if (iS == -1 || i10 == 1) {
            return kotlin.collections.o.b(charSequence.toString());
        }
        boolean z11 = i10 > 0;
        ArrayList arrayList = new ArrayList(z11 ? b9.d.e(i10, 10) : 10);
        do {
            arrayList.add(charSequence.subSequence(length, iS).toString());
            length = str.length() + iS;
            if (z11 && arrayList.size() == i10 - 1) {
                break;
            }
            iS = r.S(charSequence, str, length, z10);
        } while (iS != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }

    public static /* synthetic */ List t0(CharSequence charSequence, char[] cArr, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return q0(charSequence, cArr, z10, i10);
    }

    public static /* synthetic */ List u0(CharSequence charSequence, String[] strArr, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return r0(charSequence, strArr, z10, i10);
    }

    public static final kotlin.sequences.f v0(CharSequence charSequence, String[] delimiters, boolean z10, int i10) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        kotlin.jvm.internal.r.e(delimiters, "delimiters");
        return kotlin.sequences.i.o(l0(charSequence, delimiters, 0, z10, i10, 2, null), new c(charSequence));
    }

    public static /* synthetic */ kotlin.sequences.f w0(CharSequence charSequence, String[] strArr, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return v0(charSequence, strArr, z10, i10);
    }

    public static final boolean x0(CharSequence charSequence, char c10, boolean z10) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        return charSequence.length() > 0 && kotlin.text.c.d(charSequence.charAt(0), c10, z10);
    }

    public static final boolean y0(CharSequence charSequence, CharSequence prefix, boolean z10) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        kotlin.jvm.internal.r.e(prefix, "prefix");
        return (!z10 && (charSequence instanceof String) && (prefix instanceof String)) ? r.F((String) charSequence, (String) prefix, false, 2, null) : m0(charSequence, 0, prefix, 0, prefix.length(), z10);
    }

    public static /* synthetic */ boolean z0(CharSequence charSequence, char c10, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return x0(charSequence, c10, z10);
    }
}
