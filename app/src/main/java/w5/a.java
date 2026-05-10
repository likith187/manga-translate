package w5;

import java.util.Base64;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static byte[] a(String str) {
        return Base64.getDecoder().decode(str);
    }
}
