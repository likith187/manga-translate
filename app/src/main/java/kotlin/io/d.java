package kotlin.io;

import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {
    /* JADX INFO: Access modifiers changed from: private */
    public static final String b(File file, File file2, String str) {
        StringBuilder sb = new StringBuilder(file.toString());
        if (file2 != null) {
            sb.append(" -> " + file2);
        }
        if (str != null) {
            sb.append(": " + str);
        }
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "toString(...)");
        return string;
    }
}
