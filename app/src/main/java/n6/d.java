package n6;

import android.util.Log;
import com.oplus.os.OplusBuild;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f14076a = c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f14077b = a();

    private static String a() {
        return g() ? "com.oplus.appplatform" : (String) b();
    }

    private static Object b() {
        return e.a();
    }

    private static String c() {
        return g() ? "com.oplus.appplatform.dispatcher" : (String) d();
    }

    private static Object d() {
        return e.b();
    }

    public static boolean e() {
        return true;
    }

    private static boolean f(int i10) {
        try {
            return OplusBuild.getOplusOSVERSION() >= i10;
        } catch (Throwable th) {
            Log.d("VersionUtils", "Get OsVersion Exception : " + th.toString());
            return false;
        }
    }

    public static boolean g() {
        return f(22);
    }

    public static boolean h() {
        return true;
    }

    public static boolean i() {
        return true;
    }

    public static boolean j() {
        return true;
    }
}
