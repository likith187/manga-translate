package kotlin.text;

import com.oplus.aiunit.download.core.ErrorCode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class t extends s {

    static final class a extends kotlin.jvm.internal.s implements w8.l {
        public static final a INSTANCE = new a();

        a() {
            super(1);
        }

        @Override // w8.l
        public final String invoke(String line) {
            kotlin.jvm.internal.r.e(line, "line");
            return line;
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.l {
        final /* synthetic */ String $indent;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str) {
            super(1);
            this.$indent = str;
        }

        @Override // w8.l
        public final String invoke(String line) {
            kotlin.jvm.internal.r.e(line, "line");
            return this.$indent + line;
        }
    }

    private static final w8.l b(String str) {
        return str.length() == 0 ? a.INSTANCE : new b(str);
    }

    private static final int c(String str) {
        int length = str.length();
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                i10 = -1;
                break;
            }
            if (!kotlin.text.a.c(str.charAt(i10))) {
                break;
            }
            i10++;
        }
        return i10 == -1 ? str.length() : i10;
    }

    public static final String d(String str, String newIndent) {
        String str2;
        kotlin.jvm.internal.r.e(str, "<this>");
        kotlin.jvm.internal.r.e(newIndent, "newIndent");
        List listF0 = r.f0(str);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listF0) {
            if (!r.Y((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(kotlin.collections.o.r(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(Integer.valueOf(c((String) it.next())));
        }
        Integer num = (Integer) kotlin.collections.o.f0(arrayList2);
        int i10 = 0;
        int iIntValue = num != null ? num.intValue() : 0;
        int length = str.length() + (newIndent.length() * listF0.size());
        w8.l lVarB = b(newIndent);
        int iJ = kotlin.collections.o.j(listF0);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : listF0) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                kotlin.collections.o.q();
            }
            String str3 = (String) obj2;
            if ((i10 == 0 || i10 == iJ) && r.Y(str3)) {
                str3 = null;
            } else {
                String strR0 = r.R0(str3, iIntValue);
                if (strR0 != null && (str2 = (String) lVarB.invoke(strR0)) != null) {
                    str3 = str2;
                }
            }
            if (str3 != null) {
                arrayList3.add(str3);
            }
            i10 = i11;
        }
        String string = ((StringBuilder) kotlin.collections.y.X(arrayList3, new StringBuilder(length), (ErrorCode.CODE_SERVICE_NOT_SUPPORT & 2) != 0 ? ", " : "\n", (ErrorCode.CODE_SERVICE_NOT_SUPPORT & 4) != 0 ? "" : null, (ErrorCode.CODE_SERVICE_NOT_SUPPORT & 8) == 0 ? null : "", (ErrorCode.CODE_SERVICE_NOT_SUPPORT & 16) != 0 ? -1 : 0, (ErrorCode.CODE_SERVICE_NOT_SUPPORT & 32) != 0 ? "..." : null, (ErrorCode.CODE_SERVICE_NOT_SUPPORT & 64) != 0 ? null : null)).toString();
        kotlin.jvm.internal.r.d(string, "toString(...)");
        return string;
    }

    public static final String e(String str, String newIndent, String marginPrefix) {
        int i10;
        String str2;
        kotlin.jvm.internal.r.e(str, "<this>");
        kotlin.jvm.internal.r.e(newIndent, "newIndent");
        kotlin.jvm.internal.r.e(marginPrefix, "marginPrefix");
        if (r.Y(marginPrefix)) {
            throw new IllegalArgumentException("marginPrefix must be non-blank string.");
        }
        List listF0 = r.f0(str);
        int length = str.length() + (newIndent.length() * listF0.size());
        w8.l lVarB = b(newIndent);
        int iJ = kotlin.collections.o.j(listF0);
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        for (Object obj : listF0) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                kotlin.collections.o.q();
            }
            String str3 = (String) obj;
            String strSubstring = null;
            if ((i11 == 0 || i11 == iJ) && r.Y(str3)) {
                str3 = null;
            } else {
                int length2 = str3.length();
                int i13 = 0;
                while (true) {
                    if (i13 >= length2) {
                        i10 = -1;
                        break;
                    }
                    if (!kotlin.text.a.c(str3.charAt(i13))) {
                        i10 = i13;
                        break;
                    }
                    i13++;
                }
                if (i10 != -1) {
                    int i14 = i10;
                    if (r.E(str3, marginPrefix, i10, false, 4, null)) {
                        int length3 = i14 + marginPrefix.length();
                        kotlin.jvm.internal.r.c(str3, "null cannot be cast to non-null type java.lang.String");
                        strSubstring = str3.substring(length3);
                        kotlin.jvm.internal.r.d(strSubstring, "substring(...)");
                    }
                }
                if (strSubstring != null && (str2 = (String) lVarB.invoke(strSubstring)) != null) {
                    str3 = str2;
                }
            }
            if (str3 != null) {
                arrayList.add(str3);
            }
            i11 = i12;
        }
        String string = ((StringBuilder) kotlin.collections.y.X(arrayList, new StringBuilder(length), (ErrorCode.CODE_SERVICE_NOT_SUPPORT & 2) != 0 ? ", " : "\n", (ErrorCode.CODE_SERVICE_NOT_SUPPORT & 4) != 0 ? "" : null, (ErrorCode.CODE_SERVICE_NOT_SUPPORT & 8) == 0 ? null : "", (ErrorCode.CODE_SERVICE_NOT_SUPPORT & 16) != 0 ? -1 : 0, (ErrorCode.CODE_SERVICE_NOT_SUPPORT & 32) != 0 ? "..." : null, (ErrorCode.CODE_SERVICE_NOT_SUPPORT & 64) != 0 ? null : null)).toString();
        kotlin.jvm.internal.r.d(string, "toString(...)");
        return string;
    }

    public static String f(String str) {
        kotlin.jvm.internal.r.e(str, "<this>");
        return d(str, "");
    }

    public static final String g(String str, String marginPrefix) {
        kotlin.jvm.internal.r.e(str, "<this>");
        kotlin.jvm.internal.r.e(marginPrefix, "marginPrefix");
        return e(str, "", marginPrefix);
    }

    public static /* synthetic */ String h(String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str2 = "|";
        }
        return g(str, str2);
    }
}
