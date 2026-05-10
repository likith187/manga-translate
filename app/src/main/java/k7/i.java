package k7;

import com.oplus.os.OplusBuild;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i {
    public static boolean a() {
        try {
            return OplusBuild.getOplusOSVERSION() >= 22;
        } catch (Throwable th) {
            d.b("Get OsVersion Exception : " + th.toString());
            return false;
        }
    }

    public static boolean b() {
        return true;
    }
}
