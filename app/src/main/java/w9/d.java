package w9;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {
    private static byte[] a(String str, Charset charset) {
        if (str == null) {
            return null;
        }
        return str.getBytes(charset);
    }

    public static byte[] b(String str) {
        return a(str, StandardCharsets.UTF_8);
    }

    private static String c(byte[] bArr, Charset charset) {
        if (bArr == null) {
            return null;
        }
        return new String(bArr, charset);
    }

    public static String d(byte[] bArr) {
        return c(bArr, StandardCharsets.UTF_8);
    }
}
