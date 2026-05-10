package kotlin.text;

import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class s {
    public static void a(Appendable appendable, Object obj, w8.l lVar) throws IOException {
        kotlin.jvm.internal.r.e(appendable, "<this>");
        if (lVar != null) {
            appendable.append((CharSequence) lVar.invoke(obj));
            return;
        }
        if (obj == null ? true : obj instanceof CharSequence) {
            appendable.append((CharSequence) obj);
        } else if (obj instanceof Character) {
            appendable.append(((Character) obj).charValue());
        } else {
            appendable.append(String.valueOf(obj));
        }
    }
}
