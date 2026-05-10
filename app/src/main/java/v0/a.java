package v0;

import com.oplus.aiunit.download.core.ErrorCode;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static void a(String str) {
        b.a(d(str));
    }

    public static void b() {
        b.b();
    }

    public static boolean c() {
        return c.a();
    }

    private static String d(String str) {
        return str.length() <= 127 ? str : str.substring(0, ErrorCode.CODE_SERVICE_DIED);
    }
}
