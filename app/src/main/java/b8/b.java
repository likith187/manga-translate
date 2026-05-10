package b8;

import com.oplus.os.OplusBuild;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {
    public static synchronized boolean a() {
        try {
        } catch (Throwable th) {
            a.b("VersionUtils", "Get OsVersion Exception : " + th.toString(), new Object[0]);
            return false;
        }
        return OplusBuild.getOplusOSVERSION() >= 22;
    }
}
