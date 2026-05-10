package kotlin.text;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class y extends x {
    public static Double j(String str) {
        kotlin.jvm.internal.r.e(str, "<this>");
        try {
            if (q.f13164a.matches(str)) {
                return Double.valueOf(Double.parseDouble(str));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Float k(String str) {
        kotlin.jvm.internal.r.e(str, "<this>");
        try {
            if (q.f13164a.matches(str)) {
                return Float.valueOf(Float.parseFloat(str));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }
}
