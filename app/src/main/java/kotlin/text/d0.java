package kotlin.text;

import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.collections.u0;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class d0 extends c0 {

    static final class a extends kotlin.jvm.internal.s implements w8.l {
        public static final a INSTANCE = new a();

        a() {
            super(1);
        }

        @Override // w8.l
        public final String invoke(CharSequence it) {
            kotlin.jvm.internal.r.e(it, "it");
            return it.toString();
        }
    }

    public static List Q0(CharSequence charSequence, int i10) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        return X0(charSequence, i10, i10, true);
    }

    public static String R0(String str, int i10) {
        kotlin.jvm.internal.r.e(str, "<this>");
        if (i10 >= 0) {
            String strSubstring = str.substring(b9.d.e(i10, str.length()));
            kotlin.jvm.internal.r.d(strSubstring, "substring(...)");
            return strSubstring;
        }
        throw new IllegalArgumentException(("Requested character count " + i10 + " is less than zero.").toString());
    }

    public static String S0(String str, int i10) {
        kotlin.jvm.internal.r.e(str, "<this>");
        if (i10 >= 0) {
            return r.W0(str, b9.d.c(str.length() - i10, 0));
        }
        throw new IllegalArgumentException(("Requested character count " + i10 + " is less than zero.").toString());
    }

    public static char T0(CharSequence charSequence) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        if (charSequence.length() != 0) {
            return charSequence.charAt(r.Q(charSequence));
        }
        throw new NoSuchElementException("Char sequence is empty.");
    }

    public static CharSequence U0(CharSequence charSequence) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        StringBuilder sbReverse = new StringBuilder(charSequence).reverse();
        kotlin.jvm.internal.r.d(sbReverse, "reverse(...)");
        return sbReverse;
    }

    public static char V0(CharSequence charSequence) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        int length = charSequence.length();
        if (length == 0) {
            throw new NoSuchElementException("Char sequence is empty.");
        }
        if (length == 1) {
            return charSequence.charAt(0);
        }
        throw new IllegalArgumentException("Char sequence has more than one element.");
    }

    public static String W0(String str, int i10) {
        kotlin.jvm.internal.r.e(str, "<this>");
        if (i10 >= 0) {
            String strSubstring = str.substring(0, b9.d.e(i10, str.length()));
            kotlin.jvm.internal.r.d(strSubstring, "substring(...)");
            return strSubstring;
        }
        throw new IllegalArgumentException(("Requested character count " + i10 + " is less than zero.").toString());
    }

    public static final List X0(CharSequence charSequence, int i10, int i11, boolean z10) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        return Y0(charSequence, i10, i11, z10, a.INSTANCE);
    }

    public static final List Y0(CharSequence charSequence, int i10, int i11, boolean z10, w8.l transform) {
        kotlin.jvm.internal.r.e(charSequence, "<this>");
        kotlin.jvm.internal.r.e(transform, "transform");
        u0.a(i10, i11);
        int length = charSequence.length();
        int i12 = 0;
        ArrayList arrayList = new ArrayList((length / i11) + (length % i11 == 0 ? 0 : 1));
        while (i12 >= 0 && i12 < length) {
            int i13 = i12 + i10;
            if (i13 < 0 || i13 > length) {
                if (!z10) {
                    break;
                }
                i13 = length;
            }
            arrayList.add(transform.invoke(charSequence.subSequence(i12, i13)));
            i12 += i11;
        }
        return arrayList;
    }
}
