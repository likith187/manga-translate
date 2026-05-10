package r3;

import java.util.HashMap;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class i {
    public static void a(StringBuilder sb, HashMap map) {
        sb.append("{");
        boolean z10 = true;
        for (String str : map.keySet()) {
            if (!z10) {
                sb.append(",");
            }
            String str2 = (String) map.get(str);
            sb.append("\"");
            sb.append(str);
            sb.append("\":");
            if (str2 == null) {
                sb.append(AbstractJsonLexerKt.NULL);
            } else {
                sb.append("\"");
                sb.append(str2);
                sb.append("\"");
            }
            z10 = false;
        }
        sb.append("}");
    }
}
