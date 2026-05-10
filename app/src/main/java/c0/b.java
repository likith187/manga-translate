package c0;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    public static void a(Object obj, StringBuilder sb) {
        int iLastIndexOf;
        if (obj == null) {
            sb.append(AbstractJsonLexerKt.NULL);
            return;
        }
        String simpleName = obj.getClass().getSimpleName();
        if (simpleName.length() <= 0 && (iLastIndexOf = (simpleName = obj.getClass().getName()).lastIndexOf(46)) > 0) {
            simpleName = simpleName.substring(iLastIndexOf + 1);
        }
        sb.append(simpleName);
        sb.append(AbstractJsonLexerKt.BEGIN_OBJ);
        sb.append(Integer.toHexString(System.identityHashCode(obj)));
    }
}
